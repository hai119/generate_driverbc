; ModuleID = '../bcout/drivers/char/hw_random/exynos-trng.llvm.bc'
source_filename = "drivers/char/hw_random/exynos-trng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_exynos_trng_driver_init6:\09\09\09"
module asm ".long\09exynos_trng_driver_init - .\09\09\09"
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
%struct.exynos_trng_dev = type { %struct.device*, i8*, %struct.clk*, %struct.hwrng }
%struct.clk = type opaque
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }

@__UNIQUE_ID___addressable_exynos_trng_driver_init164 = internal global i8* bitcast (i32 ()* @exynos_trng_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@exynos_trng_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @exynos_trng_probe, i32 (%struct.platform_device*)* @exynos_trng_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @exynos_trng_dt_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @exynos_trng_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2098
@__exitcall_exynos_trng_driver_exit = internal global void ()* @exynos_trng_driver_exit, section ".exitcall.exit", align 8, !dbg !2071
@__UNIQUE_ID_author165 = internal constant [36 x i8] c"exynos_trng.author=\C5\81ukasz Stelmach\00", section ".modinfo", align 1, !dbg !2078
@__UNIQUE_ID_description166 = internal constant [57 x i8] c"exynos_trng.description=H/W TRNG driver for Exynos chips\00", section ".modinfo", align 1, !dbg !2083
@__UNIQUE_ID_file167 = internal constant [52 x i8] c"exynos_trng.file=drivers/char/hw_random/exynos-trng\00", section ".modinfo", align 1, !dbg !2088
@__UNIQUE_ID_license168 = internal constant [27 x i8] c"exynos_trng.license=GPL v2\00", section ".modinfo", align 1, !dbg !2093
@.str = private unnamed_addr constant [12 x i8] c"exynos-trng\00", align 1
@exynos_trng_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-trng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2158
@exynos_trng_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @exynos_trng_suspend, i32 (%struct.device*)* @exynos_trng_resume, i32 (%struct.device*)* @exynos_trng_suspend, i32 (%struct.device*)* @exynos_trng_resume, i32 (%struct.device*)* @exynos_trng_suspend, i32 (%struct.device*)* @exynos_trng_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2161
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not get runtime PM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"secss\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not get clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Could not enable the clk.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not register hwrng device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Exynos True Random Number Generator.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"clock divider too large: %d\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_exynos_trng_driver_init164 to i8*), i8* bitcast (void ()* @exynos_trng_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_exynos_trng_driver_exit to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_author165, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_description166, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_driver_init() #0 section ".init.text" !dbg !2168 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @exynos_trng_driver, %struct.module* null) #5, !dbg !2171
  ret i32 %call, !dbg !2171
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exynos_trng_driver_exit() #0 section ".exit.text" !dbg !2172 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @exynos_trng_driver) #5, !dbg !2173
  ret void, !dbg !2173
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_probe(%struct.platform_device* %pdev) #2 !dbg !2174 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %trng = alloca %struct.exynos_trng_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2175, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.declare(metadata %struct.exynos_trng_dev** %trng, metadata !2177, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2179, metadata !DIExpression()), !dbg !2180
  store i32 -12, i32* %ret, align 4, !dbg !2180
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2181
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2182
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 136, i32 3264) #5, !dbg !2183
  %1 = bitcast i8* %call to %struct.exynos_trng_dev*, !dbg !2183
  store %struct.exynos_trng_dev* %1, %struct.exynos_trng_dev** %trng, align 8, !dbg !2184
  %2 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2185
  %tobool = icmp ne %struct.exynos_trng_dev* %2, null, !dbg !2185
  br i1 %tobool, label %if.end, label %if.then, !dbg !2187

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2188
  store i32 %3, i32* %retval, align 4, !dbg !2189
  br label %return, !dbg !2189

if.end:                                           ; preds = %entry
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2190
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !2191
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2192
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2193
  %call3 = call i8* @dev_name(%struct.device* %dev2) #5, !dbg !2194
  %call4 = call noalias i8* @devm_kstrdup(%struct.device* %dev1, i8* %call3, i32 3264) #5, !dbg !2195
  %6 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2196
  %rng = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %6, i32 0, i32 3, !dbg !2197
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng, i32 0, i32 0, !dbg !2198
  store i8* %call4, i8** %name, align 8, !dbg !2199
  %7 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2200
  %rng5 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %7, i32 0, i32 3, !dbg !2202
  %name6 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng5, i32 0, i32 0, !dbg !2203
  %8 = load i8*, i8** %name6, align 8, !dbg !2203
  %tobool7 = icmp ne i8* %8, null, !dbg !2200
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2204

if.then8:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !2205
  store i32 %9, i32* %retval, align 4, !dbg !2206
  br label %return, !dbg !2206

if.end9:                                          ; preds = %if.end
  %10 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2207
  %rng10 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %10, i32 0, i32 3, !dbg !2208
  %init = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng10, i32 0, i32 1, !dbg !2209
  store i32 (%struct.hwrng*)* @exynos_trng_init, i32 (%struct.hwrng*)** %init, align 8, !dbg !2210
  %11 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2211
  %rng11 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %11, i32 0, i32 3, !dbg !2212
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng11, i32 0, i32 5, !dbg !2213
  store i32 (%struct.hwrng*, i8*, i64, i1)* @exynos_trng_do_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2214
  %12 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2215
  %13 = ptrtoint %struct.exynos_trng_dev* %12 to i64, !dbg !2216
  %14 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2217
  %rng12 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %14, i32 0, i32 3, !dbg !2218
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng12, i32 0, i32 6, !dbg !2219
  store i64 %13, i64* %priv, align 8, !dbg !2220
  %15 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2221
  %16 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2222
  %17 = bitcast %struct.exynos_trng_dev* %16 to i8*, !dbg !2222
  call void @platform_set_drvdata(%struct.platform_device* %15, i8* %17) #5, !dbg !2223
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2224
  %dev13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 3, !dbg !2225
  %19 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2226
  %dev14 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %19, i32 0, i32 0, !dbg !2227
  store %struct.device* %dev13, %struct.device** %dev14, align 8, !dbg !2228
  %20 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2229
  %call15 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0) #5, !dbg !2230
  %21 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2231
  %mem = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %21, i32 0, i32 1, !dbg !2232
  store i8* %call15, i8** %mem, align 8, !dbg !2233
  %22 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2234
  %mem16 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %22, i32 0, i32 1, !dbg !2236
  %23 = load i8*, i8** %mem16, align 8, !dbg !2236
  %call17 = call zeroext i1 @IS_ERR(i8* %23) #5, !dbg !2237
  br i1 %call17, label %if.then18, label %if.end21, !dbg !2238

if.then18:                                        ; preds = %if.end9
  %24 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2239
  %mem19 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %24, i32 0, i32 1, !dbg !2240
  %25 = load i8*, i8** %mem19, align 8, !dbg !2240
  %call20 = call i64 @PTR_ERR(i8* %25) #5, !dbg !2241
  %conv = trunc i64 %call20 to i32, !dbg !2241
  store i32 %conv, i32* %retval, align 4, !dbg !2242
  br label %return, !dbg !2242

if.end21:                                         ; preds = %if.end9
  %26 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2243
  %dev22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 3, !dbg !2244
  call void @pm_runtime_enable(%struct.device* %dev22) #5, !dbg !2245
  %27 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2246
  %dev23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 3, !dbg !2247
  %call24 = call i32 @pm_runtime_get_sync(%struct.device* %dev23) #5, !dbg !2248
  store i32 %call24, i32* %ret, align 4, !dbg !2249
  %28 = load i32, i32* %ret, align 4, !dbg !2250
  %cmp = icmp slt i32 %28, 0, !dbg !2252
  br i1 %cmp, label %if.then26, label %if.end28, !dbg !2253

if.then26:                                        ; preds = %if.end21
  %29 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2254
  %dev27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 3, !dbg !2254
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2254
  br label %err_pm_get, !dbg !2256

if.end28:                                         ; preds = %if.end21
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2257
  %dev29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 3, !dbg !2258
  %call30 = call %struct.clk* @devm_clk_get(%struct.device* %dev29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2259
  %31 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2260
  %clk = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %31, i32 0, i32 2, !dbg !2261
  store %struct.clk* %call30, %struct.clk** %clk, align 8, !dbg !2262
  %32 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2263
  %clk31 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %32, i32 0, i32 2, !dbg !2265
  %33 = load %struct.clk*, %struct.clk** %clk31, align 8, !dbg !2265
  %34 = bitcast %struct.clk* %33 to i8*, !dbg !2263
  %call32 = call zeroext i1 @IS_ERR(i8* %34) #5, !dbg !2266
  br i1 %call32, label %if.then33, label %if.end38, !dbg !2267

if.then33:                                        ; preds = %if.end28
  %35 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2268
  %clk34 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %35, i32 0, i32 2, !dbg !2270
  %36 = load %struct.clk*, %struct.clk** %clk34, align 8, !dbg !2270
  %37 = bitcast %struct.clk* %36 to i8*, !dbg !2268
  %call35 = call i64 @PTR_ERR(i8* %37) #5, !dbg !2271
  %conv36 = trunc i64 %call35 to i32, !dbg !2271
  store i32 %conv36, i32* %ret, align 4, !dbg !2272
  %38 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2273
  %dev37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 3, !dbg !2273
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2273
  br label %err_clock, !dbg !2274

if.end38:                                         ; preds = %if.end28
  %39 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2275
  %clk39 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %39, i32 0, i32 2, !dbg !2276
  %40 = load %struct.clk*, %struct.clk** %clk39, align 8, !dbg !2276
  %call40 = call i32 @clk_prepare_enable(%struct.clk* %40) #5, !dbg !2277
  store i32 %call40, i32* %ret, align 4, !dbg !2278
  %41 = load i32, i32* %ret, align 4, !dbg !2279
  %tobool41 = icmp ne i32 %41, 0, !dbg !2279
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !2281

if.then42:                                        ; preds = %if.end38
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2282
  %dev43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 3, !dbg !2282
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2282
  br label %err_clock, !dbg !2284

if.end44:                                         ; preds = %if.end38
  %43 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2285
  %dev45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 3, !dbg !2286
  %44 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2287
  %rng46 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %44, i32 0, i32 3, !dbg !2288
  %call47 = call i32 @devm_hwrng_register(%struct.device* %dev45, %struct.hwrng* %rng46) #5, !dbg !2289
  store i32 %call47, i32* %ret, align 4, !dbg !2290
  %45 = load i32, i32* %ret, align 4, !dbg !2291
  %tobool48 = icmp ne i32 %45, 0, !dbg !2291
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !2293

if.then49:                                        ; preds = %if.end44
  %46 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2294
  %dev50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 3, !dbg !2294
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2294
  br label %err_register, !dbg !2296

if.end51:                                         ; preds = %if.end44
  %47 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2297
  %dev52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 3, !dbg !2297
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2297
  store i32 0, i32* %retval, align 4, !dbg !2298
  br label %return, !dbg !2298

err_register:                                     ; preds = %if.then49
  call void @llvm.dbg.label(metadata !2299), !dbg !2300
  %48 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2301
  %clk53 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %48, i32 0, i32 2, !dbg !2302
  %49 = load %struct.clk*, %struct.clk** %clk53, align 8, !dbg !2302
  call void @clk_disable_unprepare(%struct.clk* %49) #5, !dbg !2303
  br label %err_clock, !dbg !2303

err_clock:                                        ; preds = %err_register, %if.then42, %if.then33
  call void @llvm.dbg.label(metadata !2304), !dbg !2305
  %50 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2306
  %dev54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 3, !dbg !2307
  %call55 = call i32 @pm_runtime_put_sync(%struct.device* %dev54) #5, !dbg !2308
  br label %err_pm_get, !dbg !2308

err_pm_get:                                       ; preds = %err_clock, %if.then26
  call void @llvm.dbg.label(metadata !2309), !dbg !2310
  %51 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2311
  %dev56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 3, !dbg !2312
  call void @pm_runtime_disable(%struct.device* %dev56) #5, !dbg !2313
  %52 = load i32, i32* %ret, align 4, !dbg !2314
  store i32 %52, i32* %retval, align 4, !dbg !2315
  br label %return, !dbg !2315

return:                                           ; preds = %err_pm_get, %if.end51, %if.then18, %if.then8, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !2316
  ret i32 %53, !dbg !2316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_remove(%struct.platform_device* %pdev) #2 !dbg !2317 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %trng = alloca %struct.exynos_trng_dev*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.declare(metadata %struct.exynos_trng_dev** %trng, metadata !2320, metadata !DIExpression()), !dbg !2321
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2322
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2323
  %1 = bitcast i8* %call to %struct.exynos_trng_dev*, !dbg !2323
  store %struct.exynos_trng_dev* %1, %struct.exynos_trng_dev** %trng, align 8, !dbg !2321
  %2 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2324
  %clk = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %2, i32 0, i32 2, !dbg !2325
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2325
  call void @clk_disable_unprepare(%struct.clk* %3) #5, !dbg !2326
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2327
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !2328
  %call1 = call i32 @pm_runtime_put_sync(%struct.device* %dev) #5, !dbg !2329
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2330
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2331
  call void @pm_runtime_disable(%struct.device* %dev2) #5, !dbg !2332
  ret i32 0, !dbg !2333
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2334 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2337, metadata !DIExpression()), !dbg !2338
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2339, metadata !DIExpression()), !dbg !2340
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2341, metadata !DIExpression()), !dbg !2342
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2343
  %1 = load i64, i64* %size.addr, align 8, !dbg !2344
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2345
  %or = or i32 %2, 256, !dbg !2346
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2347
  ret i8* %call, !dbg !2348
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kstrdup(%struct.device*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !2349 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2352, metadata !DIExpression()), !dbg !2353
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2354
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2356
  %1 = load i8*, i8** %init_name, align 8, !dbg !2356
  %tobool = icmp ne i8* %1, null, !dbg !2354
  br i1 %tobool, label %if.then, label %if.end, !dbg !2357

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2358
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2359
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2359
  store i8* %3, i8** %retval, align 8, !dbg !2360
  br label %return, !dbg !2360

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2361
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2362
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !2363
  store i8* %call, i8** %retval, align 8, !dbg !2364
  br label %return, !dbg !2364

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2365
  ret i8* %5, !dbg !2365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_init(%struct.hwrng* %rng) #2 !dbg !2366 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %trng = alloca %struct.exynos_trng_dev*, align 8
  %sss_rate = alloca i64, align 8
  %val = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.declare(metadata %struct.exynos_trng_dev** %trng, metadata !2369, metadata !DIExpression()), !dbg !2370
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2371
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !2372
  %1 = load i64, i64* %priv, align 8, !dbg !2372
  %2 = inttoptr i64 %1 to %struct.exynos_trng_dev*, !dbg !2373
  store %struct.exynos_trng_dev* %2, %struct.exynos_trng_dev** %trng, align 8, !dbg !2370
  call void @llvm.dbg.declare(metadata i64* %sss_rate, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2376, metadata !DIExpression()), !dbg !2377
  %3 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2378
  %clk = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %3, i32 0, i32 2, !dbg !2379
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2379
  %call = call i64 @clk_get_rate(%struct.clk* %4) #5, !dbg !2380
  store i64 %call, i64* %sss_rate, align 8, !dbg !2381
  %5 = load i64, i64* %sss_rate, align 8, !dbg !2382
  %div = udiv i64 %5, 1000000, !dbg !2383
  %conv = trunc i64 %div to i32, !dbg !2382
  store i32 %conv, i32* %val, align 4, !dbg !2384
  %6 = load i32, i32* %val, align 4, !dbg !2385
  %cmp = icmp ugt i32 %6, 32767, !dbg !2387
  br i1 %cmp, label %if.then, label %if.end, !dbg !2388

if.then:                                          ; preds = %entry
  %7 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2389
  %dev = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %7, i32 0, i32 0, !dbg !2389
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2389
  %9 = load i32, i32* %val, align 4, !dbg !2389
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %9) #6, !dbg !2389
  store i32 -34, i32* %retval, align 4, !dbg !2391
  br label %return, !dbg !2391

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %val, align 4, !dbg !2392
  %shl = shl i32 %10, 1, !dbg !2393
  store i32 %shl, i32* %val, align 4, !dbg !2394
  %11 = load i32, i32* %val, align 4, !dbg !2395
  %12 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2395
  %mem = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %12, i32 0, i32 1, !dbg !2395
  %13 = load i8*, i8** %mem, align 8, !dbg !2395
  %add.ptr = getelementptr i8, i8* %13, i64 0, !dbg !2395
  call void @__writel(i32 %11, i8* %add.ptr) #5, !dbg !2395
  store i32 -2147483648, i32* %val, align 4, !dbg !2396
  %14 = load i32, i32* %val, align 4, !dbg !2397
  %15 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2397
  %mem2 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %15, i32 0, i32 1, !dbg !2397
  %16 = load i8*, i8** %mem2, align 8, !dbg !2397
  %add.ptr3 = getelementptr i8, i8* %16, i64 32, !dbg !2397
  call void @__writel(i32 %14, i8* %add.ptr3) #5, !dbg !2397
  %17 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2398
  %mem4 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %17, i32 0, i32 1, !dbg !2398
  %18 = load i8*, i8** %mem4, align 8, !dbg !2398
  %add.ptr5 = getelementptr i8, i8* %18, i64 48, !dbg !2398
  call void @__writel(i32 0, i8* %add.ptr5) #5, !dbg !2398
  store i32 0, i32* %retval, align 4, !dbg !2399
  br label %return, !dbg !2399

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !2400
  ret i32 %19, !dbg !2400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_do_read(%struct.hwrng* %rng, i8* %data, i64 %max, i1 zeroext %wait) #2 !dbg !2401 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %trng = alloca %struct.exynos_trng_dev*, align 8
  %val = alloca i32, align 4
  %__UNIQUE_ID___x162 = alloca i64, align 8
  %__UNIQUE_ID___y163 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.exynos_trng_dev** %trng, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x162, metadata !2414, metadata !DIExpression()), !dbg !2416
  %0 = load i64, i64* %max.addr, align 8, !dbg !2416
  store i64 %0, i64* %__UNIQUE_ID___x162, align 8, !dbg !2416
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y163, metadata !2417, metadata !DIExpression()), !dbg !2416
  store i64 32, i64* %__UNIQUE_ID___y163, align 8, !dbg !2416
  %1 = load i64, i64* %__UNIQUE_ID___x162, align 8, !dbg !2416
  %2 = load i64, i64* %__UNIQUE_ID___y163, align 8, !dbg !2416
  %cmp = icmp ult i64 %1, %2, !dbg !2416
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2416

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %__UNIQUE_ID___x162, align 8, !dbg !2416
  br label %cond.end, !dbg !2416

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %__UNIQUE_ID___y163, align 8, !dbg !2416
  br label %cond.end, !dbg !2416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !2416
  store i64 %cond, i64* %tmp, align 8, !dbg !2416
  %5 = load i64, i64* %tmp, align 8, !dbg !2416
  store i64 %5, i64* %max.addr, align 8, !dbg !2418
  %6 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2419
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %6, i32 0, i32 6, !dbg !2420
  %7 = load i64, i64* %priv, align 8, !dbg !2420
  %8 = inttoptr i64 %7 to %struct.exynos_trng_dev*, !dbg !2421
  store %struct.exynos_trng_dev* %8, %struct.exynos_trng_dev** %trng, align 8, !dbg !2422
  %9 = load i64, i64* %max.addr, align 8, !dbg !2423
  %mul = mul i64 %9, 8, !dbg !2423
  %conv = trunc i64 %mul to i32, !dbg !2423
  %10 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2423
  %mem = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %10, i32 0, i32 1, !dbg !2423
  %11 = load i8*, i8** %mem, align 8, !dbg !2423
  %add.ptr = getelementptr i8, i8* %11, i64 80, !dbg !2423
  call void @__writel(i32 %conv, i8* %add.ptr) #5, !dbg !2423
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !2424, metadata !DIExpression()), !dbg !2426
  store i64 1000000, i64* %__timeout_us, align 8, !dbg !2426
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !2427, metadata !DIExpression()), !dbg !2426
  store i64 200, i64* %__sleep_us, align 8, !dbg !2426
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !2428, metadata !DIExpression()), !dbg !2426
  %call = call i64 @ktime_get() #5, !dbg !2426
  %12 = load i64, i64* %__timeout_us, align 8, !dbg !2426
  %call1 = call i64 @ktime_add_us(i64 %call, i64 %12) #5, !dbg !2426
  store i64 %call1, i64* %__timeout, align 8, !dbg !2426
  br label %do.body, !dbg !2426

do.body:                                          ; preds = %cond.end
  %13 = load i64, i64* %__sleep_us, align 8, !dbg !2429
  %cmp2 = icmp ne i64 %13, 0, !dbg !2429
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2432

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !2429

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2433

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !2435

do.end:                                           ; preds = %do.body5
  br label %do.end6, !dbg !2433

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !2433

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !2432

do.end7:                                          ; preds = %if.end
  br label %for.cond, !dbg !2426

for.cond:                                         ; preds = %if.end26, %do.end7
  %14 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2437
  %mem8 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %14, i32 0, i32 1, !dbg !2437
  %15 = load i8*, i8** %mem8, align 8, !dbg !2437
  %add.ptr9 = getelementptr i8, i8* %15, i64 80, !dbg !2437
  %call10 = call i32 @readl(i8* %add.ptr9) #5, !dbg !2437
  store i32 %call10, i32* %val, align 4, !dbg !2437
  %16 = load i32, i32* %val, align 4, !dbg !2441
  %cmp11 = icmp eq i32 %16, 0, !dbg !2441
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2437

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !2441

if.end14:                                         ; preds = %for.cond
  %17 = load i64, i64* %__timeout_us, align 8, !dbg !2443
  %tobool = icmp ne i64 %17, 0, !dbg !2443
  br i1 %tobool, label %land.lhs.true, label %if.end23, !dbg !2443

land.lhs.true:                                    ; preds = %if.end14
  %call15 = call i64 @ktime_get() #5, !dbg !2443
  %18 = load i64, i64* %__timeout, align 8, !dbg !2443
  %call16 = call i32 @ktime_compare(i64 %call15, i64 %18) #5, !dbg !2443
  %cmp17 = icmp sgt i32 %call16, 0, !dbg !2443
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !2437

if.then19:                                        ; preds = %land.lhs.true
  %19 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2445
  %mem20 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %19, i32 0, i32 1, !dbg !2445
  %20 = load i8*, i8** %mem20, align 8, !dbg !2445
  %add.ptr21 = getelementptr i8, i8* %20, i64 80, !dbg !2445
  %call22 = call i32 @readl(i8* %add.ptr21) #5, !dbg !2445
  store i32 %call22, i32* %val, align 4, !dbg !2445
  br label %for.end, !dbg !2445

if.end23:                                         ; preds = %land.lhs.true, %if.end14
  %21 = load i64, i64* %__sleep_us, align 8, !dbg !2447
  %tobool24 = icmp ne i64 %21, 0, !dbg !2447
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2437

if.then25:                                        ; preds = %if.end23
  %22 = load i64, i64* %__sleep_us, align 8, !dbg !2447
  %shr = lshr i64 %22, 2, !dbg !2447
  %add = add i64 %shr, 1, !dbg !2447
  %23 = load i64, i64* %__sleep_us, align 8, !dbg !2447
  call void @usleep_range(i64 %add, i64 %23) #5, !dbg !2447
  br label %if.end26, !dbg !2447

if.end26:                                         ; preds = %if.then25, %if.end23
  br label %for.cond, !dbg !2449, !llvm.loop !2450

for.end:                                          ; preds = %if.then19, %if.then13
  %24 = load i32, i32* %val, align 4, !dbg !2426
  %cmp28 = icmp eq i32 %24, 0, !dbg !2426
  %25 = zext i1 %cmp28 to i64, !dbg !2426
  %cond30 = select i1 %cmp28, i32 0, i32 -110, !dbg !2426
  store i32 %cond30, i32* %tmp27, align 4, !dbg !2451
  %26 = load i32, i32* %tmp27, align 4, !dbg !2426
  store i32 %26, i32* %val, align 4, !dbg !2452
  %27 = load i32, i32* %val, align 4, !dbg !2453
  %cmp31 = icmp slt i32 %27, 0, !dbg !2455
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !2456

if.then33:                                        ; preds = %for.end
  %28 = load i32, i32* %val, align 4, !dbg !2457
  store i32 %28, i32* %retval, align 4, !dbg !2458
  br label %return, !dbg !2458

if.end34:                                         ; preds = %for.end
  %29 = load i8*, i8** %data.addr, align 8, !dbg !2459
  %30 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %trng, align 8, !dbg !2460
  %mem35 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %30, i32 0, i32 1, !dbg !2461
  %31 = load i8*, i8** %mem35, align 8, !dbg !2461
  %add.ptr36 = getelementptr i8, i8* %31, i64 128, !dbg !2462
  %32 = load i64, i64* %max.addr, align 8, !dbg !2463
  call void @memcpy_fromio(i8* %29, i8* %add.ptr36, i64 %32) #5, !dbg !2464
  %33 = load i64, i64* %max.addr, align 8, !dbg !2465
  %conv37 = trunc i64 %33 to i32, !dbg !2465
  store i32 %conv37, i32* %retval, align 4, !dbg !2466
  br label %return, !dbg !2466

return:                                           ; preds = %if.end34, %if.then33
  %34 = load i32, i32* %retval, align 4, !dbg !2467
  ret i32 %34, !dbg !2467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2468 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2473, metadata !DIExpression()), !dbg !2474
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2475
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2476
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2477
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !2478
  ret void, !dbg !2479
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2480 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2486
  %1 = ptrtoint i8* %0 to i64, !dbg !2486
  %2 = inttoptr i64 %1 to i8*, !dbg !2486
  %3 = ptrtoint i8* %2 to i64, !dbg !2486
  %cmp = icmp uge i64 %3, -4095, !dbg !2486
  %lnot = xor i1 %cmp, true, !dbg !2486
  %lnot1 = xor i1 %lnot, true, !dbg !2486
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2486
  %conv = sext i32 %lnot.ext to i64, !dbg !2486
  %tobool = icmp ne i64 %conv, 0, !dbg !2486
  ret i1 %tobool, !dbg !2487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2488 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2493
  %1 = ptrtoint i8* %0 to i64, !dbg !2494
  ret i64 %1, !dbg !2495
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !2496 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2500
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #5, !dbg !2501
  ret i32 %call, !dbg !2502
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2503 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2508, metadata !DIExpression()), !dbg !2509
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2510
  %call = call i32 @clk_prepare(%struct.clk* %0) #5, !dbg !2511
  store i32 %call, i32* %ret, align 4, !dbg !2512
  %1 = load i32, i32* %ret, align 4, !dbg !2513
  %tobool = icmp ne i32 %1, 0, !dbg !2513
  br i1 %tobool, label %if.then, label %if.end, !dbg !2515

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2516
  store i32 %2, i32* %retval, align 4, !dbg !2517
  br label %return, !dbg !2517

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2518
  %call1 = call i32 @clk_enable(%struct.clk* %3) #5, !dbg !2519
  store i32 %call1, i32* %ret, align 4, !dbg !2520
  %4 = load i32, i32* %ret, align 4, !dbg !2521
  %tobool2 = icmp ne i32 %4, 0, !dbg !2521
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2523

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2524
  call void @clk_unprepare(%struct.clk* %5) #5, !dbg !2525
  br label %if.end4, !dbg !2525

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2526
  store i32 %6, i32* %retval, align 4, !dbg !2527
  br label %return, !dbg !2527

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2528
  ret i32 %7, !dbg !2528
}

; Function Attrs: noredzone
declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.hwrng*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !2529 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2532, metadata !DIExpression()), !dbg !2533
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2534
  call void @clk_disable(%struct.clk* %0) #5, !dbg !2535
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2536
  call void @clk_unprepare(%struct.clk* %1) #5, !dbg !2537
  ret void, !dbg !2538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #2 !dbg !2539 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2542
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #5, !dbg !2543
  ret i32 %call, !dbg !2544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !2545 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2548
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #5, !dbg !2549
  ret void, !dbg !2550
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !2551 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2558
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2559
  %1 = load i8*, i8** %name, align 8, !dbg !2559
  ret i8* %1, !dbg !2560
}

; Function Attrs: noredzone
declare dso_local i64 @clk_get_rate(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #2 !dbg !2561 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2569, metadata !DIExpression()), !dbg !2568
  %0 = load i32, i32* %val.addr, align 4, !dbg !2568
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2568
  %2 = bitcast i8* %1 to i32*, !dbg !2568
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2568, !srcloc !2570
  ret void, !dbg !2568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #2 !dbg !2571 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2580
  %1 = load i64, i64* %usec.addr, align 8, !dbg !2580
  %mul = mul i64 %1, 1000, !dbg !2580
  %add = add i64 %0, %mul, !dbg !2580
  ret i64 %add, !dbg !2581
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2582 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2589, metadata !DIExpression()), !dbg !2588
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2588
  %1 = bitcast i8* %0 to i32*, !dbg !2588
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !2588, !srcloc !2590
  store i32 %2, i32* %ret, align 4, !dbg !2588
  %3 = load i32, i32* %ret, align 4, !dbg !2588
  ret i32 %3, !dbg !2588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #2 !dbg !2591 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2594, metadata !DIExpression()), !dbg !2595
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2598
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2600
  %cmp = icmp slt i64 %0, %1, !dbg !2601
  br i1 %cmp, label %if.then, label %if.end, !dbg !2602

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2603
  br label %return, !dbg !2603

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2604
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2606
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2607
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2608

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2609
  br label %return, !dbg !2609

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2610
  br label %return, !dbg !2610

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2611
  ret i32 %4, !dbg !2611
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2612 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2619
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2620
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2621
  store i8* %0, i8** %driver_data, align 8, !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !2624 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2629, metadata !DIExpression()), !dbg !2630
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2631
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2632
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !2633
  ret i8* %call, !dbg !2634
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2635 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2640
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2641
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2641
  ret i8* %1, !dbg !2642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_suspend(%struct.device* %dev) #2 !dbg !2643 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2646
  %call = call i32 @pm_runtime_put_sync(%struct.device* %0) #5, !dbg !2647
  ret i32 0, !dbg !2648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exynos_trng_resume(%struct.device* %dev) #2 !dbg !2649 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2652, metadata !DIExpression()), !dbg !2653
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2654
  %call = call i32 @pm_runtime_get_sync(%struct.device* %0) #5, !dbg !2655
  store i32 %call, i32* %ret, align 4, !dbg !2656
  %1 = load i32, i32* %ret, align 4, !dbg !2657
  %cmp = icmp slt i32 %1, 0, !dbg !2659
  br i1 %cmp, label %if.then, label %if.end, !dbg !2660

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2661
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2661
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2663
  call void @pm_runtime_put_noidle(%struct.device* %3) #5, !dbg !2664
  %4 = load i32, i32* %ret, align 4, !dbg !2665
  store i32 %4, i32* %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2668
  ret i32 %5, !dbg !2668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #2 !dbg !2669 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !2670, metadata !DIExpression()), !dbg !2676
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !2690, metadata !DIExpression()), !dbg !2691
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !2692, metadata !DIExpression()), !dbg !2693
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !2694, metadata !DIExpression()), !dbg !2696
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !2697, metadata !DIExpression()), !dbg !2696
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !2698, metadata !DIExpression()), !dbg !2696
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !2699, metadata !DIExpression()), !dbg !2696
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !2700, metadata !DIExpression()), !dbg !2696
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !2701, metadata !DIExpression()), !dbg !2707
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2709, metadata !DIExpression()), !dbg !2710
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !2711, metadata !DIExpression()), !dbg !2712
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !2713, metadata !DIExpression()), !dbg !2714
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !2715, metadata !DIExpression()), !dbg !2716
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2717, metadata !DIExpression()), !dbg !2718
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !2719, metadata !DIExpression()), !dbg !2720
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !2721, metadata !DIExpression()), !dbg !2722
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2723, metadata !DIExpression()), !dbg !2728
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2730, metadata !DIExpression()), !dbg !2731
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2732, metadata !DIExpression()), !dbg !2733
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !2734, metadata !DIExpression()), !dbg !2735
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !2736, metadata !DIExpression()), !dbg !2737
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2740
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2741
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !2742
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2743
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2743
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2744
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2745
  %conv.i.i = trunc i64 %4 to i32, !dbg !2745
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #8, !dbg !2746
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2747
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2747
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !2747
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2748
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !2749
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !2750
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2751
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !2752
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !2753
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2754
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !2755
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !2755
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !2755
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !2716
  br label %do.body.i.i.i, !dbg !2756

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !2757
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !2757
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !2757
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !2757
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !2757
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !2757
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !2760

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !2761

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2762
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !2763
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !2764
  %add.i.i.i = add i32 %19, %20, !dbg !2765
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !2696
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !2696
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !2696
  %23 = load i32, i32* %22, align 4, !dbg !2696
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !2696
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !2696
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !2696
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !2696
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !2696
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !2696
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !2696
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !2696
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !2696
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #7, !dbg !2696, !srcloc !2766
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !2696
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !2696
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !2696
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !2696
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !2767
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !2767
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !2767
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !2767
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !2767
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !2767
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !2696

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !2767
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !2767
  store i32 %31, i32* %32, align 4, !dbg !2767
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !2767

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !2696
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !2696
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !2696
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !2696
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !2696
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !2767
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !2696
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !2769
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !2770
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !2771, !llvm.loop !2772

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !2774
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !2775
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !2776
  ret void, !dbg !2777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !2778 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  ret i1 true, !dbg !2786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !2787 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2791, metadata !DIExpression()), !dbg !2792
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  ret void, !dbg !2797
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2163, !2164, !2165, !2166}
!llvm.ident = !{!2167}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_exynos_trng_driver_init164", scope: !2, file: !3, line: 230, type: !206, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2070, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/exynos-trng.c", directory: "/home/lizy2001/genbc/linux")
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
!55 = !{!56, !59, !61, !62, !2063, !180, !206, !168, !2065, !723, !2068}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !58, line: 76, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !60, line: 148, baseType: !7)
!60 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exynos_trng_dev", file: !3, line: 48, size: 1088, elements: !64)
!64 = !{!65, !2028, !2029, !2032}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !63, file: !3, line: 49, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !68)
!68 = !{!69, !1577, !1578, !1581, !1582, !1633, !1727, !1728, !1729, !1730, !1731, !1740, !1845, !1858, !1861, !1862, !1866, !1868, !1869, !1870, !1874, !1880, !1881, !1884, !1888, !1978, !1981, !1982, !1983, !1984, !2016, !2017, !2018, !2021, !2024, !2025, !2026, !2027}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !67, file: !30, line: 462, baseType: !70, size: 512)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !71, line: 64, size: 512, elements: !72)
!71 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !77, !83, !85, !146, !1414, !1567, !1572, !1573, !1574, !1575, !1576}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 65, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !70, file: !71, line: 66, baseType: !78, size: 128, offset: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !60, line: 178, size: 128, elements: !79)
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !60, line: 179, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !78, file: !60, line: 179, baseType: !81, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !71, line: 67, baseType: !84, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !70, file: !71, line: 68, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !71, line: 192, size: 704, elements: !88)
!88 = !{!89, !90, !106, !107}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !87, file: !71, line: 193, baseType: !78, size: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !87, file: !71, line: 194, baseType: !91, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !92, line: 83, baseType: !93)
!92 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !92, line: 71, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 72, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 72, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !96, file: !92, line: 73, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !92, line: 20, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !99, file: !92, line: 21, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !103, line: 25, baseType: !104)
!103 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 25, elements: !105)
!105 = !{}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !87, file: !71, line: 195, baseType: !70, size: 512, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !87, file: !71, line: 196, baseType: !108, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !71, line: 156, size: 192, elements: !111)
!111 = !{!112, !118, !123}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !110, file: !71, line: 157, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !86, !84}
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !71, line: 158, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!74, !86, !84}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !110, file: !71, line: 159, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!117, !86, !84, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !71, line: 148, size: 20736, elements: !130)
!130 = !{!131, !136, !140, !141, !145}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !129, file: !71, line: 149, baseType: !132, size: 192)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 192, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!134 = !{!135}
!135 = !DISubrange(count: 3)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !129, file: !71, line: 150, baseType: !137, size: 4096, offset: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4096, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !129, file: !71, line: 151, baseType: !117, size: 32, offset: 4288)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !129, file: !71, line: 152, baseType: !142, size: 16384, offset: 4320)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16384, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 2048)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !129, file: !71, line: 153, baseType: !117, size: 32, offset: 20704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !70, file: !71, line: 69, baseType: !147, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !71, line: 138, size: 448, elements: !149)
!149 = !{!150, !154, !183, !185, !1361, !1392, !1396}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !71, line: 139, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !84}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !148, file: !71, line: 140, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !158, line: 230, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !176}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !157, file: !158, line: 231, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !84, !169, !133}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !60, line: 60, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !166, line: 73, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !166, line: 15, baseType: !168)
!168 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !158, line: 30, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !158, line: 31, baseType: !74, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !170, file: !158, line: 32, baseType: !174, size: 16, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !60, line: 19, baseType: !175)
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !157, file: !158, line: 232, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!164, !84, !169, !74, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 55, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !166, line: 72, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !166, line: 16, baseType: !61)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !148, file: !71, line: 141, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !148, file: !71, line: 142, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !158, line: 84, size: 320, elements: !190)
!190 = !{!191, !192, !196, !1358, !1359}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !158, line: 85, baseType: !74, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !189, file: !158, line: 86, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!174, !84, !169, !117}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !189, file: !158, line: 88, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!174, !84, !200, !117}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !158, line: 168, size: 448, elements: !202)
!202 = !{!203, !204, !205, !207, !217, !218}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !201, file: !158, line: 169, baseType: !170, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !158, line: 170, baseType: !180, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !201, file: !158, line: 171, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !201, file: !158, line: 172, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!164, !211, !84, !200, !133, !214, !180}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !213, line: 526, flags: DIFlagFwdDecl)
!213 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !60, line: 46, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !166, line: 88, baseType: !216)
!216 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !201, file: !158, line: 174, baseType: !208, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !201, file: !158, line: 176, baseType: !219, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!117, !211, !84, !200, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !224, line: 305, size: 1472, elements: !225)
!224 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !228, !229, !230, !238, !239, !1332, !1338, !1339, !1344, !1345, !1348, !1352, !1353, !1354, !1355, !1356}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !223, file: !224, line: 308, baseType: !61, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !223, file: !224, line: 309, baseType: !61, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !223, file: !224, line: 313, baseType: !222, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !223, file: !224, line: 313, baseType: !222, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !223, file: !224, line: 315, baseType: !231, size: 192, align: 64, offset: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !232, line: 24, size: 192, align: 64, elements: !233)
!232 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !235, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !231, file: !232, line: 25, baseType: !61, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !231, file: !232, line: 26, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !231, file: !232, line: 27, baseType: !236, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !223, file: !224, line: 323, baseType: !61, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !223, file: !224, line: 327, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !224, line: 388, size: 7296, elements: !242)
!242 = !{!243, !1328}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !224, line: 389, baseType: !244, size: 7296)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !224, line: 389, size: 7296, elements: !245)
!245 = !{!246, !247, !251, !257, !261, !262, !263, !264, !265, !273, !278, !279, !280, !281, !290, !291, !292, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !335, !338, !386, !387, !1299, !1300, !1303, !1306, !1307, !1310, !1311, !1312, !1315, !1327}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !244, file: !224, line: 390, baseType: !222, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !244, file: !224, line: 391, baseType: !248, size: 64, offset: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !232, line: 31, size: 64, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !248, file: !232, line: 32, baseType: !236, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !244, file: !224, line: 392, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !253, line: 23, baseType: !254)
!253 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !255, line: 31, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!256 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !244, file: !224, line: 394, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!61, !211, !61, !61, !61, !61}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !244, file: !224, line: 398, baseType: !61, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !244, file: !224, line: 399, baseType: !61, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !244, file: !224, line: 405, baseType: !61, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !244, file: !224, line: 406, baseType: !61, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !244, file: !224, line: 407, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !213, line: 286, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 286, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !268, file: !213, line: 286, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !272, line: 18, baseType: !61)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !244, file: !224, line: 416, baseType: !274, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !60, line: 168, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 166, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !275, file: !60, line: 167, baseType: !117, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !244, file: !224, line: 428, baseType: !274, size: 32, offset: 608)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !244, file: !224, line: 437, baseType: !274, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !244, file: !224, line: 447, baseType: !274, size: 32, offset: 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !244, file: !224, line: 450, baseType: !282, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !283, line: 13, baseType: !284)
!283 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !60, line: 175, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 173, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !60, line: 174, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !253, line: 22, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !255, line: 30, baseType: !216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !244, file: !224, line: 452, baseType: !117, size: 32, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !244, file: !224, line: 454, baseType: !91, offset: 800)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !244, file: !224, line: 457, baseType: !293, size: 256, offset: 832)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !294, line: 35, size: 256, elements: !295)
!294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !297, !298, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !293, file: !294, line: 36, baseType: !282, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !293, file: !294, line: 42, baseType: !282, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !293, file: !294, line: 46, baseType: !299, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !92, line: 29, baseType: !99)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !293, file: !294, line: 47, baseType: !78, size: 128, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !244, file: !224, line: 459, baseType: !78, size: 128, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !244, file: !224, line: 466, baseType: !61, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !244, file: !224, line: 467, baseType: !61, size: 64, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !244, file: !224, line: 469, baseType: !61, size: 64, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !244, file: !224, line: 470, baseType: !61, size: 64, offset: 1408)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !244, file: !224, line: 471, baseType: !284, size: 64, offset: 1472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !244, file: !224, line: 472, baseType: !61, size: 64, offset: 1536)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !244, file: !224, line: 473, baseType: !61, size: 64, offset: 1600)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !244, file: !224, line: 474, baseType: !61, size: 64, offset: 1664)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !244, file: !224, line: 475, baseType: !61, size: 64, offset: 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !244, file: !224, line: 477, baseType: !91, offset: 1792)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !244, file: !224, line: 478, baseType: !61, size: 64, offset: 1792)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !244, file: !224, line: 478, baseType: !61, size: 64, offset: 1856)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !244, file: !224, line: 478, baseType: !61, size: 64, offset: 1920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !244, file: !224, line: 478, baseType: !61, size: 64, offset: 1984)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !244, file: !224, line: 479, baseType: !61, size: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !244, file: !224, line: 479, baseType: !61, size: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !244, file: !224, line: 479, baseType: !61, size: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !244, file: !224, line: 480, baseType: !61, size: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !244, file: !224, line: 480, baseType: !61, size: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !244, file: !224, line: 480, baseType: !61, size: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !244, file: !224, line: 480, baseType: !61, size: 64, offset: 2432)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !244, file: !224, line: 482, baseType: !324, size: 2816, offset: 2496)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 44)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !244, file: !224, line: 488, baseType: !328, size: 256, offset: 5312)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !329, line: 60, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !328, file: !329, line: 61, baseType: !332, size: 256)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 4)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !244, file: !224, line: 490, baseType: !336, size: 64, offset: 5568)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !224, line: 490, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !244, file: !224, line: 493, baseType: !339, size: 896, offset: 5632)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !340, line: 53, baseType: !341)
!340 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 13, size: 896, elements: !342)
!342 = !{!343, !344, !345, !346, !349, !350, !357, !358, !378, !379, !382}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !341, file: !340, line: 18, baseType: !252, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !341, file: !340, line: 28, baseType: !284, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !341, file: !340, line: 31, baseType: !293, size: 256, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !341, file: !340, line: 32, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !340, line: 32, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !341, file: !340, line: 37, baseType: !175, size: 16, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !340, line: 40, baseType: !351, size: 192, offset: 512)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !352, line: 53, size: 192, elements: !353)
!352 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 54, baseType: !282, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 55, baseType: !91, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 59, baseType: !78, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !341, file: !340, line: 41, baseType: !206, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !341, file: !340, line: 42, baseType: !359, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !362, line: 13, size: 896, elements: !363)
!362 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !361, file: !362, line: 14, baseType: !206, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !362, line: 15, baseType: !61, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !361, file: !362, line: 17, baseType: !61, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !361, file: !362, line: 17, baseType: !61, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !361, file: !362, line: 19, baseType: !168, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !361, file: !362, line: 21, baseType: !168, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !361, file: !362, line: 22, baseType: !168, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !361, file: !362, line: 23, baseType: !168, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !361, file: !362, line: 24, baseType: !168, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !361, file: !362, line: 25, baseType: !168, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !361, file: !362, line: 26, baseType: !168, size: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !361, file: !362, line: 27, baseType: !168, size: 64, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !361, file: !362, line: 28, baseType: !168, size: 64, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !361, file: !362, line: 29, baseType: !168, size: 64, offset: 832)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !341, file: !340, line: 44, baseType: !274, size: 32, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !341, file: !340, line: 50, baseType: !380, size: 16, offset: 864)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !253, line: 19, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !255, line: 24, baseType: !175)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !341, file: !340, line: 51, baseType: !383, size: 16, offset: 880)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !253, line: 18, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !255, line: 23, baseType: !385)
!385 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !224, line: 495, baseType: !61, size: 64, offset: 6528)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !244, file: !224, line: 497, baseType: !388, size: 64, offset: 6592)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !224, line: 381, size: 384, elements: !390)
!390 = !{!391, !392, !1298}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !389, file: !224, line: 382, baseType: !274, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !389, file: !224, line: 383, baseType: !393, size: 128, offset: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !224, line: 376, size: 128, elements: !394)
!394 = !{!395, !1296}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !393, file: !224, line: 377, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !398, line: 640, size: 48640, elements: !399)
!398 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !408, !410, !411, !417, !418, !419, !420, !421, !422, !423, !424, !428, !446, !457, !552, !553, !554, !565, !566, !568, !569, !570, !571, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !650, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !706, !708, !709, !710, !722, !724, !725, !726, !727, !728, !734, !735, !736, !737, !738, !739, !740, !752, !757, !762, !763, !764, !767, !771, !774, !777, !780, !783, !787, !790, !793, !799, !800, !801, !807, !808, !809, !810, !811, !820, !821, !822, !823, !824, !829, !830, !831, !834, !835, !838, !841, !844, !847, !850, !853, !854, !934, !937, !940, !941, !944, !945, !946, !952, !953, !954, !967, !968, !969, !981, !986, !989, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !397, file: !398, line: 646, baseType: !401, size: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !402, line: 56, size: 128, elements: !403)
!402 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 57, baseType: !61, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !401, file: !402, line: 58, baseType: !406, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !253, line: 21, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !255, line: 27, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !398, line: 649, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !397, file: !398, line: 657, baseType: !206, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !397, file: !398, line: 658, baseType: !412, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !413, line: 113, baseType: !414)
!413 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !413, line: 111, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !414, file: !413, line: 112, baseType: !274, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !398, line: 660, baseType: !7, size: 32, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !397, file: !398, line: 661, baseType: !7, size: 32, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !397, file: !398, line: 684, baseType: !117, size: 32, offset: 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !397, file: !398, line: 686, baseType: !117, size: 32, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !397, file: !398, line: 687, baseType: !117, size: 32, offset: 416)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !397, file: !398, line: 688, baseType: !117, size: 32, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !397, file: !398, line: 689, baseType: !7, size: 32, offset: 480)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !397, file: !398, line: 691, baseType: !425, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !398, line: 691, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !397, file: !398, line: 692, baseType: !429, size: 832, offset: 576)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !398, line: 451, size: 832, elements: !430)
!430 = !{!431, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !429, file: !398, line: 453, baseType: !432, size: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !398, line: 325, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !432, file: !398, line: 326, baseType: !61, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !432, file: !398, line: 327, baseType: !406, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !429, file: !398, line: 454, baseType: !231, size: 192, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !429, file: !398, line: 455, baseType: !78, size: 128, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !429, file: !398, line: 456, baseType: !7, size: 32, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !429, file: !398, line: 458, baseType: !252, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !429, file: !398, line: 459, baseType: !252, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !429, file: !398, line: 460, baseType: !252, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !429, file: !398, line: 461, baseType: !252, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !429, file: !398, line: 463, baseType: !252, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !429, file: !398, line: 465, baseType: !445, offset: 832)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !398, line: 415, elements: !105)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !397, file: !398, line: 693, baseType: !447, size: 384, offset: 1408)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !398, line: 489, size: 384, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !447, file: !398, line: 490, baseType: !78, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !447, file: !398, line: 491, baseType: !61, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !447, file: !398, line: 492, baseType: !61, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !447, file: !398, line: 493, baseType: !7, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !447, file: !398, line: 494, baseType: !175, size: 16, offset: 288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !447, file: !398, line: 495, baseType: !175, size: 16, offset: 304)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !447, file: !398, line: 497, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !397, file: !398, line: 697, baseType: !458, size: 1792, offset: 1792)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !398, line: 507, size: 1792, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !549, !550}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !458, file: !398, line: 508, baseType: !231, size: 192, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !458, file: !398, line: 515, baseType: !252, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !458, file: !398, line: 516, baseType: !252, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !458, file: !398, line: 517, baseType: !252, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !458, file: !398, line: 518, baseType: !252, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !458, file: !398, line: 519, baseType: !252, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !458, file: !398, line: 526, baseType: !288, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !458, file: !398, line: 527, baseType: !252, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !398, line: 528, baseType: !7, size: 32, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !458, file: !398, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !458, file: !398, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !458, file: !398, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !458, file: !398, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !458, file: !398, line: 563, baseType: !474, size: 512, offset: 704)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !475)
!475 = !{!476, !484, !485, !490, !542, !546, !547, !548}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !6, line: 119, baseType: !477, size: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !478, line: 9, size: 256, elements: !479)
!478 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !478, line: 10, baseType: !231, size: 192, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !477, file: !478, line: 11, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !483, line: 29, baseType: !288)
!483 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !474, file: !6, line: 120, baseType: !482, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !474, file: !6, line: 121, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!5, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !474, file: !6, line: 122, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !493)
!493 = !{!494, !514, !515, !518, !528, !529, !537, !541}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !492, file: !6, line: 160, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !6, line: 215, baseType: !299)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !496, file: !6, line: 216, baseType: !7, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !496, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !496, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !496, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !496, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !496, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !496, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !496, file: !6, line: 233, baseType: !482, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !496, file: !6, line: 234, baseType: !489, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !496, file: !6, line: 235, baseType: !482, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !496, file: !6, line: 236, baseType: !489, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !496, file: !6, line: 237, baseType: !511, size: 4096, offset: 512)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 4096, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !492, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !492, file: !6, line: 162, baseType: !516, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !60, line: 27, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !166, line: 96, baseType: !117)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !492, file: !6, line: 163, baseType: !519, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !520, line: 276, baseType: !521)
!520 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !520, line: 276, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !521, file: !520, line: 276, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !520, line: 70, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !520, line: 65, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !525, file: !520, line: 66, baseType: !7, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !492, file: !6, line: 164, baseType: !489, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !492, file: !6, line: 165, baseType: !530, size: 128, offset: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !478, line: 14, size: 128, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !530, file: !478, line: 15, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !232, line: 125, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !533, file: !232, line: 126, baseType: !248, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !533, file: !232, line: 127, baseType: !236, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !492, file: !6, line: 166, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!482}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !492, file: !6, line: 167, baseType: !482, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !474, file: !6, line: 123, baseType: !543, size: 8, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !253, line: 17, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !255, line: 21, baseType: !545)
!545 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !474, file: !6, line: 124, baseType: !543, size: 8, offset: 456)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !474, file: !6, line: 125, baseType: !543, size: 8, offset: 464)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !474, file: !6, line: 126, baseType: !543, size: 8, offset: 472)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !458, file: !398, line: 572, baseType: !474, size: 512, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !458, file: !398, line: 580, baseType: !551, size: 64, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !397, file: !398, line: 721, baseType: !7, size: 32, offset: 3584)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !397, file: !398, line: 722, baseType: !117, size: 32, offset: 3616)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !397, file: !398, line: 723, baseType: !555, size: 64, offset: 3648)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !558, line: 17, baseType: !559)
!558 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !558, line: 17, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !559, file: !558, line: 17, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 1)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !397, file: !398, line: 724, baseType: !557, size: 64, offset: 3712)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !397, file: !398, line: 749, baseType: !567, offset: 3776)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !398, line: 290, elements: !105)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !397, file: !398, line: 751, baseType: !78, size: 128, offset: 3776)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !397, file: !398, line: 757, baseType: !240, size: 64, offset: 3904)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !397, file: !398, line: 758, baseType: !240, size: 64, offset: 3968)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !397, file: !398, line: 761, baseType: !572, size: 320, offset: 4032)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !329, line: 34, size: 320, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !572, file: !329, line: 35, baseType: !252, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !572, file: !329, line: 36, baseType: !576, size: 256, offset: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !333)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !397, file: !398, line: 766, baseType: !117, size: 32, offset: 4352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !397, file: !398, line: 767, baseType: !117, size: 32, offset: 4384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !397, file: !398, line: 768, baseType: !117, size: 32, offset: 4416)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !397, file: !398, line: 770, baseType: !117, size: 32, offset: 4448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !397, file: !398, line: 772, baseType: !61, size: 64, offset: 4480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !397, file: !398, line: 775, baseType: !7, size: 32, offset: 4544)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !397, file: !398, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !397, file: !398, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !397, file: !398, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !397, file: !398, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !397, file: !398, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !397, file: !398, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !397, file: !398, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !397, file: !398, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !397, file: !398, line: 831, baseType: !61, size: 64, offset: 4672)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !397, file: !398, line: 833, baseType: !593, size: 384, offset: 4736)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !594)
!594 = !{!595, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !593, file: !12, line: 26, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!168, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !12, line: 27, baseType: !601, size: 320, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !12, line: 27, size: 320, elements: !602)
!602 = !{!603, !613, !640}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !601, file: !12, line: 36, baseType: !604, size: 320)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !12, line: 29, size: 320, elements: !605)
!605 = !{!606, !608, !609, !610, !611, !612}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !604, file: !12, line: 30, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !604, file: !12, line: 31, baseType: !406, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !12, line: 32, baseType: !406, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !604, file: !12, line: 33, baseType: !406, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !604, file: !12, line: 34, baseType: !252, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !604, file: !12, line: 35, baseType: !607, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !601, file: !12, line: 46, baseType: !614, size: 192)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !12, line: 38, size: 192, elements: !615)
!615 = !{!616, !617, !618, !639}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !614, file: !12, line: 39, baseType: !516, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !12, line: 41, baseType: !619, size: 64, offset: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !12, line: 41, size: 64, elements: !620)
!620 = !{!621, !629}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !619, file: !12, line: 42, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !624, line: 7, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !623, file: !624, line: 8, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !166, line: 93, baseType: !216)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !623, file: !624, line: 9, baseType: !216, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !619, file: !12, line: 43, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !632, line: 7, size: 64, elements: !633)
!632 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !638}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !631, file: !632, line: 8, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !632, line: 5, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !253, line: 20, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !255, line: 26, baseType: !117)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !631, file: !632, line: 9, baseType: !636, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !614, file: !12, line: 45, baseType: !252, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !601, file: !12, line: 54, baseType: !641, size: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !12, line: 48, size: 256, elements: !642)
!642 = !{!643, !646, !647, !648, !649}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !641, file: !12, line: 49, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !641, file: !12, line: 50, baseType: !117, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !641, file: !12, line: 51, baseType: !117, size: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !641, file: !12, line: 52, baseType: !61, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !641, file: !12, line: 53, baseType: !61, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !397, file: !398, line: 835, baseType: !651, size: 32, offset: 5120)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !60, line: 22, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !166, line: 28, baseType: !117)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !397, file: !398, line: 836, baseType: !651, size: 32, offset: 5152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !397, file: !398, line: 840, baseType: !61, size: 64, offset: 5184)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !397, file: !398, line: 849, baseType: !396, size: 64, offset: 5248)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !397, file: !398, line: 852, baseType: !396, size: 64, offset: 5312)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !397, file: !398, line: 857, baseType: !78, size: 128, offset: 5376)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !397, file: !398, line: 858, baseType: !78, size: 128, offset: 5504)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !397, file: !398, line: 859, baseType: !396, size: 64, offset: 5632)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !397, file: !398, line: 867, baseType: !78, size: 128, offset: 5696)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !397, file: !398, line: 868, baseType: !78, size: 128, offset: 5824)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !397, file: !398, line: 871, baseType: !663, size: 64, offset: 5952)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !665, line: 59, size: 768, elements: !666)
!665 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !668, !669, !670, !681, !682, !689, !698}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 61, baseType: !412, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !664, file: !665, line: 62, baseType: !7, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !664, file: !665, line: 63, baseType: !91, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !664, file: !665, line: 65, baseType: !671, size: 256, offset: 64)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 256, elements: !333)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !60, line: 182, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !672, file: !60, line: 183, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !60, line: 186, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !60, line: 187, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !676, file: !60, line: 187, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !664, file: !665, line: 66, baseType: !672, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !664, file: !665, line: 68, baseType: !683, size: 128, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !684, line: 40, baseType: !685)
!684 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !684, line: 36, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !685, file: !684, line: 37, baseType: !91)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !685, file: !684, line: 38, baseType: !78, size: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !665, line: 69, baseType: !690, size: 128, align: 64, offset: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !60, line: 216, size: 128, align: 64, elements: !691)
!691 = !{!692, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !60, line: 217, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !690, file: !60, line: 218, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !693}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !664, file: !665, line: 70, baseType: !699, size: 128, offset: 640)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 128, elements: !563)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !665, line: 54, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !700, file: !665, line: 55, baseType: !117, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !700, file: !665, line: 56, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !665, line: 56, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !397, file: !398, line: 872, baseType: !707, size: 512, offset: 6016)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 512, elements: !333)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !397, file: !398, line: 873, baseType: !78, size: 128, offset: 6528)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !397, file: !398, line: 874, baseType: !78, size: 128, offset: 6656)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !397, file: !398, line: 876, baseType: !711, size: 64, offset: 6784)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !713, line: 26, size: 192, elements: !714)
!713 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !712, file: !713, line: 27, baseType: !7, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !712, file: !713, line: 28, baseType: !717, size: 128, offset: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !718, line: 43, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !718, line: 44, baseType: !299)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !717, file: !718, line: 45, baseType: !78, size: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !397, file: !398, line: 879, baseType: !723, size: 64, offset: 6848)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !397, file: !398, line: 882, baseType: !723, size: 64, offset: 6912)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !397, file: !398, line: 884, baseType: !252, size: 64, offset: 6976)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !397, file: !398, line: 885, baseType: !252, size: 64, offset: 7040)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !397, file: !398, line: 890, baseType: !252, size: 64, offset: 7104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !397, file: !398, line: 891, baseType: !729, size: 128, offset: 7168)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !398, line: 242, size: 128, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !729, file: !398, line: 244, baseType: !252, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !729, file: !398, line: 245, baseType: !252, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !398, line: 246, baseType: !299, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !397, file: !398, line: 900, baseType: !61, size: 64, offset: 7296)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !397, file: !398, line: 901, baseType: !61, size: 64, offset: 7360)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !397, file: !398, line: 904, baseType: !252, size: 64, offset: 7424)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !397, file: !398, line: 907, baseType: !252, size: 64, offset: 7488)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !397, file: !398, line: 910, baseType: !61, size: 64, offset: 7552)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !397, file: !398, line: 911, baseType: !61, size: 64, offset: 7616)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !397, file: !398, line: 914, baseType: !741, size: 640, offset: 7680)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !742, line: 123, size: 640, elements: !743)
!742 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !750, !751}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !741, file: !742, line: 124, baseType: !745, size: 576)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 576, elements: !134)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !742, line: 108, size: 192, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !746, file: !742, line: 109, baseType: !252, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !746, file: !742, line: 110, baseType: !530, size: 128, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !741, file: !742, line: 125, baseType: !7, size: 32, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !741, file: !742, line: 126, baseType: !7, size: 32, offset: 608)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !397, file: !398, line: 917, baseType: !753, size: 192, offset: 8320)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !742, line: 134, size: 192, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !753, file: !742, line: 135, baseType: !690, size: 128, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !753, file: !742, line: 136, baseType: !7, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !397, file: !398, line: 923, baseType: !758, size: 64, offset: 8512)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !761, line: 11, flags: DIFlagFwdDecl)
!761 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !397, file: !398, line: 926, baseType: !758, size: 64, offset: 8576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !397, file: !398, line: 929, baseType: !758, size: 64, offset: 8640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !397, file: !398, line: 933, baseType: !765, size: 64, offset: 8704)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !398, line: 933, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !397, file: !398, line: 943, baseType: !768, size: 128, offset: 8768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 16)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !397, file: !398, line: 945, baseType: !772, size: 64, offset: 8896)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !398, line: 49, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !397, file: !398, line: 956, baseType: !775, size: 64, offset: 8960)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !398, line: 45, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !397, file: !398, line: 959, baseType: !778, size: 64, offset: 9024)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !398, line: 959, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !397, file: !398, line: 962, baseType: !781, size: 64, offset: 9088)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !398, line: 66, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !397, file: !398, line: 966, baseType: !784, size: 64, offset: 9152)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !786, line: 35, flags: DIFlagFwdDecl)
!786 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!787 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !397, file: !398, line: 969, baseType: !788, size: 64, offset: 9216)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !742, line: 223, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !397, file: !398, line: 970, baseType: !791, size: 64, offset: 9280)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !398, line: 62, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !397, file: !398, line: 971, baseType: !794, size: 64, offset: 9344)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !795, line: 25, baseType: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 23, size: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !796, file: !795, line: 24, baseType: !562, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !397, file: !398, line: 972, baseType: !794, size: 64, offset: 9408)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !397, file: !398, line: 974, baseType: !794, size: 64, offset: 9472)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !397, file: !398, line: 975, baseType: !802, size: 192, offset: 9536)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !803, line: 30, size: 192, elements: !804)
!803 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !802, file: !803, line: 31, baseType: !78, size: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !802, file: !803, line: 32, baseType: !794, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !397, file: !398, line: 976, baseType: !61, size: 64, offset: 9728)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !397, file: !398, line: 977, baseType: !180, size: 64, offset: 9792)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !397, file: !398, line: 978, baseType: !7, size: 32, offset: 9856)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !397, file: !398, line: 980, baseType: !693, size: 64, offset: 9920)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !397, file: !398, line: 989, baseType: !812, size: 128, offset: 9984)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !813, line: 35, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !812, file: !813, line: 36, baseType: !117, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !812, file: !813, line: 37, baseType: !274, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !812, file: !813, line: 38, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !813, line: 23, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !397, file: !398, line: 992, baseType: !252, size: 64, offset: 10112)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !397, file: !398, line: 993, baseType: !252, size: 64, offset: 10176)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !397, file: !398, line: 996, baseType: !91, offset: 10240)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !397, file: !398, line: 999, baseType: !299, offset: 10240)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !397, file: !398, line: 1001, baseType: !825, size: 64, offset: 10240)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !398, line: 636, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !398, line: 637, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !397, file: !398, line: 1005, baseType: !533, size: 128, offset: 10304)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !397, file: !398, line: 1007, baseType: !396, size: 64, offset: 10432)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !397, file: !398, line: 1009, baseType: !832, size: 64, offset: 10496)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !398, line: 1009, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !397, file: !398, line: 1043, baseType: !206, size: 64, offset: 10560)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !397, file: !398, line: 1046, baseType: !836, size: 64, offset: 10624)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !398, line: 41, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !397, file: !398, line: 1050, baseType: !839, size: 64, offset: 10688)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !398, line: 42, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !397, file: !398, line: 1054, baseType: !842, size: 64, offset: 10752)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !398, line: 55, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !397, file: !398, line: 1056, baseType: !845, size: 64, offset: 10816)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !398, line: 40, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !397, file: !398, line: 1058, baseType: !848, size: 64, offset: 10880)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !398, line: 47, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !397, file: !398, line: 1061, baseType: !851, size: 64, offset: 10944)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !398, line: 43, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !397, file: !398, line: 1064, baseType: !61, size: 64, offset: 11008)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !397, file: !398, line: 1065, baseType: !855, size: 64, offset: 11072)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !803, line: 14, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !803, line: 12, size: 384, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !803, line: 13, baseType: !860, size: 384)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !803, line: 13, size: 384, elements: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !860, file: !803, line: 13, baseType: !117, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !860, file: !803, line: 13, baseType: !117, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !860, file: !803, line: 13, baseType: !117, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !860, file: !803, line: 13, baseType: !866, size: 256, offset: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !867, line: 32, size: 256, elements: !868)
!867 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !875, !888, !894, !903, !923, !928}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !866, file: !867, line: 37, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 34, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !870, file: !867, line: 35, baseType: !652, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !870, file: !867, line: 36, baseType: !874, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !166, line: 49, baseType: !7)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !866, file: !867, line: 45, baseType: !876, size: 192)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 40, size: 192, elements: !877)
!877 = !{!878, !880, !881, !887}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !876, file: !867, line: 41, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !166, line: 95, baseType: !117)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !876, file: !867, line: 42, baseType: !117, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !876, file: !867, line: 43, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !867, line: 11, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !867, line: 8, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !883, file: !867, line: 9, baseType: !117, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !883, file: !867, line: 10, baseType: !206, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !876, file: !867, line: 44, baseType: !117, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !866, file: !867, line: 52, baseType: !889, size: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 48, size: 128, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !889, file: !867, line: 49, baseType: !652, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !889, file: !867, line: 50, baseType: !874, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !889, file: !867, line: 51, baseType: !882, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !866, file: !867, line: 61, baseType: !895, size: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 55, size: 256, elements: !896)
!896 = !{!897, !898, !899, !900, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !895, file: !867, line: 56, baseType: !652, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !895, file: !867, line: 57, baseType: !874, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !895, file: !867, line: 58, baseType: !117, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !895, file: !867, line: 59, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !166, line: 94, baseType: !167)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !895, file: !867, line: 60, baseType: !901, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !866, file: !867, line: 95, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 64, size: 256, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !904, file: !867, line: 65, baseType: !206, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !867, line: 77, baseType: !908, size: 192, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !867, line: 77, size: 192, elements: !909)
!909 = !{!910, !911, !918}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !908, file: !867, line: 82, baseType: !385, size: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !908, file: !867, line: 88, baseType: !912, size: 192)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !867, line: 84, size: 192, elements: !913)
!913 = !{!914, !916, !917}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !912, file: !867, line: 85, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !912, file: !867, line: 86, baseType: !206, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !912, file: !867, line: 87, baseType: !206, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !908, file: !867, line: 93, baseType: !919, size: 96)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !867, line: 90, size: 96, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !919, file: !867, line: 91, baseType: !915, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !919, file: !867, line: 92, baseType: !407, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !866, file: !867, line: 101, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 98, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !924, file: !867, line: 99, baseType: !168, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !924, file: !867, line: 100, baseType: !117, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !866, file: !867, line: 108, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !867, line: 104, size: 128, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !929, file: !867, line: 105, baseType: !206, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !929, file: !867, line: 106, baseType: !117, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !929, file: !867, line: 107, baseType: !7, size: 32, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !397, file: !398, line: 1067, baseType: !935, offset: 11136)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !936, line: 12, elements: !105)
!936 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !397, file: !398, line: 1099, baseType: !938, size: 64, offset: 11136)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !398, line: 56, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !397, file: !398, line: 1103, baseType: !78, size: 128, offset: 11200)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !397, file: !398, line: 1104, baseType: !942, size: 64, offset: 11328)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !398, line: 46, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !397, file: !398, line: 1105, baseType: !351, size: 192, offset: 11392)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !397, file: !398, line: 1106, baseType: !7, size: 32, offset: 11584)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !397, file: !398, line: 1109, baseType: !947, size: 128, offset: 11648)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 128, elements: !950)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !398, line: 51, flags: DIFlagFwdDecl)
!950 = !{!951}
!951 = !DISubrange(count: 2)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !397, file: !398, line: 1110, baseType: !351, size: 192, offset: 11776)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !397, file: !398, line: 1111, baseType: !78, size: 128, offset: 11968)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !397, file: !398, line: 1173, baseType: !955, size: 64, offset: 12096)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !957, line: 62, size: 256, align: 256, elements: !958)
!957 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!958 = !{!959, !960, !961, !966}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !956, file: !957, line: 75, baseType: !407, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !956, file: !957, line: 90, baseType: !407, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !956, file: !957, line: 124, baseType: !962, size: 64, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !957, line: 109, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !962, file: !957, line: 110, baseType: !254, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !962, file: !957, line: 112, baseType: !254, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !957, line: 144, baseType: !407, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !397, file: !398, line: 1174, baseType: !406, size: 32, offset: 12160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !397, file: !398, line: 1179, baseType: !61, size: 64, offset: 12224)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !397, file: !398, line: 1182, baseType: !970, size: 128, offset: 12288)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !329, line: 76, size: 128, elements: !971)
!971 = !{!972, !977, !980}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !970, file: !329, line: 85, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !974, line: 7, size: 64, elements: !975)
!974 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !973, file: !974, line: 12, baseType: !559, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !970, file: !329, line: 88, baseType: !978, size: 8, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !60, line: 30, baseType: !979)
!979 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !970, file: !329, line: 95, baseType: !978, size: 8, offset: 72)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !398, line: 1184, baseType: !982, size: 128, offset: 12416)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !398, line: 1184, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !982, file: !398, line: 1185, baseType: !412, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !982, file: !398, line: 1186, baseType: !690, size: 128, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !397, file: !398, line: 1190, baseType: !987, size: 64, offset: 12544)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !398, line: 53, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !397, file: !398, line: 1192, baseType: !990, size: 128, offset: 12608)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !329, line: 64, size: 128, elements: !991)
!991 = !{!992, !1085, !1086}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !990, file: !329, line: 65, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !224, line: 68, size: 512, align: 128, elements: !995)
!995 = !{!996, !997, !1077, !1084}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !224, line: 69, baseType: !61, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !224, line: 77, baseType: !998, size: 320, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !224, line: 77, size: 320, elements: !999)
!999 = !{!1000, !1009, !1014, !1042, !1050, !1056, !1069, !1076}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 78, baseType: !1001, size: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 78, size: 320, elements: !1002)
!1002 = !{!1003, !1004, !1007, !1008}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1001, file: !224, line: 84, baseType: !78, size: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1001, file: !224, line: 86, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !224, line: 26, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1001, file: !224, line: 87, baseType: !61, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1001, file: !224, line: 94, baseType: !61, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 96, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 96, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1010, file: !224, line: 101, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !60, line: 143, baseType: !252)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 103, baseType: !1015, size: 320)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 103, size: 320, elements: !1016)
!1016 = !{!1017, !1027, !1030, !1031}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !224, line: 104, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !224, line: 104, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1018, file: !224, line: 105, baseType: !78, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !224, line: 106, baseType: !1022, size: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !224, line: 106, size: 128, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !224, line: 107, baseType: !993, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1022, file: !224, line: 109, baseType: !117, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1022, file: !224, line: 110, baseType: !117, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1015, file: !224, line: 117, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !224, line: 117, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1015, file: !224, line: 119, baseType: !206, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !224, line: 120, baseType: !1032, size: 64, offset: 256)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !224, line: 120, size: 64, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1032, file: !224, line: 121, baseType: !206, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1032, file: !224, line: 122, baseType: !61, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !224, line: 123, baseType: !1037, size: 32)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1032, file: !224, line: 123, size: 32, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1037, file: !224, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1037, file: !224, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1037, file: !224, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 130, baseType: !1043, size: 192)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 130, size: 192, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1043, file: !224, line: 131, baseType: !61, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1043, file: !224, line: 134, baseType: !545, size: 8, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1043, file: !224, line: 135, baseType: !545, size: 8, offset: 72)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1043, file: !224, line: 136, baseType: !274, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1043, file: !224, line: 137, baseType: !7, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 139, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 139, size: 256, elements: !1052)
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1051, file: !224, line: 140, baseType: !61, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1051, file: !224, line: 141, baseType: !274, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1051, file: !224, line: 143, baseType: !78, size: 128, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 145, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 145, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1062, !1063, !1068}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1057, file: !224, line: 146, baseType: !61, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1057, file: !224, line: 147, baseType: !1061, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !213, line: 509, baseType: !993)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1057, file: !224, line: 148, baseType: !61, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !224, line: 149, baseType: !1064, size: 64, offset: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1057, file: !224, line: 149, size: 64, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1064, file: !224, line: 150, baseType: !240, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1064, file: !224, line: 151, baseType: !274, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1057, file: !224, line: 156, baseType: !91, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !224, line: 159, baseType: !1070, size: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !224, line: 159, size: 128, elements: !1071)
!1071 = !{!1072, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1070, file: !224, line: 161, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !224, line: 161, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1070, file: !224, line: 162, baseType: !206, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !998, file: !224, line: 176, baseType: !690, size: 128, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !224, line: 179, baseType: !1078, size: 32, offset: 384)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !224, line: 179, size: 32, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1078, file: !224, line: 184, baseType: !274, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1078, file: !224, line: 192, baseType: !7, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1078, file: !224, line: 194, baseType: !7, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1078, file: !224, line: 195, baseType: !117, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !994, file: !224, line: 199, baseType: !274, size: 32, offset: 416)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !990, file: !329, line: 67, baseType: !407, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !990, file: !329, line: 68, baseType: !407, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !397, file: !398, line: 1206, baseType: !117, size: 32, offset: 12736)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !397, file: !398, line: 1207, baseType: !117, size: 32, offset: 12768)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !397, file: !398, line: 1209, baseType: !61, size: 64, offset: 12800)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !397, file: !398, line: 1219, baseType: !252, size: 64, offset: 12864)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !397, file: !398, line: 1220, baseType: !252, size: 64, offset: 12928)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !397, file: !398, line: 1317, baseType: !117, size: 32, offset: 12992)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !397, file: !398, line: 1319, baseType: !396, size: 64, offset: 13056)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !397, file: !398, line: 1322, baseType: !1095, size: 64, offset: 13120)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1097, line: 56, size: 512, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1105, !1106, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1096, file: !1097, line: 57, baseType: !1095, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1096, file: !1097, line: 58, baseType: !206, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1096, file: !1097, line: 59, baseType: !61, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !1097, line: 60, baseType: !61, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1096, file: !1097, line: 61, baseType: !1104, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1096, file: !1097, line: 62, baseType: !7, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1096, file: !1097, line: 63, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !60, line: 153, baseType: !252)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1096, file: !1097, line: 64, baseType: !1109, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !397, file: !398, line: 1326, baseType: !412, size: 32, offset: 13184)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !397, file: !398, line: 1342, baseType: !206, size: 64, offset: 13248)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !397, file: !398, line: 1343, baseType: !254, size: 64, offset: 13312)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !397, file: !398, line: 1344, baseType: !252, size: 64, offset: 13376)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !397, file: !398, line: 1345, baseType: !254, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !397, file: !398, line: 1346, baseType: !254, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !397, file: !398, line: 1347, baseType: !254, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !397, file: !398, line: 1348, baseType: !690, size: 128, align: 64, offset: 13504)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !397, file: !398, line: 1358, baseType: !1120, size: 34816, offset: 13824)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1121, line: 485, size: 34816, elements: !1122)
!1121 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1152, !1153, !1154, !1155, !1156, !1157, !1160, !1161, !1162}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1120, file: !1121, line: 487, baseType: !1124, size: 192)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 192, elements: !134)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1126, line: 16, size: 64, elements: !1127)
!1126 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1125, file: !1126, line: 17, baseType: !380, size: 16)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1125, file: !1126, line: 18, baseType: !380, size: 16, offset: 16)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1125, file: !1126, line: 19, baseType: !380, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1125, file: !1126, line: 19, baseType: !380, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1125, file: !1126, line: 19, baseType: !380, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1125, file: !1126, line: 19, baseType: !380, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1125, file: !1126, line: 19, baseType: !380, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1125, file: !1126, line: 20, baseType: !380, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1125, file: !1126, line: 20, baseType: !380, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1125, file: !1126, line: 20, baseType: !380, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1125, file: !1126, line: 20, baseType: !380, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1125, file: !1126, line: 20, baseType: !380, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1125, file: !1126, line: 20, baseType: !380, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1120, file: !1121, line: 491, baseType: !61, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1120, file: !1121, line: 495, baseType: !175, size: 16, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1120, file: !1121, line: 496, baseType: !175, size: 16, offset: 272)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1120, file: !1121, line: 497, baseType: !175, size: 16, offset: 288)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1120, file: !1121, line: 498, baseType: !175, size: 16, offset: 304)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1120, file: !1121, line: 502, baseType: !61, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1120, file: !1121, line: 503, baseType: !61, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1120, file: !1121, line: 514, baseType: !1149, size: 256, offset: 448)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 256, elements: !333)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1121, line: 483, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1120, file: !1121, line: 516, baseType: !61, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1120, file: !1121, line: 518, baseType: !61, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1120, file: !1121, line: 520, baseType: !61, size: 64, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1120, file: !1121, line: 521, baseType: !61, size: 64, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1120, file: !1121, line: 522, baseType: !61, size: 64, offset: 960)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1120, file: !1121, line: 528, baseType: !1158, size: 64, offset: 1024)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1121, line: 10, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1120, file: !1121, line: 535, baseType: !61, size: 64, offset: 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1120, file: !1121, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1120, file: !1121, line: 540, baseType: !1163, size: 33280, offset: 1536)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1164, line: 317, size: 33280, elements: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1163, file: !1164, line: 330, baseType: !7, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1163, file: !1164, line: 337, baseType: !61, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1163, file: !1164, line: 348, baseType: !1169, size: 32768, offset: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1164, line: 304, size: 32768, elements: !1170)
!1170 = !{!1171, !1186, !1225, !1275, !1292}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1169, file: !1164, line: 305, baseType: !1172, size: 896)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1164, line: 12, size: 896, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1185}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1172, file: !1164, line: 13, baseType: !406, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1172, file: !1164, line: 14, baseType: !406, size: 32, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1172, file: !1164, line: 15, baseType: !406, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1172, file: !1164, line: 16, baseType: !406, size: 32, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1172, file: !1164, line: 17, baseType: !406, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1172, file: !1164, line: 18, baseType: !406, size: 32, offset: 160)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1172, file: !1164, line: 19, baseType: !406, size: 32, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1172, file: !1164, line: 22, baseType: !1182, size: 640, offset: 224)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 640, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 20)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1172, file: !1164, line: 25, baseType: !406, size: 32, offset: 864)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1169, file: !1164, line: 306, baseType: !1187, size: 4096, align: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1164, line: 34, size: 4096, align: 128, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1208, !1209, !1210, !1214, !1216, !1220}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1187, file: !1164, line: 35, baseType: !380, size: 16)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1187, file: !1164, line: 36, baseType: !380, size: 16, offset: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1187, file: !1164, line: 37, baseType: !380, size: 16, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1187, file: !1164, line: 38, baseType: !380, size: 16, offset: 48)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1164, line: 39, baseType: !1194, size: 128, offset: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1164, line: 39, size: 128, elements: !1195)
!1195 = !{!1196, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1164, line: 40, baseType: !1197, size: 128)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1164, line: 40, size: 128, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1197, file: !1164, line: 41, baseType: !252, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1197, file: !1164, line: 42, baseType: !252, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1164, line: 44, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1164, line: 44, size: 128, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1202, file: !1164, line: 45, baseType: !406, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1202, file: !1164, line: 46, baseType: !406, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1202, file: !1164, line: 47, baseType: !406, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1202, file: !1164, line: 48, baseType: !406, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1187, file: !1164, line: 51, baseType: !406, size: 32, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1187, file: !1164, line: 52, baseType: !406, size: 32, offset: 224)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1187, file: !1164, line: 55, baseType: !1211, size: 1024, offset: 256)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 1024, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1187, file: !1164, line: 58, baseType: !1215, size: 2048, offset: 1280)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 2048, elements: !138)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1187, file: !1164, line: 60, baseType: !1217, size: 384, offset: 3328)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 384, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 12)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1164, line: 62, baseType: !1221, size: 384, offset: 3712)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1164, line: 62, size: 384, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1221, file: !1164, line: 63, baseType: !1217, size: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1221, file: !1164, line: 64, baseType: !1217, size: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1169, file: !1164, line: 307, baseType: !1226, size: 1088)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1164, line: 79, size: 1088, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1274}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1226, file: !1164, line: 80, baseType: !406, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1226, file: !1164, line: 81, baseType: !406, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1226, file: !1164, line: 82, baseType: !406, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1226, file: !1164, line: 83, baseType: !406, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1226, file: !1164, line: 84, baseType: !406, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1226, file: !1164, line: 85, baseType: !406, size: 32, offset: 160)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1226, file: !1164, line: 86, baseType: !406, size: 32, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1226, file: !1164, line: 88, baseType: !1182, size: 640, offset: 224)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1226, file: !1164, line: 89, baseType: !543, size: 8, offset: 864)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1226, file: !1164, line: 90, baseType: !543, size: 8, offset: 872)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1226, file: !1164, line: 91, baseType: !543, size: 8, offset: 880)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1226, file: !1164, line: 92, baseType: !543, size: 8, offset: 888)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1226, file: !1164, line: 93, baseType: !543, size: 8, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1226, file: !1164, line: 94, baseType: !543, size: 8, offset: 904)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1226, file: !1164, line: 95, baseType: !1243, size: 64, offset: 960)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1245, line: 11, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1244, file: !1245, line: 12, baseType: !168, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1244, file: !1245, line: 13, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1251, line: 56, size: 1344, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1250, file: !1251, line: 61, baseType: !61, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1250, file: !1251, line: 62, baseType: !61, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1250, file: !1251, line: 63, baseType: !61, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1250, file: !1251, line: 64, baseType: !61, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1250, file: !1251, line: 65, baseType: !61, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1250, file: !1251, line: 66, baseType: !61, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1250, file: !1251, line: 68, baseType: !61, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1250, file: !1251, line: 69, baseType: !61, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1250, file: !1251, line: 70, baseType: !61, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1250, file: !1251, line: 71, baseType: !61, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1250, file: !1251, line: 72, baseType: !61, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1250, file: !1251, line: 73, baseType: !61, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1250, file: !1251, line: 74, baseType: !61, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1250, file: !1251, line: 75, baseType: !61, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1250, file: !1251, line: 76, baseType: !61, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1250, file: !1251, line: 81, baseType: !61, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1250, file: !1251, line: 83, baseType: !61, size: 64, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1250, file: !1251, line: 84, baseType: !61, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1251, line: 85, baseType: !61, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1250, file: !1251, line: 86, baseType: !61, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1250, file: !1251, line: 87, baseType: !61, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1226, file: !1164, line: 96, baseType: !406, size: 32, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1169, file: !1164, line: 308, baseType: !1276, size: 4608, align: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1164, line: 289, size: 4608, align: 512, elements: !1277)
!1277 = !{!1278, !1279, !1288}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1276, file: !1164, line: 290, baseType: !1187, size: 4096, align: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1276, file: !1164, line: 291, baseType: !1280, size: 512, offset: 4096)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1164, line: 268, size: 512, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1280, file: !1164, line: 269, baseType: !252, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1280, file: !1164, line: 270, baseType: !252, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1280, file: !1164, line: 271, baseType: !1285, size: 384, offset: 128)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 384, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 6)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1276, file: !1164, line: 292, baseType: !1289, offset: 4608)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 0)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1169, file: !1164, line: 309, baseType: !1293, size: 32768)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 32768, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 4096)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !224, line: 378, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !389, file: !224, line: 384, baseType: !712, size: 192, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !244, file: !224, line: 500, baseType: !91, offset: 6656)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !244, file: !224, line: 501, baseType: !1301, size: 64, offset: 6656)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !224, line: 387, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !244, file: !224, line: 516, baseType: !1304, size: 64, offset: 6720)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !224, line: 516, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !244, file: !224, line: 519, baseType: !211, size: 64, offset: 6784)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !244, file: !224, line: 521, baseType: !1308, size: 64, offset: 6848)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !224, line: 521, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !244, file: !224, line: 545, baseType: !274, size: 32, offset: 6912)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !244, file: !224, line: 548, baseType: !978, size: 8, offset: 6944)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !244, file: !224, line: 550, baseType: !1313, offset: 6952)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1314, line: 142, elements: !105)
!1314 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !244, file: !224, line: 554, baseType: !1316, size: 256, offset: 6976)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1317, line: 102, size: 256, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1316, file: !1317, line: 103, baseType: !282, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1316, file: !1317, line: 104, baseType: !78, size: 128, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1316, file: !1317, line: 105, baseType: !1322, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1317, line: 21, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !244, file: !224, line: 557, baseType: !406, size: 32, offset: 7232)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !241, file: !224, line: 565, baseType: !1329, offset: 7296)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: -1)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !223, file: !224, line: 333, baseType: !1333, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !213, line: 284, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !213, line: 284, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1334, file: !213, line: 284, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !272, line: 19, baseType: !61)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !223, file: !224, line: 334, baseType: !61, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !223, file: !224, line: 343, baseType: !1340, size: 256, offset: 704)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !224, line: 340, size: 256, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1340, file: !224, line: 341, baseType: !231, size: 192, align: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1340, file: !224, line: 342, baseType: !61, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !223, file: !224, line: 351, baseType: !78, size: 128, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !223, file: !224, line: 353, baseType: !1346, size: 64, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !224, line: 353, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !223, file: !224, line: 356, baseType: !1349, size: 64, offset: 1152)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !224, line: 356, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !223, file: !224, line: 359, baseType: !61, size: 64, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !223, file: !224, line: 361, baseType: !211, size: 64, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !223, file: !224, line: 362, baseType: !206, size: 64, offset: 1344)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !223, file: !224, line: 365, baseType: !282, size: 64, offset: 1408)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !223, file: !224, line: 373, baseType: !1357, offset: 1472)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !224, line: 296, elements: !105)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !189, file: !158, line: 90, baseType: !184, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !189, file: !158, line: 91, baseType: !1360, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !148, file: !71, line: 143, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1365, !84}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1368)
!1368 = !{!1369, !1370, !1374, !1378, !1384, !1388}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !18, line: 40, baseType: !17, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1367, file: !18, line: 41, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!978}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1367, file: !18, line: 42, baseType: !1375, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!206}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1367, file: !18, line: 43, baseType: !1379, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1109, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1367, file: !18, line: 44, baseType: !1385, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1109}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1367, file: !18, line: 45, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !206}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !148, file: !71, line: 144, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1109, !84}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !148, file: !71, line: 145, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !84, !1400, !1407}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1402, line: 23, baseType: !1403)
!1402 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1402, line: 21, size: 32, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1403, file: !1402, line: 22, baseType: !1406, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !60, line: 32, baseType: !874)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1402, line: 28, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1402, line: 26, size: 32, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1409, file: !1402, line: 27, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !60, line: 33, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !166, line: 50, baseType: !7)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !70, file: !71, line: 70, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1417, line: 123, size: 1024, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1560, !1561, !1562, !1563, !1564}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1416, file: !1417, line: 124, baseType: !274, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1416, file: !1417, line: 125, baseType: !274, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1416, file: !1417, line: 135, baseType: !1415, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1416, file: !1417, line: 136, baseType: !74, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1416, file: !1417, line: 138, baseType: !231, size: 192, align: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1416, file: !1417, line: 140, baseType: !1109, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1416, file: !1417, line: 141, baseType: !7, size: 32, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1417, line: 142, baseType: !1427, size: 256, offset: 512)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !1417, line: 142, size: 256, elements: !1428)
!1428 = !{!1429, !1483, !1487}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1427, file: !1417, line: 143, baseType: !1430, size: 192)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1417, line: 91, size: 192, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1430, file: !1417, line: 92, baseType: !61, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1430, file: !1417, line: 94, baseType: !248, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1430, file: !1417, line: 100, baseType: !1435, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1417, line: 180, size: 704, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1453, !1454, !1455, !1481, !1482}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1436, file: !1417, line: 182, baseType: !1415, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1436, file: !1417, line: 183, baseType: !7, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1436, file: !1417, line: 186, baseType: !1441, size: 192, offset: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1442, line: 19, size: 192, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1451, !1452}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1441, file: !1442, line: 20, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1446, line: 292, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1445, file: !1446, line: 293, baseType: !91)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1445, file: !1446, line: 295, baseType: !59, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1445, file: !1446, line: 296, baseType: !206, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1441, file: !1442, line: 21, baseType: !7, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1441, file: !1442, line: 22, baseType: !7, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1436, file: !1417, line: 187, baseType: !406, size: 32, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1436, file: !1417, line: 188, baseType: !406, size: 32, offset: 352)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1436, file: !1417, line: 189, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1417, line: 168, size: 320, elements: !1458)
!1458 = !{!1459, !1465, !1469, !1473, !1477}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1457, file: !1417, line: 169, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!117, !1463, !1435}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !213, line: 539, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1457, file: !1417, line: 171, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!117, !1415, !74, !174}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1457, file: !1417, line: 173, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!117, !1415}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1457, file: !1417, line: 174, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!117, !1415, !1415, !74}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1457, file: !1417, line: 176, baseType: !1478, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!117, !1463, !1415, !1435}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1436, file: !1417, line: 192, baseType: !78, size: 128, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1436, file: !1417, line: 194, baseType: !683, size: 128, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1427, file: !1417, line: 144, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1417, line: 103, size: 64, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1484, file: !1417, line: 104, baseType: !1415, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1427, file: !1417, line: 145, baseType: !1488, size: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1417, line: 107, size: 256, elements: !1489)
!1489 = !{!1490, !1555, !1558, !1559}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1488, file: !1417, line: 108, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1417, line: 217, size: 768, elements: !1494)
!1494 = !{!1495, !1515, !1519, !1523, !1528, !1532, !1536, !1540, !1541, !1542, !1543, !1551}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1493, file: !1417, line: 222, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!117, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1417, line: 197, size: 1088, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1500, file: !1417, line: 199, baseType: !1415, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1500, file: !1417, line: 200, baseType: !211, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1500, file: !1417, line: 201, baseType: !1463, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1500, file: !1417, line: 202, baseType: !206, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1500, file: !1417, line: 205, baseType: !351, size: 192, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1500, file: !1417, line: 206, baseType: !351, size: 192, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1500, file: !1417, line: 207, baseType: !117, size: 32, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1500, file: !1417, line: 208, baseType: !78, size: 128, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1500, file: !1417, line: 209, baseType: !133, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1500, file: !1417, line: 211, baseType: !180, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1500, file: !1417, line: 212, baseType: !978, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1500, file: !1417, line: 213, baseType: !978, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1500, file: !1417, line: 214, baseType: !1349, size: 64, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1493, file: !1417, line: 223, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1499}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1493, file: !1417, line: 236, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!117, !1463, !206}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1493, file: !1417, line: 238, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!206, !1463, !1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1493, file: !1417, line: 239, baseType: !1529, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!206, !1463, !206, !1527}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1493, file: !1417, line: 240, baseType: !1533, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1463, !206}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1493, file: !1417, line: 242, baseType: !1537, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!164, !1499, !133, !180, !214}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1493, file: !1417, line: 252, baseType: !180, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1493, file: !1417, line: 259, baseType: !978, size: 8, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1493, file: !1417, line: 260, baseType: !1537, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1493, file: !1417, line: 263, baseType: !1544, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1547, !1499, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1548, line: 52, baseType: !7)
!1548 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1417, line: 27, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1493, file: !1417, line: 266, baseType: !1552, size: 64, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!117, !1499, !222}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1488, file: !1417, line: 109, baseType: !1556, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1417, line: 31, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1488, file: !1417, line: 110, baseType: !214, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1488, file: !1417, line: 111, baseType: !1415, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1416, file: !1417, line: 148, baseType: !206, size: 64, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1416, file: !1417, line: 154, baseType: !252, size: 64, offset: 832)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1417, line: 156, baseType: !175, size: 16, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1416, file: !1417, line: 157, baseType: !174, size: 16, offset: 912)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1416, file: !1417, line: 158, baseType: !1565, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1417, line: 32, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !70, file: !71, line: 71, baseType: !1568, size: 32, offset: 448)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1569, line: 19, size: 32, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1568, file: !1569, line: 20, baseType: !412, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !70, file: !71, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !70, file: !71, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !70, file: !71, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !70, file: !71, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !70, file: !71, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !67, file: !30, line: 463, baseType: !66, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !67, file: !30, line: 465, baseType: !1579, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !67, file: !30, line: 467, baseType: !74, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !30, line: 468, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1593, !1598, !1602}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !30, line: 88, baseType: !74, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1585, file: !30, line: 89, baseType: !186, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1585, file: !30, line: 90, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!117, !66, !128}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1585, file: !30, line: 91, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!133, !66, !1597, !1400, !1407}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1585, file: !30, line: 93, baseType: !1599, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !66}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1585, file: !30, line: 95, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1606)
!1606 = !{!1607, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1605, file: !37, line: 279, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!117, !66}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1605, file: !37, line: 280, baseType: !1599, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1605, file: !37, line: 281, baseType: !1608, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1605, file: !37, line: 282, baseType: !1608, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1605, file: !37, line: 283, baseType: !1608, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1605, file: !37, line: 284, baseType: !1608, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1605, file: !37, line: 285, baseType: !1608, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1605, file: !37, line: 286, baseType: !1608, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1605, file: !37, line: 287, baseType: !1608, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1605, file: !37, line: 288, baseType: !1608, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1605, file: !37, line: 289, baseType: !1608, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1605, file: !37, line: 290, baseType: !1608, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1605, file: !37, line: 291, baseType: !1608, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1605, file: !37, line: 292, baseType: !1608, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1605, file: !37, line: 293, baseType: !1608, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1605, file: !37, line: 294, baseType: !1608, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1605, file: !37, line: 295, baseType: !1608, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1605, file: !37, line: 296, baseType: !1608, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1605, file: !37, line: 297, baseType: !1608, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1605, file: !37, line: 298, baseType: !1608, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1605, file: !37, line: 299, baseType: !1608, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1605, file: !37, line: 300, baseType: !1608, size: 64, offset: 1344)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1605, file: !37, line: 301, baseType: !1608, size: 64, offset: 1408)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !67, file: !30, line: 470, baseType: !1634, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1636, line: 82, size: 1408, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1720, !1723, !1726}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1635, file: !1636, line: 83, baseType: !74, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1635, file: !1636, line: 84, baseType: !74, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1635, file: !1636, line: 85, baseType: !66, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1635, file: !1636, line: 86, baseType: !186, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1635, file: !1636, line: 87, baseType: !186, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1635, file: !1636, line: 88, baseType: !186, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1635, file: !1636, line: 90, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!117, !66, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1671, !1684, !1685, !1686, !1687, !1688, !1696, !1697, !1698, !1699, !1700, !1701}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1649, file: !24, line: 96, baseType: !74, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1649, file: !24, line: 97, baseType: !1634, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1649, file: !24, line: 99, baseType: !56, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1649, file: !24, line: 100, baseType: !74, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1649, file: !24, line: 102, baseType: !978, size: 8, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1649, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1649, file: !24, line: 105, baseType: !1658, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1661, line: 262, size: 1600, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1665, !1666, !1670}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1660, file: !1661, line: 263, baseType: !1664, size: 256)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1212)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1660, file: !1661, line: 264, baseType: !1664, size: 256, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1660, file: !1661, line: 265, baseType: !1667, size: 1024, offset: 512)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1660, file: !1661, line: 266, baseType: !1109, size: 64, offset: 1536)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1649, file: !24, line: 106, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1661, line: 210, size: 256, elements: !1675)
!1675 = !{!1676, !1680, !1682, !1683}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1674, file: !1661, line: 211, baseType: !1677, size: 72)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 72, elements: !1678)
!1678 = !{!1679}
!1679 = !DISubrange(count: 9)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1674, file: !1661, line: 212, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1661, line: 14, baseType: !61)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1674, file: !1661, line: 213, baseType: !407, size: 32, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1674, file: !1661, line: 214, baseType: !407, size: 32, offset: 224)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1649, file: !24, line: 108, baseType: !1608, size: 64, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1649, file: !24, line: 109, baseType: !1599, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1649, file: !24, line: 110, baseType: !1608, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1649, file: !24, line: 111, baseType: !1599, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1649, file: !24, line: 112, baseType: !1689, size: 64, offset: 704)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!117, !66, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1693, file: !37, line: 51, baseType: !117, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1649, file: !24, line: 113, baseType: !1608, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1649, file: !24, line: 114, baseType: !186, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1649, file: !24, line: 115, baseType: !186, size: 64, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1649, file: !24, line: 117, baseType: !1603, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1649, file: !24, line: 118, baseType: !1599, size: 64, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1649, file: !24, line: 120, baseType: !1702, size: 64, offset: 1088)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1635, file: !1636, line: 91, baseType: !1590, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1635, file: !1636, line: 92, baseType: !1608, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1635, file: !1636, line: 93, baseType: !1599, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1635, file: !1636, line: 94, baseType: !1608, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1635, file: !1636, line: 95, baseType: !1599, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1635, file: !1636, line: 97, baseType: !1608, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1635, file: !1636, line: 98, baseType: !1608, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1635, file: !1636, line: 100, baseType: !1689, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1635, file: !1636, line: 101, baseType: !1608, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1635, file: !1636, line: 103, baseType: !1608, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1635, file: !1636, line: 105, baseType: !1608, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1635, file: !1636, line: 107, baseType: !1603, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1635, file: !1636, line: 109, baseType: !1717, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1636, line: 109, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1635, file: !1636, line: 111, baseType: !1721, size: 64, offset: 1280)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1636, line: 111, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1635, file: !1636, line: 112, baseType: !1724, offset: 1344)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1725, line: 187, elements: !105)
!1725 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1635, file: !1636, line: 114, baseType: !978, size: 8, offset: 1344)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !67, file: !30, line: 471, baseType: !1648, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !67, file: !30, line: 473, baseType: !206, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !67, file: !30, line: 475, baseType: !206, size: 64, offset: 960)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !67, file: !30, line: 480, baseType: !351, size: 192, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !67, file: !30, line: 484, baseType: !1732, size: 576, offset: 1216)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1732, file: !30, line: 362, baseType: !78, size: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1732, file: !30, line: 363, baseType: !78, size: 128, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1732, file: !30, line: 364, baseType: !78, size: 128, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1732, file: !30, line: 365, baseType: !78, size: 128, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1732, file: !30, line: 366, baseType: !978, size: 8, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1732, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !67, file: !30, line: 485, baseType: !1741, size: 2304, offset: 1792)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1838, !1842}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1741, file: !37, line: 566, baseType: !1692, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1741, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1741, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1741, file: !37, line: 569, baseType: !978, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1741, file: !37, line: 570, baseType: !978, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1741, file: !37, line: 571, baseType: !978, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1741, file: !37, line: 572, baseType: !978, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1741, file: !37, line: 573, baseType: !978, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1741, file: !37, line: 574, baseType: !978, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1741, file: !37, line: 575, baseType: !978, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1741, file: !37, line: 576, baseType: !978, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1741, file: !37, line: 577, baseType: !406, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !37, line: 578, baseType: !91, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1741, file: !37, line: 580, baseType: !78, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1741, file: !37, line: 581, baseType: !712, size: 192, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1741, file: !37, line: 582, baseType: !1759, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1761, line: 43, size: 1472, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1770, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1760, file: !1761, line: 44, baseType: !74, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1760, file: !1761, line: 45, baseType: !117, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1760, file: !1761, line: 46, baseType: !78, size: 128, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !1761, line: 47, baseType: !91, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1760, file: !1761, line: 48, baseType: !1768, size: 64, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1760, file: !1761, line: 49, baseType: !1771, size: 320, offset: 320)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1772, line: 11, size: 320, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775, !1776, !1781}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1771, file: !1772, line: 16, baseType: !676, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1771, file: !1772, line: 17, baseType: !61, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1771, file: !1772, line: 18, baseType: !1777, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 19, baseType: !406, size: 32, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1760, file: !1761, line: 50, baseType: !61, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1760, file: !1761, line: 51, baseType: !482, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1760, file: !1761, line: 52, baseType: !482, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1760, file: !1761, line: 53, baseType: !482, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1760, file: !1761, line: 54, baseType: !482, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1760, file: !1761, line: 55, baseType: !482, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1760, file: !1761, line: 56, baseType: !61, size: 64, offset: 1024)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1760, file: !1761, line: 57, baseType: !61, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1760, file: !1761, line: 58, baseType: !61, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1760, file: !1761, line: 59, baseType: !61, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1760, file: !1761, line: 60, baseType: !61, size: 64, offset: 1280)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1760, file: !1761, line: 61, baseType: !66, size: 64, offset: 1344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1760, file: !1761, line: 62, baseType: !978, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1760, file: !1761, line: 63, baseType: !978, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1741, file: !37, line: 583, baseType: !978, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1741, file: !37, line: 584, baseType: !978, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1741, file: !37, line: 585, baseType: !978, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1741, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1741, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1741, file: !37, line: 592, baseType: !474, size: 512, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1741, file: !37, line: 593, baseType: !252, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1741, file: !37, line: 594, baseType: !1316, size: 256, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1741, file: !37, line: 595, baseType: !683, size: 128, offset: 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1741, file: !37, line: 596, baseType: !1768, size: 64, offset: 1536)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1741, file: !37, line: 597, baseType: !274, size: 32, offset: 1600)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1741, file: !37, line: 598, baseType: !274, size: 32, offset: 1632)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1741, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1741, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1741, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1741, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1741, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1741, file: !37, line: 604, baseType: !978, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1741, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1741, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1741, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1741, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1741, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1741, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1741, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1741, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1741, file: !37, line: 613, baseType: !117, size: 32, offset: 1792)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1741, file: !37, line: 614, baseType: !117, size: 32, offset: 1824)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1741, file: !37, line: 615, baseType: !252, size: 64, offset: 1856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1741, file: !37, line: 616, baseType: !252, size: 64, offset: 1920)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1741, file: !37, line: 617, baseType: !252, size: 64, offset: 1984)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1741, file: !37, line: 618, baseType: !252, size: 64, offset: 2048)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1741, file: !37, line: 620, baseType: !1829, size: 64, offset: 2112)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !37, line: 537, baseType: !91)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1830, file: !37, line: 538, baseType: !7, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1830, file: !37, line: 540, baseType: !78, size: 128, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1830, file: !37, line: 543, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1741, file: !37, line: 621, baseType: !1839, size: 64, offset: 2176)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !66, !636}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1741, file: !37, line: 622, baseType: !1843, size: 64, offset: 2240)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !67, file: !30, line: 486, baseType: !1846, size: 64, offset: 4096)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1855, !1856, !1857}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1847, file: !37, line: 643, baseType: !1605, size: 1472)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1847, file: !37, line: 644, baseType: !1608, size: 64, offset: 1472)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1847, file: !37, line: 645, baseType: !1852, size: 64, offset: 1536)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !66, !978}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1847, file: !37, line: 646, baseType: !1608, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1847, file: !37, line: 647, baseType: !1599, size: 64, offset: 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1847, file: !37, line: 648, baseType: !1599, size: 64, offset: 1728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !67, file: !30, line: 493, baseType: !1859, size: 64, offset: 4160)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !67, file: !30, line: 499, baseType: !78, size: 128, offset: 4224)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !67, file: !30, line: 502, baseType: !1863, size: 64, offset: 4352)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !67, file: !30, line: 504, baseType: !1867, size: 64, offset: 4416)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !67, file: !30, line: 505, baseType: !252, size: 64, offset: 4480)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !67, file: !30, line: 510, baseType: !252, size: 64, offset: 4544)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !67, file: !30, line: 511, baseType: !1871, size: 64, offset: 4608)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !67, file: !30, line: 513, baseType: !1875, size: 64, offset: 4672)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1876, file: !30, line: 293, baseType: !7, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1876, file: !30, line: 294, baseType: !61, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !67, file: !30, line: 515, baseType: !78, size: 128, offset: 4736)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !67, file: !30, line: 526, baseType: !1882, offset: 4864)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1883, line: 5, elements: !105)
!1883 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !67, file: !30, line: 528, baseType: !1885, size: 64, offset: 4864)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1887, line: 18, flags: DIFlagFwdDecl)
!1887 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !67, file: !30, line: 529, baseType: !1889, size: 64, offset: 4928)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1891, line: 17, size: 192, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894, !1977}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1890, file: !1891, line: 18, baseType: !1889, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1890, file: !1891, line: 19, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1891, line: 110, size: 1152, elements: !1898)
!1898 = !{!1899, !1903, !1907, !1913, !1919, !1923, !1927, !1932, !1936, !1937, !1941, !1945, !1949, !1960, !1961, !1962, !1963, !1973}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1897, file: !1891, line: 111, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1889, !1889}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1897, file: !1891, line: 112, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1889}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1897, file: !1891, line: 113, baseType: !1908, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!978, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1897, file: !1891, line: 114, baseType: !1914, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1109, !1911, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1897, file: !1891, line: 116, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!978, !1911, !74}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1897, file: !1891, line: 118, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!117, !1911, !74, !7, !206, !180}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1897, file: !1891, line: 123, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!117, !1911, !74, !1931, !180}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1897, file: !1891, line: 126, baseType: !1933, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!74, !1911}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1897, file: !1891, line: 127, baseType: !1933, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1897, file: !1891, line: 128, baseType: !1938, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1889, !1911}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1897, file: !1891, line: 130, baseType: !1942, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1889, !1911, !1889}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1897, file: !1891, line: 133, baseType: !1946, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1889, !1911, !74}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1897, file: !1891, line: 135, baseType: !1950, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!117, !1911, !74, !74, !7, !7, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1891, line: 43, size: 640, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1954, file: !1891, line: 44, baseType: !1889, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1954, file: !1891, line: 45, baseType: !7, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1954, file: !1891, line: 46, baseType: !1959, size: 512, offset: 128)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 512, elements: !512)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1897, file: !1891, line: 140, baseType: !1942, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1897, file: !1891, line: 143, baseType: !1938, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1897, file: !1891, line: 145, baseType: !1900, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1897, file: !1891, line: 146, baseType: !1964, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!117, !1911, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1891, line: 29, size: 128, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1968, file: !1891, line: 30, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1968, file: !1891, line: 31, baseType: !7, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1968, file: !1891, line: 32, baseType: !1911, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1897, file: !1891, line: 148, baseType: !1974, size: 64, offset: 1088)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!117, !1911, !66}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1890, file: !1891, line: 20, baseType: !66, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !67, file: !30, line: 534, baseType: !1979, size: 32, offset: 4992)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !60, line: 16, baseType: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !60, line: 13, baseType: !406)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !30, line: 535, baseType: !406, size: 32, offset: 5024)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !67, file: !30, line: 537, baseType: !91, offset: 5056)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !67, file: !30, line: 538, baseType: !78, size: 128, offset: 5056)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !67, file: !30, line: 540, baseType: !1985, size: 64, offset: 5184)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1987, line: 54, size: 960, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1999, !2003, !2004, !2005, !2006, !2010, !2014, !2015}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1986, file: !1987, line: 55, baseType: !74, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1986, file: !1987, line: 56, baseType: !56, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1986, file: !1987, line: 58, baseType: !186, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1986, file: !1987, line: 59, baseType: !186, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1986, file: !1987, line: 60, baseType: !84, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1986, file: !1987, line: 62, baseType: !1590, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1986, file: !1987, line: 63, baseType: !1996, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!133, !66, !1597}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1986, file: !1987, line: 65, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1985}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1986, file: !1987, line: 66, baseType: !1599, size: 64, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1986, file: !1987, line: 68, baseType: !1608, size: 64, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1986, file: !1987, line: 70, baseType: !1365, size: 64, offset: 640)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1986, file: !1987, line: 71, baseType: !2007, size: 64, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1109, !66}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1986, file: !1987, line: 73, baseType: !2011, size: 64, offset: 768)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !66, !1400, !1407}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1986, file: !1987, line: 75, baseType: !1603, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1986, file: !1987, line: 77, baseType: !1721, size: 64, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !67, file: !30, line: 541, baseType: !186, size: 64, offset: 5248)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !67, file: !30, line: 543, baseType: !1599, size: 64, offset: 5312)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !67, file: !30, line: 544, baseType: !2019, size: 64, offset: 5376)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !67, file: !30, line: 545, baseType: !2022, size: 64, offset: 5440)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !67, file: !30, line: 547, baseType: !978, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !67, file: !30, line: 548, baseType: !978, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !67, file: !30, line: 549, baseType: !978, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !67, file: !30, line: 550, baseType: !978, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !63, file: !3, line: 50, baseType: !206, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !63, file: !3, line: 51, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !1887, line: 17, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !63, file: !3, line: 52, baseType: !2033, size: 896, offset: 192)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !2034, line: 39, size: 896, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2042, !2046, !2050, !2054, !2058, !2059, !2060, !2061, !2062}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2033, file: !2034, line: 40, baseType: !74, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2033, file: !2034, line: 41, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!117, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2033, file: !2034, line: 42, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2041}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !2033, file: !2034, line: 43, baseType: !2047, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!117, !2041, !117}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !2033, file: !2034, line: 44, baseType: !2051, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!117, !2041, !607}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2033, file: !2034, line: 45, baseType: !2055, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!117, !2041, !206, !180, !978}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2033, file: !2034, line: 46, baseType: !61, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !2033, file: !2034, line: 47, baseType: !175, size: 16, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2033, file: !2034, line: 50, baseType: !78, size: 128, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2033, file: !2034, line: 51, baseType: !1568, size: 32, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !2033, file: !2034, line: 52, baseType: !712, size: 192, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !406)
!2070 = !{!0, !2071, !2078, !2083, !2088, !2093, !2098, !2158, !2161}
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "__exitcall_exynos_trng_driver_exit", scope: !2, file: !3, line: 230, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2074, line: 117, baseType: !2075)
!2074 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null}
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author165", scope: !2, file: !3, line: 231, type: !2080, isLocal: true, isDefinition: true, align: 8)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 288, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 36)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description166", scope: !2, file: !3, line: 232, type: !2085, isLocal: true, isDefinition: true, align: 8)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 456, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 57)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 233, type: !2090, isLocal: true, isDefinition: true, align: 8)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 416, elements: !2091)
!2091 = !{!2092}
!2092 = !DISubrange(count: 52)
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 233, type: !2095, isLocal: true, isDefinition: true, align: 8)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 216, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: 27)
!2098 = !DIGlobalVariableExpression(var: !2099, expr: !DIExpression())
!2099 = distinct !DIGlobalVariable(name: "exynos_trng_driver", scope: !2, file: !3, line: 220, type: !2100, isLocal: true, isDefinition: true)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2101, line: 200, size: 1600, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2145, !2146, !2150, !2154, !2155, !2156, !2157}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2100, file: !2101, line: 201, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!117, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2101, line: 22, size: 6208, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2131, !2139, !2140, !2143}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2108, file: !2101, line: 23, baseType: !74, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2108, file: !2101, line: 24, baseType: !117, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2108, file: !2101, line: 25, baseType: !978, size: 8, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2108, file: !2101, line: 26, baseType: !67, size: 5568, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2108, file: !2101, line: 27, baseType: !252, size: 64, offset: 5696)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2108, file: !2101, line: 28, baseType: !1876, size: 128, offset: 5760)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2108, file: !2101, line: 29, baseType: !406, size: 32, offset: 5888)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2108, file: !2101, line: 30, baseType: !2118, size: 64, offset: 5952)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2120, line: 20, size: 512, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2119, file: !2120, line: 21, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !60, line: 158, baseType: !1107)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2119, file: !2120, line: 22, baseType: !2123, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2119, file: !2120, line: 23, baseType: !74, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !2120, line: 24, baseType: !61, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2119, file: !2120, line: 25, baseType: !61, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2119, file: !2120, line: 26, baseType: !2118, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2119, file: !2120, line: 26, baseType: !2118, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2119, file: !2120, line: 26, baseType: !2118, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2108, file: !2101, line: 32, baseType: !2132, size: 64, offset: 6016)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1661, line: 586, size: 256, elements: !2135)
!2135 = !{!2136, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2134, file: !1661, line: 587, baseType: !2137, size: 160)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 160, elements: !1183)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2134, file: !1661, line: 588, baseType: !1681, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2108, file: !2101, line: 33, baseType: !133, size: 64, offset: 6080)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2108, file: !2101, line: 36, baseType: !2141, size: 64, offset: 6144)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2101, line: 18, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2108, file: !2101, line: 39, baseType: !2144, offset: 6208)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1883, line: 8, elements: !105)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2100, file: !2101, line: 202, baseType: !2104, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2100, file: !2101, line: 203, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2107}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2100, file: !2101, line: 204, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!117, !2107, !1692}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2100, file: !2101, line: 205, baseType: !2104, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2100, file: !2101, line: 206, baseType: !1649, size: 1152, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2100, file: !2101, line: 207, baseType: !2132, size: 64, offset: 1472)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2100, file: !2101, line: 208, baseType: !978, size: 8, offset: 1536)
!2158 = !DIGlobalVariableExpression(var: !2159, expr: !DIExpression())
!2159 = distinct !DIGlobalVariable(name: "exynos_trng_dt_match", scope: !2, file: !3, line: 212, type: !2160, isLocal: true, isDefinition: true)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1659, size: 3200, elements: !950)
!2161 = !DIGlobalVariableExpression(var: !2162, expr: !DIExpression())
!2162 = distinct !DIGlobalVariable(name: "exynos_trng_pm_ops", scope: !2, file: !3, line: 209, type: !1604, isLocal: true, isDefinition: true)
!2163 = !{i32 7, !"Dwarf Version", i32 4}
!2164 = !{i32 2, !"Debug Info Version", i32 3}
!2165 = !{i32 1, !"wchar_size", i32 2}
!2166 = !{i32 1, !"Code Model", i32 2}
!2167 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2168 = distinct !DISubprogram(name: "exynos_trng_driver_init", scope: !3, file: !3, line: 230, type: !2169, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!117}
!2171 = !DILocation(line: 230, column: 1, scope: !2168)
!2172 = distinct !DISubprogram(name: "exynos_trng_driver_exit", scope: !3, file: !3, line: 230, type: !2076, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2173 = !DILocation(line: 230, column: 1, scope: !2172)
!2174 = distinct !DISubprogram(name: "exynos_trng_probe", scope: !3, file: !3, line: 109, type: !2105, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2175 = !DILocalVariable(name: "pdev", arg: 1, scope: !2174, file: !3, line: 109, type: !2107)
!2176 = !DILocation(line: 109, column: 54, scope: !2174)
!2177 = !DILocalVariable(name: "trng", scope: !2174, file: !3, line: 111, type: !62)
!2178 = !DILocation(line: 111, column: 26, scope: !2174)
!2179 = !DILocalVariable(name: "ret", scope: !2174, file: !3, line: 112, type: !117)
!2180 = !DILocation(line: 112, column: 6, scope: !2174)
!2181 = !DILocation(line: 114, column: 23, scope: !2174)
!2182 = !DILocation(line: 114, column: 29, scope: !2174)
!2183 = !DILocation(line: 114, column: 9, scope: !2174)
!2184 = !DILocation(line: 114, column: 7, scope: !2174)
!2185 = !DILocation(line: 115, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 115, column: 6)
!2187 = !DILocation(line: 115, column: 6, scope: !2174)
!2188 = !DILocation(line: 116, column: 10, scope: !2186)
!2189 = !DILocation(line: 116, column: 3, scope: !2186)
!2190 = !DILocation(line: 118, column: 33, scope: !2174)
!2191 = !DILocation(line: 118, column: 39, scope: !2174)
!2192 = !DILocation(line: 118, column: 54, scope: !2174)
!2193 = !DILocation(line: 118, column: 60, scope: !2174)
!2194 = !DILocation(line: 118, column: 44, scope: !2174)
!2195 = !DILocation(line: 118, column: 19, scope: !2174)
!2196 = !DILocation(line: 118, column: 2, scope: !2174)
!2197 = !DILocation(line: 118, column: 8, scope: !2174)
!2198 = !DILocation(line: 118, column: 12, scope: !2174)
!2199 = !DILocation(line: 118, column: 17, scope: !2174)
!2200 = !DILocation(line: 120, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 120, column: 6)
!2202 = !DILocation(line: 120, column: 13, scope: !2201)
!2203 = !DILocation(line: 120, column: 17, scope: !2201)
!2204 = !DILocation(line: 120, column: 6, scope: !2174)
!2205 = !DILocation(line: 121, column: 10, scope: !2201)
!2206 = !DILocation(line: 121, column: 3, scope: !2201)
!2207 = !DILocation(line: 123, column: 2, scope: !2174)
!2208 = !DILocation(line: 123, column: 8, scope: !2174)
!2209 = !DILocation(line: 123, column: 12, scope: !2174)
!2210 = !DILocation(line: 123, column: 17, scope: !2174)
!2211 = !DILocation(line: 124, column: 2, scope: !2174)
!2212 = !DILocation(line: 124, column: 8, scope: !2174)
!2213 = !DILocation(line: 124, column: 12, scope: !2174)
!2214 = !DILocation(line: 124, column: 17, scope: !2174)
!2215 = !DILocation(line: 125, column: 35, scope: !2174)
!2216 = !DILocation(line: 125, column: 19, scope: !2174)
!2217 = !DILocation(line: 125, column: 2, scope: !2174)
!2218 = !DILocation(line: 125, column: 8, scope: !2174)
!2219 = !DILocation(line: 125, column: 12, scope: !2174)
!2220 = !DILocation(line: 125, column: 17, scope: !2174)
!2221 = !DILocation(line: 127, column: 23, scope: !2174)
!2222 = !DILocation(line: 127, column: 29, scope: !2174)
!2223 = !DILocation(line: 127, column: 2, scope: !2174)
!2224 = !DILocation(line: 128, column: 15, scope: !2174)
!2225 = !DILocation(line: 128, column: 21, scope: !2174)
!2226 = !DILocation(line: 128, column: 2, scope: !2174)
!2227 = !DILocation(line: 128, column: 8, scope: !2174)
!2228 = !DILocation(line: 128, column: 12, scope: !2174)
!2229 = !DILocation(line: 130, column: 45, scope: !2174)
!2230 = !DILocation(line: 130, column: 14, scope: !2174)
!2231 = !DILocation(line: 130, column: 2, scope: !2174)
!2232 = !DILocation(line: 130, column: 8, scope: !2174)
!2233 = !DILocation(line: 130, column: 12, scope: !2174)
!2234 = !DILocation(line: 131, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 131, column: 6)
!2236 = !DILocation(line: 131, column: 19, scope: !2235)
!2237 = !DILocation(line: 131, column: 6, scope: !2235)
!2238 = !DILocation(line: 131, column: 6, scope: !2174)
!2239 = !DILocation(line: 132, column: 18, scope: !2235)
!2240 = !DILocation(line: 132, column: 24, scope: !2235)
!2241 = !DILocation(line: 132, column: 10, scope: !2235)
!2242 = !DILocation(line: 132, column: 3, scope: !2235)
!2243 = !DILocation(line: 134, column: 21, scope: !2174)
!2244 = !DILocation(line: 134, column: 27, scope: !2174)
!2245 = !DILocation(line: 134, column: 2, scope: !2174)
!2246 = !DILocation(line: 135, column: 29, scope: !2174)
!2247 = !DILocation(line: 135, column: 35, scope: !2174)
!2248 = !DILocation(line: 135, column: 8, scope: !2174)
!2249 = !DILocation(line: 135, column: 6, scope: !2174)
!2250 = !DILocation(line: 136, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 136, column: 6)
!2252 = !DILocation(line: 136, column: 10, scope: !2251)
!2253 = !DILocation(line: 136, column: 6, scope: !2174)
!2254 = !DILocation(line: 137, column: 3, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 136, column: 15)
!2256 = !DILocation(line: 138, column: 3, scope: !2255)
!2257 = !DILocation(line: 141, column: 28, scope: !2174)
!2258 = !DILocation(line: 141, column: 34, scope: !2174)
!2259 = !DILocation(line: 141, column: 14, scope: !2174)
!2260 = !DILocation(line: 141, column: 2, scope: !2174)
!2261 = !DILocation(line: 141, column: 8, scope: !2174)
!2262 = !DILocation(line: 141, column: 12, scope: !2174)
!2263 = !DILocation(line: 142, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 142, column: 6)
!2265 = !DILocation(line: 142, column: 19, scope: !2264)
!2266 = !DILocation(line: 142, column: 6, scope: !2264)
!2267 = !DILocation(line: 142, column: 6, scope: !2174)
!2268 = !DILocation(line: 143, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 142, column: 25)
!2270 = !DILocation(line: 143, column: 23, scope: !2269)
!2271 = !DILocation(line: 143, column: 9, scope: !2269)
!2272 = !DILocation(line: 143, column: 7, scope: !2269)
!2273 = !DILocation(line: 144, column: 3, scope: !2269)
!2274 = !DILocation(line: 145, column: 3, scope: !2269)
!2275 = !DILocation(line: 148, column: 27, scope: !2174)
!2276 = !DILocation(line: 148, column: 33, scope: !2174)
!2277 = !DILocation(line: 148, column: 8, scope: !2174)
!2278 = !DILocation(line: 148, column: 6, scope: !2174)
!2279 = !DILocation(line: 149, column: 6, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 149, column: 6)
!2281 = !DILocation(line: 149, column: 6, scope: !2174)
!2282 = !DILocation(line: 150, column: 3, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 149, column: 11)
!2284 = !DILocation(line: 151, column: 3, scope: !2283)
!2285 = !DILocation(line: 154, column: 29, scope: !2174)
!2286 = !DILocation(line: 154, column: 35, scope: !2174)
!2287 = !DILocation(line: 154, column: 41, scope: !2174)
!2288 = !DILocation(line: 154, column: 47, scope: !2174)
!2289 = !DILocation(line: 154, column: 8, scope: !2174)
!2290 = !DILocation(line: 154, column: 6, scope: !2174)
!2291 = !DILocation(line: 155, column: 6, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 155, column: 6)
!2293 = !DILocation(line: 155, column: 6, scope: !2174)
!2294 = !DILocation(line: 156, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 155, column: 11)
!2296 = !DILocation(line: 157, column: 3, scope: !2295)
!2297 = !DILocation(line: 160, column: 2, scope: !2174)
!2298 = !DILocation(line: 162, column: 2, scope: !2174)
!2299 = !DILabel(scope: !2174, name: "err_register", file: !3, line: 164)
!2300 = !DILocation(line: 164, column: 1, scope: !2174)
!2301 = !DILocation(line: 165, column: 24, scope: !2174)
!2302 = !DILocation(line: 165, column: 30, scope: !2174)
!2303 = !DILocation(line: 165, column: 2, scope: !2174)
!2304 = !DILabel(scope: !2174, name: "err_clock", file: !3, line: 167)
!2305 = !DILocation(line: 167, column: 1, scope: !2174)
!2306 = !DILocation(line: 168, column: 23, scope: !2174)
!2307 = !DILocation(line: 168, column: 29, scope: !2174)
!2308 = !DILocation(line: 168, column: 2, scope: !2174)
!2309 = !DILabel(scope: !2174, name: "err_pm_get", file: !3, line: 170)
!2310 = !DILocation(line: 170, column: 1, scope: !2174)
!2311 = !DILocation(line: 171, column: 22, scope: !2174)
!2312 = !DILocation(line: 171, column: 28, scope: !2174)
!2313 = !DILocation(line: 171, column: 2, scope: !2174)
!2314 = !DILocation(line: 173, column: 9, scope: !2174)
!2315 = !DILocation(line: 173, column: 2, scope: !2174)
!2316 = !DILocation(line: 174, column: 1, scope: !2174)
!2317 = distinct !DISubprogram(name: "exynos_trng_remove", scope: !3, file: !3, line: 176, type: !2105, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2318 = !DILocalVariable(name: "pdev", arg: 1, scope: !2317, file: !3, line: 176, type: !2107)
!2319 = !DILocation(line: 176, column: 55, scope: !2317)
!2320 = !DILocalVariable(name: "trng", scope: !2317, file: !3, line: 178, type: !62)
!2321 = !DILocation(line: 178, column: 26, scope: !2317)
!2322 = !DILocation(line: 178, column: 55, scope: !2317)
!2323 = !DILocation(line: 178, column: 34, scope: !2317)
!2324 = !DILocation(line: 180, column: 24, scope: !2317)
!2325 = !DILocation(line: 180, column: 30, scope: !2317)
!2326 = !DILocation(line: 180, column: 2, scope: !2317)
!2327 = !DILocation(line: 182, column: 23, scope: !2317)
!2328 = !DILocation(line: 182, column: 29, scope: !2317)
!2329 = !DILocation(line: 182, column: 2, scope: !2317)
!2330 = !DILocation(line: 183, column: 22, scope: !2317)
!2331 = !DILocation(line: 183, column: 28, scope: !2317)
!2332 = !DILocation(line: 183, column: 2, scope: !2317)
!2333 = !DILocation(line: 185, column: 2, scope: !2317)
!2334 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2335, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!206, !66, !180, !59}
!2337 = !DILocalVariable(name: "dev", arg: 1, scope: !2334, file: !30, line: 215, type: !66)
!2338 = !DILocation(line: 215, column: 49, scope: !2334)
!2339 = !DILocalVariable(name: "size", arg: 2, scope: !2334, file: !30, line: 215, type: !180)
!2340 = !DILocation(line: 215, column: 61, scope: !2334)
!2341 = !DILocalVariable(name: "gfp", arg: 3, scope: !2334, file: !30, line: 215, type: !59)
!2342 = !DILocation(line: 215, column: 73, scope: !2334)
!2343 = !DILocation(line: 217, column: 22, scope: !2334)
!2344 = !DILocation(line: 217, column: 27, scope: !2334)
!2345 = !DILocation(line: 217, column: 33, scope: !2334)
!2346 = !DILocation(line: 217, column: 37, scope: !2334)
!2347 = !DILocation(line: 217, column: 9, scope: !2334)
!2348 = !DILocation(line: 217, column: 2, scope: !2334)
!2349 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2350, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!74, !1917}
!2352 = !DILocalVariable(name: "dev", arg: 1, scope: !2349, file: !30, line: 609, type: !1917)
!2353 = !DILocation(line: 609, column: 57, scope: !2349)
!2354 = !DILocation(line: 612, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !30, line: 612, column: 6)
!2356 = !DILocation(line: 612, column: 11, scope: !2355)
!2357 = !DILocation(line: 612, column: 6, scope: !2349)
!2358 = !DILocation(line: 613, column: 10, scope: !2355)
!2359 = !DILocation(line: 613, column: 15, scope: !2355)
!2360 = !DILocation(line: 613, column: 3, scope: !2355)
!2361 = !DILocation(line: 615, column: 23, scope: !2349)
!2362 = !DILocation(line: 615, column: 28, scope: !2349)
!2363 = !DILocation(line: 615, column: 9, scope: !2349)
!2364 = !DILocation(line: 615, column: 2, scope: !2349)
!2365 = !DILocation(line: 616, column: 1, scope: !2349)
!2366 = distinct !DISubprogram(name: "exynos_trng_init", scope: !3, file: !3, line: 76, type: !2039, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2367 = !DILocalVariable(name: "rng", arg: 1, scope: !2366, file: !3, line: 76, type: !2041)
!2368 = !DILocation(line: 76, column: 43, scope: !2366)
!2369 = !DILocalVariable(name: "trng", scope: !2366, file: !3, line: 78, type: !62)
!2370 = !DILocation(line: 78, column: 26, scope: !2366)
!2371 = !DILocation(line: 78, column: 59, scope: !2366)
!2372 = !DILocation(line: 78, column: 64, scope: !2366)
!2373 = !DILocation(line: 78, column: 33, scope: !2366)
!2374 = !DILocalVariable(name: "sss_rate", scope: !2366, file: !3, line: 79, type: !61)
!2375 = !DILocation(line: 79, column: 16, scope: !2366)
!2376 = !DILocalVariable(name: "val", scope: !2366, file: !3, line: 80, type: !406)
!2377 = !DILocation(line: 80, column: 6, scope: !2366)
!2378 = !DILocation(line: 82, column: 26, scope: !2366)
!2379 = !DILocation(line: 82, column: 32, scope: !2366)
!2380 = !DILocation(line: 82, column: 13, scope: !2366)
!2381 = !DILocation(line: 82, column: 11, scope: !2366)
!2382 = !DILocation(line: 88, column: 8, scope: !2366)
!2383 = !DILocation(line: 88, column: 17, scope: !2366)
!2384 = !DILocation(line: 88, column: 6, scope: !2366)
!2385 = !DILocation(line: 89, column: 6, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 89, column: 6)
!2387 = !DILocation(line: 89, column: 10, scope: !2386)
!2388 = !DILocation(line: 89, column: 6, scope: !2366)
!2389 = !DILocation(line: 90, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 89, column: 20)
!2391 = !DILocation(line: 91, column: 3, scope: !2390)
!2392 = !DILocation(line: 93, column: 8, scope: !2366)
!2393 = !DILocation(line: 93, column: 12, scope: !2366)
!2394 = !DILocation(line: 93, column: 6, scope: !2366)
!2395 = !DILocation(line: 94, column: 2, scope: !2366)
!2396 = !DILocation(line: 97, column: 6, scope: !2366)
!2397 = !DILocation(line: 98, column: 2, scope: !2366)
!2398 = !DILocation(line: 104, column: 2, scope: !2366)
!2399 = !DILocation(line: 106, column: 2, scope: !2366)
!2400 = !DILocation(line: 107, column: 1, scope: !2366)
!2401 = distinct !DISubprogram(name: "exynos_trng_do_read", scope: !3, file: !3, line: 55, type: !2056, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2402 = !DILocalVariable(name: "rng", arg: 1, scope: !2401, file: !3, line: 55, type: !2041)
!2403 = !DILocation(line: 55, column: 46, scope: !2401)
!2404 = !DILocalVariable(name: "data", arg: 2, scope: !2401, file: !3, line: 55, type: !206)
!2405 = !DILocation(line: 55, column: 57, scope: !2401)
!2406 = !DILocalVariable(name: "max", arg: 3, scope: !2401, file: !3, line: 55, type: !180)
!2407 = !DILocation(line: 55, column: 70, scope: !2401)
!2408 = !DILocalVariable(name: "wait", arg: 4, scope: !2401, file: !3, line: 56, type: !978)
!2409 = !DILocation(line: 56, column: 16, scope: !2401)
!2410 = !DILocalVariable(name: "trng", scope: !2401, file: !3, line: 58, type: !62)
!2411 = !DILocation(line: 58, column: 26, scope: !2401)
!2412 = !DILocalVariable(name: "val", scope: !2401, file: !3, line: 59, type: !117)
!2413 = !DILocation(line: 59, column: 6, scope: !2401)
!2414 = !DILocalVariable(name: "__UNIQUE_ID___x162", scope: !2415, file: !3, line: 61, type: !180)
!2415 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 61, column: 8)
!2416 = !DILocation(line: 61, column: 8, scope: !2415)
!2417 = !DILocalVariable(name: "__UNIQUE_ID___y163", scope: !2415, file: !3, line: 61, type: !180)
!2418 = !DILocation(line: 61, column: 6, scope: !2401)
!2419 = !DILocation(line: 63, column: 35, scope: !2401)
!2420 = !DILocation(line: 63, column: 40, scope: !2401)
!2421 = !DILocation(line: 63, column: 9, scope: !2401)
!2422 = !DILocation(line: 63, column: 7, scope: !2401)
!2423 = !DILocation(line: 65, column: 2, scope: !2401)
!2424 = !DILocalVariable(name: "__timeout_us", scope: !2425, file: !3, line: 66, type: !252)
!2425 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 66, column: 8)
!2426 = !DILocation(line: 66, column: 8, scope: !2425)
!2427 = !DILocalVariable(name: "__sleep_us", scope: !2425, file: !3, line: 66, type: !61)
!2428 = !DILocalVariable(name: "__timeout", scope: !2425, file: !3, line: 66, type: !482)
!2429 = !DILocation(line: 66, column: 8, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 66, column: 8)
!2431 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 66, column: 8)
!2432 = !DILocation(line: 66, column: 8, scope: !2431)
!2433 = !DILocation(line: 66, column: 8, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 66, column: 8)
!2435 = !DILocation(line: 66, column: 8, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 66, column: 8)
!2437 = !DILocation(line: 66, column: 8, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 66, column: 8)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 66, column: 8)
!2440 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 66, column: 8)
!2441 = !DILocation(line: 66, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 66, column: 8)
!2443 = !DILocation(line: 66, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 66, column: 8)
!2445 = !DILocation(line: 66, column: 8, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 66, column: 8)
!2447 = !DILocation(line: 66, column: 8, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 66, column: 8)
!2449 = !DILocation(line: 66, column: 8, scope: !2439)
!2450 = distinct !{!2450, !2451, !2451}
!2451 = !DILocation(line: 66, column: 8, scope: !2440)
!2452 = !DILocation(line: 66, column: 6, scope: !2401)
!2453 = !DILocation(line: 68, column: 6, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 68, column: 6)
!2455 = !DILocation(line: 68, column: 10, scope: !2454)
!2456 = !DILocation(line: 68, column: 6, scope: !2401)
!2457 = !DILocation(line: 69, column: 10, scope: !2454)
!2458 = !DILocation(line: 69, column: 3, scope: !2454)
!2459 = !DILocation(line: 71, column: 16, scope: !2401)
!2460 = !DILocation(line: 71, column: 22, scope: !2401)
!2461 = !DILocation(line: 71, column: 28, scope: !2401)
!2462 = !DILocation(line: 71, column: 32, scope: !2401)
!2463 = !DILocation(line: 71, column: 54, scope: !2401)
!2464 = !DILocation(line: 71, column: 2, scope: !2401)
!2465 = !DILocation(line: 73, column: 9, scope: !2401)
!2466 = !DILocation(line: 73, column: 2, scope: !2401)
!2467 = !DILocation(line: 74, column: 1, scope: !2401)
!2468 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2101, file: !2101, line: 236, type: !2469, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2107, !206}
!2471 = !DILocalVariable(name: "pdev", arg: 1, scope: !2468, file: !2101, line: 236, type: !2107)
!2472 = !DILocation(line: 236, column: 65, scope: !2468)
!2473 = !DILocalVariable(name: "data", arg: 2, scope: !2468, file: !2101, line: 237, type: !206)
!2474 = !DILocation(line: 237, column: 12, scope: !2468)
!2475 = !DILocation(line: 239, column: 19, scope: !2468)
!2476 = !DILocation(line: 239, column: 25, scope: !2468)
!2477 = !DILocation(line: 239, column: 30, scope: !2468)
!2478 = !DILocation(line: 239, column: 2, scope: !2468)
!2479 = !DILocation(line: 240, column: 1, scope: !2468)
!2480 = distinct !DISubprogram(name: "IS_ERR", scope: !2481, file: !2481, line: 34, type: !2482, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2481 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!978, !1109}
!2484 = !DILocalVariable(name: "ptr", arg: 1, scope: !2480, file: !2481, line: 34, type: !1109)
!2485 = !DILocation(line: 34, column: 60, scope: !2480)
!2486 = !DILocation(line: 36, column: 9, scope: !2480)
!2487 = !DILocation(line: 36, column: 2, scope: !2480)
!2488 = distinct !DISubprogram(name: "PTR_ERR", scope: !2481, file: !2481, line: 29, type: !2489, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!168, !1109}
!2491 = !DILocalVariable(name: "ptr", arg: 1, scope: !2488, file: !2481, line: 29, type: !1109)
!2492 = !DILocation(line: 29, column: 61, scope: !2488)
!2493 = !DILocation(line: 31, column: 16, scope: !2488)
!2494 = !DILocation(line: 31, column: 9, scope: !2488)
!2495 = !DILocation(line: 31, column: 2, scope: !2488)
!2496 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2497, file: !2497, line: 384, type: !1609, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2497 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2498 = !DILocalVariable(name: "dev", arg: 1, scope: !2496, file: !2497, line: 384, type: !66)
!2499 = !DILocation(line: 384, column: 54, scope: !2496)
!2500 = !DILocation(line: 386, column: 29, scope: !2496)
!2501 = !DILocation(line: 386, column: 9, scope: !2496)
!2502 = !DILocation(line: 386, column: 2, scope: !2496)
!2503 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !1887, file: !1887, line: 906, type: !2504, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!117, !2030}
!2506 = !DILocalVariable(name: "clk", arg: 1, scope: !2503, file: !1887, line: 906, type: !2030)
!2507 = !DILocation(line: 906, column: 50, scope: !2503)
!2508 = !DILocalVariable(name: "ret", scope: !2503, file: !1887, line: 908, type: !117)
!2509 = !DILocation(line: 908, column: 6, scope: !2503)
!2510 = !DILocation(line: 910, column: 20, scope: !2503)
!2511 = !DILocation(line: 910, column: 8, scope: !2503)
!2512 = !DILocation(line: 910, column: 6, scope: !2503)
!2513 = !DILocation(line: 911, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2503, file: !1887, line: 911, column: 6)
!2515 = !DILocation(line: 911, column: 6, scope: !2503)
!2516 = !DILocation(line: 912, column: 10, scope: !2514)
!2517 = !DILocation(line: 912, column: 3, scope: !2514)
!2518 = !DILocation(line: 913, column: 19, scope: !2503)
!2519 = !DILocation(line: 913, column: 8, scope: !2503)
!2520 = !DILocation(line: 913, column: 6, scope: !2503)
!2521 = !DILocation(line: 914, column: 6, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2503, file: !1887, line: 914, column: 6)
!2523 = !DILocation(line: 914, column: 6, scope: !2503)
!2524 = !DILocation(line: 915, column: 17, scope: !2522)
!2525 = !DILocation(line: 915, column: 3, scope: !2522)
!2526 = !DILocation(line: 917, column: 9, scope: !2503)
!2527 = !DILocation(line: 917, column: 2, scope: !2503)
!2528 = !DILocation(line: 918, column: 1, scope: !2503)
!2529 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !1887, file: !1887, line: 921, type: !2530, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2030}
!2532 = !DILocalVariable(name: "clk", arg: 1, scope: !2529, file: !1887, line: 921, type: !2030)
!2533 = !DILocation(line: 921, column: 54, scope: !2529)
!2534 = !DILocation(line: 923, column: 14, scope: !2529)
!2535 = !DILocation(line: 923, column: 2, scope: !2529)
!2536 = !DILocation(line: 924, column: 16, scope: !2529)
!2537 = !DILocation(line: 924, column: 2, scope: !2529)
!2538 = !DILocation(line: 925, column: 1, scope: !2529)
!2539 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !2497, file: !2497, line: 448, type: !1609, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2540 = !DILocalVariable(name: "dev", arg: 1, scope: !2539, file: !2497, line: 448, type: !66)
!2541 = !DILocation(line: 448, column: 54, scope: !2539)
!2542 = !DILocation(line: 450, column: 27, scope: !2539)
!2543 = !DILocation(line: 450, column: 9, scope: !2539)
!2544 = !DILocation(line: 450, column: 2, scope: !2539)
!2545 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !2497, file: !2497, line: 524, type: !1600, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2546 = !DILocalVariable(name: "dev", arg: 1, scope: !2545, file: !2497, line: 524, type: !66)
!2547 = !DILocation(line: 524, column: 54, scope: !2545)
!2548 = !DILocation(line: 526, column: 23, scope: !2545)
!2549 = !DILocation(line: 526, column: 2, scope: !2545)
!2550 = !DILocation(line: 527, column: 1, scope: !2545)
!2551 = distinct !DISubprogram(name: "kobject_name", scope: !71, file: !71, line: 88, type: !2552, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!74, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!2556 = !DILocalVariable(name: "kobj", arg: 1, scope: !2551, file: !71, line: 88, type: !2554)
!2557 = !DILocation(line: 88, column: 62, scope: !2551)
!2558 = !DILocation(line: 90, column: 9, scope: !2551)
!2559 = !DILocation(line: 90, column: 15, scope: !2551)
!2560 = !DILocation(line: 90, column: 2, scope: !2551)
!2561 = distinct !DISubprogram(name: "__writel", scope: !2562, file: !2562, line: 71, type: !2563, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2562 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !7, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2567 = !DILocalVariable(name: "val", arg: 1, scope: !2561, file: !2562, line: 71, type: !7)
!2568 = !DILocation(line: 71, column: 1, scope: !2561)
!2569 = !DILocalVariable(name: "addr", arg: 2, scope: !2561, file: !2562, line: 71, type: !2565)
!2570 = !{i32 -2144520539}
!2571 = distinct !DISubprogram(name: "ktime_add_us", scope: !483, file: !483, line: 179, type: !2572, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!482, !2574, !2575}
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!2576 = !DILocalVariable(name: "kt", arg: 1, scope: !2571, file: !483, line: 179, type: !2574)
!2577 = !DILocation(line: 179, column: 50, scope: !2571)
!2578 = !DILocalVariable(name: "usec", arg: 2, scope: !2571, file: !483, line: 179, type: !2575)
!2579 = !DILocation(line: 179, column: 64, scope: !2571)
!2580 = !DILocation(line: 181, column: 9, scope: !2571)
!2581 = !DILocation(line: 181, column: 2, scope: !2571)
!2582 = distinct !DISubprogram(name: "readl", scope: !2562, file: !2562, line: 59, type: !2583, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!7, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2587 = !DILocalVariable(name: "addr", arg: 1, scope: !2582, file: !2562, line: 59, type: !2585)
!2588 = !DILocation(line: 59, column: 1, scope: !2582)
!2589 = !DILocalVariable(name: "ret", scope: !2582, file: !2562, line: 59, type: !7)
!2590 = !{i32 -2144524068}
!2591 = distinct !DISubprogram(name: "ktime_compare", scope: !483, file: !483, line: 95, type: !2592, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!117, !2574, !2574}
!2594 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2591, file: !483, line: 95, type: !2574)
!2595 = !DILocation(line: 95, column: 47, scope: !2591)
!2596 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2591, file: !483, line: 95, type: !2574)
!2597 = !DILocation(line: 95, column: 67, scope: !2591)
!2598 = !DILocation(line: 97, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2591, file: !483, line: 97, column: 6)
!2600 = !DILocation(line: 97, column: 13, scope: !2599)
!2601 = !DILocation(line: 97, column: 11, scope: !2599)
!2602 = !DILocation(line: 97, column: 6, scope: !2591)
!2603 = !DILocation(line: 98, column: 3, scope: !2599)
!2604 = !DILocation(line: 99, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2591, file: !483, line: 99, column: 6)
!2606 = !DILocation(line: 99, column: 13, scope: !2605)
!2607 = !DILocation(line: 99, column: 11, scope: !2605)
!2608 = !DILocation(line: 99, column: 6, scope: !2591)
!2609 = !DILocation(line: 100, column: 3, scope: !2605)
!2610 = !DILocation(line: 101, column: 2, scope: !2591)
!2611 = !DILocation(line: 102, column: 1, scope: !2591)
!2612 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2613, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !66, !206}
!2615 = !DILocalVariable(name: "dev", arg: 1, scope: !2612, file: !30, line: 660, type: !66)
!2616 = !DILocation(line: 660, column: 51, scope: !2612)
!2617 = !DILocalVariable(name: "data", arg: 2, scope: !2612, file: !30, line: 660, type: !206)
!2618 = !DILocation(line: 660, column: 62, scope: !2612)
!2619 = !DILocation(line: 662, column: 21, scope: !2612)
!2620 = !DILocation(line: 662, column: 2, scope: !2612)
!2621 = !DILocation(line: 662, column: 7, scope: !2612)
!2622 = !DILocation(line: 662, column: 19, scope: !2612)
!2623 = !DILocation(line: 663, column: 1, scope: !2612)
!2624 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2101, file: !2101, line: 231, type: !2625, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!206, !2627}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2629 = !DILocalVariable(name: "pdev", arg: 1, scope: !2624, file: !2101, line: 231, type: !2627)
!2630 = !DILocation(line: 231, column: 72, scope: !2624)
!2631 = !DILocation(line: 233, column: 26, scope: !2624)
!2632 = !DILocation(line: 233, column: 32, scope: !2624)
!2633 = !DILocation(line: 233, column: 9, scope: !2624)
!2634 = !DILocation(line: 233, column: 2, scope: !2624)
!2635 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2636, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!206, !1917}
!2638 = !DILocalVariable(name: "dev", arg: 1, scope: !2635, file: !30, line: 655, type: !1917)
!2639 = !DILocation(line: 655, column: 58, scope: !2635)
!2640 = !DILocation(line: 657, column: 9, scope: !2635)
!2641 = !DILocation(line: 657, column: 14, scope: !2635)
!2642 = !DILocation(line: 657, column: 2, scope: !2635)
!2643 = distinct !DISubprogram(name: "exynos_trng_suspend", scope: !3, file: !3, line: 188, type: !1609, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2644 = !DILocalVariable(name: "dev", arg: 1, scope: !2643, file: !3, line: 188, type: !66)
!2645 = !DILocation(line: 188, column: 62, scope: !2643)
!2646 = !DILocation(line: 190, column: 22, scope: !2643)
!2647 = !DILocation(line: 190, column: 2, scope: !2643)
!2648 = !DILocation(line: 192, column: 2, scope: !2643)
!2649 = distinct !DISubprogram(name: "exynos_trng_resume", scope: !3, file: !3, line: 195, type: !1609, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2650 = !DILocalVariable(name: "dev", arg: 1, scope: !2649, file: !3, line: 195, type: !66)
!2651 = !DILocation(line: 195, column: 61, scope: !2649)
!2652 = !DILocalVariable(name: "ret", scope: !2649, file: !3, line: 197, type: !117)
!2653 = !DILocation(line: 197, column: 6, scope: !2649)
!2654 = !DILocation(line: 199, column: 28, scope: !2649)
!2655 = !DILocation(line: 199, column: 8, scope: !2649)
!2656 = !DILocation(line: 199, column: 6, scope: !2649)
!2657 = !DILocation(line: 200, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 200, column: 6)
!2659 = !DILocation(line: 200, column: 10, scope: !2658)
!2660 = !DILocation(line: 200, column: 6, scope: !2649)
!2661 = !DILocation(line: 201, column: 3, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 200, column: 15)
!2663 = !DILocation(line: 202, column: 25, scope: !2662)
!2664 = !DILocation(line: 202, column: 3, scope: !2662)
!2665 = !DILocation(line: 203, column: 10, scope: !2662)
!2666 = !DILocation(line: 203, column: 3, scope: !2662)
!2667 = !DILocation(line: 206, column: 2, scope: !2649)
!2668 = !DILocation(line: 207, column: 1, scope: !2649)
!2669 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !2497, file: !2497, line: 103, type: !1600, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2670 = !DILocalVariable(name: "v", arg: 1, scope: !2671, file: !2672, line: 200, type: !2675)
!2671 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2672, file: !2672, line: 200, type: !2673, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2672 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!978, !2675, !723, !117}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!2676 = !DILocation(line: 200, column: 63, scope: !2671, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1093, column: 12, scope: !2678, inlinedAt: !2682)
!2678 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !2679, file: !2679, line: 1086, type: !2680, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2679 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!117, !2675, !117, !117}
!2682 = distinct !DILocation(line: 1113, column: 9, scope: !2683, inlinedAt: !2686)
!2683 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !2679, file: !2679, line: 1111, type: !2684, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!978, !2675, !117, !117}
!2686 = distinct !DILocation(line: 789, column: 9, scope: !2687, inlinedAt: !2689)
!2687 = distinct !DISubprogram(name: "atomic_add_unless", scope: !2688, file: !2688, line: 786, type: !2684, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2688 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2689 = distinct !DILocation(line: 105, column: 2, scope: !2669)
!2690 = !DILocalVariable(name: "old", arg: 2, scope: !2671, file: !2672, line: 200, type: !723)
!2691 = !DILocation(line: 200, column: 71, scope: !2671, inlinedAt: !2677)
!2692 = !DILocalVariable(name: "new", arg: 3, scope: !2671, file: !2672, line: 200, type: !117)
!2693 = !DILocation(line: 200, column: 80, scope: !2671, inlinedAt: !2677)
!2694 = !DILocalVariable(name: "success", scope: !2695, file: !2672, line: 202, type: !978)
!2695 = distinct !DILexicalBlock(scope: !2671, file: !2672, line: 202, column: 9)
!2696 = !DILocation(line: 202, column: 9, scope: !2695, inlinedAt: !2677)
!2697 = !DILocalVariable(name: "_old", scope: !2695, file: !2672, line: 202, type: !723)
!2698 = !DILocalVariable(name: "__old", scope: !2695, file: !2672, line: 202, type: !117)
!2699 = !DILocalVariable(name: "__new", scope: !2695, file: !2672, line: 202, type: !117)
!2700 = !DILocalVariable(name: "__ptr", scope: !2695, file: !2672, line: 202, type: !2068)
!2701 = !DILocalVariable(name: "v", arg: 1, scope: !2702, file: !2672, line: 23, type: !2705)
!2702 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2672, file: !2672, line: 23, type: !2703, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!117, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!2707 = !DILocation(line: 23, column: 61, scope: !2702, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1088, column: 10, scope: !2678, inlinedAt: !2682)
!2709 = !DILocalVariable(name: "v", arg: 1, scope: !2678, file: !2679, line: 1086, type: !2675)
!2710 = !DILocation(line: 1086, column: 40, scope: !2678, inlinedAt: !2682)
!2711 = !DILocalVariable(name: "a", arg: 2, scope: !2678, file: !2679, line: 1086, type: !117)
!2712 = !DILocation(line: 1086, column: 47, scope: !2678, inlinedAt: !2682)
!2713 = !DILocalVariable(name: "u", arg: 3, scope: !2678, file: !2679, line: 1086, type: !117)
!2714 = !DILocation(line: 1086, column: 54, scope: !2678, inlinedAt: !2682)
!2715 = !DILocalVariable(name: "c", scope: !2678, file: !2679, line: 1088, type: !117)
!2716 = !DILocation(line: 1088, column: 6, scope: !2678, inlinedAt: !2682)
!2717 = !DILocalVariable(name: "v", arg: 1, scope: !2683, file: !2679, line: 1111, type: !2675)
!2718 = !DILocation(line: 1111, column: 34, scope: !2683, inlinedAt: !2686)
!2719 = !DILocalVariable(name: "a", arg: 2, scope: !2683, file: !2679, line: 1111, type: !117)
!2720 = !DILocation(line: 1111, column: 41, scope: !2683, inlinedAt: !2686)
!2721 = !DILocalVariable(name: "u", arg: 3, scope: !2683, file: !2679, line: 1111, type: !117)
!2722 = !DILocation(line: 1111, column: 48, scope: !2683, inlinedAt: !2686)
!2723 = !DILocalVariable(name: "v", arg: 1, scope: !2724, file: !2725, line: 99, type: !2585)
!2724 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2725, file: !2725, line: 99, type: !2726, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2725 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2585, !180}
!2728 = !DILocation(line: 99, column: 79, scope: !2724, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 788, column: 2, scope: !2687, inlinedAt: !2689)
!2730 = !DILocalVariable(name: "size", arg: 2, scope: !2724, file: !2725, line: 99, type: !180)
!2731 = !DILocation(line: 99, column: 89, scope: !2724, inlinedAt: !2729)
!2732 = !DILocalVariable(name: "v", arg: 1, scope: !2687, file: !2688, line: 786, type: !2675)
!2733 = !DILocation(line: 786, column: 29, scope: !2687, inlinedAt: !2689)
!2734 = !DILocalVariable(name: "a", arg: 2, scope: !2687, file: !2688, line: 786, type: !117)
!2735 = !DILocation(line: 786, column: 36, scope: !2687, inlinedAt: !2689)
!2736 = !DILocalVariable(name: "u", arg: 3, scope: !2687, file: !2688, line: 786, type: !117)
!2737 = !DILocation(line: 786, column: 43, scope: !2687, inlinedAt: !2689)
!2738 = !DILocalVariable(name: "dev", arg: 1, scope: !2669, file: !2497, line: 103, type: !66)
!2739 = !DILocation(line: 103, column: 57, scope: !2669)
!2740 = !DILocation(line: 105, column: 21, scope: !2669)
!2741 = !DILocation(line: 105, column: 26, scope: !2669)
!2742 = !DILocation(line: 105, column: 32, scope: !2669)
!2743 = !DILocation(line: 788, column: 31, scope: !2687, inlinedAt: !2689)
!2744 = !DILocation(line: 101, column: 20, scope: !2724, inlinedAt: !2729)
!2745 = !DILocation(line: 101, column: 23, scope: !2724, inlinedAt: !2729)
!2746 = !DILocation(line: 101, column: 2, scope: !2724, inlinedAt: !2729)
!2747 = !DILocation(line: 102, column: 2, scope: !2724, inlinedAt: !2729)
!2748 = !DILocation(line: 789, column: 32, scope: !2687, inlinedAt: !2689)
!2749 = !DILocation(line: 789, column: 35, scope: !2687, inlinedAt: !2689)
!2750 = !DILocation(line: 789, column: 38, scope: !2687, inlinedAt: !2689)
!2751 = !DILocation(line: 1113, column: 38, scope: !2683, inlinedAt: !2686)
!2752 = !DILocation(line: 1113, column: 41, scope: !2683, inlinedAt: !2686)
!2753 = !DILocation(line: 1113, column: 44, scope: !2683, inlinedAt: !2686)
!2754 = !DILocation(line: 1088, column: 27, scope: !2678, inlinedAt: !2682)
!2755 = !DILocation(line: 29, column: 9, scope: !2702, inlinedAt: !2708)
!2756 = !DILocation(line: 1090, column: 2, scope: !2678, inlinedAt: !2682)
!2757 = !DILocation(line: 1091, column: 7, scope: !2758, inlinedAt: !2682)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !2679, line: 1091, column: 7)
!2759 = distinct !DILexicalBlock(scope: !2678, file: !2679, line: 1090, column: 5)
!2760 = !DILocation(line: 1091, column: 7, scope: !2759, inlinedAt: !2682)
!2761 = !DILocation(line: 1092, column: 4, scope: !2758, inlinedAt: !2682)
!2762 = !DILocation(line: 1093, column: 36, scope: !2678, inlinedAt: !2682)
!2763 = !DILocation(line: 1093, column: 43, scope: !2678, inlinedAt: !2682)
!2764 = !DILocation(line: 1093, column: 47, scope: !2678, inlinedAt: !2682)
!2765 = !DILocation(line: 1093, column: 45, scope: !2678, inlinedAt: !2682)
!2766 = !{i32 -2146654201, i32 -2146654046}
!2767 = !DILocation(line: 202, column: 9, scope: !2768, inlinedAt: !2677)
!2768 = distinct !DILexicalBlock(scope: !2695, file: !2672, line: 202, column: 9)
!2769 = !DILocation(line: 202, column: 9, scope: !2671, inlinedAt: !2677)
!2770 = !DILocation(line: 1093, column: 11, scope: !2678, inlinedAt: !2682)
!2771 = !DILocation(line: 1093, column: 2, scope: !2759, inlinedAt: !2682)
!2772 = distinct !{!2772, !2756, !2773}
!2773 = !DILocation(line: 1093, column: 49, scope: !2678, inlinedAt: !2682)
!2774 = !DILocation(line: 1095, column: 9, scope: !2678, inlinedAt: !2682)
!2775 = !DILocation(line: 1113, column: 50, scope: !2683, inlinedAt: !2686)
!2776 = !DILocation(line: 1113, column: 47, scope: !2683, inlinedAt: !2686)
!2777 = !DILocation(line: 106, column: 1, scope: !2669)
!2778 = distinct !DISubprogram(name: "kasan_check_write", scope: !2779, file: !2779, line: 38, type: !2780, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2779 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!978, !2585, !7}
!2782 = !DILocalVariable(name: "p", arg: 1, scope: !2778, file: !2779, line: 38, type: !2585)
!2783 = !DILocation(line: 38, column: 59, scope: !2778)
!2784 = !DILocalVariable(name: "size", arg: 2, scope: !2778, file: !2779, line: 38, type: !7)
!2785 = !DILocation(line: 38, column: 75, scope: !2778)
!2786 = !DILocation(line: 40, column: 2, scope: !2778)
!2787 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2788, file: !2788, line: 178, type: !2789, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !105)
!2788 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2585, !180, !117}
!2791 = !DILocalVariable(name: "ptr", arg: 1, scope: !2787, file: !2788, line: 178, type: !2585)
!2792 = !DILocation(line: 178, column: 60, scope: !2787)
!2793 = !DILocalVariable(name: "size", arg: 2, scope: !2787, file: !2788, line: 178, type: !180)
!2794 = !DILocation(line: 178, column: 72, scope: !2787)
!2795 = !DILocalVariable(name: "type", arg: 3, scope: !2787, file: !2788, line: 179, type: !117)
!2796 = !DILocation(line: 179, column: 15, scope: !2787)
!2797 = !DILocation(line: 179, column: 23, scope: !2787)
