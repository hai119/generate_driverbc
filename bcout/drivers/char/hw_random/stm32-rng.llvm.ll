; ModuleID = '../bcout/drivers/char/hw_random/stm32-rng.llvm.bc'
source_filename = "drivers/char/hw_random/stm32-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_stm32_rng_driver_init6:\09\09\09"
module asm ".long\09stm32_rng_driver_init - .\09\09\09"
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
%struct.stm32_rng_private = type { %struct.hwrng, i8*, %struct.clk*, %struct.reset_control*, i8 }
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.clk = type opaque
%struct.reset_control = type opaque

@__UNIQUE_ID___addressable_stm32_rng_driver_init166 = internal global i8* bitcast (i32 ()* @stm32_rng_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@stm32_rng_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @stm32_rng_probe, i32 (%struct.platform_device*)* @stm32_rng_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @stm32_rng_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @stm32_rng_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2122
@__exitcall_stm32_rng_driver_exit = internal global void ()* @stm32_rng_driver_exit, section ".exitcall.exit", align 8, !dbg !2095
@__UNIQUE_ID_file167 = internal constant [48 x i8] c"stm32_rng.file=drivers/char/hw_random/stm32-rng\00", section ".modinfo", align 1, !dbg !2102
@__UNIQUE_ID_license168 = internal constant [22 x i8] c"stm32_rng.license=GPL\00", section ".modinfo", align 1, !dbg !2107
@__UNIQUE_ID_author169 = internal constant [62 x i8] c"stm32_rng.author=Daniel Thompson <daniel.thompson@linaro.org>\00", section ".modinfo", align 1, !dbg !2112
@__UNIQUE_ID_description170 = internal constant [65 x i8] c"stm32_rng.description=STMicroelectronics STM32 RNG device driver\00", section ".modinfo", align 1, !dbg !2117
@.str = private unnamed_addr constant [10 x i8] c"stm32-rng\00", align 1
@stm32_rng_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2185
@stm32_rng_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* @pm_runtime_force_suspend, i32 (%struct.device*)* @pm_runtime_force_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @stm32_rng_runtime_suspend, i32 (%struct.device*)* @stm32_rng_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !2188
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-error-detect\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: timeout %x!\0A\00", align 1
@__func__.stm32_rng_read = private unnamed_addr constant [15 x i8] c"stm32_rng_read\00", align 1
@stm32_rng_read.__warned = internal global i8 0, section ".data.once", align 1, !dbg !2182
@.str.3 = private unnamed_addr constant [21 x i8] c"bad RNG status - %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"drivers/char/hw_random/stm32-rng.c\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_stm32_rng_driver_init166 to i8*), i8* bitcast (void ()* @stm32_rng_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_stm32_rng_driver_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_description170, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_driver_init() #0 section ".init.text" !dbg !2195 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @stm32_rng_driver, %struct.module* null) #6, !dbg !2198
  ret i32 %call, !dbg !2198
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @stm32_rng_driver_exit() #0 section ".exit.text" !dbg !2199 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @stm32_rng_driver) #6, !dbg !2200
  ret void, !dbg !2200
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_probe(%struct.platform_device* %ofdev) #2 !dbg !2201 {
entry:
  %retval = alloca i32, align 4
  %ofdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %np = alloca %struct.device_node*, align 8
  %priv = alloca %struct.stm32_rng_private*, align 8
  %res = alloca %struct.resource, align 8
  %err = alloca i32, align 4
  store %struct.platform_device* %ofdev, %struct.platform_device** %ofdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %ofdev.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2204, metadata !DIExpression()), !dbg !2205
  %0 = load %struct.platform_device*, %struct.platform_device** %ofdev.addr, align 8, !dbg !2206
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2207
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2208, metadata !DIExpression()), !dbg !2209
  %1 = load %struct.platform_device*, %struct.platform_device** %ofdev.addr, align 8, !dbg !2210
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !2211
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 23, !dbg !2212
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2212
  store %struct.device_node* %2, %struct.device_node** %np, align 8, !dbg !2209
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2213, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2217, metadata !DIExpression()), !dbg !2218
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2219
  %call = call i8* @devm_kzalloc(%struct.device* %3, i64 144, i32 3264) #6, !dbg !2220
  %4 = bitcast i8* %call to %struct.stm32_rng_private*, !dbg !2220
  store %struct.stm32_rng_private* %4, %struct.stm32_rng_private** %priv, align 8, !dbg !2221
  %5 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2222
  %tobool = icmp ne %struct.stm32_rng_private* %5, null, !dbg !2222
  br i1 %tobool, label %if.end, label %if.then, !dbg !2224

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2225
  br label %return, !dbg !2225

if.end:                                           ; preds = %entry
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2226
  %call3 = call i32 @of_address_to_resource(%struct.device_node* %6, i32 0, %struct.resource* %res) #6, !dbg !2227
  store i32 %call3, i32* %err, align 4, !dbg !2228
  %7 = load i32, i32* %err, align 4, !dbg !2229
  %tobool4 = icmp ne i32 %7, 0, !dbg !2229
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2231

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %err, align 4, !dbg !2232
  store i32 %8, i32* %retval, align 4, !dbg !2233
  br label %return, !dbg !2233

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2234
  %call7 = call i8* @devm_ioremap_resource(%struct.device* %9, %struct.resource* %res) #6, !dbg !2235
  %10 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2236
  %base = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %10, i32 0, i32 1, !dbg !2237
  store i8* %call7, i8** %base, align 8, !dbg !2238
  %11 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2239
  %base8 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %11, i32 0, i32 1, !dbg !2241
  %12 = load i8*, i8** %base8, align 8, !dbg !2241
  %call9 = call zeroext i1 @IS_ERR(i8* %12) #6, !dbg !2242
  br i1 %call9, label %if.then10, label %if.end13, !dbg !2243

if.then10:                                        ; preds = %if.end6
  %13 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2244
  %base11 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %13, i32 0, i32 1, !dbg !2245
  %14 = load i8*, i8** %base11, align 8, !dbg !2245
  %call12 = call i64 @PTR_ERR(i8* %14) #6, !dbg !2246
  %conv = trunc i64 %call12 to i32, !dbg !2246
  store i32 %conv, i32* %retval, align 4, !dbg !2247
  br label %return, !dbg !2247

if.end13:                                         ; preds = %if.end6
  %15 = load %struct.platform_device*, %struct.platform_device** %ofdev.addr, align 8, !dbg !2248
  %dev14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 3, !dbg !2249
  %call15 = call %struct.clk* @devm_clk_get(%struct.device* %dev14, i8* null) #6, !dbg !2250
  %16 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2251
  %clk = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %16, i32 0, i32 2, !dbg !2252
  store %struct.clk* %call15, %struct.clk** %clk, align 8, !dbg !2253
  %17 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2254
  %clk16 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %17, i32 0, i32 2, !dbg !2256
  %18 = load %struct.clk*, %struct.clk** %clk16, align 8, !dbg !2256
  %19 = bitcast %struct.clk* %18 to i8*, !dbg !2254
  %call17 = call zeroext i1 @IS_ERR(i8* %19) #6, !dbg !2257
  br i1 %call17, label %if.then18, label %if.end22, !dbg !2258

if.then18:                                        ; preds = %if.end13
  %20 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2259
  %clk19 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %20, i32 0, i32 2, !dbg !2260
  %21 = load %struct.clk*, %struct.clk** %clk19, align 8, !dbg !2260
  %22 = bitcast %struct.clk* %21 to i8*, !dbg !2259
  %call20 = call i64 @PTR_ERR(i8* %22) #6, !dbg !2261
  %conv21 = trunc i64 %call20 to i32, !dbg !2261
  store i32 %conv21, i32* %retval, align 4, !dbg !2262
  br label %return, !dbg !2262

if.end22:                                         ; preds = %if.end13
  %23 = load %struct.platform_device*, %struct.platform_device** %ofdev.addr, align 8, !dbg !2263
  %dev23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 3, !dbg !2264
  %call24 = call %struct.reset_control* @devm_reset_control_get(%struct.device* %dev23, i8* null) #6, !dbg !2265
  %24 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2266
  %rst = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %24, i32 0, i32 3, !dbg !2267
  store %struct.reset_control* %call24, %struct.reset_control** %rst, align 8, !dbg !2268
  %25 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2269
  %rst25 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %25, i32 0, i32 3, !dbg !2271
  %26 = load %struct.reset_control*, %struct.reset_control** %rst25, align 8, !dbg !2271
  %27 = bitcast %struct.reset_control* %26 to i8*, !dbg !2269
  %call26 = call zeroext i1 @IS_ERR(i8* %27) #6, !dbg !2272
  br i1 %call26, label %if.end32, label %if.then27, !dbg !2273

if.then27:                                        ; preds = %if.end22
  %28 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2274
  %rst28 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %28, i32 0, i32 3, !dbg !2276
  %29 = load %struct.reset_control*, %struct.reset_control** %rst28, align 8, !dbg !2276
  %call29 = call i32 @reset_control_assert(%struct.reset_control* %29) #6, !dbg !2277
  call void @__const_udelay(i64 8590) #6, !dbg !2278
  %30 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2283
  %rst30 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %30, i32 0, i32 3, !dbg !2284
  %31 = load %struct.reset_control*, %struct.reset_control** %rst30, align 8, !dbg !2284
  %call31 = call i32 @reset_control_deassert(%struct.reset_control* %31) #6, !dbg !2285
  br label %if.end32, !dbg !2286

if.end32:                                         ; preds = %if.then27, %if.end22
  %32 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2287
  %call33 = call zeroext i1 @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2288
  %33 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2289
  %ced = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %33, i32 0, i32 4, !dbg !2290
  %frombool = zext i1 %call33 to i8, !dbg !2291
  store i8 %frombool, i8* %ced, align 8, !dbg !2291
  %34 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2292
  %35 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2293
  %36 = bitcast %struct.stm32_rng_private* %35 to i8*, !dbg !2293
  call void @dev_set_drvdata(%struct.device* %34, i8* %36) #6, !dbg !2294
  %37 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2295
  %call34 = call i8* @dev_driver_string(%struct.device* %37) #6, !dbg !2296
  %38 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2297
  %rng = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %38, i32 0, i32 0, !dbg !2298
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng, i32 0, i32 0, !dbg !2299
  store i8* %call34, i8** %name, align 8, !dbg !2300
  %39 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2301
  %rng35 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %39, i32 0, i32 0, !dbg !2302
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng35, i32 0, i32 5, !dbg !2303
  store i32 (%struct.hwrng*, i8*, i64, i1)* @stm32_rng_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2304
  %40 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2305
  %41 = ptrtoint %struct.device* %40 to i64, !dbg !2306
  %42 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2307
  %rng36 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %42, i32 0, i32 0, !dbg !2308
  %priv37 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng36, i32 0, i32 6, !dbg !2309
  store i64 %41, i64* %priv37, align 8, !dbg !2310
  %43 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2311
  %rng38 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %43, i32 0, i32 0, !dbg !2312
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng38, i32 0, i32 7, !dbg !2313
  store i16 900, i16* %quality, align 8, !dbg !2314
  %44 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2315
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %44, i32 100) #6, !dbg !2316
  %45 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2317
  call void @pm_runtime_use_autosuspend(%struct.device* %45) #6, !dbg !2318
  %46 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2319
  call void @pm_runtime_enable(%struct.device* %46) #6, !dbg !2320
  %47 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2321
  %48 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2322
  %rng39 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %48, i32 0, i32 0, !dbg !2323
  %call40 = call i32 @devm_hwrng_register(%struct.device* %47, %struct.hwrng* %rng39) #6, !dbg !2324
  store i32 %call40, i32* %retval, align 4, !dbg !2325
  br label %return, !dbg !2325

return:                                           ; preds = %if.end32, %if.then18, %if.then10, %if.then5, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !2326
  ret i32 %49, !dbg !2326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_remove(%struct.platform_device* %ofdev) #2 !dbg !2327 {
entry:
  %ofdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %ofdev, %struct.platform_device** %ofdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %ofdev.addr, metadata !2328, metadata !DIExpression()), !dbg !2329
  %0 = load %struct.platform_device*, %struct.platform_device** %ofdev.addr, align 8, !dbg !2330
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2331
  call void @pm_runtime_disable(%struct.device* %dev) #6, !dbg !2332
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
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2347
  ret i8* %call, !dbg !2348
}

; Function Attrs: noredzone
declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2349 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2353, metadata !DIExpression()), !dbg !2354
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2355
  %1 = ptrtoint i8* %0 to i64, !dbg !2355
  %2 = inttoptr i64 %1 to i8*, !dbg !2355
  %3 = ptrtoint i8* %2 to i64, !dbg !2355
  %cmp = icmp uge i64 %3, -4095, !dbg !2355
  %lnot = xor i1 %cmp, true, !dbg !2355
  %lnot1 = xor i1 %lnot, true, !dbg !2355
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2355
  %conv = sext i32 %lnot.ext to i64, !dbg !2355
  %tobool = icmp ne i64 %conv, 0, !dbg !2355
  ret i1 %tobool, !dbg !2356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2357 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2360, metadata !DIExpression()), !dbg !2361
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2362
  %1 = ptrtoint i8* %0 to i64, !dbg !2363
  ret i64 %1, !dbg !2364
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @devm_reset_control_get(%struct.device* %dev, i8* %id) #2 !dbg !2365 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2368, metadata !DIExpression()), !dbg !2369
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2372
  %1 = load i8*, i8** %id.addr, align 8, !dbg !2373
  %call = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device* %0, i8* %1) #6, !dbg !2374
  ret %struct.reset_control* %call, !dbg !2375
}

; Function Attrs: noredzone
declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #2 !dbg !2376 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2385, metadata !DIExpression()), !dbg !2386
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2387
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2388
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #6, !dbg !2389
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2386
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2390
  %tobool = icmp ne %struct.property* %2, null, !dbg !2390
  %3 = zext i1 %tobool to i64, !dbg !2390
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2390
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2390
  ret i1 %tobool1, !dbg !2391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2392 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2397, metadata !DIExpression()), !dbg !2398
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2399
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2400
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2401
  store i8* %0, i8** %driver_data, align 8, !dbg !2402
  ret void, !dbg !2403
}

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_read(%struct.hwrng* %rng, i8* %data, i64 %max, i1 zeroext %wait) #2 !dbg !2184 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %priv = alloca %struct.stm32_rng_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.stm32_rng_private*, align 8
  %sr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__delay_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp33 = alloca i32, align 4
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp81 = alloca i64, align 8
  %tmp89 = alloca i64, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2414, metadata !DIExpression()), !dbg !2416
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2416
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2416
  store i8* %1, i8** %__mptr, align 8, !dbg !2416
  br label %do.body, !dbg !2416

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2417

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2416
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2416
  %3 = bitcast i8* %add.ptr to %struct.stm32_rng_private*, !dbg !2416
  store %struct.stm32_rng_private* %3, %struct.stm32_rng_private** %tmp, align 8, !dbg !2417
  %4 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %tmp, align 8, !dbg !2416
  store %struct.stm32_rng_private* %4, %struct.stm32_rng_private** %priv, align 8, !dbg !2413
  call void @llvm.dbg.declare(metadata i32* %sr, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2421, metadata !DIExpression()), !dbg !2422
  store i32 0, i32* %retval1, align 4, !dbg !2422
  %5 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2423
  %rng2 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %5, i32 0, i32 0, !dbg !2424
  %priv3 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng2, i32 0, i32 6, !dbg !2425
  %6 = load i64, i64* %priv3, align 8, !dbg !2425
  %7 = inttoptr i64 %6 to %struct.device*, !dbg !2426
  %call = call i32 @pm_runtime_get_sync(%struct.device* %7) #6, !dbg !2427
  br label %while.cond, !dbg !2428

while.cond:                                       ; preds = %if.end101, %do.end
  %8 = load i64, i64* %max.addr, align 8, !dbg !2429
  %cmp = icmp ugt i64 %8, 4, !dbg !2430
  br i1 %cmp, label %while.body, label %while.end, !dbg !2428

while.body:                                       ; preds = %while.cond
  %9 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2431
  %base = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %9, i32 0, i32 1, !dbg !2431
  %10 = load i8*, i8** %base, align 8, !dbg !2431
  %add.ptr4 = getelementptr i8, i8* %10, i64 4, !dbg !2431
  %call5 = call i32 @__readl(i8* %add.ptr4) #6, !dbg !2431
  store i32 %call5, i32* %sr, align 4, !dbg !2433
  %11 = load i32, i32* %sr, align 4, !dbg !2434
  %tobool = icmp ne i32 %11, 0, !dbg !2434
  br i1 %tobool, label %if.end40, label %land.lhs.true, !dbg !2436

land.lhs.true:                                    ; preds = %while.body
  %12 = load i8, i8* %wait.addr, align 1, !dbg !2437
  %tobool6 = trunc i8 %12 to i1, !dbg !2437
  br i1 %tobool6, label %if.then, label %if.end40, !dbg !2438

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !2439, metadata !DIExpression()), !dbg !2442
  store i64 50000, i64* %__timeout_us, align 8, !dbg !2442
  call void @llvm.dbg.declare(metadata i64* %__delay_us, metadata !2443, metadata !DIExpression()), !dbg !2442
  store i64 10, i64* %__delay_us, align 8, !dbg !2442
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !2444, metadata !DIExpression()), !dbg !2442
  %call7 = call i64 @ktime_get() #6, !dbg !2442
  %13 = load i64, i64* %__timeout_us, align 8, !dbg !2442
  %call8 = call i64 @ktime_add_us(i64 %call7, i64 %13) #6, !dbg !2442
  store i64 %call8, i64* %__timeout, align 8, !dbg !2442
  br label %for.cond, !dbg !2442

for.cond:                                         ; preds = %if.end32, %if.then
  %14 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2445
  %base9 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %14, i32 0, i32 1, !dbg !2445
  %15 = load i8*, i8** %base9, align 8, !dbg !2445
  %add.ptr10 = getelementptr i8, i8* %15, i64 4, !dbg !2445
  %call11 = call i32 @__readl(i8* %add.ptr10) #6, !dbg !2445
  store i32 %call11, i32* %sr, align 4, !dbg !2445
  %16 = load i32, i32* %sr, align 4, !dbg !2449
  %tobool12 = icmp ne i32 %16, 0, !dbg !2449
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !2445

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !2449

if.end:                                           ; preds = %for.cond
  %17 = load i64, i64* %__timeout_us, align 8, !dbg !2451
  %tobool14 = icmp ne i64 %17, 0, !dbg !2451
  br i1 %tobool14, label %land.lhs.true15, label %if.end23, !dbg !2451

land.lhs.true15:                                  ; preds = %if.end
  %call16 = call i64 @ktime_get() #6, !dbg !2451
  %18 = load i64, i64* %__timeout, align 8, !dbg !2451
  %call17 = call i32 @ktime_compare(i64 %call16, i64 %18) #6, !dbg !2451
  %cmp18 = icmp sgt i32 %call17, 0, !dbg !2451
  br i1 %cmp18, label %if.then19, label %if.end23, !dbg !2445

if.then19:                                        ; preds = %land.lhs.true15
  %19 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2453
  %base20 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %19, i32 0, i32 1, !dbg !2453
  %20 = load i8*, i8** %base20, align 8, !dbg !2453
  %add.ptr21 = getelementptr i8, i8* %20, i64 4, !dbg !2453
  %call22 = call i32 @__readl(i8* %add.ptr21) #6, !dbg !2453
  store i32 %call22, i32* %sr, align 4, !dbg !2453
  br label %for.end, !dbg !2453

if.end23:                                         ; preds = %land.lhs.true15, %if.end
  %21 = load i64, i64* %__delay_us, align 8, !dbg !2455
  %tobool24 = icmp ne i64 %21, 0, !dbg !2455
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !2445

if.then25:                                        ; preds = %if.end23
  %22 = load i64, i64* %__delay_us, align 8, !dbg !2457
  %23 = call i1 @llvm.is.constant.i64(i64 %22), !dbg !2457
  br i1 %23, label %if.then26, label %if.else30, !dbg !2460

if.then26:                                        ; preds = %if.then25
  %24 = load i64, i64* %__delay_us, align 8, !dbg !2461
  %div = udiv i64 %24, 20000, !dbg !2461
  %cmp27 = icmp uge i64 %div, 1, !dbg !2461
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !2464

if.then28:                                        ; preds = %if.then26
  call void @__bad_udelay() #6, !dbg !2461
  br label %if.end29, !dbg !2461

if.else:                                          ; preds = %if.then26
  %25 = load i64, i64* %__delay_us, align 8, !dbg !2461
  %mul = mul i64 %25, 4295, !dbg !2461
  call void @__const_udelay(i64 %mul) #6, !dbg !2461
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  br label %if.end31, !dbg !2464

if.else30:                                        ; preds = %if.then25
  %26 = load i64, i64* %__delay_us, align 8, !dbg !2465
  call void @__udelay(i64 %26) #6, !dbg !2465
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.end29
  br label %if.end32, !dbg !2455

if.end32:                                         ; preds = %if.end31, %if.end23
  br label %for.cond, !dbg !2467, !llvm.loop !2468

for.end:                                          ; preds = %if.then19, %if.then13
  %27 = load i32, i32* %sr, align 4, !dbg !2442
  %tobool34 = icmp ne i32 %27, 0, !dbg !2442
  %28 = zext i1 %tobool34 to i64, !dbg !2442
  %cond = select i1 %tobool34, i32 0, i32 -110, !dbg !2442
  store i32 %cond, i32* %tmp33, align 4, !dbg !2469
  %29 = load i32, i32* %tmp33, align 4, !dbg !2442
  store i32 %29, i32* %retval1, align 4, !dbg !2470
  %30 = load i32, i32* %retval1, align 4, !dbg !2471
  %tobool35 = icmp ne i32 %30, 0, !dbg !2471
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !2473

if.then36:                                        ; preds = %for.end
  %31 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2474
  %rng37 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %31, i32 0, i32 0, !dbg !2474
  %priv38 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng37, i32 0, i32 6, !dbg !2474
  %32 = load i64, i64* %priv38, align 8, !dbg !2474
  %33 = inttoptr i64 %32 to %struct.device*, !dbg !2474
  %34 = load i32, i32* %sr, align 4, !dbg !2474
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.stm32_rng_read, i64 0, i64 0), i32 %34) #7, !dbg !2474
  br label %if.end39, !dbg !2474

if.end39:                                         ; preds = %if.then36, %for.end
  br label %if.end40, !dbg !2475

if.end40:                                         ; preds = %if.end39, %land.lhs.true, %while.body
  %35 = load i32, i32* %sr, align 4, !dbg !2476
  %conv = zext i32 %35 to i64, !dbg !2476
  %cmp41 = icmp ne i64 %conv, 1, !dbg !2478
  br i1 %cmp41, label %if.then43, label %if.end101, !dbg !2479

if.then43:                                        ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !2480, metadata !DIExpression()), !dbg !2484
  %36 = load i32, i32* %sr, align 4, !dbg !2484
  %conv44 = zext i32 %36 to i64, !dbg !2484
  %and = and i64 %conv44, 96, !dbg !2484
  %tobool45 = icmp ne i64 %and, 0, !dbg !2484
  %lnot = xor i1 %tobool45, true, !dbg !2484
  %lnot46 = xor i1 %lnot, true, !dbg !2484
  %lnot.ext = zext i1 %lnot46 to i32, !dbg !2484
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !2484
  %37 = load i32, i32* %__ret_warn_once, align 4, !dbg !2485
  %tobool47 = icmp ne i32 %37, 0, !dbg !2485
  br i1 %tobool47, label %land.rhs, label %land.end, !dbg !2485

land.rhs:                                         ; preds = %if.then43
  %38 = load i8, i8* @stm32_rng_read.__warned, align 1, !dbg !2485
  %tobool48 = trunc i8 %38 to i1, !dbg !2485
  %lnot49 = xor i1 %tobool48, true, !dbg !2485
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then43
  %39 = phi i1 [ false, %if.then43 ], [ %lnot49, %land.rhs ], !dbg !2487
  %lnot51 = xor i1 %39, true, !dbg !2485
  %lnot53 = xor i1 %lnot51, true, !dbg !2485
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !2485
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !2485
  %tobool56 = icmp ne i64 %conv55, 0, !dbg !2485
  br i1 %tobool56, label %if.then57, label %if.end88, !dbg !2484

if.then57:                                        ; preds = %land.end
  store i8 1, i8* @stm32_rng_read.__warned, align 1, !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2490, metadata !DIExpression()), !dbg !2492
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !2492
  %40 = load i32, i32* %__ret_warn_on, align 4, !dbg !2493
  %tobool58 = icmp ne i32 %40, 0, !dbg !2493
  %lnot59 = xor i1 %tobool58, true, !dbg !2493
  %lnot61 = xor i1 %lnot59, true, !dbg !2493
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !2493
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !2493
  %tobool64 = icmp ne i64 %conv63, 0, !dbg !2493
  br i1 %tobool64, label %if.then65, label %if.end80, !dbg !2492

if.then65:                                        ; preds = %if.then57
  br label %do.body66, !dbg !2493

do.body66:                                        ; preds = %if.then65
  br label %do.body67, !dbg !2495

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !2497

do.end68:                                         ; preds = %do.body67
  %41 = load i32, i32* %sr, align 4, !dbg !2495
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %41) #6, !dbg !2495
  br label %do.body69, !dbg !2495

do.body69:                                        ; preds = %do.end68
  br label %do.body70, !dbg !2499

do.body70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !2501

do.end71:                                         ; preds = %do.body70
  br label %do.body72, !dbg !2499

do.body72:                                        ; preds = %do.end71
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 64, i32 2313, i64 12) #8, !dbg !2503, !srcloc !2505
  br label %do.end73, !dbg !2503

do.end73:                                         ; preds = %do.body72
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #8, !dbg !2506, !srcloc !2508
  br label %do.body74, !dbg !2499

do.body74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !2509

do.end75:                                         ; preds = %do.body74
  br label %do.end76, !dbg !2499

do.end76:                                         ; preds = %do.end75
  br label %do.body77, !dbg !2495

do.body77:                                        ; preds = %do.end76
  br label %do.end78, !dbg !2511

do.end78:                                         ; preds = %do.body77
  br label %do.end79, !dbg !2495

do.end79:                                         ; preds = %do.end78
  br label %if.end80, !dbg !2495

if.end80:                                         ; preds = %do.end79, %if.then57
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !2492
  %tobool82 = icmp ne i32 %42, 0, !dbg !2492
  %lnot83 = xor i1 %tobool82, true, !dbg !2492
  %lnot85 = xor i1 %lnot83, true, !dbg !2492
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !2492
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !2492
  store i64 %conv87, i64* %tmp81, align 8, !dbg !2493
  %43 = load i64, i64* %tmp81, align 8, !dbg !2492
  br label %if.end88, !dbg !2488

if.end88:                                         ; preds = %if.end80, %land.end
  %44 = load i32, i32* %__ret_warn_once, align 4, !dbg !2484
  %tobool90 = icmp ne i32 %44, 0, !dbg !2484
  %lnot91 = xor i1 %tobool90, true, !dbg !2484
  %lnot93 = xor i1 %lnot91, true, !dbg !2484
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !2484
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !2484
  store i64 %conv95, i64* %tmp89, align 8, !dbg !2485
  %45 = load i64, i64* %tmp89, align 8, !dbg !2484
  %tobool96 = icmp ne i64 %45, 0, !dbg !2513
  br i1 %tobool96, label %if.then97, label %if.end100, !dbg !2514

if.then97:                                        ; preds = %if.end88
  %46 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2515
  %base98 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %46, i32 0, i32 1, !dbg !2515
  %47 = load i8*, i8** %base98, align 8, !dbg !2515
  %add.ptr99 = getelementptr i8, i8* %47, i64 4, !dbg !2515
  call void @__writel(i32 0, i8* %add.ptr99) #6, !dbg !2515
  br label %if.end100, !dbg !2515

if.end100:                                        ; preds = %if.then97, %if.end88
  br label %while.end, !dbg !2516

if.end101:                                        ; preds = %if.end40
  %48 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2517
  %base102 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %48, i32 0, i32 1, !dbg !2517
  %49 = load i8*, i8** %base102, align 8, !dbg !2517
  %add.ptr103 = getelementptr i8, i8* %49, i64 8, !dbg !2517
  %call104 = call i32 @__readl(i8* %add.ptr103) #6, !dbg !2517
  %50 = load i8*, i8** %data.addr, align 8, !dbg !2518
  %51 = bitcast i8* %50 to i32*, !dbg !2519
  store i32 %call104, i32* %51, align 4, !dbg !2520
  %52 = load i32, i32* %retval1, align 4, !dbg !2521
  %conv105 = sext i32 %52 to i64, !dbg !2521
  %add = add i64 %conv105, 4, !dbg !2521
  %conv106 = trunc i64 %add to i32, !dbg !2521
  store i32 %conv106, i32* %retval1, align 4, !dbg !2521
  %53 = load i8*, i8** %data.addr, align 8, !dbg !2522
  %add.ptr107 = getelementptr i8, i8* %53, i64 4, !dbg !2522
  store i8* %add.ptr107, i8** %data.addr, align 8, !dbg !2522
  %54 = load i64, i64* %max.addr, align 8, !dbg !2523
  %sub = sub i64 %54, 4, !dbg !2523
  store i64 %sub, i64* %max.addr, align 8, !dbg !2523
  br label %while.cond, !dbg !2428, !llvm.loop !2524

while.end:                                        ; preds = %if.end100, %while.cond
  %55 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2526
  %rng108 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %55, i32 0, i32 0, !dbg !2527
  %priv109 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng108, i32 0, i32 6, !dbg !2528
  %56 = load i64, i64* %priv109, align 8, !dbg !2528
  %57 = inttoptr i64 %56 to %struct.device*, !dbg !2529
  call void @pm_runtime_mark_last_busy(%struct.device* %57) #6, !dbg !2530
  %58 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2531
  %rng110 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %58, i32 0, i32 0, !dbg !2532
  %priv111 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng110, i32 0, i32 6, !dbg !2533
  %59 = load i64, i64* %priv111, align 8, !dbg !2533
  %60 = inttoptr i64 %59 to %struct.device*, !dbg !2534
  %call112 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %60) #6, !dbg !2535
  %61 = load i32, i32* %retval1, align 4, !dbg !2536
  %tobool113 = icmp ne i32 %61, 0, !dbg !2536
  br i1 %tobool113, label %cond.true, label %lor.lhs.false, !dbg !2537

lor.lhs.false:                                    ; preds = %while.end
  %62 = load i8, i8* %wait.addr, align 1, !dbg !2538
  %tobool114 = trunc i8 %62 to i1, !dbg !2538
  br i1 %tobool114, label %cond.false, label %cond.true, !dbg !2536

cond.true:                                        ; preds = %lor.lhs.false, %while.end
  %63 = load i32, i32* %retval1, align 4, !dbg !2539
  br label %cond.end, !dbg !2536

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2536

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond115 = phi i32 [ %63, %cond.true ], [ -5, %cond.false ], !dbg !2536
  ret i32 %cond115, !dbg !2540
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_use_autosuspend(%struct.device* %dev) #2 !dbg !2541 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2543, metadata !DIExpression()), !dbg !2544
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2545
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext true) #6, !dbg !2546
  ret void, !dbg !2547
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.hwrng*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device* %dev, i8* %id) #2 !dbg !2548 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2553
  %1 = load i8*, i8** %id.addr, align 8, !dbg !2554
  %call = call %struct.reset_control* @__devm_reset_control_get(%struct.device* %0, i8* %1, i32 0, i1 zeroext false, i1 zeroext false, i1 zeroext true) #6, !dbg !2555
  ret %struct.reset_control* %call, !dbg !2556
}

; Function Attrs: noredzone
declare dso_local %struct.reset_control* @__devm_reset_control_get(%struct.device*, i8*, i32, i1 zeroext, i1 zeroext, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !2557 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2560
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !2561
  ret i32 %call, !dbg !2562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #2 !dbg !2563 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2572, metadata !DIExpression()), !dbg !2571
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2571
  %1 = bitcast i8* %0 to i32*, !dbg !2571
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !2571, !srcloc !2573
  store i32 %2, i32* %ret, align 4, !dbg !2571
  %3 = load i32, i32* %ret, align 4, !dbg !2571
  ret i32 %3, !dbg !2571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #2 !dbg !2574 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !2581, metadata !DIExpression()), !dbg !2582
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2583
  %1 = load i64, i64* %usec.addr, align 8, !dbg !2583
  %mul = mul i64 %1, 1000, !dbg !2583
  %add = add i64 %0, %mul, !dbg !2583
  ret i64 %add, !dbg !2584
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #2 !dbg !2585 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2588, metadata !DIExpression()), !dbg !2589
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2590, metadata !DIExpression()), !dbg !2591
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2592
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2594
  %cmp = icmp slt i64 %0, %1, !dbg !2595
  br i1 %cmp, label %if.then, label %if.end, !dbg !2596

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2597
  br label %return, !dbg !2597

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2598
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2600
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2601
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2602

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2603
  br label %return, !dbg !2603

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2604
  br label %return, !dbg !2604

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2605
  ret i32 %4, !dbg !2605
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #1

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #2 !dbg !2606 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2612, metadata !DIExpression()), !dbg !2611
  %0 = load i32, i32* %val.addr, align 4, !dbg !2611
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2611
  %2 = bitcast i8* %1 to i32*, !dbg !2611
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !2611, !srcloc !2613
  ret void, !dbg !2611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #2 !dbg !2614 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  br label %do.body, !dbg !2617

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2618

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2620

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2618

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #6, !dbg !2622
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2622
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2622
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !2622
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !2622
  br label %do.end3, !dbg !2622

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2618

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !2624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync_autosuspend(%struct.device* %dev) #2 !dbg !2625 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2628
  %call = call i32 @__pm_runtime_suspend(%struct.device* %0, i32 12) #6, !dbg !2629
  ret i32 %call, !dbg !2630
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_suspend(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_use_autosuspend(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !2631 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2634
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #6, !dbg !2635
  ret void, !dbg !2636
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_runtime_force_resume(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_runtime_suspend(%struct.device* %dev) #2 !dbg !2637 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.stm32_rng_private*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2640, metadata !DIExpression()), !dbg !2641
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2642
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !2643
  %1 = bitcast i8* %call to %struct.stm32_rng_private*, !dbg !2643
  store %struct.stm32_rng_private* %1, %struct.stm32_rng_private** %priv, align 8, !dbg !2641
  %2 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2644
  %rng = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %2, i32 0, i32 0, !dbg !2645
  call void @stm32_rng_cleanup(%struct.hwrng* %rng) #6, !dbg !2646
  ret i32 0, !dbg !2647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_runtime_resume(%struct.device* %dev) #2 !dbg !2648 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.stm32_rng_private*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2651, metadata !DIExpression()), !dbg !2652
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2653
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !2654
  %1 = bitcast i8* %call to %struct.stm32_rng_private*, !dbg !2654
  store %struct.stm32_rng_private* %1, %struct.stm32_rng_private** %priv, align 8, !dbg !2652
  %2 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2655
  %rng = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %2, i32 0, i32 0, !dbg !2656
  %call1 = call i32 @stm32_rng_init(%struct.hwrng* %rng) #6, !dbg !2657
  ret i32 %call1, !dbg !2658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2659 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2664
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2665
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2665
  ret i8* %1, !dbg !2666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @stm32_rng_cleanup(%struct.hwrng* %rng) #2 !dbg !2667 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.stm32_rng_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.stm32_rng_private*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2672, metadata !DIExpression()), !dbg !2674
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2674
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2674
  store i8* %1, i8** %__mptr, align 8, !dbg !2674
  br label %do.body, !dbg !2674

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2675

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2674
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2674
  %3 = bitcast i8* %add.ptr to %struct.stm32_rng_private*, !dbg !2674
  store %struct.stm32_rng_private* %3, %struct.stm32_rng_private** %tmp, align 8, !dbg !2675
  %4 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %tmp, align 8, !dbg !2674
  store %struct.stm32_rng_private* %4, %struct.stm32_rng_private** %priv, align 8, !dbg !2671
  %5 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2677
  %base = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %5, i32 0, i32 1, !dbg !2677
  %6 = load i8*, i8** %base, align 8, !dbg !2677
  %add.ptr1 = getelementptr i8, i8* %6, i64 0, !dbg !2677
  call void @__writel(i32 0, i8* %add.ptr1) #6, !dbg !2677
  %7 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2678
  %clk = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %7, i32 0, i32 2, !dbg !2679
  %8 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2679
  call void @clk_disable_unprepare(%struct.clk* %8) #6, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !2682 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2687
  call void @clk_disable(%struct.clk* %0) #6, !dbg !2688
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2689
  call void @clk_unprepare(%struct.clk* %1) #6, !dbg !2690
  ret void, !dbg !2691
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stm32_rng_init(%struct.hwrng* %rng) #2 !dbg !2692 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.stm32_rng_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.stm32_rng_private*, align 8
  %err = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.stm32_rng_private** %priv, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2697, metadata !DIExpression()), !dbg !2699
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2699
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2699
  store i8* %1, i8** %__mptr, align 8, !dbg !2699
  br label %do.body, !dbg !2699

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2700

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2699
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2699
  %3 = bitcast i8* %add.ptr to %struct.stm32_rng_private*, !dbg !2699
  store %struct.stm32_rng_private* %3, %struct.stm32_rng_private** %tmp, align 8, !dbg !2700
  %4 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %tmp, align 8, !dbg !2699
  store %struct.stm32_rng_private* %4, %struct.stm32_rng_private** %priv, align 8, !dbg !2696
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2702, metadata !DIExpression()), !dbg !2703
  %5 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2704
  %clk = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %5, i32 0, i32 2, !dbg !2705
  %6 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2705
  %call = call i32 @clk_prepare_enable(%struct.clk* %6) #6, !dbg !2706
  store i32 %call, i32* %err, align 4, !dbg !2707
  %7 = load i32, i32* %err, align 4, !dbg !2708
  %tobool = icmp ne i32 %7, 0, !dbg !2708
  br i1 %tobool, label %if.then, label %if.end, !dbg !2710

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %err, align 4, !dbg !2711
  store i32 %8, i32* %retval, align 4, !dbg !2712
  br label %return, !dbg !2712

if.end:                                           ; preds = %do.end
  %9 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2713
  %ced = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %9, i32 0, i32 4, !dbg !2715
  %10 = load i8, i8* %ced, align 8, !dbg !2715
  %tobool1 = trunc i8 %10 to i1, !dbg !2715
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2716

if.then2:                                         ; preds = %if.end
  %11 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2717
  %base = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %11, i32 0, i32 1, !dbg !2717
  %12 = load i8*, i8** %base, align 8, !dbg !2717
  %add.ptr3 = getelementptr i8, i8* %12, i64 0, !dbg !2717
  call void @__writel(i32 4, i8* %add.ptr3) #6, !dbg !2717
  br label %if.end6, !dbg !2717

if.else:                                          ; preds = %if.end
  %13 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2718
  %base4 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %13, i32 0, i32 1, !dbg !2718
  %14 = load i8*, i8** %base4, align 8, !dbg !2718
  %add.ptr5 = getelementptr i8, i8* %14, i64 0, !dbg !2718
  call void @__writel(i32 36, i8* %add.ptr5) #6, !dbg !2718
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %15 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %priv, align 8, !dbg !2719
  %base7 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %15, i32 0, i32 1, !dbg !2719
  %16 = load i8*, i8** %base7, align 8, !dbg !2719
  %add.ptr8 = getelementptr i8, i8* %16, i64 4, !dbg !2719
  call void @__writel(i32 0, i8* %add.ptr8) #6, !dbg !2719
  store i32 0, i32* %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

return:                                           ; preds = %if.end6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2721
  ret i32 %17, !dbg !2721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2722 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2729
  %call = call i32 @clk_prepare(%struct.clk* %0) #6, !dbg !2730
  store i32 %call, i32* %ret, align 4, !dbg !2731
  %1 = load i32, i32* %ret, align 4, !dbg !2732
  %tobool = icmp ne i32 %1, 0, !dbg !2732
  br i1 %tobool, label %if.then, label %if.end, !dbg !2734

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2735
  store i32 %2, i32* %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2737
  %call1 = call i32 @clk_enable(%struct.clk* %3) #6, !dbg !2738
  store i32 %call1, i32* %ret, align 4, !dbg !2739
  %4 = load i32, i32* %ret, align 4, !dbg !2740
  %tobool2 = icmp ne i32 %4, 0, !dbg !2740
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2742

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2743
  call void @clk_unprepare(%struct.clk* %5) #6, !dbg !2744
  br label %if.end4, !dbg !2744

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2745
  store i32 %6, i32* %retval, align 4, !dbg !2746
  br label %return, !dbg !2746

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2747
  ret i32 %7, !dbg !2747
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2190, !2191, !2192, !2193}
!llvm.ident = !{!2194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stm32_rng_driver_init166", scope: !2, file: !3, line: 215, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2094, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/stm32-rng.c", directory: "/home/lizy2001/genbc/linux")
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
!55 = !{!56, !59, !61, !62, !63, !64, !161, !93, !2090, !2092}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !58, line: 76, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !60, line: 148, baseType: !7)
!60 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_rng_private", file: !3, line: 30, size: 1152, elements: !66)
!66 = !{!67, !151, !152, !156, !160}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !65, file: !3, line: 31, baseType: !68, size: 896)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !69, line: 39, size: 896, elements: !70)
!69 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !75, !81, !85, !89, !98, !108, !109, !111, !117, !131}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 40, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !68, file: !69, line: 41, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !80}
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !68, file: !69, line: 42, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !80}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !68, file: !69, line: 43, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!79, !80, !79}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !68, file: !69, line: 44, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!79, !80, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !95, line: 21, baseType: !96)
!95 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !7)
!97 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !68, file: !69, line: 45, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!79, !80, !62, !102, !106}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 55, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !104, line: 72, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !104, line: 16, baseType: !61)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !60, line: 30, baseType: !107)
!107 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !68, file: !69, line: 46, baseType: !61, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !68, file: !69, line: 47, baseType: !110, size: 16, offset: 448)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !68, file: !69, line: 50, baseType: !112, size: 128, offset: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !60, line: 178, size: 128, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !60, line: 179, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !60, line: 179, baseType: !115, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !68, file: !69, line: 51, baseType: !118, size: 32, offset: 640)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !119, line: 19, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !118, file: !119, line: 20, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !123, line: 113, baseType: !124)
!123 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !123, line: 111, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !124, file: !123, line: 112, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !60, line: 168, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 166, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !128, file: !60, line: 167, baseType: !79, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !68, file: !69, line: 52, baseType: !132, size: 192, offset: 704)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !133, line: 26, size: 192, elements: !134)
!133 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !132, file: !133, line: 27, baseType: !7, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !132, file: !133, line: 28, baseType: !137, size: 128, offset: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !138, line: 43, size: 128, elements: !139)
!138 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !137, file: !138, line: 44, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !142, line: 29, baseType: !143)
!142 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !142, line: 20, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !143, file: !142, line: 21, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !147, line: 25, baseType: !148)
!147 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 25, elements: !149)
!149 = !{}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !137, file: !138, line: 45, baseType: !112, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !65, file: !3, line: 32, baseType: !62, size: 64, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !65, file: !3, line: 33, baseType: !153, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !155, line: 17, flags: DIFlagFwdDecl)
!155 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rst", scope: !65, file: !3, line: 34, baseType: !157, size: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !159, line: 11, flags: DIFlagFwdDecl)
!159 = !DIFile(filename: "./include/linux/reset.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ced", scope: !65, file: !3, line: 35, baseType: !106, size: 8, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !163)
!163 = !{!164, !1617, !1618, !1621, !1622, !1673, !1767, !1768, !1769, !1770, !1771, !1780, !1885, !1898, !1901, !1902, !1906, !1908, !1909, !1910, !1914, !1920, !1921, !1924, !2039, !2040, !2043, !2044, !2045, !2046, !2078, !2079, !2080, !2083, !2086, !2087, !2088, !2089}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !162, file: !30, line: 462, baseType: !165, size: 512)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !166, line: 64, size: 512, elements: !167)
!166 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !169, !170, !172, !224, !1458, !1611, !1612, !1613, !1614, !1615, !1616}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !166, line: 65, baseType: !72, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !165, file: !166, line: 66, baseType: !112, size: 128, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !166, line: 67, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !165, file: !166, line: 68, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !166, line: 192, size: 704, elements: !175)
!175 = !{!176, !177, !185, !186}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !174, file: !166, line: 193, baseType: !112, size: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !174, file: !166, line: 194, baseType: !178, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !142, line: 83, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !142, line: 71, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !142, line: 72, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !142, line: 72, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !182, file: !142, line: 73, baseType: !143)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !166, line: 195, baseType: !165, size: 512, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !174, file: !166, line: 196, baseType: !187, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !166, line: 156, size: 192, elements: !190)
!190 = !{!191, !196, !201}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !189, file: !166, line: 157, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!79, !173, !171}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !166, line: 158, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!72, !173, !171}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !189, file: !166, line: 159, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!79, !173, !171, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !166, line: 148, size: 20736, elements: !208)
!208 = !{!209, !214, !218, !219, !223}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !207, file: !166, line: 149, baseType: !210, size: 192)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 192, elements: !212)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!212 = !{!213}
!213 = !DISubrange(count: 3)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !207, file: !166, line: 150, baseType: !215, size: 4096, offset: 192)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 4096, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !207, file: !166, line: 151, baseType: !79, size: 32, offset: 4288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !207, file: !166, line: 152, baseType: !220, size: 16384, offset: 4320)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 16384, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 2048)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !207, file: !166, line: 153, baseType: !79, size: 32, offset: 20704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !165, file: !166, line: 69, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !166, line: 138, size: 448, elements: !227)
!227 = !{!228, !232, !255, !257, !1406, !1437, !1441}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !226, file: !166, line: 139, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !171}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !226, file: !166, line: 140, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !236, line: 230, size: 128, elements: !237)
!236 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !251}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !235, file: !236, line: 231, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !171, !245, !211}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !60, line: 60, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !104, line: 73, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !104, line: 15, baseType: !63)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !236, line: 30, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !236, line: 31, baseType: !72, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !246, file: !236, line: 32, baseType: !250, size: 16, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !60, line: 19, baseType: !110)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !235, file: !236, line: 232, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!242, !171, !245, !72, !102}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !226, file: !166, line: 141, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !226, file: !166, line: 142, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !236, line: 84, size: 320, elements: !262)
!262 = !{!263, !264, !268, !1403, !1404}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !236, line: 85, baseType: !72, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !261, file: !236, line: 86, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!250, !171, !245, !79}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !261, file: !236, line: 88, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!250, !171, !272, !79}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !236, line: 168, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !288, !289}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !273, file: !236, line: 169, baseType: !246, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !236, line: 170, baseType: !102, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !273, file: !236, line: 171, baseType: !62, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !273, file: !236, line: 172, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!242, !282, !171, !272, !211, !285, !102}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !284, line: 526, flags: DIFlagFwdDecl)
!284 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !60, line: 46, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !104, line: 88, baseType: !287)
!287 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !273, file: !236, line: 174, baseType: !279, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !273, file: !236, line: 176, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!79, !282, !171, !272, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !295, line: 305, size: 1472, elements: !296)
!295 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !298, !299, !300, !301, !309, !310, !1377, !1383, !1384, !1389, !1390, !1393, !1397, !1398, !1399, !1400, !1401}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !294, file: !295, line: 308, baseType: !61, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !294, file: !295, line: 309, baseType: !61, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !294, file: !295, line: 313, baseType: !293, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !294, file: !295, line: 313, baseType: !293, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !294, file: !295, line: 315, baseType: !302, size: 192, align: 64, offset: 256)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !303, line: 24, size: 192, align: 64, elements: !304)
!303 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !302, file: !303, line: 25, baseType: !61, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !302, file: !303, line: 26, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !302, file: !303, line: 27, baseType: !307, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !294, file: !295, line: 323, baseType: !61, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !294, file: !295, line: 327, baseType: !311, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !295, line: 388, size: 7296, elements: !313)
!313 = !{!314, !1373}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 389, baseType: !315, size: 7296)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !295, line: 389, size: 7296, elements: !316)
!316 = !{!317, !318, !322, !326, !330, !331, !332, !333, !334, !342, !343, !344, !345, !346, !355, !356, !357, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !391, !399, !402, !450, !451, !1343, !1344, !1347, !1351, !1352, !1355, !1356, !1357, !1360, !1372}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !315, file: !295, line: 390, baseType: !293, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !315, file: !295, line: 391, baseType: !319, size: 64, offset: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !303, line: 31, size: 64, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !319, file: !303, line: 32, baseType: !307, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !315, file: !295, line: 392, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !95, line: 23, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !325)
!325 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !315, file: !295, line: 394, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!61, !282, !61, !61, !61, !61}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !315, file: !295, line: 398, baseType: !61, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !315, file: !295, line: 399, baseType: !61, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !315, file: !295, line: 405, baseType: !61, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !315, file: !295, line: 406, baseType: !61, size: 64, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !315, file: !295, line: 407, baseType: !335, size: 64, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !284, line: 286, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 286, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !337, file: !284, line: 286, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !341, line: 18, baseType: !61)
!341 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !315, file: !295, line: 416, baseType: !127, size: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !315, file: !295, line: 428, baseType: !127, size: 32, offset: 608)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !315, file: !295, line: 437, baseType: !127, size: 32, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !315, file: !295, line: 447, baseType: !127, size: 32, offset: 672)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !315, file: !295, line: 450, baseType: !347, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !348, line: 13, baseType: !349)
!348 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !60, line: 175, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 173, size: 64, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !350, file: !60, line: 174, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !95, line: 22, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !97, line: 30, baseType: !287)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !315, file: !295, line: 452, baseType: !79, size: 32, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !315, file: !295, line: 454, baseType: !178, offset: 800)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !315, file: !295, line: 457, baseType: !358, size: 256, offset: 832)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !359, line: 35, size: 256, elements: !360)
!359 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !362, !363, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !358, file: !359, line: 36, baseType: !347, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !358, file: !359, line: 42, baseType: !347, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !358, file: !359, line: 46, baseType: !141, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !358, file: !359, line: 47, baseType: !112, size: 128, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !315, file: !295, line: 459, baseType: !112, size: 128, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !315, file: !295, line: 466, baseType: !61, size: 64, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !315, file: !295, line: 467, baseType: !61, size: 64, offset: 1280)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !315, file: !295, line: 469, baseType: !61, size: 64, offset: 1344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !315, file: !295, line: 470, baseType: !61, size: 64, offset: 1408)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !315, file: !295, line: 471, baseType: !349, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !315, file: !295, line: 472, baseType: !61, size: 64, offset: 1536)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !315, file: !295, line: 473, baseType: !61, size: 64, offset: 1600)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !315, file: !295, line: 474, baseType: !61, size: 64, offset: 1664)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !315, file: !295, line: 475, baseType: !61, size: 64, offset: 1728)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !315, file: !295, line: 477, baseType: !178, offset: 1792)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !315, file: !295, line: 478, baseType: !61, size: 64, offset: 1792)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !315, file: !295, line: 478, baseType: !61, size: 64, offset: 1856)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !315, file: !295, line: 478, baseType: !61, size: 64, offset: 1920)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !315, file: !295, line: 478, baseType: !61, size: 64, offset: 1984)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !315, file: !295, line: 479, baseType: !61, size: 64, offset: 2048)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !315, file: !295, line: 479, baseType: !61, size: 64, offset: 2112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !315, file: !295, line: 479, baseType: !61, size: 64, offset: 2176)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !315, file: !295, line: 480, baseType: !61, size: 64, offset: 2240)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !315, file: !295, line: 480, baseType: !61, size: 64, offset: 2304)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !315, file: !295, line: 480, baseType: !61, size: 64, offset: 2368)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !315, file: !295, line: 480, baseType: !61, size: 64, offset: 2432)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !315, file: !295, line: 482, baseType: !388, size: 2816, offset: 2496)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 44)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !315, file: !295, line: 488, baseType: !392, size: 256, offset: 5312)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !393, line: 60, size: 256, elements: !394)
!393 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !393, line: 61, baseType: !396, size: 256)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 256, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !315, file: !295, line: 490, baseType: !400, size: 64, offset: 5568)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !295, line: 490, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !315, file: !295, line: 493, baseType: !403, size: 896, offset: 5632)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !404, line: 53, baseType: !405)
!404 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 13, size: 896, elements: !406)
!406 = !{!407, !408, !409, !410, !413, !414, !421, !422, !442, !443, !446}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !405, file: !404, line: 18, baseType: !323, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !405, file: !404, line: 28, baseType: !349, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !405, file: !404, line: 31, baseType: !358, size: 256, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !405, file: !404, line: 32, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !404, line: 32, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !405, file: !404, line: 37, baseType: !110, size: 16, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !404, line: 40, baseType: !415, size: 192, offset: 512)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !416, line: 53, size: 192, elements: !417)
!416 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !415, file: !416, line: 54, baseType: !347, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !415, file: !416, line: 55, baseType: !178, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !415, file: !416, line: 59, baseType: !112, size: 128, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !405, file: !404, line: 41, baseType: !62, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !405, file: !404, line: 42, baseType: !423, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !426, line: 13, size: 896, elements: !427)
!426 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !425, file: !426, line: 14, baseType: !62, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !425, file: !426, line: 15, baseType: !61, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !425, file: !426, line: 17, baseType: !61, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !425, file: !426, line: 17, baseType: !61, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !425, file: !426, line: 19, baseType: !63, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !425, file: !426, line: 21, baseType: !63, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !425, file: !426, line: 22, baseType: !63, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !425, file: !426, line: 23, baseType: !63, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !425, file: !426, line: 24, baseType: !63, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !425, file: !426, line: 25, baseType: !63, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !425, file: !426, line: 26, baseType: !63, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !425, file: !426, line: 27, baseType: !63, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !425, file: !426, line: 28, baseType: !63, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !425, file: !426, line: 29, baseType: !63, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !405, file: !404, line: 44, baseType: !127, size: 32, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !405, file: !404, line: 50, baseType: !444, size: 16, offset: 864)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !95, line: 19, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !110)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !405, file: !404, line: 51, baseType: !447, size: 16, offset: 880)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !95, line: 18, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !97, line: 23, baseType: !449)
!449 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !295, line: 495, baseType: !61, size: 64, offset: 6528)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !315, file: !295, line: 497, baseType: !452, size: 64, offset: 6592)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !295, line: 381, size: 384, elements: !454)
!454 = !{!455, !456, !1342}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !453, file: !295, line: 382, baseType: !127, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !453, file: !295, line: 383, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !295, line: 376, size: 128, elements: !458)
!458 = !{!459, !1340}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !457, file: !295, line: 377, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !462, line: 640, size: 48640, elements: !463)
!462 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !470, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !485, !503, !514, !609, !610, !611, !622, !623, !625, !626, !627, !628, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !706, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !762, !764, !765, !766, !768, !770, !771, !772, !773, !774, !780, !781, !782, !783, !784, !785, !786, !798, !803, !808, !809, !810, !813, !817, !820, !823, !826, !829, !833, !836, !839, !845, !846, !847, !853, !854, !855, !856, !857, !866, !867, !868, !869, !870, !875, !876, !877, !880, !881, !884, !887, !890, !893, !896, !899, !900, !980, !983, !986, !987, !990, !991, !992, !998, !999, !1000, !1013, !1014, !1015, !1025, !1030, !1033, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !461, file: !462, line: 646, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !466, line: 56, size: 128, elements: !467)
!466 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !466, line: 57, baseType: !61, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !465, file: !466, line: 58, baseType: !94, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !461, file: !462, line: 649, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !461, file: !462, line: 657, baseType: !62, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !461, file: !462, line: 658, baseType: !122, size: 32, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !462, line: 660, baseType: !7, size: 32, offset: 288)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !461, file: !462, line: 661, baseType: !7, size: 32, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !461, file: !462, line: 684, baseType: !79, size: 32, offset: 352)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !461, file: !462, line: 686, baseType: !79, size: 32, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !461, file: !462, line: 687, baseType: !79, size: 32, offset: 416)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !461, file: !462, line: 688, baseType: !79, size: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !461, file: !462, line: 689, baseType: !7, size: 32, offset: 480)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !461, file: !462, line: 691, baseType: !482, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !462, line: 691, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !461, file: !462, line: 692, baseType: !486, size: 832, offset: 576)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !462, line: 451, size: 832, elements: !487)
!487 = !{!488, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !486, file: !462, line: 453, baseType: !489, size: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !462, line: 325, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !489, file: !462, line: 326, baseType: !61, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !489, file: !462, line: 327, baseType: !94, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !486, file: !462, line: 454, baseType: !302, size: 192, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !486, file: !462, line: 455, baseType: !112, size: 128, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !486, file: !462, line: 456, baseType: !7, size: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !486, file: !462, line: 458, baseType: !323, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !486, file: !462, line: 459, baseType: !323, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !486, file: !462, line: 460, baseType: !323, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !486, file: !462, line: 461, baseType: !323, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !486, file: !462, line: 463, baseType: !323, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !486, file: !462, line: 465, baseType: !502, offset: 832)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !462, line: 415, elements: !149)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !461, file: !462, line: 693, baseType: !504, size: 384, offset: 1408)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !462, line: 489, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !504, file: !462, line: 490, baseType: !112, size: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !504, file: !462, line: 491, baseType: !61, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !504, file: !462, line: 492, baseType: !61, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !504, file: !462, line: 493, baseType: !7, size: 32, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !504, file: !462, line: 494, baseType: !110, size: 16, offset: 288)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !504, file: !462, line: 495, baseType: !110, size: 16, offset: 304)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !504, file: !462, line: 497, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !461, file: !462, line: 697, baseType: !515, size: 1792, offset: 1792)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !462, line: 507, size: 1792, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !606, !607}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !515, file: !462, line: 508, baseType: !302, size: 192, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !515, file: !462, line: 515, baseType: !323, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !515, file: !462, line: 516, baseType: !323, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !515, file: !462, line: 517, baseType: !323, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !515, file: !462, line: 518, baseType: !323, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !515, file: !462, line: 519, baseType: !323, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !515, file: !462, line: 526, baseType: !353, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !515, file: !462, line: 527, baseType: !323, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !462, line: 528, baseType: !7, size: 32, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !515, file: !462, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !515, file: !462, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !515, file: !462, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !515, file: !462, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !515, file: !462, line: 563, baseType: !531, size: 512, offset: 704)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !532)
!532 = !{!533, !541, !542, !547, !599, !603, !604, !605}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !531, file: !6, line: 119, baseType: !534, size: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !535, line: 9, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !534, file: !535, line: 10, baseType: !302, size: 192, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !534, file: !535, line: 11, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !540, line: 29, baseType: !353)
!540 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !531, file: !6, line: 120, baseType: !539, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !531, file: !6, line: 121, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!5, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !531, file: !6, line: 122, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !550)
!550 = !{!551, !571, !572, !575, !585, !586, !594, !598}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !549, file: !6, line: 160, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !553, file: !6, line: 215, baseType: !141)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !553, file: !6, line: 216, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !553, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !553, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !553, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !553, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !553, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !553, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !553, file: !6, line: 233, baseType: !539, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !553, file: !6, line: 234, baseType: !546, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !553, file: !6, line: 235, baseType: !539, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !553, file: !6, line: 236, baseType: !546, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !553, file: !6, line: 237, baseType: !568, size: 4096, offset: 512)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 4096, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 8)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !549, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !549, file: !6, line: 162, baseType: !573, size: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !60, line: 27, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !104, line: 96, baseType: !79)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !549, file: !6, line: 163, baseType: !576, size: 32, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !577, line: 276, baseType: !578)
!577 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !577, line: 276, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !578, file: !577, line: 276, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !577, line: 70, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !577, line: 65, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !582, file: !577, line: 66, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !549, file: !6, line: 164, baseType: !546, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !549, file: !6, line: 165, baseType: !587, size: 128, offset: 256)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !535, line: 14, size: 128, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !587, file: !535, line: 15, baseType: !590, size: 128)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !303, line: 125, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !590, file: !303, line: 126, baseType: !319, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !590, file: !303, line: 127, baseType: !307, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !549, file: !6, line: 166, baseType: !595, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!539}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !549, file: !6, line: 167, baseType: !539, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !531, file: !6, line: 123, baseType: !600, size: 8, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !95, line: 17, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !602)
!602 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !531, file: !6, line: 124, baseType: !600, size: 8, offset: 456)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !531, file: !6, line: 125, baseType: !600, size: 8, offset: 464)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !531, file: !6, line: 126, baseType: !600, size: 8, offset: 472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !515, file: !462, line: 572, baseType: !531, size: 512, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !515, file: !462, line: 580, baseType: !608, size: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !461, file: !462, line: 721, baseType: !7, size: 32, offset: 3584)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !461, file: !462, line: 722, baseType: !79, size: 32, offset: 3616)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !461, file: !462, line: 723, baseType: !612, size: 64, offset: 3648)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !615, line: 17, baseType: !616)
!615 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !615, line: 17, size: 64, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !616, file: !615, line: 17, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 1)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !461, file: !462, line: 724, baseType: !614, size: 64, offset: 3712)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !461, file: !462, line: 749, baseType: !624, offset: 3776)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !462, line: 290, elements: !149)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !461, file: !462, line: 751, baseType: !112, size: 128, offset: 3776)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !461, file: !462, line: 757, baseType: !311, size: 64, offset: 3904)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !461, file: !462, line: 758, baseType: !311, size: 64, offset: 3968)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !461, file: !462, line: 761, baseType: !629, size: 320, offset: 4032)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !393, line: 34, size: 320, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !629, file: !393, line: 35, baseType: !323, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !629, file: !393, line: 36, baseType: !633, size: 256, offset: 64)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !397)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !461, file: !462, line: 766, baseType: !79, size: 32, offset: 4352)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !461, file: !462, line: 767, baseType: !79, size: 32, offset: 4384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !461, file: !462, line: 768, baseType: !79, size: 32, offset: 4416)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !461, file: !462, line: 770, baseType: !79, size: 32, offset: 4448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !461, file: !462, line: 772, baseType: !61, size: 64, offset: 4480)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !461, file: !462, line: 775, baseType: !7, size: 32, offset: 4544)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !461, file: !462, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !461, file: !462, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !461, file: !462, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !461, file: !462, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !461, file: !462, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !461, file: !462, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !461, file: !462, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !461, file: !462, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !461, file: !462, line: 831, baseType: !61, size: 64, offset: 4672)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !461, file: !462, line: 833, baseType: !650, size: 384, offset: 4736)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !651)
!651 = !{!652, !657}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !650, file: !12, line: 26, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!63, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !12, line: 27, baseType: !658, size: 320, offset: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !12, line: 27, size: 320, elements: !659)
!659 = !{!660, !669, !696}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !658, file: !12, line: 36, baseType: !661, size: 320)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 29, size: 320, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !661, file: !12, line: 30, baseType: !93, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !12, line: 31, baseType: !94, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !12, line: 32, baseType: !94, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !661, file: !12, line: 33, baseType: !94, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !661, file: !12, line: 34, baseType: !323, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !661, file: !12, line: 35, baseType: !93, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !658, file: !12, line: 46, baseType: !670, size: 192)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 38, size: 192, elements: !671)
!671 = !{!672, !673, !674, !695}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !670, file: !12, line: 39, baseType: !573, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !12, line: 41, baseType: !675, size: 64, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !12, line: 41, size: 64, elements: !676)
!676 = !{!677, !685}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !675, file: !12, line: 42, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !680, line: 7, size: 128, elements: !681)
!680 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !679, file: !680, line: 8, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !104, line: 93, baseType: !287)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !679, file: !680, line: 9, baseType: !287, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !675, file: !12, line: 43, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !688, line: 7, size: 64, elements: !689)
!688 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!689 = !{!690, !694}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !687, file: !688, line: 8, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !688, line: 5, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !95, line: 20, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !79)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !687, file: !688, line: 9, baseType: !692, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !670, file: !12, line: 45, baseType: !323, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !658, file: !12, line: 54, baseType: !697, size: 256)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 48, size: 256, elements: !698)
!698 = !{!699, !702, !703, !704, !705}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !697, file: !12, line: 49, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !697, file: !12, line: 50, baseType: !79, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !697, file: !12, line: 51, baseType: !79, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !697, file: !12, line: 52, baseType: !61, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !697, file: !12, line: 53, baseType: !61, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !461, file: !462, line: 835, baseType: !707, size: 32, offset: 5120)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !60, line: 22, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !104, line: 28, baseType: !79)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !461, file: !462, line: 836, baseType: !707, size: 32, offset: 5152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !461, file: !462, line: 840, baseType: !61, size: 64, offset: 5184)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !461, file: !462, line: 849, baseType: !460, size: 64, offset: 5248)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !461, file: !462, line: 852, baseType: !460, size: 64, offset: 5312)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !461, file: !462, line: 857, baseType: !112, size: 128, offset: 5376)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !461, file: !462, line: 858, baseType: !112, size: 128, offset: 5504)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !461, file: !462, line: 859, baseType: !460, size: 64, offset: 5632)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !461, file: !462, line: 867, baseType: !112, size: 128, offset: 5696)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !461, file: !462, line: 868, baseType: !112, size: 128, offset: 5824)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !461, file: !462, line: 871, baseType: !719, size: 64, offset: 5952)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !721, line: 59, size: 768, elements: !722)
!721 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !724, !725, !726, !737, !738, !745, !754}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !720, file: !721, line: 61, baseType: !122, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !720, file: !721, line: 62, baseType: !7, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !720, file: !721, line: 63, baseType: !178, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !720, file: !721, line: 65, baseType: !727, size: 256, offset: 64)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !397)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !60, line: 182, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !728, file: !60, line: 183, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !60, line: 186, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !60, line: 187, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !732, file: !60, line: 187, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !720, file: !721, line: 66, baseType: !728, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !720, file: !721, line: 68, baseType: !739, size: 128, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !740, line: 40, baseType: !741)
!740 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !740, line: 36, size: 128, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !740, line: 37, baseType: !178)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !741, file: !740, line: 38, baseType: !112, size: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !720, file: !721, line: 69, baseType: !746, size: 128, align: 64, offset: 512)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !60, line: 216, size: 128, align: 64, elements: !747)
!747 = !{!748, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !746, file: !60, line: 217, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !746, file: !60, line: 218, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !749}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !720, file: !721, line: 70, baseType: !755, size: 128, offset: 640)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 128, elements: !620)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !721, line: 54, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !756, file: !721, line: 55, baseType: !79, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !756, file: !721, line: 56, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !721, line: 56, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !461, file: !462, line: 872, baseType: !763, size: 512, offset: 6016)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 512, elements: !397)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !461, file: !462, line: 873, baseType: !112, size: 128, offset: 6528)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !461, file: !462, line: 874, baseType: !112, size: 128, offset: 6656)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !461, file: !462, line: 876, baseType: !767, size: 64, offset: 6784)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !461, file: !462, line: 879, baseType: !769, size: 64, offset: 6848)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !461, file: !462, line: 882, baseType: !769, size: 64, offset: 6912)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !461, file: !462, line: 884, baseType: !323, size: 64, offset: 6976)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !461, file: !462, line: 885, baseType: !323, size: 64, offset: 7040)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !461, file: !462, line: 890, baseType: !323, size: 64, offset: 7104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !461, file: !462, line: 891, baseType: !775, size: 128, offset: 7168)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !462, line: 242, size: 128, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !775, file: !462, line: 244, baseType: !323, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !775, file: !462, line: 245, baseType: !323, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !462, line: 246, baseType: !141, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !461, file: !462, line: 900, baseType: !61, size: 64, offset: 7296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !461, file: !462, line: 901, baseType: !61, size: 64, offset: 7360)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !461, file: !462, line: 904, baseType: !323, size: 64, offset: 7424)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !461, file: !462, line: 907, baseType: !323, size: 64, offset: 7488)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !461, file: !462, line: 910, baseType: !61, size: 64, offset: 7552)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !461, file: !462, line: 911, baseType: !61, size: 64, offset: 7616)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !461, file: !462, line: 914, baseType: !787, size: 640, offset: 7680)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !788, line: 123, size: 640, elements: !789)
!788 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !796, !797}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !787, file: !788, line: 124, baseType: !791, size: 576)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 576, elements: !212)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !788, line: 108, size: 192, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !792, file: !788, line: 109, baseType: !323, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !792, file: !788, line: 110, baseType: !587, size: 128, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !787, file: !788, line: 125, baseType: !7, size: 32, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !787, file: !788, line: 126, baseType: !7, size: 32, offset: 608)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !461, file: !462, line: 917, baseType: !799, size: 192, offset: 8320)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !788, line: 134, size: 192, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !799, file: !788, line: 135, baseType: !746, size: 128, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !799, file: !788, line: 136, baseType: !7, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !461, file: !462, line: 923, baseType: !804, size: 64, offset: 8512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !807, line: 11, flags: DIFlagFwdDecl)
!807 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!808 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !461, file: !462, line: 926, baseType: !804, size: 64, offset: 8576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !461, file: !462, line: 929, baseType: !804, size: 64, offset: 8640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !461, file: !462, line: 933, baseType: !811, size: 64, offset: 8704)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !462, line: 933, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !461, file: !462, line: 943, baseType: !814, size: 128, offset: 8768)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 16)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !461, file: !462, line: 945, baseType: !818, size: 64, offset: 8896)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !462, line: 49, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !461, file: !462, line: 956, baseType: !821, size: 64, offset: 8960)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !462, line: 45, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !461, file: !462, line: 959, baseType: !824, size: 64, offset: 9024)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !462, line: 959, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !461, file: !462, line: 962, baseType: !827, size: 64, offset: 9088)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !462, line: 66, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !461, file: !462, line: 966, baseType: !830, size: 64, offset: 9152)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !832, line: 35, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !461, file: !462, line: 969, baseType: !834, size: 64, offset: 9216)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !788, line: 223, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !461, file: !462, line: 970, baseType: !837, size: 64, offset: 9280)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !462, line: 62, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !461, file: !462, line: 971, baseType: !840, size: 64, offset: 9344)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !841, line: 25, baseType: !842)
!841 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !841, line: 23, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !842, file: !841, line: 24, baseType: !619, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !461, file: !462, line: 972, baseType: !840, size: 64, offset: 9408)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !461, file: !462, line: 974, baseType: !840, size: 64, offset: 9472)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !461, file: !462, line: 975, baseType: !848, size: 192, offset: 9536)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !849, line: 30, size: 192, elements: !850)
!849 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !848, file: !849, line: 31, baseType: !112, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !848, file: !849, line: 32, baseType: !840, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !461, file: !462, line: 976, baseType: !61, size: 64, offset: 9728)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !461, file: !462, line: 977, baseType: !102, size: 64, offset: 9792)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !461, file: !462, line: 978, baseType: !7, size: 32, offset: 9856)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !461, file: !462, line: 980, baseType: !749, size: 64, offset: 9920)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !461, file: !462, line: 989, baseType: !858, size: 128, offset: 9984)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !859, line: 35, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !858, file: !859, line: 36, baseType: !79, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !858, file: !859, line: 37, baseType: !127, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !858, file: !859, line: 38, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !859, line: 23, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !461, file: !462, line: 992, baseType: !323, size: 64, offset: 10112)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !461, file: !462, line: 993, baseType: !323, size: 64, offset: 10176)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !461, file: !462, line: 996, baseType: !178, offset: 10240)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !461, file: !462, line: 999, baseType: !141, offset: 10240)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !461, file: !462, line: 1001, baseType: !871, size: 64, offset: 10240)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !462, line: 636, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !462, line: 637, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !461, file: !462, line: 1005, baseType: !590, size: 128, offset: 10304)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !461, file: !462, line: 1007, baseType: !460, size: 64, offset: 10432)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !461, file: !462, line: 1009, baseType: !878, size: 64, offset: 10496)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !462, line: 1009, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !461, file: !462, line: 1043, baseType: !62, size: 64, offset: 10560)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !461, file: !462, line: 1046, baseType: !882, size: 64, offset: 10624)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !462, line: 41, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !461, file: !462, line: 1050, baseType: !885, size: 64, offset: 10688)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !462, line: 42, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !461, file: !462, line: 1054, baseType: !888, size: 64, offset: 10752)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !462, line: 55, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !461, file: !462, line: 1056, baseType: !891, size: 64, offset: 10816)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !462, line: 40, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !461, file: !462, line: 1058, baseType: !894, size: 64, offset: 10880)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !462, line: 47, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !461, file: !462, line: 1061, baseType: !897, size: 64, offset: 10944)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !462, line: 43, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !461, file: !462, line: 1064, baseType: !61, size: 64, offset: 11008)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !461, file: !462, line: 1065, baseType: !901, size: 64, offset: 11072)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !849, line: 14, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !849, line: 12, size: 384, elements: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !849, line: 13, baseType: !906, size: 384)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !849, line: 13, size: 384, elements: !907)
!907 = !{!908, !909, !910, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !906, file: !849, line: 13, baseType: !79, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !906, file: !849, line: 13, baseType: !79, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !906, file: !849, line: 13, baseType: !79, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !906, file: !849, line: 13, baseType: !912, size: 256, offset: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !913, line: 32, size: 256, elements: !914)
!913 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !921, !934, !940, !949, !969, !974}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !912, file: !913, line: 37, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 34, size: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !916, file: !913, line: 35, baseType: !708, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !916, file: !913, line: 36, baseType: !920, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !104, line: 49, baseType: !7)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !912, file: !913, line: 45, baseType: !922, size: 192)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 40, size: 192, elements: !923)
!923 = !{!924, !926, !927, !933}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !922, file: !913, line: 41, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !104, line: 95, baseType: !79)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !922, file: !913, line: 42, baseType: !79, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !922, file: !913, line: 43, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !913, line: 11, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !913, line: 8, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !929, file: !913, line: 9, baseType: !79, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !929, file: !913, line: 10, baseType: !62, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !922, file: !913, line: 44, baseType: !79, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !912, file: !913, line: 52, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 48, size: 128, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !935, file: !913, line: 49, baseType: !708, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !935, file: !913, line: 50, baseType: !920, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !935, file: !913, line: 51, baseType: !928, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !912, file: !913, line: 61, baseType: !941, size: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 55, size: 256, elements: !942)
!942 = !{!943, !944, !945, !946, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !941, file: !913, line: 56, baseType: !708, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !941, file: !913, line: 57, baseType: !920, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !941, file: !913, line: 58, baseType: !79, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !941, file: !913, line: 59, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !104, line: 94, baseType: !244)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !941, file: !913, line: 60, baseType: !947, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !912, file: !913, line: 95, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 64, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !950, file: !913, line: 65, baseType: !62, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !913, line: 77, baseType: !954, size: 192, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !913, line: 77, size: 192, elements: !955)
!955 = !{!956, !957, !964}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !954, file: !913, line: 82, baseType: !449, size: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !954, file: !913, line: 88, baseType: !958, size: 192)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !913, line: 84, size: 192, elements: !959)
!959 = !{!960, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !958, file: !913, line: 85, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !569)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !958, file: !913, line: 86, baseType: !62, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !958, file: !913, line: 87, baseType: !62, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !954, file: !913, line: 93, baseType: !965, size: 96)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !913, line: 90, size: 96, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !965, file: !913, line: 91, baseType: !961, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !965, file: !913, line: 92, baseType: !96, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !912, file: !913, line: 101, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 98, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !970, file: !913, line: 99, baseType: !63, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !970, file: !913, line: 100, baseType: !79, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !912, file: !913, line: 108, baseType: !975, size: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 104, size: 128, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !975, file: !913, line: 105, baseType: !62, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !975, file: !913, line: 106, baseType: !79, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !975, file: !913, line: 107, baseType: !7, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !461, file: !462, line: 1067, baseType: !981, offset: 11136)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !982, line: 12, elements: !149)
!982 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!983 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !461, file: !462, line: 1099, baseType: !984, size: 64, offset: 11136)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !462, line: 56, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !461, file: !462, line: 1103, baseType: !112, size: 128, offset: 11200)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !461, file: !462, line: 1104, baseType: !988, size: 64, offset: 11328)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !462, line: 46, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !461, file: !462, line: 1105, baseType: !415, size: 192, offset: 11392)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !461, file: !462, line: 1106, baseType: !7, size: 32, offset: 11584)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !461, file: !462, line: 1109, baseType: !993, size: 128, offset: 11648)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 128, elements: !996)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !462, line: 51, flags: DIFlagFwdDecl)
!996 = !{!997}
!997 = !DISubrange(count: 2)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !461, file: !462, line: 1110, baseType: !415, size: 192, offset: 11776)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !461, file: !462, line: 1111, baseType: !112, size: 128, offset: 11968)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !461, file: !462, line: 1173, baseType: !1001, size: 64, offset: 12096)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1003, line: 62, size: 256, align: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005, !1006, !1007, !1012}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1002, file: !1003, line: 75, baseType: !96, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1002, file: !1003, line: 90, baseType: !96, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1002, file: !1003, line: 124, baseType: !1008, size: 64, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !1003, line: 109, size: 64, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1008, file: !1003, line: 110, baseType: !324, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1008, file: !1003, line: 112, baseType: !324, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !1003, line: 144, baseType: !96, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !461, file: !462, line: 1174, baseType: !94, size: 32, offset: 12160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !461, file: !462, line: 1179, baseType: !61, size: 64, offset: 12224)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !461, file: !462, line: 1182, baseType: !1016, size: 128, offset: 12288)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !393, line: 76, size: 128, elements: !1017)
!1017 = !{!1018, !1023, !1024}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1016, file: !393, line: 85, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1020, line: 7, size: 64, elements: !1021)
!1020 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1019, file: !1020, line: 12, baseType: !616, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1016, file: !393, line: 88, baseType: !106, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1016, file: !393, line: 95, baseType: !106, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !462, line: 1184, baseType: !1026, size: 128, offset: 12416)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 1184, size: 128, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1026, file: !462, line: 1185, baseType: !122, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1026, file: !462, line: 1186, baseType: !746, size: 128, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !461, file: !462, line: 1190, baseType: !1031, size: 64, offset: 12544)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !462, line: 53, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !461, file: !462, line: 1192, baseType: !1034, size: 128, offset: 12608)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !393, line: 64, size: 128, elements: !1035)
!1035 = !{!1036, !1129, !1130}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1034, file: !393, line: 65, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !295, line: 68, size: 512, align: 128, elements: !1039)
!1039 = !{!1040, !1041, !1121, !1128}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !295, line: 69, baseType: !61, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !295, line: 77, baseType: !1042, size: 320, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !295, line: 77, size: 320, elements: !1043)
!1043 = !{!1044, !1053, !1058, !1086, !1094, !1100, !1113, !1120}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 78, baseType: !1045, size: 320)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 78, size: 320, elements: !1046)
!1046 = !{!1047, !1048, !1051, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1045, file: !295, line: 84, baseType: !112, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1045, file: !295, line: 86, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !295, line: 26, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1045, file: !295, line: 87, baseType: !61, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1045, file: !295, line: 94, baseType: !61, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 96, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 96, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1054, file: !295, line: 101, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !60, line: 143, baseType: !323)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 103, baseType: !1059, size: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 103, size: 320, elements: !1060)
!1060 = !{!1061, !1071, !1074, !1075}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !295, line: 104, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !295, line: 104, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1062, file: !295, line: 105, baseType: !112, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !295, line: 106, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !295, line: 106, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1066, file: !295, line: 107, baseType: !1037, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1066, file: !295, line: 109, baseType: !79, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1066, file: !295, line: 110, baseType: !79, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1059, file: !295, line: 117, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !295, line: 117, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1059, file: !295, line: 119, baseType: !62, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !295, line: 120, baseType: !1076, size: 64, offset: 256)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !295, line: 120, size: 64, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1076, file: !295, line: 121, baseType: !62, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1076, file: !295, line: 122, baseType: !61, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !295, line: 123, baseType: !1081, size: 32)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !295, line: 123, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1081, file: !295, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1081, file: !295, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1081, file: !295, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 130, baseType: !1087, size: 192)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 130, size: 192, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1087, file: !295, line: 131, baseType: !61, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1087, file: !295, line: 134, baseType: !602, size: 8, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1087, file: !295, line: 135, baseType: !602, size: 8, offset: 72)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1087, file: !295, line: 136, baseType: !127, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1087, file: !295, line: 137, baseType: !7, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 139, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 139, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1095, file: !295, line: 140, baseType: !61, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1095, file: !295, line: 141, baseType: !127, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1095, file: !295, line: 143, baseType: !112, size: 128, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 145, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 145, size: 256, elements: !1102)
!1102 = !{!1103, !1104, !1106, !1107, !1112}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1101, file: !295, line: 146, baseType: !61, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1101, file: !295, line: 147, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !284, line: 509, baseType: !1037)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1101, file: !295, line: 148, baseType: !61, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !295, line: 149, baseType: !1108, size: 64, offset: 192)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !295, line: 149, size: 64, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1108, file: !295, line: 150, baseType: !311, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1108, file: !295, line: 151, baseType: !127, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1101, file: !295, line: 156, baseType: !178, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !295, line: 159, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !295, line: 159, size: 128, elements: !1115)
!1115 = !{!1116, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1114, file: !295, line: 161, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !295, line: 161, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1114, file: !295, line: 162, baseType: !62, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1042, file: !295, line: 176, baseType: !746, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !295, line: 179, baseType: !1122, size: 32, offset: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !295, line: 179, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1122, file: !295, line: 184, baseType: !127, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1122, file: !295, line: 192, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1122, file: !295, line: 194, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1122, file: !295, line: 195, baseType: !79, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1038, file: !295, line: 199, baseType: !127, size: 32, offset: 416)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1034, file: !393, line: 67, baseType: !96, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !393, line: 68, baseType: !96, size: 32, offset: 96)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !461, file: !462, line: 1206, baseType: !79, size: 32, offset: 12736)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !461, file: !462, line: 1207, baseType: !79, size: 32, offset: 12768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !461, file: !462, line: 1209, baseType: !61, size: 64, offset: 12800)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !461, file: !462, line: 1219, baseType: !323, size: 64, offset: 12864)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !461, file: !462, line: 1220, baseType: !323, size: 64, offset: 12928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !461, file: !462, line: 1317, baseType: !79, size: 32, offset: 12992)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !461, file: !462, line: 1319, baseType: !460, size: 64, offset: 13056)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !461, file: !462, line: 1322, baseType: !1139, size: 64, offset: 13120)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1141, line: 56, size: 512, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1149, !1150, !1152}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1140, file: !1141, line: 57, baseType: !1139, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1140, file: !1141, line: 58, baseType: !62, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 59, baseType: !61, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 60, baseType: !61, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1140, file: !1141, line: 61, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1140, file: !1141, line: 62, baseType: !7, size: 32, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1140, file: !1141, line: 63, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !60, line: 153, baseType: !323)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1140, file: !1141, line: 64, baseType: !1153, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !461, file: !462, line: 1326, baseType: !122, size: 32, offset: 13184)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !461, file: !462, line: 1342, baseType: !62, size: 64, offset: 13248)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !461, file: !462, line: 1343, baseType: !324, size: 64, offset: 13312)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !461, file: !462, line: 1344, baseType: !323, size: 64, offset: 13376)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !461, file: !462, line: 1345, baseType: !324, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !461, file: !462, line: 1346, baseType: !324, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !461, file: !462, line: 1347, baseType: !324, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !461, file: !462, line: 1348, baseType: !746, size: 128, align: 64, offset: 13504)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !461, file: !462, line: 1358, baseType: !1164, size: 34816, offset: 13824)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1165, line: 485, size: 34816, elements: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1197, !1198, !1199, !1200, !1201, !1204, !1205, !1206}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1164, file: !1165, line: 487, baseType: !1168, size: 192)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 192, elements: !212)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1170, line: 16, size: 64, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1169, file: !1170, line: 17, baseType: !444, size: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1169, file: !1170, line: 18, baseType: !444, size: 16, offset: 16)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1169, file: !1170, line: 19, baseType: !444, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !1170, line: 19, baseType: !444, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1169, file: !1170, line: 19, baseType: !444, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1169, file: !1170, line: 19, baseType: !444, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1169, file: !1170, line: 19, baseType: !444, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1169, file: !1170, line: 20, baseType: !444, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1169, file: !1170, line: 20, baseType: !444, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1169, file: !1170, line: 20, baseType: !444, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1169, file: !1170, line: 20, baseType: !444, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1169, file: !1170, line: 20, baseType: !444, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1169, file: !1170, line: 20, baseType: !444, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1164, file: !1165, line: 491, baseType: !61, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1164, file: !1165, line: 495, baseType: !110, size: 16, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1164, file: !1165, line: 496, baseType: !110, size: 16, offset: 272)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1164, file: !1165, line: 497, baseType: !110, size: 16, offset: 288)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1164, file: !1165, line: 498, baseType: !110, size: 16, offset: 304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1164, file: !1165, line: 502, baseType: !61, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1164, file: !1165, line: 503, baseType: !61, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1164, file: !1165, line: 514, baseType: !1193, size: 256, offset: 448)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 256, elements: !397)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1165, line: 483, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1164, file: !1165, line: 516, baseType: !61, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1164, file: !1165, line: 518, baseType: !61, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1164, file: !1165, line: 520, baseType: !61, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1164, file: !1165, line: 521, baseType: !61, size: 64, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1164, file: !1165, line: 522, baseType: !61, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1164, file: !1165, line: 528, baseType: !1202, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1165, line: 10, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1164, file: !1165, line: 535, baseType: !61, size: 64, offset: 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1164, file: !1165, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1164, file: !1165, line: 540, baseType: !1207, size: 33280, offset: 1536)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1208, line: 317, size: 33280, elements: !1209)
!1208 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1207, file: !1208, line: 330, baseType: !7, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1207, file: !1208, line: 337, baseType: !61, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !1208, line: 348, baseType: !1213, size: 32768, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1208, line: 304, size: 32768, elements: !1214)
!1214 = !{!1215, !1230, !1269, !1319, !1336}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1213, file: !1208, line: 305, baseType: !1216, size: 896)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1208, line: 12, size: 896, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1216, file: !1208, line: 13, baseType: !94, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1216, file: !1208, line: 14, baseType: !94, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1216, file: !1208, line: 15, baseType: !94, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1216, file: !1208, line: 16, baseType: !94, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1216, file: !1208, line: 17, baseType: !94, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1216, file: !1208, line: 18, baseType: !94, size: 32, offset: 160)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1216, file: !1208, line: 19, baseType: !94, size: 32, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1216, file: !1208, line: 22, baseType: !1226, size: 640, offset: 224)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 20)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1216, file: !1208, line: 25, baseType: !94, size: 32, offset: 864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1213, file: !1208, line: 306, baseType: !1231, size: 4096, align: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1208, line: 34, size: 4096, align: 128, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1252, !1253, !1254, !1258, !1260, !1264}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1231, file: !1208, line: 35, baseType: !444, size: 16)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1231, file: !1208, line: 36, baseType: !444, size: 16, offset: 16)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1231, file: !1208, line: 37, baseType: !444, size: 16, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1231, file: !1208, line: 38, baseType: !444, size: 16, offset: 48)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1208, line: 39, baseType: !1238, size: 128, offset: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !1208, line: 39, size: 128, elements: !1239)
!1239 = !{!1240, !1245}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1208, line: 40, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1208, line: 40, size: 128, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1241, file: !1208, line: 41, baseType: !323, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1241, file: !1208, line: 42, baseType: !323, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1208, line: 44, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1208, line: 44, size: 128, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1246, file: !1208, line: 45, baseType: !94, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1246, file: !1208, line: 46, baseType: !94, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1246, file: !1208, line: 47, baseType: !94, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1246, file: !1208, line: 48, baseType: !94, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1231, file: !1208, line: 51, baseType: !94, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1231, file: !1208, line: 52, baseType: !94, size: 32, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1231, file: !1208, line: 55, baseType: !1255, size: 1024, offset: 256)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 1024, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1231, file: !1208, line: 58, baseType: !1259, size: 2048, offset: 1280)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, elements: !216)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1231, file: !1208, line: 60, baseType: !1261, size: 384, offset: 3328)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 384, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 12)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1208, line: 62, baseType: !1265, size: 384, offset: 3712)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !1208, line: 62, size: 384, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1265, file: !1208, line: 63, baseType: !1261, size: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1265, file: !1208, line: 64, baseType: !1261, size: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1213, file: !1208, line: 307, baseType: !1270, size: 1088)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1208, line: 79, size: 1088, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1318}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1270, file: !1208, line: 80, baseType: !94, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1270, file: !1208, line: 81, baseType: !94, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1270, file: !1208, line: 82, baseType: !94, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1270, file: !1208, line: 83, baseType: !94, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1270, file: !1208, line: 84, baseType: !94, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1270, file: !1208, line: 85, baseType: !94, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1270, file: !1208, line: 86, baseType: !94, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1270, file: !1208, line: 88, baseType: !1226, size: 640, offset: 224)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1270, file: !1208, line: 89, baseType: !600, size: 8, offset: 864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1270, file: !1208, line: 90, baseType: !600, size: 8, offset: 872)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1270, file: !1208, line: 91, baseType: !600, size: 8, offset: 880)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1270, file: !1208, line: 92, baseType: !600, size: 8, offset: 888)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1270, file: !1208, line: 93, baseType: !600, size: 8, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1270, file: !1208, line: 94, baseType: !600, size: 8, offset: 904)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1270, file: !1208, line: 95, baseType: !1287, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1289, line: 11, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1288, file: !1289, line: 12, baseType: !63, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1288, file: !1289, line: 13, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1295, line: 56, size: 1344, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1294, file: !1295, line: 61, baseType: !61, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1294, file: !1295, line: 62, baseType: !61, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1294, file: !1295, line: 63, baseType: !61, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1294, file: !1295, line: 64, baseType: !61, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1294, file: !1295, line: 65, baseType: !61, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1294, file: !1295, line: 66, baseType: !61, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1294, file: !1295, line: 68, baseType: !61, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1294, file: !1295, line: 69, baseType: !61, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1294, file: !1295, line: 70, baseType: !61, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1294, file: !1295, line: 71, baseType: !61, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1294, file: !1295, line: 72, baseType: !61, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1294, file: !1295, line: 73, baseType: !61, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1294, file: !1295, line: 74, baseType: !61, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1294, file: !1295, line: 75, baseType: !61, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1294, file: !1295, line: 76, baseType: !61, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1294, file: !1295, line: 81, baseType: !61, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1294, file: !1295, line: 83, baseType: !61, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1294, file: !1295, line: 84, baseType: !61, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1295, line: 85, baseType: !61, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1294, file: !1295, line: 86, baseType: !61, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1294, file: !1295, line: 87, baseType: !61, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1270, file: !1208, line: 96, baseType: !94, size: 32, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1213, file: !1208, line: 308, baseType: !1320, size: 4608, align: 512)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1208, line: 289, size: 4608, align: 512, elements: !1321)
!1321 = !{!1322, !1323, !1332}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1320, file: !1208, line: 290, baseType: !1231, size: 4096, align: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1320, file: !1208, line: 291, baseType: !1324, size: 512, offset: 4096)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1208, line: 268, size: 512, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1324, file: !1208, line: 269, baseType: !323, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1324, file: !1208, line: 270, baseType: !323, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1324, file: !1208, line: 271, baseType: !1329, size: 384, offset: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 384, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 6)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1320, file: !1208, line: 292, baseType: !1333, offset: 4608)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 0)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1213, file: !1208, line: 309, baseType: !1337, size: 32768)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 32768, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 4096)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !295, line: 378, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !453, file: !295, line: 384, baseType: !132, size: 192, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !315, file: !295, line: 500, baseType: !178, offset: 6656)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !315, file: !295, line: 501, baseType: !1345, size: 64, offset: 6656)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !295, line: 387, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !315, file: !295, line: 516, baseType: !1348, size: 64, offset: 6720)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1350, line: 18, flags: DIFlagFwdDecl)
!1350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !315, file: !295, line: 519, baseType: !282, size: 64, offset: 6784)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !315, file: !295, line: 521, baseType: !1353, size: 64, offset: 6848)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !295, line: 521, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !315, file: !295, line: 545, baseType: !127, size: 32, offset: 6912)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !315, file: !295, line: 548, baseType: !106, size: 8, offset: 6944)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !315, file: !295, line: 550, baseType: !1358, offset: 6952)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1359, line: 142, elements: !149)
!1359 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !315, file: !295, line: 554, baseType: !1361, size: 256, offset: 6976)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1362, line: 102, size: 256, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1361, file: !1362, line: 103, baseType: !347, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1361, file: !1362, line: 104, baseType: !112, size: 128, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1361, file: !1362, line: 105, baseType: !1367, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1362, line: 21, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !315, file: !295, line: 557, baseType: !94, size: 32, offset: 7232)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !312, file: !295, line: 565, baseType: !1374, offset: 7296)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: -1)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !294, file: !295, line: 333, baseType: !1378, size: 64, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !284, line: 284, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !284, line: 284, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1379, file: !284, line: 284, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !341, line: 19, baseType: !61)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !294, file: !295, line: 334, baseType: !61, size: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !294, file: !295, line: 343, baseType: !1385, size: 256, offset: 704)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !295, line: 340, size: 256, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1385, file: !295, line: 341, baseType: !302, size: 192, align: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1385, file: !295, line: 342, baseType: !61, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !294, file: !295, line: 351, baseType: !112, size: 128, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !294, file: !295, line: 353, baseType: !1391, size: 64, offset: 1088)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !295, line: 353, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !294, file: !295, line: 356, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !295, line: 356, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !294, file: !295, line: 359, baseType: !61, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !294, file: !295, line: 361, baseType: !282, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !294, file: !295, line: 362, baseType: !62, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !294, file: !295, line: 365, baseType: !347, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !294, file: !295, line: 373, baseType: !1402, offset: 1472)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !295, line: 296, elements: !149)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !261, file: !236, line: 90, baseType: !256, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !261, file: !236, line: 91, baseType: !1405, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !226, file: !166, line: 143, baseType: !1407, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1410, !171}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1413)
!1413 = !{!1414, !1415, !1419, !1423, !1429, !1433}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1412, file: !18, line: 40, baseType: !17, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1412, file: !18, line: 41, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!106}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1412, file: !18, line: 42, baseType: !1420, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!62}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1412, file: !18, line: 43, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1153, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1412, file: !18, line: 44, baseType: !1430, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1153}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1412, file: !18, line: 45, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !62}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !226, file: !166, line: 144, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1153, !171}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !226, file: !166, line: 145, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !171, !1445, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1350, line: 23, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 21, size: 32, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1447, file: !1350, line: 22, baseType: !1450, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !60, line: 32, baseType: !920)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1350, line: 28, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 26, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1453, file: !1350, line: 27, baseType: !1456, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !60, line: 33, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !104, line: 50, baseType: !7)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !165, file: !166, line: 70, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1461, line: 123, size: 1024, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1604, !1605, !1606, !1607, !1608}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1460, file: !1461, line: 124, baseType: !127, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1460, file: !1461, line: 125, baseType: !127, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1460, file: !1461, line: 135, baseType: !1459, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1460, file: !1461, line: 136, baseType: !72, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1460, file: !1461, line: 138, baseType: !302, size: 192, align: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1460, file: !1461, line: 140, baseType: !1153, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1460, file: !1461, line: 141, baseType: !7, size: 32, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1461, line: 142, baseType: !1471, size: 256, offset: 512)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1461, line: 142, size: 256, elements: !1472)
!1472 = !{!1473, !1527, !1531}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1471, file: !1461, line: 143, baseType: !1474, size: 192)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1461, line: 91, size: 192, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1474, file: !1461, line: 92, baseType: !61, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1474, file: !1461, line: 94, baseType: !319, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1474, file: !1461, line: 100, baseType: !1479, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1461, line: 180, size: 704, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1497, !1498, !1499, !1525, !1526}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1480, file: !1461, line: 182, baseType: !1459, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1461, line: 183, baseType: !7, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1480, file: !1461, line: 186, baseType: !1485, size: 192, offset: 128)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1486, line: 19, size: 192, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1495, !1496}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1485, file: !1486, line: 20, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1490, line: 292, size: 128, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1489, file: !1490, line: 293, baseType: !178)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1489, file: !1490, line: 295, baseType: !59, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1489, file: !1490, line: 296, baseType: !62, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1485, file: !1486, line: 21, baseType: !7, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1485, file: !1486, line: 22, baseType: !7, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1480, file: !1461, line: 187, baseType: !94, size: 32, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1480, file: !1461, line: 188, baseType: !94, size: 32, offset: 352)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1480, file: !1461, line: 189, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1461, line: 168, size: 320, elements: !1502)
!1502 = !{!1503, !1509, !1513, !1517, !1521}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1501, file: !1461, line: 169, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!79, !1507, !1479}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !284, line: 539, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1501, file: !1461, line: 171, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!79, !1459, !72, !250}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1501, file: !1461, line: 173, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!79, !1459}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1501, file: !1461, line: 174, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!79, !1459, !1459, !72}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1501, file: !1461, line: 176, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!79, !1507, !1459, !1479}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1480, file: !1461, line: 192, baseType: !112, size: 128, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1480, file: !1461, line: 194, baseType: !739, size: 128, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1471, file: !1461, line: 144, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1461, line: 103, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1528, file: !1461, line: 104, baseType: !1459, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1471, file: !1461, line: 145, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1461, line: 107, size: 256, elements: !1533)
!1533 = !{!1534, !1599, !1602, !1603}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1532, file: !1461, line: 108, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1461, line: 217, size: 768, elements: !1538)
!1538 = !{!1539, !1559, !1563, !1567, !1572, !1576, !1580, !1584, !1585, !1586, !1587, !1595}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !1461, line: 222, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!79, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1461, line: 197, size: 1088, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1544, file: !1461, line: 199, baseType: !1459, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1544, file: !1461, line: 200, baseType: !282, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1544, file: !1461, line: 201, baseType: !1507, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1544, file: !1461, line: 202, baseType: !62, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1544, file: !1461, line: 205, baseType: !415, size: 192, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1544, file: !1461, line: 206, baseType: !415, size: 192, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1544, file: !1461, line: 207, baseType: !79, size: 32, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1544, file: !1461, line: 208, baseType: !112, size: 128, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1544, file: !1461, line: 209, baseType: !211, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1544, file: !1461, line: 211, baseType: !102, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1544, file: !1461, line: 212, baseType: !106, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1544, file: !1461, line: 213, baseType: !106, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1544, file: !1461, line: 214, baseType: !1394, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !1461, line: 223, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1543}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1537, file: !1461, line: 236, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!79, !1507, !62}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1537, file: !1461, line: 238, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!62, !1507, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1537, file: !1461, line: 239, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!62, !1507, !62, !1571}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1537, file: !1461, line: 240, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1507, !62}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1461, line: 242, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!242, !1543, !211, !102, !285}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1537, file: !1461, line: 252, baseType: !102, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1537, file: !1461, line: 259, baseType: !106, size: 8, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1461, line: 260, baseType: !1581, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1537, file: !1461, line: 263, baseType: !1588, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1543, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1592, line: 52, baseType: !7)
!1592 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1461, line: 27, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1461, line: 266, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!79, !1543, !293}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1461, line: 109, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1461, line: 31, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1532, file: !1461, line: 110, baseType: !285, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1532, file: !1461, line: 111, baseType: !1459, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1460, file: !1461, line: 148, baseType: !62, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1460, file: !1461, line: 154, baseType: !323, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1461, line: 156, baseType: !110, size: 16, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1460, file: !1461, line: 157, baseType: !250, size: 16, offset: 912)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1460, file: !1461, line: 158, baseType: !1609, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1461, line: 32, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !165, file: !166, line: 71, baseType: !118, size: 32, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !165, file: !166, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !165, file: !166, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !165, file: !166, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !165, file: !166, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !165, file: !166, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !30, line: 463, baseType: !161, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !162, file: !30, line: 465, baseType: !1619, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !162, file: !30, line: 467, baseType: !72, size: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !30, line: 468, baseType: !1623, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1633, !1638, !1642}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1625, file: !30, line: 88, baseType: !72, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1625, file: !30, line: 89, baseType: !258, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1625, file: !30, line: 90, baseType: !1630, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!79, !161, !206}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1625, file: !30, line: 91, baseType: !1634, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!211, !161, !1637, !1445, !1451}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1625, file: !30, line: 93, baseType: !1639, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !161}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1625, file: !30, line: 95, baseType: !1643, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1646)
!1646 = !{!1647, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1645, file: !37, line: 279, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!79, !161}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1645, file: !37, line: 280, baseType: !1639, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1645, file: !37, line: 281, baseType: !1648, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1645, file: !37, line: 282, baseType: !1648, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1645, file: !37, line: 283, baseType: !1648, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1645, file: !37, line: 284, baseType: !1648, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1645, file: !37, line: 285, baseType: !1648, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1645, file: !37, line: 286, baseType: !1648, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1645, file: !37, line: 287, baseType: !1648, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1645, file: !37, line: 288, baseType: !1648, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1645, file: !37, line: 289, baseType: !1648, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1645, file: !37, line: 290, baseType: !1648, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1645, file: !37, line: 291, baseType: !1648, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1645, file: !37, line: 292, baseType: !1648, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1645, file: !37, line: 293, baseType: !1648, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1645, file: !37, line: 294, baseType: !1648, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1645, file: !37, line: 295, baseType: !1648, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1645, file: !37, line: 296, baseType: !1648, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1645, file: !37, line: 297, baseType: !1648, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1645, file: !37, line: 298, baseType: !1648, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1645, file: !37, line: 299, baseType: !1648, size: 64, offset: 1280)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1645, file: !37, line: 300, baseType: !1648, size: 64, offset: 1344)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1645, file: !37, line: 301, baseType: !1648, size: 64, offset: 1408)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !162, file: !30, line: 470, baseType: !1674, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1676, line: 82, size: 1408, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1760, !1763, !1766}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1675, file: !1676, line: 83, baseType: !72, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1675, file: !1676, line: 84, baseType: !72, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1675, file: !1676, line: 85, baseType: !161, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1675, file: !1676, line: 86, baseType: !258, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1675, file: !1676, line: 87, baseType: !258, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1675, file: !1676, line: 88, baseType: !258, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1675, file: !1676, line: 90, baseType: !1685, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!79, !161, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1711, !1724, !1725, !1726, !1727, !1728, !1736, !1737, !1738, !1739, !1740, !1741}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !24, line: 96, baseType: !72, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1689, file: !24, line: 97, baseType: !1674, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1689, file: !24, line: 99, baseType: !56, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1689, file: !24, line: 100, baseType: !72, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1689, file: !24, line: 102, baseType: !106, size: 8, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1689, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1689, file: !24, line: 105, baseType: !1698, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1701, line: 262, size: 1600, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1705, !1706, !1710}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !1701, line: 263, baseType: !1704, size: 256)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !1256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1700, file: !1701, line: 264, baseType: !1704, size: 256, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1700, file: !1701, line: 265, baseType: !1707, size: 1024, offset: 512)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !1708)
!1708 = !{!1709}
!1709 = !DISubrange(count: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1700, file: !1701, line: 266, baseType: !1153, size: 64, offset: 1536)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1689, file: !24, line: 106, baseType: !1712, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1701, line: 210, size: 256, elements: !1715)
!1715 = !{!1716, !1720, !1722, !1723}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1714, file: !1701, line: 211, baseType: !1717, size: 72)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 72, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 9)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1714, file: !1701, line: 212, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1701, line: 14, baseType: !61)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1714, file: !1701, line: 213, baseType: !96, size: 32, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1714, file: !1701, line: 214, baseType: !96, size: 32, offset: 224)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1689, file: !24, line: 108, baseType: !1648, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1689, file: !24, line: 109, baseType: !1639, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1689, file: !24, line: 110, baseType: !1648, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1689, file: !24, line: 111, baseType: !1639, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1689, file: !24, line: 112, baseType: !1729, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!79, !161, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1733, file: !37, line: 51, baseType: !79, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1689, file: !24, line: 113, baseType: !1648, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1689, file: !24, line: 114, baseType: !258, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1689, file: !24, line: 115, baseType: !258, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1689, file: !24, line: 117, baseType: !1643, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1689, file: !24, line: 118, baseType: !1639, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1689, file: !24, line: 120, baseType: !1742, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1675, file: !1676, line: 91, baseType: !1630, size: 64, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1675, file: !1676, line: 92, baseType: !1648, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1675, file: !1676, line: 93, baseType: !1639, size: 64, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1675, file: !1676, line: 94, baseType: !1648, size: 64, offset: 640)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1675, file: !1676, line: 95, baseType: !1639, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1675, file: !1676, line: 97, baseType: !1648, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1675, file: !1676, line: 98, baseType: !1648, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1675, file: !1676, line: 100, baseType: !1729, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1675, file: !1676, line: 101, baseType: !1648, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1675, file: !1676, line: 103, baseType: !1648, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1675, file: !1676, line: 105, baseType: !1648, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1675, file: !1676, line: 107, baseType: !1643, size: 64, offset: 1152)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1675, file: !1676, line: 109, baseType: !1757, size: 64, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1676, line: 109, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1675, file: !1676, line: 111, baseType: !1761, size: 64, offset: 1280)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1676, line: 111, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1675, file: !1676, line: 112, baseType: !1764, offset: 1344)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1765, line: 187, elements: !149)
!1765 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1675, file: !1676, line: 114, baseType: !106, size: 8, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !162, file: !30, line: 471, baseType: !1688, size: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !162, file: !30, line: 473, baseType: !62, size: 64, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !162, file: !30, line: 475, baseType: !62, size: 64, offset: 960)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !162, file: !30, line: 480, baseType: !415, size: 192, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !162, file: !30, line: 484, baseType: !1772, size: 576, offset: 1216)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1772, file: !30, line: 362, baseType: !112, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1772, file: !30, line: 363, baseType: !112, size: 128, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1772, file: !30, line: 364, baseType: !112, size: 128, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1772, file: !30, line: 365, baseType: !112, size: 128, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1772, file: !30, line: 366, baseType: !106, size: 8, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1772, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !162, file: !30, line: 485, baseType: !1781, size: 2304, offset: 1792)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1878, !1882}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1781, file: !37, line: 566, baseType: !1732, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1781, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1781, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1781, file: !37, line: 569, baseType: !106, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1781, file: !37, line: 570, baseType: !106, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1781, file: !37, line: 571, baseType: !106, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1781, file: !37, line: 572, baseType: !106, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1781, file: !37, line: 573, baseType: !106, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1781, file: !37, line: 574, baseType: !106, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1781, file: !37, line: 575, baseType: !106, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1781, file: !37, line: 576, baseType: !106, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1781, file: !37, line: 577, baseType: !94, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1781, file: !37, line: 578, baseType: !178, offset: 96)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1781, file: !37, line: 580, baseType: !112, size: 128, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1781, file: !37, line: 581, baseType: !132, size: 192, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1781, file: !37, line: 582, baseType: !1799, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1801, line: 43, size: 1472, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1810, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !1801, line: 44, baseType: !72, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1800, file: !1801, line: 45, baseType: !79, size: 32, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1800, file: !1801, line: 46, baseType: !112, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1800, file: !1801, line: 47, baseType: !178, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1800, file: !1801, line: 48, baseType: !1808, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1800, file: !1801, line: 49, baseType: !1811, size: 320, offset: 320)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1812, line: 11, size: 320, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1816, !1821}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1811, file: !1812, line: 16, baseType: !732, size: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1811, file: !1812, line: 17, baseType: !61, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1811, file: !1812, line: 18, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !1812, line: 19, baseType: !94, size: 32, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1800, file: !1801, line: 50, baseType: !61, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1800, file: !1801, line: 51, baseType: !539, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1800, file: !1801, line: 52, baseType: !539, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1800, file: !1801, line: 53, baseType: !539, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1800, file: !1801, line: 54, baseType: !539, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1800, file: !1801, line: 55, baseType: !539, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1800, file: !1801, line: 56, baseType: !61, size: 64, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1800, file: !1801, line: 57, baseType: !61, size: 64, offset: 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1800, file: !1801, line: 58, baseType: !61, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1800, file: !1801, line: 59, baseType: !61, size: 64, offset: 1216)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1800, file: !1801, line: 60, baseType: !61, size: 64, offset: 1280)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1800, file: !1801, line: 61, baseType: !161, size: 64, offset: 1344)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1800, file: !1801, line: 62, baseType: !106, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1800, file: !1801, line: 63, baseType: !106, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1781, file: !37, line: 583, baseType: !106, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1781, file: !37, line: 584, baseType: !106, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1781, file: !37, line: 585, baseType: !106, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1781, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1781, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1781, file: !37, line: 592, baseType: !531, size: 512, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1781, file: !37, line: 593, baseType: !323, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1781, file: !37, line: 594, baseType: !1361, size: 256, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1781, file: !37, line: 595, baseType: !739, size: 128, offset: 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1781, file: !37, line: 596, baseType: !1808, size: 64, offset: 1536)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1781, file: !37, line: 597, baseType: !127, size: 32, offset: 1600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1781, file: !37, line: 598, baseType: !127, size: 32, offset: 1632)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1781, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1781, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1781, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1781, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1781, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1781, file: !37, line: 604, baseType: !106, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1781, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1781, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1781, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1781, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1781, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1781, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1781, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1781, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1781, file: !37, line: 613, baseType: !79, size: 32, offset: 1792)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1781, file: !37, line: 614, baseType: !79, size: 32, offset: 1824)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1781, file: !37, line: 615, baseType: !323, size: 64, offset: 1856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1781, file: !37, line: 616, baseType: !323, size: 64, offset: 1920)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1781, file: !37, line: 617, baseType: !323, size: 64, offset: 1984)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1781, file: !37, line: 618, baseType: !323, size: 64, offset: 2048)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1781, file: !37, line: 620, baseType: !1869, size: 64, offset: 2112)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1870, file: !37, line: 537, baseType: !178)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1870, file: !37, line: 538, baseType: !7, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1870, file: !37, line: 540, baseType: !112, size: 128, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1870, file: !37, line: 543, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1781, file: !37, line: 621, baseType: !1879, size: 64, offset: 2176)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !161, !692}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1781, file: !37, line: 622, baseType: !1883, size: 64, offset: 2240)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !162, file: !30, line: 486, baseType: !1886, size: 64, offset: 4096)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1895, !1896, !1897}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1887, file: !37, line: 643, baseType: !1645, size: 1472)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1887, file: !37, line: 644, baseType: !1648, size: 64, offset: 1472)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1887, file: !37, line: 645, baseType: !1892, size: 64, offset: 1536)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !161, !106}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1887, file: !37, line: 646, baseType: !1648, size: 64, offset: 1600)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1887, file: !37, line: 647, baseType: !1639, size: 64, offset: 1664)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1887, file: !37, line: 648, baseType: !1639, size: 64, offset: 1728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !162, file: !30, line: 493, baseType: !1899, size: 64, offset: 4160)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !162, file: !30, line: 499, baseType: !112, size: 128, offset: 4224)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !162, file: !30, line: 502, baseType: !1903, size: 64, offset: 4352)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !162, file: !30, line: 504, baseType: !1907, size: 64, offset: 4416)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !162, file: !30, line: 505, baseType: !323, size: 64, offset: 4480)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !162, file: !30, line: 510, baseType: !323, size: 64, offset: 4544)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !162, file: !30, line: 511, baseType: !1911, size: 64, offset: 4608)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !162, file: !30, line: 513, baseType: !1915, size: 64, offset: 4672)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1916, file: !30, line: 293, baseType: !7, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1916, file: !30, line: 294, baseType: !61, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !162, file: !30, line: 515, baseType: !112, size: 128, offset: 4736)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !162, file: !30, line: 526, baseType: !1922, offset: 4864)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1923, line: 5, elements: !149)
!1923 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !162, file: !30, line: 528, baseType: !1925, size: 64, offset: 4864)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1927, line: 51, size: 1344, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1930, !1932, !1933, !2023, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1926, file: !1927, line: 52, baseType: !72, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1926, file: !1927, line: 53, baseType: !1931, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1927, line: 28, baseType: !94)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1926, file: !1927, line: 54, baseType: !72, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1926, file: !1927, line: 55, baseType: !1934, size: 192, offset: 192)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1935, line: 17, size: 192, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !{!1937, !1939, !2022}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1934, file: !1935, line: 18, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1934, file: !1935, line: 19, baseType: !1940, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1935, line: 110, size: 1152, elements: !1943)
!1943 = !{!1944, !1948, !1952, !1958, !1964, !1968, !1972, !1977, !1981, !1982, !1986, !1990, !1994, !2005, !2006, !2007, !2008, !2018}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1942, file: !1935, line: 111, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1938, !1938}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1942, file: !1935, line: 112, baseType: !1949, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1938}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1942, file: !1935, line: 113, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!106, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1942, file: !1935, line: 114, baseType: !1959, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1153, !1956, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1942, file: !1935, line: 116, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!106, !1956, !72}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1942, file: !1935, line: 118, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!79, !1956, !72, !7, !62, !102}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1942, file: !1935, line: 123, baseType: !1973, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!79, !1956, !72, !1976, !102}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1942, file: !1935, line: 126, baseType: !1978, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!72, !1956}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1942, file: !1935, line: 127, baseType: !1978, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1942, file: !1935, line: 128, baseType: !1983, size: 64, offset: 576)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1938, !1956}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1942, file: !1935, line: 130, baseType: !1987, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1938, !1956, !1938}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1942, file: !1935, line: 133, baseType: !1991, size: 64, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1938, !1956, !72}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1942, file: !1935, line: 135, baseType: !1995, size: 64, offset: 768)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!79, !1956, !72, !72, !7, !7, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1935, line: 43, size: 640, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1999, file: !1935, line: 44, baseType: !1938, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1999, file: !1935, line: 45, baseType: !7, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1999, file: !1935, line: 46, baseType: !2004, size: 512, offset: 128)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 512, elements: !569)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1942, file: !1935, line: 140, baseType: !1987, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1942, file: !1935, line: 143, baseType: !1983, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1942, file: !1935, line: 145, baseType: !1945, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1942, file: !1935, line: 146, baseType: !2009, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!79, !1956, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1935, line: 29, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2013, file: !1935, line: 30, baseType: !7, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2013, file: !1935, line: 31, baseType: !7, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2013, file: !1935, line: 32, baseType: !1956, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1942, file: !1935, line: 148, baseType: !2019, size: 64, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!79, !1956, !161}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1934, file: !1935, line: 20, baseType: !161, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1926, file: !1927, line: 57, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1927, line: 31, size: 704, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !1927, line: 32, baseType: !211, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2025, file: !1927, line: 33, baseType: !79, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2025, file: !1927, line: 34, baseType: !62, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !1927, line: 35, baseType: !2024, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2025, file: !1927, line: 43, baseType: !273, size: 448, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1926, file: !1927, line: 58, baseType: !2024, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1926, file: !1927, line: 59, baseType: !1925, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1926, file: !1927, line: 60, baseType: !1925, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1926, file: !1927, line: 61, baseType: !1925, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1926, file: !1927, line: 63, baseType: !165, size: 512, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1926, file: !1927, line: 65, baseType: !61, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1926, file: !1927, line: 66, baseType: !62, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !162, file: !30, line: 529, baseType: !1938, size: 64, offset: 4928)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !162, file: !30, line: 534, baseType: !2041, size: 32, offset: 4992)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !60, line: 16, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !60, line: 13, baseType: !94)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !162, file: !30, line: 535, baseType: !94, size: 32, offset: 5024)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !162, file: !30, line: 537, baseType: !178, offset: 5056)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !162, file: !30, line: 538, baseType: !112, size: 128, offset: 5056)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !162, file: !30, line: 540, baseType: !2047, size: 64, offset: 5184)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2049, line: 54, size: 960, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2061, !2065, !2066, !2067, !2068, !2072, !2076, !2077}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2048, file: !2049, line: 55, baseType: !72, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2048, file: !2049, line: 56, baseType: !56, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2048, file: !2049, line: 58, baseType: !258, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2048, file: !2049, line: 59, baseType: !258, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2048, file: !2049, line: 60, baseType: !171, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2048, file: !2049, line: 62, baseType: !1630, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2048, file: !2049, line: 63, baseType: !2058, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!211, !161, !1637}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2048, file: !2049, line: 65, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !2047}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2048, file: !2049, line: 66, baseType: !1639, size: 64, offset: 512)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2048, file: !2049, line: 68, baseType: !1648, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2048, file: !2049, line: 70, baseType: !1410, size: 64, offset: 640)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2048, file: !2049, line: 71, baseType: !2069, size: 64, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!1153, !161}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2048, file: !2049, line: 73, baseType: !2073, size: 64, offset: 768)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !161, !1445, !1451}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2048, file: !2049, line: 75, baseType: !1643, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2048, file: !2049, line: 77, baseType: !1761, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !162, file: !30, line: 541, baseType: !258, size: 64, offset: 5248)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !162, file: !30, line: 543, baseType: !1639, size: 64, offset: 5312)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !162, file: !30, line: 544, baseType: !2081, size: 64, offset: 5376)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !162, file: !30, line: 545, baseType: !2084, size: 64, offset: 5440)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !162, file: !30, line: 547, baseType: !106, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !162, file: !30, line: 548, baseType: !106, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !162, file: !30, line: 549, baseType: !106, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !162, file: !30, line: 550, baseType: !106, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!2094 = !{!0, !2095, !2102, !2107, !2112, !2117, !2122, !2182, !2185, !2188}
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "__exitcall_stm32_rng_driver_exit", scope: !2, file: !3, line: 215, type: !2097, isLocal: true, isDefinition: true)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2098, line: 117, baseType: !2099)
!2098 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null}
!2102 = !DIGlobalVariableExpression(var: !2103, expr: !DIExpression())
!2103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 217, type: !2104, isLocal: true, isDefinition: true, align: 8)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 384, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 48)
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 217, type: !2109, isLocal: true, isDefinition: true, align: 8)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 176, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 22)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 218, type: !2114, isLocal: true, isDefinition: true, align: 8)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 496, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 62)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description170", scope: !2, file: !3, line: 219, type: !2119, isLocal: true, isDefinition: true, align: 8)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 520, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 65)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "stm32_rng_driver", scope: !2, file: !3, line: 205, type: !2124, isLocal: true, isDefinition: true)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2125, line: 200, size: 1600, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2169, !2170, !2174, !2178, !2179, !2180, !2181}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2124, file: !2125, line: 201, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!79, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2125, line: 22, size: 6208, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2155, !2163, !2164, !2167}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2132, file: !2125, line: 23, baseType: !72, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2132, file: !2125, line: 24, baseType: !79, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2132, file: !2125, line: 25, baseType: !106, size: 8, offset: 96)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2132, file: !2125, line: 26, baseType: !162, size: 5568, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2132, file: !2125, line: 27, baseType: !323, size: 64, offset: 5696)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2132, file: !2125, line: 28, baseType: !1916, size: 128, offset: 5760)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2132, file: !2125, line: 29, baseType: !94, size: 32, offset: 5888)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2132, file: !2125, line: 30, baseType: !2142, size: 64, offset: 5952)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2144, line: 20, size: 512, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2143, file: !2144, line: 21, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !60, line: 158, baseType: !1151)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2143, file: !2144, line: 22, baseType: !2147, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2143, file: !2144, line: 23, baseType: !72, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 24, baseType: !61, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2143, file: !2144, line: 25, baseType: !61, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2143, file: !2144, line: 26, baseType: !2142, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2143, file: !2144, line: 26, baseType: !2142, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2143, file: !2144, line: 26, baseType: !2142, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2132, file: !2125, line: 32, baseType: !2156, size: 64, offset: 6016)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1701, line: 586, size: 256, elements: !2159)
!2159 = !{!2160, !2162}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2158, file: !1701, line: 587, baseType: !2161, size: 160)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !1227)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2158, file: !1701, line: 588, baseType: !1721, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2132, file: !2125, line: 33, baseType: !211, size: 64, offset: 6080)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2132, file: !2125, line: 36, baseType: !2165, size: 64, offset: 6144)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2125, line: 18, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2132, file: !2125, line: 39, baseType: !2168, offset: 6208)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1923, line: 8, elements: !149)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2124, file: !2125, line: 202, baseType: !2128, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2124, file: !2125, line: 203, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2131}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2124, file: !2125, line: 204, baseType: !2175, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!79, !2131, !1732}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2124, file: !2125, line: 205, baseType: !2128, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2124, file: !2125, line: 206, baseType: !1689, size: 1152, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2124, file: !2125, line: 207, baseType: !2156, size: 64, offset: 1472)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2124, file: !2125, line: 208, baseType: !106, size: 8, offset: 1536)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(name: "__warned", scope: !2184, file: !3, line: 63, type: !106, isLocal: true, isDefinition: true)
!2184 = distinct !DISubprogram(name: "stm32_rng_read", scope: !3, file: !3, line: 38, type: !100, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2185 = !DIGlobalVariableExpression(var: !2186, expr: !DIExpression())
!2186 = distinct !DIGlobalVariable(name: "stm32_rng_match", scope: !2, file: !3, line: 197, type: !2187, isLocal: true, isDefinition: true)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 3200, elements: !996)
!2188 = !DIGlobalVariableExpression(var: !2189, expr: !DIExpression())
!2189 = distinct !DIGlobalVariable(name: "stm32_rng_pm_ops", scope: !2, file: !3, line: 189, type: !1644, isLocal: true, isDefinition: true)
!2190 = !{i32 7, !"Dwarf Version", i32 4}
!2191 = !{i32 2, !"Debug Info Version", i32 3}
!2192 = !{i32 1, !"wchar_size", i32 2}
!2193 = !{i32 1, !"Code Model", i32 2}
!2194 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2195 = distinct !DISubprogram(name: "stm32_rng_driver_init", scope: !3, file: !3, line: 215, type: !2196, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!79}
!2198 = !DILocation(line: 215, column: 1, scope: !2195)
!2199 = distinct !DISubprogram(name: "stm32_rng_driver_exit", scope: !3, file: !3, line: 215, type: !2100, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2200 = !DILocation(line: 215, column: 1, scope: !2199)
!2201 = distinct !DISubprogram(name: "stm32_rng_probe", scope: !3, file: !3, line: 113, type: !2129, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2202 = !DILocalVariable(name: "ofdev", arg: 1, scope: !2201, file: !3, line: 113, type: !2131)
!2203 = !DILocation(line: 113, column: 52, scope: !2201)
!2204 = !DILocalVariable(name: "dev", scope: !2201, file: !3, line: 115, type: !161)
!2205 = !DILocation(line: 115, column: 17, scope: !2201)
!2206 = !DILocation(line: 115, column: 24, scope: !2201)
!2207 = !DILocation(line: 115, column: 31, scope: !2201)
!2208 = !DILocalVariable(name: "np", scope: !2201, file: !3, line: 116, type: !1925)
!2209 = !DILocation(line: 116, column: 22, scope: !2201)
!2210 = !DILocation(line: 116, column: 27, scope: !2201)
!2211 = !DILocation(line: 116, column: 34, scope: !2201)
!2212 = !DILocation(line: 116, column: 38, scope: !2201)
!2213 = !DILocalVariable(name: "priv", scope: !2201, file: !3, line: 117, type: !64)
!2214 = !DILocation(line: 117, column: 28, scope: !2201)
!2215 = !DILocalVariable(name: "res", scope: !2201, file: !3, line: 118, type: !2143)
!2216 = !DILocation(line: 118, column: 18, scope: !2201)
!2217 = !DILocalVariable(name: "err", scope: !2201, file: !3, line: 119, type: !79)
!2218 = !DILocation(line: 119, column: 6, scope: !2201)
!2219 = !DILocation(line: 121, column: 22, scope: !2201)
!2220 = !DILocation(line: 121, column: 9, scope: !2201)
!2221 = !DILocation(line: 121, column: 7, scope: !2201)
!2222 = !DILocation(line: 122, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 122, column: 6)
!2224 = !DILocation(line: 122, column: 6, scope: !2201)
!2225 = !DILocation(line: 123, column: 3, scope: !2223)
!2226 = !DILocation(line: 125, column: 31, scope: !2201)
!2227 = !DILocation(line: 125, column: 8, scope: !2201)
!2228 = !DILocation(line: 125, column: 6, scope: !2201)
!2229 = !DILocation(line: 126, column: 6, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 126, column: 6)
!2231 = !DILocation(line: 126, column: 6, scope: !2201)
!2232 = !DILocation(line: 127, column: 10, scope: !2230)
!2233 = !DILocation(line: 127, column: 3, scope: !2230)
!2234 = !DILocation(line: 129, column: 37, scope: !2201)
!2235 = !DILocation(line: 129, column: 15, scope: !2201)
!2236 = !DILocation(line: 129, column: 2, scope: !2201)
!2237 = !DILocation(line: 129, column: 8, scope: !2201)
!2238 = !DILocation(line: 129, column: 13, scope: !2201)
!2239 = !DILocation(line: 130, column: 13, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 130, column: 6)
!2241 = !DILocation(line: 130, column: 19, scope: !2240)
!2242 = !DILocation(line: 130, column: 6, scope: !2240)
!2243 = !DILocation(line: 130, column: 6, scope: !2201)
!2244 = !DILocation(line: 131, column: 18, scope: !2240)
!2245 = !DILocation(line: 131, column: 24, scope: !2240)
!2246 = !DILocation(line: 131, column: 10, scope: !2240)
!2247 = !DILocation(line: 131, column: 3, scope: !2240)
!2248 = !DILocation(line: 133, column: 28, scope: !2201)
!2249 = !DILocation(line: 133, column: 35, scope: !2201)
!2250 = !DILocation(line: 133, column: 14, scope: !2201)
!2251 = !DILocation(line: 133, column: 2, scope: !2201)
!2252 = !DILocation(line: 133, column: 8, scope: !2201)
!2253 = !DILocation(line: 133, column: 12, scope: !2201)
!2254 = !DILocation(line: 134, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 134, column: 6)
!2256 = !DILocation(line: 134, column: 19, scope: !2255)
!2257 = !DILocation(line: 134, column: 6, scope: !2255)
!2258 = !DILocation(line: 134, column: 6, scope: !2201)
!2259 = !DILocation(line: 135, column: 18, scope: !2255)
!2260 = !DILocation(line: 135, column: 24, scope: !2255)
!2261 = !DILocation(line: 135, column: 10, scope: !2255)
!2262 = !DILocation(line: 135, column: 3, scope: !2255)
!2263 = !DILocation(line: 137, column: 38, scope: !2201)
!2264 = !DILocation(line: 137, column: 45, scope: !2201)
!2265 = !DILocation(line: 137, column: 14, scope: !2201)
!2266 = !DILocation(line: 137, column: 2, scope: !2201)
!2267 = !DILocation(line: 137, column: 8, scope: !2201)
!2268 = !DILocation(line: 137, column: 12, scope: !2201)
!2269 = !DILocation(line: 138, column: 14, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 138, column: 6)
!2271 = !DILocation(line: 138, column: 20, scope: !2270)
!2272 = !DILocation(line: 138, column: 7, scope: !2270)
!2273 = !DILocation(line: 138, column: 6, scope: !2201)
!2274 = !DILocation(line: 139, column: 24, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 138, column: 26)
!2276 = !DILocation(line: 139, column: 30, scope: !2275)
!2277 = !DILocation(line: 139, column: 3, scope: !2275)
!2278 = !DILocation(line: 140, column: 3, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 140, column: 3)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 140, column: 3)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 140, column: 3)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 140, column: 3)
!2283 = !DILocation(line: 141, column: 26, scope: !2275)
!2284 = !DILocation(line: 141, column: 32, scope: !2275)
!2285 = !DILocation(line: 141, column: 3, scope: !2275)
!2286 = !DILocation(line: 142, column: 2, scope: !2275)
!2287 = !DILocation(line: 144, column: 36, scope: !2201)
!2288 = !DILocation(line: 144, column: 14, scope: !2201)
!2289 = !DILocation(line: 144, column: 2, scope: !2201)
!2290 = !DILocation(line: 144, column: 8, scope: !2201)
!2291 = !DILocation(line: 144, column: 12, scope: !2201)
!2292 = !DILocation(line: 146, column: 18, scope: !2201)
!2293 = !DILocation(line: 146, column: 23, scope: !2201)
!2294 = !DILocation(line: 146, column: 2, scope: !2201)
!2295 = !DILocation(line: 148, column: 37, scope: !2201)
!2296 = !DILocation(line: 148, column: 19, scope: !2201)
!2297 = !DILocation(line: 148, column: 2, scope: !2201)
!2298 = !DILocation(line: 148, column: 8, scope: !2201)
!2299 = !DILocation(line: 148, column: 12, scope: !2201)
!2300 = !DILocation(line: 148, column: 17, scope: !2201)
!2301 = !DILocation(line: 153, column: 2, scope: !2201)
!2302 = !DILocation(line: 153, column: 8, scope: !2201)
!2303 = !DILocation(line: 153, column: 12, scope: !2201)
!2304 = !DILocation(line: 153, column: 17, scope: !2201)
!2305 = !DILocation(line: 154, column: 35, scope: !2201)
!2306 = !DILocation(line: 154, column: 19, scope: !2201)
!2307 = !DILocation(line: 154, column: 2, scope: !2201)
!2308 = !DILocation(line: 154, column: 8, scope: !2201)
!2309 = !DILocation(line: 154, column: 12, scope: !2201)
!2310 = !DILocation(line: 154, column: 17, scope: !2201)
!2311 = !DILocation(line: 155, column: 2, scope: !2201)
!2312 = !DILocation(line: 155, column: 8, scope: !2201)
!2313 = !DILocation(line: 155, column: 12, scope: !2201)
!2314 = !DILocation(line: 155, column: 20, scope: !2201)
!2315 = !DILocation(line: 157, column: 35, scope: !2201)
!2316 = !DILocation(line: 157, column: 2, scope: !2201)
!2317 = !DILocation(line: 158, column: 29, scope: !2201)
!2318 = !DILocation(line: 158, column: 2, scope: !2201)
!2319 = !DILocation(line: 159, column: 20, scope: !2201)
!2320 = !DILocation(line: 159, column: 2, scope: !2201)
!2321 = !DILocation(line: 161, column: 29, scope: !2201)
!2322 = !DILocation(line: 161, column: 35, scope: !2201)
!2323 = !DILocation(line: 161, column: 41, scope: !2201)
!2324 = !DILocation(line: 161, column: 9, scope: !2201)
!2325 = !DILocation(line: 161, column: 2, scope: !2201)
!2326 = !DILocation(line: 162, column: 1, scope: !2201)
!2327 = distinct !DISubprogram(name: "stm32_rng_remove", scope: !3, file: !3, line: 164, type: !2129, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2328 = !DILocalVariable(name: "ofdev", arg: 1, scope: !2327, file: !3, line: 164, type: !2131)
!2329 = !DILocation(line: 164, column: 53, scope: !2327)
!2330 = !DILocation(line: 166, column: 22, scope: !2327)
!2331 = !DILocation(line: 166, column: 29, scope: !2327)
!2332 = !DILocation(line: 166, column: 2, scope: !2327)
!2333 = !DILocation(line: 168, column: 2, scope: !2327)
!2334 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2335, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!62, !161, !102, !59}
!2337 = !DILocalVariable(name: "dev", arg: 1, scope: !2334, file: !30, line: 215, type: !161)
!2338 = !DILocation(line: 215, column: 49, scope: !2334)
!2339 = !DILocalVariable(name: "size", arg: 2, scope: !2334, file: !30, line: 215, type: !102)
!2340 = !DILocation(line: 215, column: 61, scope: !2334)
!2341 = !DILocalVariable(name: "gfp", arg: 3, scope: !2334, file: !30, line: 215, type: !59)
!2342 = !DILocation(line: 215, column: 73, scope: !2334)
!2343 = !DILocation(line: 217, column: 22, scope: !2334)
!2344 = !DILocation(line: 217, column: 27, scope: !2334)
!2345 = !DILocation(line: 217, column: 33, scope: !2334)
!2346 = !DILocation(line: 217, column: 37, scope: !2334)
!2347 = !DILocation(line: 217, column: 9, scope: !2334)
!2348 = !DILocation(line: 217, column: 2, scope: !2334)
!2349 = distinct !DISubprogram(name: "IS_ERR", scope: !2350, file: !2350, line: 34, type: !2351, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2350 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!106, !1153}
!2353 = !DILocalVariable(name: "ptr", arg: 1, scope: !2349, file: !2350, line: 34, type: !1153)
!2354 = !DILocation(line: 34, column: 60, scope: !2349)
!2355 = !DILocation(line: 36, column: 9, scope: !2349)
!2356 = !DILocation(line: 36, column: 2, scope: !2349)
!2357 = distinct !DISubprogram(name: "PTR_ERR", scope: !2350, file: !2350, line: 29, type: !2358, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!63, !1153}
!2360 = !DILocalVariable(name: "ptr", arg: 1, scope: !2357, file: !2350, line: 29, type: !1153)
!2361 = !DILocation(line: 29, column: 61, scope: !2357)
!2362 = !DILocation(line: 31, column: 16, scope: !2357)
!2363 = !DILocation(line: 31, column: 9, scope: !2357)
!2364 = !DILocation(line: 31, column: 2, scope: !2357)
!2365 = distinct !DISubprogram(name: "devm_reset_control_get", scope: !159, file: !159, line: 469, type: !2366, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!157, !161, !72}
!2368 = !DILocalVariable(name: "dev", arg: 1, scope: !2365, file: !159, line: 470, type: !161)
!2369 = !DILocation(line: 470, column: 20, scope: !2365)
!2370 = !DILocalVariable(name: "id", arg: 2, scope: !2365, file: !159, line: 470, type: !72)
!2371 = !DILocation(line: 470, column: 37, scope: !2365)
!2372 = !DILocation(line: 472, column: 42, scope: !2365)
!2373 = !DILocation(line: 472, column: 47, scope: !2365)
!2374 = !DILocation(line: 472, column: 9, scope: !2365)
!2375 = !DILocation(line: 472, column: 2, scope: !2365)
!2376 = distinct !DISubprogram(name: "of_property_read_bool", scope: !1927, file: !1927, line: 1192, type: !2377, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!106, !2379, !72}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!2381 = !DILocalVariable(name: "np", arg: 1, scope: !2376, file: !1927, line: 1192, type: !2379)
!2382 = !DILocation(line: 1192, column: 68, scope: !2376)
!2383 = !DILocalVariable(name: "propname", arg: 2, scope: !2376, file: !1927, line: 1193, type: !72)
!2384 = !DILocation(line: 1193, column: 19, scope: !2376)
!2385 = !DILocalVariable(name: "prop", scope: !2376, file: !1927, line: 1195, type: !2024)
!2386 = !DILocation(line: 1195, column: 19, scope: !2376)
!2387 = !DILocation(line: 1195, column: 43, scope: !2376)
!2388 = !DILocation(line: 1195, column: 47, scope: !2376)
!2389 = !DILocation(line: 1195, column: 26, scope: !2376)
!2390 = !DILocation(line: 1197, column: 9, scope: !2376)
!2391 = !DILocation(line: 1197, column: 2, scope: !2376)
!2392 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2393, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !161, !62}
!2395 = !DILocalVariable(name: "dev", arg: 1, scope: !2392, file: !30, line: 660, type: !161)
!2396 = !DILocation(line: 660, column: 51, scope: !2392)
!2397 = !DILocalVariable(name: "data", arg: 2, scope: !2392, file: !30, line: 660, type: !62)
!2398 = !DILocation(line: 660, column: 62, scope: !2392)
!2399 = !DILocation(line: 662, column: 21, scope: !2392)
!2400 = !DILocation(line: 662, column: 2, scope: !2392)
!2401 = !DILocation(line: 662, column: 7, scope: !2392)
!2402 = !DILocation(line: 662, column: 19, scope: !2392)
!2403 = !DILocation(line: 663, column: 1, scope: !2392)
!2404 = !DILocalVariable(name: "rng", arg: 1, scope: !2184, file: !3, line: 38, type: !80)
!2405 = !DILocation(line: 38, column: 41, scope: !2184)
!2406 = !DILocalVariable(name: "data", arg: 2, scope: !2184, file: !3, line: 38, type: !62)
!2407 = !DILocation(line: 38, column: 52, scope: !2184)
!2408 = !DILocalVariable(name: "max", arg: 3, scope: !2184, file: !3, line: 38, type: !102)
!2409 = !DILocation(line: 38, column: 65, scope: !2184)
!2410 = !DILocalVariable(name: "wait", arg: 4, scope: !2184, file: !3, line: 38, type: !106)
!2411 = !DILocation(line: 38, column: 75, scope: !2184)
!2412 = !DILocalVariable(name: "priv", scope: !2184, file: !3, line: 40, type: !64)
!2413 = !DILocation(line: 40, column: 28, scope: !2184)
!2414 = !DILocalVariable(name: "__mptr", scope: !2415, file: !3, line: 41, type: !62)
!2415 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 41, column: 6)
!2416 = !DILocation(line: 41, column: 6, scope: !2415)
!2417 = !DILocation(line: 41, column: 6, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 41, column: 6)
!2419 = !DILocalVariable(name: "sr", scope: !2184, file: !3, line: 42, type: !94)
!2420 = !DILocation(line: 42, column: 6, scope: !2184)
!2421 = !DILocalVariable(name: "retval", scope: !2184, file: !3, line: 43, type: !79)
!2422 = !DILocation(line: 43, column: 6, scope: !2184)
!2423 = !DILocation(line: 45, column: 40, scope: !2184)
!2424 = !DILocation(line: 45, column: 46, scope: !2184)
!2425 = !DILocation(line: 45, column: 50, scope: !2184)
!2426 = !DILocation(line: 45, column: 22, scope: !2184)
!2427 = !DILocation(line: 45, column: 2, scope: !2184)
!2428 = !DILocation(line: 47, column: 2, scope: !2184)
!2429 = !DILocation(line: 47, column: 9, scope: !2184)
!2430 = !DILocation(line: 47, column: 13, scope: !2184)
!2431 = !DILocation(line: 48, column: 8, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 47, column: 28)
!2433 = !DILocation(line: 48, column: 6, scope: !2432)
!2434 = !DILocation(line: 51, column: 8, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 51, column: 7)
!2436 = !DILocation(line: 51, column: 11, scope: !2435)
!2437 = !DILocation(line: 51, column: 14, scope: !2435)
!2438 = !DILocation(line: 51, column: 7, scope: !2432)
!2439 = !DILocalVariable(name: "__timeout_us", scope: !2440, file: !3, line: 52, type: !323)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 52, column: 13)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 51, column: 20)
!2442 = !DILocation(line: 52, column: 13, scope: !2440)
!2443 = !DILocalVariable(name: "__delay_us", scope: !2440, file: !3, line: 52, type: !61)
!2444 = !DILocalVariable(name: "__timeout", scope: !2440, file: !3, line: 52, type: !539)
!2445 = !DILocation(line: 52, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 52, column: 13)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 52, column: 13)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 52, column: 13)
!2449 = !DILocation(line: 52, column: 13, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 52, column: 13)
!2451 = !DILocation(line: 52, column: 13, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 52, column: 13)
!2453 = !DILocation(line: 52, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 52, column: 13)
!2455 = !DILocation(line: 52, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 52, column: 13)
!2457 = !DILocation(line: 52, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 52, column: 13)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 52, column: 13)
!2460 = !DILocation(line: 52, column: 13, scope: !2459)
!2461 = !DILocation(line: 52, column: 13, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 52, column: 13)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 52, column: 13)
!2464 = !DILocation(line: 52, column: 13, scope: !2463)
!2465 = !DILocation(line: 52, column: 13, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 52, column: 13)
!2467 = !DILocation(line: 52, column: 13, scope: !2447)
!2468 = distinct !{!2468, !2469, !2469}
!2469 = !DILocation(line: 52, column: 13, scope: !2448)
!2470 = !DILocation(line: 52, column: 11, scope: !2441)
!2471 = !DILocation(line: 56, column: 8, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 56, column: 8)
!2473 = !DILocation(line: 56, column: 8, scope: !2441)
!2474 = !DILocation(line: 57, column: 5, scope: !2472)
!2475 = !DILocation(line: 59, column: 3, scope: !2441)
!2476 = !DILocation(line: 62, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 62, column: 7)
!2478 = !DILocation(line: 62, column: 10, scope: !2477)
!2479 = !DILocation(line: 62, column: 7, scope: !2432)
!2480 = !DILocalVariable(name: "__ret_warn_once", scope: !2481, file: !3, line: 63, type: !79)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 63, column: 8)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 63, column: 8)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 62, column: 26)
!2484 = !DILocation(line: 63, column: 8, scope: !2481)
!2485 = !DILocation(line: 63, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 63, column: 8)
!2487 = !DILocation(line: 0, scope: !2486)
!2488 = !DILocation(line: 63, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 63, column: 8)
!2490 = !DILocalVariable(name: "__ret_warn_on", scope: !2491, file: !3, line: 63, type: !79)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 63, column: 8)
!2492 = !DILocation(line: 63, column: 8, scope: !2491)
!2493 = !DILocation(line: 63, column: 8, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 63, column: 8)
!2495 = !DILocation(line: 63, column: 8, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 63, column: 8)
!2497 = !DILocation(line: 63, column: 8, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 63, column: 8)
!2499 = !DILocation(line: 63, column: 8, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 63, column: 8)
!2501 = !DILocation(line: 63, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 63, column: 8)
!2503 = !DILocation(line: 63, column: 8, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 63, column: 8)
!2505 = !{i32 -2143209617, i32 -2143209588, i32 -2143209542, i32 -2143209484, i32 -2143209430, i32 -2143209376, i32 -2143209321, i32 -2143209290}
!2506 = !DILocation(line: 63, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 63, column: 8)
!2508 = !{i32 -2143208864, i32 -2143208857, i32 -2143208805, i32 -2143208774, i32 -2143208744}
!2509 = !DILocation(line: 63, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 63, column: 8)
!2511 = !DILocation(line: 63, column: 8, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 63, column: 8)
!2513 = !DILocation(line: 63, column: 8, scope: !2482)
!2514 = !DILocation(line: 63, column: 8, scope: !2483)
!2515 = !DILocation(line: 65, column: 5, scope: !2482)
!2516 = !DILocation(line: 66, column: 4, scope: !2483)
!2517 = !DILocation(line: 69, column: 18, scope: !2432)
!2518 = !DILocation(line: 69, column: 11, scope: !2432)
!2519 = !DILocation(line: 69, column: 4, scope: !2432)
!2520 = !DILocation(line: 69, column: 16, scope: !2432)
!2521 = !DILocation(line: 71, column: 10, scope: !2432)
!2522 = !DILocation(line: 72, column: 8, scope: !2432)
!2523 = !DILocation(line: 73, column: 7, scope: !2432)
!2524 = distinct !{!2524, !2428, !2525}
!2525 = !DILocation(line: 74, column: 2, scope: !2184)
!2526 = !DILocation(line: 76, column: 46, scope: !2184)
!2527 = !DILocation(line: 76, column: 52, scope: !2184)
!2528 = !DILocation(line: 76, column: 56, scope: !2184)
!2529 = !DILocation(line: 76, column: 28, scope: !2184)
!2530 = !DILocation(line: 76, column: 2, scope: !2184)
!2531 = !DILocation(line: 77, column: 52, scope: !2184)
!2532 = !DILocation(line: 77, column: 58, scope: !2184)
!2533 = !DILocation(line: 77, column: 62, scope: !2184)
!2534 = !DILocation(line: 77, column: 34, scope: !2184)
!2535 = !DILocation(line: 77, column: 2, scope: !2184)
!2536 = !DILocation(line: 79, column: 9, scope: !2184)
!2537 = !DILocation(line: 79, column: 16, scope: !2184)
!2538 = !DILocation(line: 79, column: 20, scope: !2184)
!2539 = !DILocation(line: 79, column: 27, scope: !2184)
!2540 = !DILocation(line: 79, column: 2, scope: !2184)
!2541 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !2542, file: !2542, line: 537, type: !1640, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2542 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2543 = !DILocalVariable(name: "dev", arg: 1, scope: !2541, file: !2542, line: 537, type: !161)
!2544 = !DILocation(line: 537, column: 62, scope: !2541)
!2545 = !DILocation(line: 539, column: 31, scope: !2541)
!2546 = !DILocation(line: 539, column: 2, scope: !2541)
!2547 = !DILocation(line: 540, column: 1, scope: !2541)
!2548 = distinct !DISubprogram(name: "devm_reset_control_get_exclusive", scope: !159, file: !159, line: 339, type: !2366, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2549 = !DILocalVariable(name: "dev", arg: 1, scope: !2548, file: !159, line: 339, type: !161)
!2550 = !DILocation(line: 339, column: 62, scope: !2548)
!2551 = !DILocalVariable(name: "id", arg: 2, scope: !2548, file: !159, line: 340, type: !72)
!2552 = !DILocation(line: 340, column: 24, scope: !2548)
!2553 = !DILocation(line: 342, column: 34, scope: !2548)
!2554 = !DILocation(line: 342, column: 39, scope: !2548)
!2555 = !DILocation(line: 342, column: 9, scope: !2548)
!2556 = !DILocation(line: 342, column: 2, scope: !2548)
!2557 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2542, file: !2542, line: 384, type: !1649, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2558 = !DILocalVariable(name: "dev", arg: 1, scope: !2557, file: !2542, line: 384, type: !161)
!2559 = !DILocation(line: 384, column: 54, scope: !2557)
!2560 = !DILocation(line: 386, column: 29, scope: !2557)
!2561 = !DILocation(line: 386, column: 9, scope: !2557)
!2562 = !DILocation(line: 386, column: 2, scope: !2557)
!2563 = distinct !DISubprogram(name: "__readl", scope: !2564, file: !2564, line: 63, type: !2565, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2564 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!7, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2570 = !DILocalVariable(name: "addr", arg: 1, scope: !2563, file: !2564, line: 63, type: !2567)
!2571 = !DILocation(line: 63, column: 1, scope: !2563)
!2572 = !DILocalVariable(name: "ret", scope: !2563, file: !2564, line: 63, type: !7)
!2573 = !{i32 -2145261642}
!2574 = distinct !DISubprogram(name: "ktime_add_us", scope: !540, file: !540, line: 179, type: !2575, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!539, !2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!2579 = !DILocalVariable(name: "kt", arg: 1, scope: !2574, file: !540, line: 179, type: !2577)
!2580 = !DILocation(line: 179, column: 50, scope: !2574)
!2581 = !DILocalVariable(name: "usec", arg: 2, scope: !2574, file: !540, line: 179, type: !2578)
!2582 = !DILocation(line: 179, column: 64, scope: !2574)
!2583 = !DILocation(line: 181, column: 9, scope: !2574)
!2584 = !DILocation(line: 181, column: 2, scope: !2574)
!2585 = distinct !DISubprogram(name: "ktime_compare", scope: !540, file: !540, line: 95, type: !2586, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!79, !2577, !2577}
!2588 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2585, file: !540, line: 95, type: !2577)
!2589 = !DILocation(line: 95, column: 47, scope: !2585)
!2590 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2585, file: !540, line: 95, type: !2577)
!2591 = !DILocation(line: 95, column: 67, scope: !2585)
!2592 = !DILocation(line: 97, column: 6, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2585, file: !540, line: 97, column: 6)
!2594 = !DILocation(line: 97, column: 13, scope: !2593)
!2595 = !DILocation(line: 97, column: 11, scope: !2593)
!2596 = !DILocation(line: 97, column: 6, scope: !2585)
!2597 = !DILocation(line: 98, column: 3, scope: !2593)
!2598 = !DILocation(line: 99, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2585, file: !540, line: 99, column: 6)
!2600 = !DILocation(line: 99, column: 13, scope: !2599)
!2601 = !DILocation(line: 99, column: 11, scope: !2599)
!2602 = !DILocation(line: 99, column: 6, scope: !2585)
!2603 = !DILocation(line: 100, column: 3, scope: !2599)
!2604 = !DILocation(line: 101, column: 2, scope: !2585)
!2605 = !DILocation(line: 102, column: 1, scope: !2585)
!2606 = distinct !DISubprogram(name: "__writel", scope: !2564, file: !2564, line: 71, type: !2607, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !7, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2610 = !DILocalVariable(name: "val", arg: 1, scope: !2606, file: !2564, line: 71, type: !7)
!2611 = !DILocation(line: 71, column: 1, scope: !2606)
!2612 = !DILocalVariable(name: "addr", arg: 2, scope: !2606, file: !2564, line: 71, type: !2609)
!2613 = !{i32 -2145259339}
!2614 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !2542, file: !2542, line: 194, type: !1640, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2615 = !DILocalVariable(name: "dev", arg: 1, scope: !2614, file: !2542, line: 194, type: !161)
!2616 = !DILocation(line: 194, column: 61, scope: !2614)
!2617 = !DILocation(line: 196, column: 2, scope: !2614)
!2618 = !DILocation(line: 196, column: 2, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2614, file: !2542, line: 196, column: 2)
!2620 = !DILocation(line: 196, column: 2, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2619, file: !2542, line: 196, column: 2)
!2622 = !DILocation(line: 196, column: 2, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !2542, line: 196, column: 2)
!2624 = !DILocation(line: 197, column: 1, scope: !2614)
!2625 = distinct !DISubprogram(name: "pm_runtime_put_sync_autosuspend", scope: !2542, file: !2542, line: 481, type: !1649, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2626 = !DILocalVariable(name: "dev", arg: 1, scope: !2625, file: !2542, line: 481, type: !161)
!2627 = !DILocation(line: 481, column: 66, scope: !2625)
!2628 = !DILocation(line: 483, column: 30, scope: !2625)
!2629 = !DILocation(line: 483, column: 9, scope: !2625)
!2630 = !DILocation(line: 483, column: 2, scope: !2625)
!2631 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !2542, file: !2542, line: 524, type: !1640, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2632 = !DILocalVariable(name: "dev", arg: 1, scope: !2631, file: !2542, line: 524, type: !161)
!2633 = !DILocation(line: 524, column: 54, scope: !2631)
!2634 = !DILocation(line: 526, column: 23, scope: !2631)
!2635 = !DILocation(line: 526, column: 2, scope: !2631)
!2636 = !DILocation(line: 527, column: 1, scope: !2631)
!2637 = distinct !DISubprogram(name: "stm32_rng_runtime_suspend", scope: !3, file: !3, line: 172, type: !1649, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2638 = !DILocalVariable(name: "dev", arg: 1, scope: !2637, file: !3, line: 172, type: !161)
!2639 = !DILocation(line: 172, column: 53, scope: !2637)
!2640 = !DILocalVariable(name: "priv", scope: !2637, file: !3, line: 174, type: !64)
!2641 = !DILocation(line: 174, column: 28, scope: !2637)
!2642 = !DILocation(line: 174, column: 51, scope: !2637)
!2643 = !DILocation(line: 174, column: 35, scope: !2637)
!2644 = !DILocation(line: 176, column: 21, scope: !2637)
!2645 = !DILocation(line: 176, column: 27, scope: !2637)
!2646 = !DILocation(line: 176, column: 2, scope: !2637)
!2647 = !DILocation(line: 178, column: 2, scope: !2637)
!2648 = distinct !DISubprogram(name: "stm32_rng_runtime_resume", scope: !3, file: !3, line: 181, type: !1649, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2649 = !DILocalVariable(name: "dev", arg: 1, scope: !2648, file: !3, line: 181, type: !161)
!2650 = !DILocation(line: 181, column: 52, scope: !2648)
!2651 = !DILocalVariable(name: "priv", scope: !2648, file: !3, line: 183, type: !64)
!2652 = !DILocation(line: 183, column: 28, scope: !2648)
!2653 = !DILocation(line: 183, column: 51, scope: !2648)
!2654 = !DILocation(line: 183, column: 35, scope: !2648)
!2655 = !DILocation(line: 185, column: 25, scope: !2648)
!2656 = !DILocation(line: 185, column: 31, scope: !2648)
!2657 = !DILocation(line: 185, column: 9, scope: !2648)
!2658 = !DILocation(line: 185, column: 2, scope: !2648)
!2659 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2660, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!62, !1962}
!2662 = !DILocalVariable(name: "dev", arg: 1, scope: !2659, file: !30, line: 655, type: !1962)
!2663 = !DILocation(line: 655, column: 58, scope: !2659)
!2664 = !DILocation(line: 657, column: 9, scope: !2659)
!2665 = !DILocation(line: 657, column: 14, scope: !2659)
!2666 = !DILocation(line: 657, column: 2, scope: !2659)
!2667 = distinct !DISubprogram(name: "stm32_rng_cleanup", scope: !3, file: !3, line: 104, type: !83, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2668 = !DILocalVariable(name: "rng", arg: 1, scope: !2667, file: !3, line: 104, type: !80)
!2669 = !DILocation(line: 104, column: 45, scope: !2667)
!2670 = !DILocalVariable(name: "priv", scope: !2667, file: !3, line: 106, type: !64)
!2671 = !DILocation(line: 106, column: 28, scope: !2667)
!2672 = !DILocalVariable(name: "__mptr", scope: !2673, file: !3, line: 107, type: !62)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 107, column: 6)
!2674 = !DILocation(line: 107, column: 6, scope: !2673)
!2675 = !DILocation(line: 107, column: 6, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 107, column: 6)
!2677 = !DILocation(line: 109, column: 2, scope: !2667)
!2678 = !DILocation(line: 110, column: 24, scope: !2667)
!2679 = !DILocation(line: 110, column: 30, scope: !2667)
!2680 = !DILocation(line: 110, column: 2, scope: !2667)
!2681 = !DILocation(line: 111, column: 1, scope: !2667)
!2682 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !155, file: !155, line: 921, type: !2683, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !153}
!2685 = !DILocalVariable(name: "clk", arg: 1, scope: !2682, file: !155, line: 921, type: !153)
!2686 = !DILocation(line: 921, column: 54, scope: !2682)
!2687 = !DILocation(line: 923, column: 14, scope: !2682)
!2688 = !DILocation(line: 923, column: 2, scope: !2682)
!2689 = !DILocation(line: 924, column: 16, scope: !2682)
!2690 = !DILocation(line: 924, column: 2, scope: !2682)
!2691 = !DILocation(line: 925, column: 1, scope: !2682)
!2692 = distinct !DISubprogram(name: "stm32_rng_init", scope: !3, file: !3, line: 82, type: !77, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2693 = !DILocalVariable(name: "rng", arg: 1, scope: !2692, file: !3, line: 82, type: !80)
!2694 = !DILocation(line: 82, column: 41, scope: !2692)
!2695 = !DILocalVariable(name: "priv", scope: !2692, file: !3, line: 84, type: !64)
!2696 = !DILocation(line: 84, column: 28, scope: !2692)
!2697 = !DILocalVariable(name: "__mptr", scope: !2698, file: !3, line: 85, type: !62)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 85, column: 6)
!2699 = !DILocation(line: 85, column: 6, scope: !2698)
!2700 = !DILocation(line: 85, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 85, column: 6)
!2702 = !DILocalVariable(name: "err", scope: !2692, file: !3, line: 86, type: !79)
!2703 = !DILocation(line: 86, column: 6, scope: !2692)
!2704 = !DILocation(line: 88, column: 27, scope: !2692)
!2705 = !DILocation(line: 88, column: 33, scope: !2692)
!2706 = !DILocation(line: 88, column: 8, scope: !2692)
!2707 = !DILocation(line: 88, column: 6, scope: !2692)
!2708 = !DILocation(line: 89, column: 6, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 89, column: 6)
!2710 = !DILocation(line: 89, column: 6, scope: !2692)
!2711 = !DILocation(line: 90, column: 10, scope: !2709)
!2712 = !DILocation(line: 90, column: 3, scope: !2709)
!2713 = !DILocation(line: 92, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 92, column: 6)
!2715 = !DILocation(line: 92, column: 12, scope: !2714)
!2716 = !DILocation(line: 92, column: 6, scope: !2692)
!2717 = !DILocation(line: 93, column: 3, scope: !2714)
!2718 = !DILocation(line: 95, column: 3, scope: !2714)
!2719 = !DILocation(line: 99, column: 2, scope: !2692)
!2720 = !DILocation(line: 101, column: 2, scope: !2692)
!2721 = !DILocation(line: 102, column: 1, scope: !2692)
!2722 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !155, file: !155, line: 906, type: !2723, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!79, !153}
!2725 = !DILocalVariable(name: "clk", arg: 1, scope: !2722, file: !155, line: 906, type: !153)
!2726 = !DILocation(line: 906, column: 50, scope: !2722)
!2727 = !DILocalVariable(name: "ret", scope: !2722, file: !155, line: 908, type: !79)
!2728 = !DILocation(line: 908, column: 6, scope: !2722)
!2729 = !DILocation(line: 910, column: 20, scope: !2722)
!2730 = !DILocation(line: 910, column: 8, scope: !2722)
!2731 = !DILocation(line: 910, column: 6, scope: !2722)
!2732 = !DILocation(line: 911, column: 6, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2722, file: !155, line: 911, column: 6)
!2734 = !DILocation(line: 911, column: 6, scope: !2722)
!2735 = !DILocation(line: 912, column: 10, scope: !2733)
!2736 = !DILocation(line: 912, column: 3, scope: !2733)
!2737 = !DILocation(line: 913, column: 19, scope: !2722)
!2738 = !DILocation(line: 913, column: 8, scope: !2722)
!2739 = !DILocation(line: 913, column: 6, scope: !2722)
!2740 = !DILocation(line: 914, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2722, file: !155, line: 914, column: 6)
!2742 = !DILocation(line: 914, column: 6, scope: !2722)
!2743 = !DILocation(line: 915, column: 17, scope: !2741)
!2744 = !DILocation(line: 915, column: 3, scope: !2741)
!2745 = !DILocation(line: 917, column: 9, scope: !2722)
!2746 = !DILocation(line: 917, column: 2, scope: !2722)
!2747 = !DILocation(line: 918, column: 1, scope: !2722)
