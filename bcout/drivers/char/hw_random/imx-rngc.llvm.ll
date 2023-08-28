; ModuleID = '../bcout/drivers/char/hw_random/imx-rngc.llvm.bc'
source_filename = "drivers/char/hw_random/imx-rngc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_imx_rngc_driver_init6:\09\09\09"
module asm ".long\09imx_rngc_driver_init - .\09\09\09"
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
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
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
%struct.imx_rngc = type { %struct.device*, %struct.clk*, i8*, %struct.hwrng, %struct.completion, i32 }
%struct.clk = type opaque
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }

@__param_str_self_test = internal constant [19 x i8] c"imx_rngc.self_test\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@self_test = internal global i8 1, align 1, !dbg !2151
@__param_self_test = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_self_test, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon { i8* @self_test } }, section "__param", align 8, !dbg !2070
@__UNIQUE_ID_self_testtype159 = internal constant [33 x i8] c"imx_rngc.parmtype=self_test:bool\00", section ".modinfo", align 1, !dbg !2123
@__UNIQUE_ID___addressable_imx_rngc_driver_init163 = internal global i8* bitcast (i32 ()* @imx_rngc_driver_init to i8*), section ".discard.addressable", align 8, !dbg !2128
@imx_rngc_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @imx_rngc_dt_ids, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @imx_rngc_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2158
@__exitcall_imx_rngc_driver_exit = internal global void ()* @imx_rngc_driver_exit, section ".exitcall.exit", align 8, !dbg !2130
@__UNIQUE_ID_author164 = internal constant [46 x i8] c"imx_rngc.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1, !dbg !2137
@__UNIQUE_ID_description165 = internal constant [46 x i8] c"imx_rngc.description=H/W RNGC driver for i.MX\00", section ".modinfo", align 1, !dbg !2142
@__UNIQUE_ID_file166 = internal constant [46 x i8] c"imx_rngc.file=drivers/char/hw_random/imx-rngc\00", section ".modinfo", align 1, !dbg !2144
@__UNIQUE_ID_license167 = internal constant [21 x i8] c"imx_rngc.license=GPL\00", section ".modinfo", align 1, !dbg !2146
@.str = private unnamed_addr constant [21 x i8] c"Can not get rng_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Couldn't get irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't get interrupt working.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"self test failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"hwrng registration failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Freescale RNG%c registered (HW revision %d.%02d)\0A\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2153
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"imx_rngc\00", align 1
@imx_rngc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-rngb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2218
@imx_rngc_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @imx_rngc_suspend, i32 (%struct.device*)* @imx_rngc_resume, i32 (%struct.device*)* @imx_rngc_suspend, i32 (%struct.device*)* @imx_rngc_resume, i32 (%struct.device*)* @imx_rngc_suspend, i32 (%struct.device*)* @imx_rngc_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2221
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_self_test to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_self_testtype159, i32 0, i32 0), i8* bitcast (i32 (%struct.platform_device*)* @imx_rngc_remove to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_imx_rngc_driver_init163 to i8*), i8* bitcast (void ()* @imx_rngc_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_imx_rngc_driver_exit to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_author164, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_description165, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file166, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license167, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_remove(%struct.platform_device* %pdev) #0 section ".exit.text" !dbg !2231 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2234, metadata !DIExpression()), !dbg !2235
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2236
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2237
  %1 = bitcast i8* %call to %struct.imx_rngc*, !dbg !2237
  store %struct.imx_rngc* %1, %struct.imx_rngc** %rngc, align 8, !dbg !2235
  %2 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2238
  %rng = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %2, i32 0, i32 3, !dbg !2239
  call void @hwrng_unregister(%struct.hwrng* %rng) #5, !dbg !2240
  %3 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2241
  %clk = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %3, i32 0, i32 1, !dbg !2242
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2242
  call void @clk_disable_unprepare(%struct.clk* %4) #5, !dbg !2243
  ret i32 0, !dbg !2244
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !2245 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2250, metadata !DIExpression()), !dbg !2251
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2252
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2253
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !2254
  ret i8* %call, !dbg !2255
}

; Function Attrs: noredzone
declare dso_local void @hwrng_unregister(%struct.hwrng*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !2256 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2259, metadata !DIExpression()), !dbg !2260
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2261
  call void @clk_disable(%struct.clk* %0) #5, !dbg !2262
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2263
  call void @clk_unprepare(%struct.clk* %1) #5, !dbg !2264
  ret void, !dbg !2265
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_driver_init() #0 section ".init.text" !dbg !2266 {
entry:
  %call = call i32 @__platform_driver_probe(%struct.platform_driver* @imx_rngc_driver, i32 (%struct.platform_device*)* @imx_rngc_probe, %struct.module* null) #5, !dbg !2269
  ret i32 %call, !dbg !2269
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @imx_rngc_driver_exit() #0 section ".exit.text" !dbg !2270 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @imx_rngc_driver) #5, !dbg !2271
  ret void, !dbg !2271
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2272 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2275, metadata !DIExpression()), !dbg !2276
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2277
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2278
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2278
  ret i8* %1, !dbg !2279
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #3

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #3

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_probe(%struct.platform_driver*, i32 (%struct.platform_device*)*, %struct.module*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_probe(%struct.platform_device* %pdev) #2 !dbg !2280 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  %ret = alloca i32, align 4
  %irq = alloca i32, align 4
  %ver_id = alloca i32, align 4
  %rng_type = alloca i8, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2281, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !2287, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.declare(metadata i32* %ver_id, metadata !2289, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata i8* %rng_type, metadata !2291, metadata !DIExpression()), !dbg !2292
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2293
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2294
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 168, i32 3264) #5, !dbg !2295
  %1 = bitcast i8* %call to %struct.imx_rngc*, !dbg !2295
  store %struct.imx_rngc* %1, %struct.imx_rngc** %rngc, align 8, !dbg !2296
  %2 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2297
  %tobool = icmp ne %struct.imx_rngc* %2, null, !dbg !2297
  br i1 %tobool, label %if.end, label %if.then, !dbg !2299

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2300
  br label %return, !dbg !2300

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2301
  %call1 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %3, i32 0) #5, !dbg !2302
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2303
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %4, i32 0, i32 2, !dbg !2304
  store i8* %call1, i8** %base, align 8, !dbg !2305
  %5 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2306
  %base2 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %5, i32 0, i32 2, !dbg !2308
  %6 = load i8*, i8** %base2, align 8, !dbg !2308
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #5, !dbg !2309
  br i1 %call3, label %if.then4, label %if.end7, !dbg !2310

if.then4:                                         ; preds = %if.end
  %7 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2311
  %base5 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %7, i32 0, i32 2, !dbg !2312
  %8 = load i8*, i8** %base5, align 8, !dbg !2312
  %call6 = call i64 @PTR_ERR(i8* %8) #5, !dbg !2313
  %conv = trunc i64 %call6 to i32, !dbg !2313
  store i32 %conv, i32* %retval, align 4, !dbg !2314
  br label %return, !dbg !2314

if.end7:                                          ; preds = %if.end
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2315
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !2316
  %call9 = call %struct.clk* @devm_clk_get(%struct.device* %dev8, i8* null) #5, !dbg !2317
  %10 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2318
  %clk = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %10, i32 0, i32 1, !dbg !2319
  store %struct.clk* %call9, %struct.clk** %clk, align 8, !dbg !2320
  %11 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2321
  %clk10 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %11, i32 0, i32 1, !dbg !2323
  %12 = load %struct.clk*, %struct.clk** %clk10, align 8, !dbg !2323
  %13 = bitcast %struct.clk* %12 to i8*, !dbg !2321
  %call11 = call zeroext i1 @IS_ERR(i8* %13) #5, !dbg !2324
  br i1 %call11, label %if.then12, label %if.end17, !dbg !2325

if.then12:                                        ; preds = %if.end7
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2326
  %dev13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !2326
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2326
  %15 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2328
  %clk14 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %15, i32 0, i32 1, !dbg !2329
  %16 = load %struct.clk*, %struct.clk** %clk14, align 8, !dbg !2329
  %17 = bitcast %struct.clk* %16 to i8*, !dbg !2328
  %call15 = call i64 @PTR_ERR(i8* %17) #5, !dbg !2330
  %conv16 = trunc i64 %call15 to i32, !dbg !2330
  store i32 %conv16, i32* %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end17:                                         ; preds = %if.end7
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2332
  %call18 = call i32 @platform_get_irq(%struct.platform_device* %18, i32 0) #5, !dbg !2333
  store i32 %call18, i32* %irq, align 4, !dbg !2334
  %19 = load i32, i32* %irq, align 4, !dbg !2335
  %cmp = icmp sle i32 %19, 0, !dbg !2337
  br i1 %cmp, label %if.then20, label %if.end22, !dbg !2338

if.then20:                                        ; preds = %if.end17
  %20 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2339
  %dev21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 3, !dbg !2339
  %21 = load i32, i32* %irq, align 4, !dbg !2339
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21) #6, !dbg !2339
  %22 = load i32, i32* %irq, align 4, !dbg !2341
  store i32 %22, i32* %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

if.end22:                                         ; preds = %if.end17
  %23 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2343
  %clk23 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %23, i32 0, i32 1, !dbg !2344
  %24 = load %struct.clk*, %struct.clk** %clk23, align 8, !dbg !2344
  %call24 = call i32 @clk_prepare_enable(%struct.clk* %24) #5, !dbg !2345
  store i32 %call24, i32* %ret, align 4, !dbg !2346
  %25 = load i32, i32* %ret, align 4, !dbg !2347
  %tobool25 = icmp ne i32 %25, 0, !dbg !2347
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2349

if.then26:                                        ; preds = %if.end22
  %26 = load i32, i32* %ret, align 4, !dbg !2350
  store i32 %26, i32* %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.end27:                                         ; preds = %if.end22
  %27 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2352
  %base28 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %27, i32 0, i32 2, !dbg !2353
  %28 = load i8*, i8** %base28, align 8, !dbg !2353
  %add.ptr = getelementptr i8, i8* %28, i64 0, !dbg !2354
  %call29 = call i32 @readl(i8* %add.ptr) #5, !dbg !2355
  store i32 %call29, i32* %ver_id, align 4, !dbg !2356
  %29 = load i32, i32* %ver_id, align 4, !dbg !2357
  %shr = lshr i32 %29, 28, !dbg !2358
  %conv30 = trunc i32 %shr to i8, !dbg !2357
  store i8 %conv30, i8* %rng_type, align 1, !dbg !2359
  %30 = load i8, i8* %rng_type, align 1, !dbg !2360
  %conv31 = zext i8 %30 to i32, !dbg !2360
  %cmp32 = icmp ne i32 %conv31, 2, !dbg !2362
  br i1 %cmp32, label %land.lhs.true, label %if.end38, !dbg !2363

land.lhs.true:                                    ; preds = %if.end27
  %31 = load i8, i8* %rng_type, align 1, !dbg !2364
  %conv34 = zext i8 %31 to i32, !dbg !2364
  %cmp35 = icmp ne i32 %conv34, 1, !dbg !2365
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !2366

if.then37:                                        ; preds = %land.lhs.true
  store i32 -19, i32* %ret, align 4, !dbg !2367
  br label %err, !dbg !2369

if.end38:                                         ; preds = %land.lhs.true, %if.end27
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2370
  %dev39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3, !dbg !2371
  %33 = load i32, i32* %irq, align 4, !dbg !2372
  %34 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2373
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0, !dbg !2374
  %35 = load i8*, i8** %name, align 8, !dbg !2374
  %36 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2375
  %37 = bitcast %struct.imx_rngc* %36 to i8*, !dbg !2376
  %call40 = call i32 @devm_request_irq(%struct.device* %dev39, i32 %33, i32 (i32, i8*)* @imx_rngc_irq, i64 0, i8* %35, i8* %37) #5, !dbg !2377
  store i32 %call40, i32* %ret, align 4, !dbg !2378
  %38 = load i32, i32* %ret, align 4, !dbg !2379
  %tobool41 = icmp ne i32 %38, 0, !dbg !2379
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !2381

if.then42:                                        ; preds = %if.end38
  %39 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2382
  %dev43 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %39, i32 0, i32 0, !dbg !2382
  %40 = load %struct.device*, %struct.device** %dev43, align 8, !dbg !2382
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2382
  br label %err, !dbg !2384

if.end44:                                         ; preds = %if.end38
  %41 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2385
  %rng_op_done = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %41, i32 0, i32 4, !dbg !2385
  call void @__init_completion(%struct.completion* %rng_op_done) #5, !dbg !2385
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2386
  %name45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0, !dbg !2387
  %43 = load i8*, i8** %name45, align 8, !dbg !2387
  %44 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2388
  %rng = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %44, i32 0, i32 3, !dbg !2389
  %name46 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng, i32 0, i32 0, !dbg !2390
  store i8* %43, i8** %name46, align 8, !dbg !2391
  %45 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2392
  %rng47 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %45, i32 0, i32 3, !dbg !2393
  %init = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng47, i32 0, i32 1, !dbg !2394
  store i32 (%struct.hwrng*)* @imx_rngc_init, i32 (%struct.hwrng*)** %init, align 8, !dbg !2395
  %46 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2396
  %rng48 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %46, i32 0, i32 3, !dbg !2397
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng48, i32 0, i32 5, !dbg !2398
  store i32 (%struct.hwrng*, i8*, i64, i1)* @imx_rngc_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2399
  %47 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2400
  %rng49 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %47, i32 0, i32 3, !dbg !2401
  %cleanup = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng49, i32 0, i32 2, !dbg !2402
  store void (%struct.hwrng*)* @imx_rngc_cleanup, void (%struct.hwrng*)** %cleanup, align 8, !dbg !2403
  %48 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2404
  %rng50 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %48, i32 0, i32 3, !dbg !2405
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng50, i32 0, i32 7, !dbg !2406
  store i16 19, i16* %quality, align 8, !dbg !2407
  %49 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2408
  %dev51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 3, !dbg !2409
  %50 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2410
  %dev52 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %50, i32 0, i32 0, !dbg !2411
  store %struct.device* %dev51, %struct.device** %dev52, align 8, !dbg !2412
  %51 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2413
  %52 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2414
  %53 = bitcast %struct.imx_rngc* %52 to i8*, !dbg !2414
  call void @platform_set_drvdata(%struct.platform_device* %51, i8* %53) #5, !dbg !2415
  %54 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2416
  call void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %54) #5, !dbg !2417
  %55 = load i8, i8* @self_test, align 1, !dbg !2418
  %tobool53 = trunc i8 %55 to i1, !dbg !2418
  br i1 %tobool53, label %if.then54, label %if.end60, !dbg !2420

if.then54:                                        ; preds = %if.end44
  %56 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2421
  %call55 = call i32 @imx_rngc_self_test(%struct.imx_rngc* %56) #5, !dbg !2423
  store i32 %call55, i32* %ret, align 4, !dbg !2424
  %57 = load i32, i32* %ret, align 4, !dbg !2425
  %tobool56 = icmp ne i32 %57, 0, !dbg !2425
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !2427

if.then57:                                        ; preds = %if.then54
  %58 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2428
  %dev58 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %58, i32 0, i32 0, !dbg !2428
  %59 = load %struct.device*, %struct.device** %dev58, align 8, !dbg !2428
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2428
  br label %err, !dbg !2430

if.end59:                                         ; preds = %if.then54
  br label %if.end60, !dbg !2431

if.end60:                                         ; preds = %if.end59, %if.end44
  %60 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2432
  %rng61 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %60, i32 0, i32 3, !dbg !2433
  %call62 = call i32 @hwrng_register(%struct.hwrng* %rng61) #5, !dbg !2434
  store i32 %call62, i32* %ret, align 4, !dbg !2435
  %61 = load i32, i32* %ret, align 4, !dbg !2436
  %tobool63 = icmp ne i32 %61, 0, !dbg !2436
  br i1 %tobool63, label %if.then64, label %if.end66, !dbg !2438

if.then64:                                        ; preds = %if.end60
  %62 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2439
  %dev65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 3, !dbg !2439
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2439
  br label %err, !dbg !2441

if.end66:                                         ; preds = %if.end60
  %63 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2442
  %dev67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 3, !dbg !2442
  %64 = load i8, i8* %rng_type, align 1, !dbg !2442
  %conv68 = zext i8 %64 to i32, !dbg !2442
  %cmp69 = icmp eq i32 %conv68, 1, !dbg !2442
  %65 = zext i1 %cmp69 to i64, !dbg !2442
  %cond = select i1 %cmp69, i32 66, i32 67, !dbg !2442
  %66 = load i32, i32* %ver_id, align 4, !dbg !2442
  %shr71 = lshr i32 %66, 8, !dbg !2442
  %and = and i32 %shr71, 255, !dbg !2442
  %67 = load i32, i32* %ver_id, align 4, !dbg !2442
  %and72 = and i32 %67, 255, !dbg !2442
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %cond, i32 %and, i32 %and72) #6, !dbg !2442
  store i32 0, i32* %retval, align 4, !dbg !2443
  br label %return, !dbg !2443

err:                                              ; preds = %if.then64, %if.then57, %if.then42, %if.then37
  call void @llvm.dbg.label(metadata !2444), !dbg !2445
  %68 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2446
  %clk73 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %68, i32 0, i32 1, !dbg !2447
  %69 = load %struct.clk*, %struct.clk** %clk73, align 8, !dbg !2447
  call void @clk_disable_unprepare(%struct.clk* %69) #5, !dbg !2448
  %70 = load i32, i32* %ret, align 4, !dbg !2449
  store i32 %70, i32* %retval, align 4, !dbg !2450
  br label %return, !dbg !2450

return:                                           ; preds = %err, %if.end66, %if.then26, %if.then20, %if.then12, %if.then4, %if.then
  %71 = load i32, i32* %retval, align 4, !dbg !2451
  ret i32 %71, !dbg !2451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2452 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2459, metadata !DIExpression()), !dbg !2460
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2461
  %1 = load i64, i64* %size.addr, align 8, !dbg !2462
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2463
  %or = or i32 %2, 256, !dbg !2464
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2465
  ret i8* %call, !dbg !2466
}

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2467 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2473
  %1 = ptrtoint i8* %0 to i64, !dbg !2473
  %2 = inttoptr i64 %1 to i8*, !dbg !2473
  %3 = ptrtoint i8* %2 to i64, !dbg !2473
  %cmp = icmp uge i64 %3, -4095, !dbg !2473
  %lnot = xor i1 %cmp, true, !dbg !2473
  %lnot1 = xor i1 %lnot, true, !dbg !2473
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2473
  %conv = sext i32 %lnot.ext to i64, !dbg !2473
  %tobool = icmp ne i64 %conv, 0, !dbg !2473
  ret i1 %tobool, !dbg !2474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2475 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2478, metadata !DIExpression()), !dbg !2479
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2480
  %1 = ptrtoint i8* %0 to i64, !dbg !2481
  ret i64 %1, !dbg !2482
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2483 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2490
  %call = call i32 @clk_prepare(%struct.clk* %0) #5, !dbg !2491
  store i32 %call, i32* %ret, align 4, !dbg !2492
  %1 = load i32, i32* %ret, align 4, !dbg !2493
  %tobool = icmp ne i32 %1, 0, !dbg !2493
  br i1 %tobool, label %if.then, label %if.end, !dbg !2495

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2496
  store i32 %2, i32* %retval, align 4, !dbg !2497
  br label %return, !dbg !2497

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2498
  %call1 = call i32 @clk_enable(%struct.clk* %3) #5, !dbg !2499
  store i32 %call1, i32* %ret, align 4, !dbg !2500
  %4 = load i32, i32* %ret, align 4, !dbg !2501
  %tobool2 = icmp ne i32 %4, 0, !dbg !2501
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2503

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2504
  call void @clk_unprepare(%struct.clk* %5) #5, !dbg !2505
  br label %if.end4, !dbg !2505

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2506
  store i32 %6, i32* %retval, align 4, !dbg !2507
  br label %return, !dbg !2507

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2508
  ret i32 %7, !dbg !2508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2509 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2518, metadata !DIExpression()), !dbg !2517
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2517
  %1 = bitcast i8* %0 to i32*, !dbg !2517
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !2517, !srcloc !2519
  store i32 %2, i32* %ret, align 4, !dbg !2517
  %3 = load i32, i32* %ret, align 4, !dbg !2517
  ret i32 %3, !dbg !2517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #2 !dbg !2520 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2539, metadata !DIExpression()), !dbg !2540
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2541
  %1 = load i32, i32* %irq.addr, align 4, !dbg !2542
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !2543
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !2544
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !2545
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !2546
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #5, !dbg !2547
  ret i32 %call, !dbg !2548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_irq(i32 %irq, i8* %priv) #2 !dbg !2549 {
entry:
  %irq.addr = alloca i32, align 4
  %priv.addr = alloca i8*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  %status = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2554, metadata !DIExpression()), !dbg !2555
  %0 = load i8*, i8** %priv.addr, align 8, !dbg !2556
  %1 = bitcast i8* %0 to %struct.imx_rngc*, !dbg !2557
  store %struct.imx_rngc* %1, %struct.imx_rngc** %rngc, align 8, !dbg !2555
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2558, metadata !DIExpression()), !dbg !2559
  %2 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2560
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %2, i32 0, i32 2, !dbg !2561
  %3 = load i8*, i8** %base, align 8, !dbg !2561
  %add.ptr = getelementptr i8, i8* %3, i64 12, !dbg !2562
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !2563
  store i32 %call, i32* %status, align 4, !dbg !2564
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2565
  %base1 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %4, i32 0, i32 2, !dbg !2566
  %5 = load i8*, i8** %base1, align 8, !dbg !2566
  %add.ptr2 = getelementptr i8, i8* %5, i64 16, !dbg !2567
  %call3 = call i32 @readl(i8* %add.ptr2) #5, !dbg !2568
  %6 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2569
  %err_reg = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %6, i32 0, i32 5, !dbg !2570
  store i32 %call3, i32* %err_reg, align 8, !dbg !2571
  %7 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2572
  call void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %7) #5, !dbg !2573
  %8 = load i32, i32* %status, align 4, !dbg !2574
  %and = and i32 %8, 48, !dbg !2576
  %tobool = icmp ne i32 %and, 0, !dbg !2576
  br i1 %tobool, label %if.then, label %if.end, !dbg !2577

if.then:                                          ; preds = %entry
  %9 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2578
  %rng_op_done = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %9, i32 0, i32 4, !dbg !2579
  call void @complete(%struct.completion* %rng_op_done) #5, !dbg !2580
  br label %if.end, !dbg !2580

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !2581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !2155 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !2582, metadata !DIExpression()), !dbg !2583
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2584
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !2585
  store i32 0, i32* %done, align 8, !dbg !2586
  br label %do.body, !dbg !2587

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2588
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !2588
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #5, !dbg !2588
  br label %do.end, !dbg !2588

do.end:                                           ; preds = %do.body
  ret void, !dbg !2590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_init(%struct.hwrng* %rng) #2 !dbg !2591 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.imx_rngc*, align 8
  %cmd = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2596, metadata !DIExpression()), !dbg !2598
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2598
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2598
  store i8* %1, i8** %__mptr, align 8, !dbg !2598
  br label %do.body, !dbg !2598

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2599

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2598
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !2598
  %3 = bitcast i8* %add.ptr to %struct.imx_rngc*, !dbg !2598
  store %struct.imx_rngc* %3, %struct.imx_rngc** %tmp, align 8, !dbg !2599
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %tmp, align 8, !dbg !2598
  store %struct.imx_rngc* %4, %struct.imx_rngc** %rngc, align 8, !dbg !2595
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2605, metadata !DIExpression()), !dbg !2606
  %5 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2607
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %5, i32 0, i32 2, !dbg !2608
  %6 = load i8*, i8** %base, align 8, !dbg !2608
  %add.ptr1 = getelementptr i8, i8* %6, i64 4, !dbg !2609
  %call = call i32 @readl(i8* %add.ptr1) #5, !dbg !2610
  store i32 %call, i32* %cmd, align 4, !dbg !2611
  %7 = load i32, i32* %cmd, align 4, !dbg !2612
  %or = or i32 %7, 32, !dbg !2613
  %8 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2614
  %base2 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %8, i32 0, i32 2, !dbg !2615
  %9 = load i8*, i8** %base2, align 8, !dbg !2615
  %add.ptr3 = getelementptr i8, i8* %9, i64 4, !dbg !2616
  call void @writel(i32 %or, i8* %add.ptr3) #5, !dbg !2617
  %10 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2618
  call void @imx_rngc_irq_unmask(%struct.imx_rngc* %10) #5, !dbg !2619
  br label %do.body4, !dbg !2620

do.body4:                                         ; preds = %do.cond, %do.end
  %11 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2621
  %base5 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %11, i32 0, i32 2, !dbg !2623
  %12 = load i8*, i8** %base5, align 8, !dbg !2623
  %add.ptr6 = getelementptr i8, i8* %12, i64 4, !dbg !2624
  %call7 = call i32 @readl(i8* %add.ptr6) #5, !dbg !2625
  store i32 %call7, i32* %cmd, align 4, !dbg !2626
  %13 = load i32, i32* %cmd, align 4, !dbg !2627
  %or8 = or i32 %13, 2, !dbg !2628
  %14 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2629
  %base9 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %14, i32 0, i32 2, !dbg !2630
  %15 = load i8*, i8** %base9, align 8, !dbg !2630
  %add.ptr10 = getelementptr i8, i8* %15, i64 4, !dbg !2631
  call void @writel(i32 %or8, i8* %add.ptr10) #5, !dbg !2632
  %16 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2633
  %rng_op_done = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %16, i32 0, i32 4, !dbg !2634
  %call11 = call i64 @wait_for_completion_timeout(%struct.completion* %rng_op_done, i64 3000) #5, !dbg !2635
  %conv = trunc i64 %call11 to i32, !dbg !2635
  store i32 %conv, i32* %ret, align 4, !dbg !2636
  %17 = load i32, i32* %ret, align 4, !dbg !2637
  %tobool = icmp ne i32 %17, 0, !dbg !2637
  br i1 %tobool, label %if.end, label %if.then, !dbg !2639

if.then:                                          ; preds = %do.body4
  store i32 -110, i32* %ret, align 4, !dbg !2640
  br label %err, !dbg !2642

if.end:                                           ; preds = %do.body4
  br label %do.cond, !dbg !2643

do.cond:                                          ; preds = %if.end
  %18 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2644
  %err_reg = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %18, i32 0, i32 5, !dbg !2645
  %19 = load i32, i32* %err_reg, align 8, !dbg !2645
  %cmp = icmp eq i32 %19, 8, !dbg !2646
  br i1 %cmp, label %do.body4, label %do.end13, !dbg !2643, !llvm.loop !2647

do.end13:                                         ; preds = %do.cond
  %20 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2649
  %err_reg14 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %20, i32 0, i32 5, !dbg !2651
  %21 = load i32, i32* %err_reg14, align 8, !dbg !2651
  %tobool15 = icmp ne i32 %21, 0, !dbg !2649
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2652

if.then16:                                        ; preds = %do.end13
  store i32 -5, i32* %ret, align 4, !dbg !2653
  br label %err, !dbg !2655

if.end17:                                         ; preds = %do.end13
  %22 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2656
  %base18 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %22, i32 0, i32 2, !dbg !2657
  %23 = load i8*, i8** %base18, align 8, !dbg !2657
  %add.ptr19 = getelementptr i8, i8* %23, i64 8, !dbg !2658
  %call20 = call i32 @readl(i8* %add.ptr19) #5, !dbg !2659
  store i32 %call20, i32* %ctrl, align 4, !dbg !2660
  %24 = load i32, i32* %ctrl, align 4, !dbg !2661
  %or21 = or i32 %24, 16, !dbg !2661
  store i32 %or21, i32* %ctrl, align 4, !dbg !2661
  %25 = load i32, i32* %ctrl, align 4, !dbg !2662
  %26 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2663
  %base22 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %26, i32 0, i32 2, !dbg !2664
  %27 = load i8*, i8** %base22, align 8, !dbg !2664
  %add.ptr23 = getelementptr i8, i8* %27, i64 8, !dbg !2665
  call void @writel(i32 %25, i8* %add.ptr23) #5, !dbg !2666
  store i32 0, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

err:                                              ; preds = %if.then16, %if.then
  call void @llvm.dbg.label(metadata !2668), !dbg !2669
  %28 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2670
  call void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %28) #5, !dbg !2671
  %29 = load i32, i32* %ret, align 4, !dbg !2672
  store i32 %29, i32* %retval, align 4, !dbg !2673
  br label %return, !dbg !2673

return:                                           ; preds = %err, %if.end17
  %30 = load i32, i32* %retval, align 4, !dbg !2674
  ret i32 %30, !dbg !2674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_read(%struct.hwrng* %rng, i8* %data, i64 %max, i1 zeroext %wait) #2 !dbg !2675 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %rngc = alloca %struct.imx_rngc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.imx_rngc*, align 8
  %status = alloca i32, align 4
  %level = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2686, metadata !DIExpression()), !dbg !2688
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2688
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2688
  store i8* %1, i8** %__mptr, align 8, !dbg !2688
  br label %do.body, !dbg !2688

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2689

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2688
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !2688
  %3 = bitcast i8* %add.ptr to %struct.imx_rngc*, !dbg !2688
  store %struct.imx_rngc* %3, %struct.imx_rngc** %tmp, align 8, !dbg !2689
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %tmp, align 8, !dbg !2688
  store %struct.imx_rngc* %4, %struct.imx_rngc** %rngc, align 8, !dbg !2685
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata i32* %level, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i32 0, i32* %retval1, align 4, !dbg !2696
  br label %while.cond, !dbg !2697

while.cond:                                       ; preds = %if.end11, %do.end
  %5 = load i64, i64* %max.addr, align 8, !dbg !2698
  %cmp = icmp uge i64 %5, 4, !dbg !2699
  br i1 %cmp, label %while.body, label %while.end, !dbg !2697

while.body:                                       ; preds = %while.cond
  %6 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2700
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %6, i32 0, i32 2, !dbg !2702
  %7 = load i8*, i8** %base, align 8, !dbg !2702
  %add.ptr2 = getelementptr i8, i8* %7, i64 12, !dbg !2703
  %call = call i32 @readl(i8* %add.ptr2) #5, !dbg !2704
  store i32 %call, i32* %status, align 4, !dbg !2705
  %8 = load i32, i32* %status, align 4, !dbg !2706
  %and = and i32 %8, 65536, !dbg !2708
  %tobool = icmp ne i32 %and, 0, !dbg !2708
  br i1 %tobool, label %if.then, label %if.end, !dbg !2709

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !2710

if.end:                                           ; preds = %while.body
  %9 = load i32, i32* %status, align 4, !dbg !2711
  %and3 = and i32 %9, 3840, !dbg !2712
  %shr = lshr i32 %and3, 8, !dbg !2713
  store i32 %shr, i32* %level, align 4, !dbg !2714
  %10 = load i32, i32* %level, align 4, !dbg !2715
  %tobool4 = icmp ne i32 %10, 0, !dbg !2715
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !2717

if.then5:                                         ; preds = %if.end
  %11 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2718
  %base6 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %11, i32 0, i32 2, !dbg !2720
  %12 = load i8*, i8** %base6, align 8, !dbg !2720
  %add.ptr7 = getelementptr i8, i8* %12, i64 20, !dbg !2721
  %call8 = call i32 @readl(i8* %add.ptr7) #5, !dbg !2722
  %13 = load i8*, i8** %data.addr, align 8, !dbg !2723
  %14 = bitcast i8* %13 to i32*, !dbg !2724
  store i32 %call8, i32* %14, align 4, !dbg !2725
  %15 = load i32, i32* %retval1, align 4, !dbg !2726
  %conv = sext i32 %15 to i64, !dbg !2726
  %add = add i64 %conv, 4, !dbg !2726
  %conv9 = trunc i64 %add to i32, !dbg !2726
  store i32 %conv9, i32* %retval1, align 4, !dbg !2726
  %16 = load i8*, i8** %data.addr, align 8, !dbg !2727
  %add.ptr10 = getelementptr i8, i8* %16, i64 4, !dbg !2727
  store i8* %add.ptr10, i8** %data.addr, align 8, !dbg !2727
  %17 = load i64, i64* %max.addr, align 8, !dbg !2728
  %sub = sub i64 %17, 4, !dbg !2728
  store i64 %sub, i64* %max.addr, align 8, !dbg !2728
  br label %if.end11, !dbg !2729

if.end11:                                         ; preds = %if.then5, %if.end
  br label %while.cond, !dbg !2697, !llvm.loop !2730

while.end:                                        ; preds = %if.then, %while.cond
  %18 = load i32, i32* %retval1, align 4, !dbg !2732
  %tobool12 = icmp ne i32 %18, 0, !dbg !2732
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !2732

cond.true:                                        ; preds = %while.end
  %19 = load i32, i32* %retval1, align 4, !dbg !2733
  br label %cond.end, !dbg !2732

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !2732

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ -5, %cond.false ], !dbg !2732
  ret i32 %cond, !dbg !2734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_rngc_cleanup(%struct.hwrng* %rng) #2 !dbg !2735 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.imx_rngc*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2740, metadata !DIExpression()), !dbg !2742
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2742
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2742
  store i8* %1, i8** %__mptr, align 8, !dbg !2742
  br label %do.body, !dbg !2742

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2743

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2742
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !2742
  %3 = bitcast i8* %add.ptr to %struct.imx_rngc*, !dbg !2742
  store %struct.imx_rngc* %3, %struct.imx_rngc** %tmp, align 8, !dbg !2743
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %tmp, align 8, !dbg !2742
  store %struct.imx_rngc* %4, %struct.imx_rngc** %rngc, align 8, !dbg !2739
  %5 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2745
  call void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %5) #5, !dbg !2746
  ret void, !dbg !2747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2748 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2755
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2756
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2757
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !2758
  ret void, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %rngc) #2 !dbg !2760 {
entry:
  %rngc.addr = alloca %struct.imx_rngc*, align 8
  %ctrl = alloca i32, align 4
  %cmd = alloca i32, align 4
  store %struct.imx_rngc* %rngc, %struct.imx_rngc** %rngc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !2767, metadata !DIExpression()), !dbg !2768
  %0 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2769
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %0, i32 0, i32 2, !dbg !2770
  %1 = load i8*, i8** %base, align 8, !dbg !2770
  %add.ptr = getelementptr i8, i8* %1, i64 8, !dbg !2771
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !2772
  store i32 %call, i32* %ctrl, align 4, !dbg !2773
  %2 = load i32, i32* %ctrl, align 4, !dbg !2774
  %or = or i32 %2, 96, !dbg !2774
  store i32 %or, i32* %ctrl, align 4, !dbg !2774
  %3 = load i32, i32* %ctrl, align 4, !dbg !2775
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2776
  %base1 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %4, i32 0, i32 2, !dbg !2777
  %5 = load i8*, i8** %base1, align 8, !dbg !2777
  %add.ptr2 = getelementptr i8, i8* %5, i64 8, !dbg !2778
  call void @writel(i32 %3, i8* %add.ptr2) #5, !dbg !2779
  %6 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2780
  %base3 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %6, i32 0, i32 2, !dbg !2781
  %7 = load i8*, i8** %base3, align 8, !dbg !2781
  %add.ptr4 = getelementptr i8, i8* %7, i64 4, !dbg !2782
  %call5 = call i32 @readl(i8* %add.ptr4) #5, !dbg !2783
  store i32 %call5, i32* %cmd, align 4, !dbg !2784
  %8 = load i32, i32* %cmd, align 4, !dbg !2785
  %or6 = or i32 %8, 48, !dbg !2785
  store i32 %or6, i32* %cmd, align 4, !dbg !2785
  %9 = load i32, i32* %cmd, align 4, !dbg !2786
  %10 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2787
  %base7 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %10, i32 0, i32 2, !dbg !2788
  %11 = load i8*, i8** %base7, align 8, !dbg !2788
  %add.ptr8 = getelementptr i8, i8* %11, i64 4, !dbg !2789
  call void @writel(i32 %9, i8* %add.ptr8) #5, !dbg !2790
  ret void, !dbg !2791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_self_test(%struct.imx_rngc* %rngc) #2 !dbg !2792 {
entry:
  %retval = alloca i32, align 4
  %rngc.addr = alloca %struct.imx_rngc*, align 8
  %cmd = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.imx_rngc* %rngc, %struct.imx_rngc** %rngc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !2797, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2799, metadata !DIExpression()), !dbg !2800
  %0 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2801
  call void @imx_rngc_irq_unmask(%struct.imx_rngc* %0) #5, !dbg !2802
  %1 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2803
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %1, i32 0, i32 2, !dbg !2804
  %2 = load i8*, i8** %base, align 8, !dbg !2804
  %add.ptr = getelementptr i8, i8* %2, i64 4, !dbg !2805
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !2806
  store i32 %call, i32* %cmd, align 4, !dbg !2807
  %3 = load i32, i32* %cmd, align 4, !dbg !2808
  %or = or i32 %3, 1, !dbg !2809
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2810
  %base1 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %4, i32 0, i32 2, !dbg !2811
  %5 = load i8*, i8** %base1, align 8, !dbg !2811
  %add.ptr2 = getelementptr i8, i8* %5, i64 4, !dbg !2812
  call void @writel(i32 %or, i8* %add.ptr2) #5, !dbg !2813
  %6 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2814
  %rng_op_done = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %6, i32 0, i32 4, !dbg !2815
  %call3 = call i64 @wait_for_completion_timeout(%struct.completion* %rng_op_done, i64 3000) #5, !dbg !2816
  %conv = trunc i64 %call3 to i32, !dbg !2816
  store i32 %conv, i32* %ret, align 4, !dbg !2817
  %7 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2818
  call void @imx_rngc_irq_mask_clear(%struct.imx_rngc* %7) #5, !dbg !2819
  %8 = load i32, i32* %ret, align 4, !dbg !2820
  %tobool = icmp ne i32 %8, 0, !dbg !2820
  br i1 %tobool, label %if.end, label %if.then, !dbg !2822

if.then:                                          ; preds = %entry
  store i32 -110, i32* %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

if.end:                                           ; preds = %entry
  %9 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2824
  %err_reg = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %9, i32 0, i32 5, !dbg !2825
  %10 = load i32, i32* %err_reg, align 8, !dbg !2825
  %tobool4 = icmp ne i32 %10, 0, !dbg !2824
  %11 = zext i1 %tobool4 to i64, !dbg !2824
  %cond = select i1 %tobool4, i32 -5, i32 0, !dbg !2824
  store i32 %cond, i32* %retval, align 4, !dbg !2826
  br label %return, !dbg !2826

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2827
  ret i32 %12, !dbg !2827
}

; Function Attrs: noredzone
declare dso_local i32 @hwrng_register(%struct.hwrng*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #3

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #3

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #3

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2828 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2834, metadata !DIExpression()), !dbg !2833
  %0 = load i32, i32* %val.addr, align 4, !dbg !2833
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2833
  %2 = bitcast i8* %1 to i32*, !dbg !2833
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2833, !srcloc !2835
  ret void, !dbg !2833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @imx_rngc_irq_unmask(%struct.imx_rngc* %rngc) #2 !dbg !2836 {
entry:
  %rngc.addr = alloca %struct.imx_rngc*, align 8
  %ctrl = alloca i32, align 4
  store %struct.imx_rngc* %rngc, %struct.imx_rngc** %rngc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !2839, metadata !DIExpression()), !dbg !2840
  %0 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2841
  %base = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %0, i32 0, i32 2, !dbg !2842
  %1 = load i8*, i8** %base, align 8, !dbg !2842
  %add.ptr = getelementptr i8, i8* %1, i64 8, !dbg !2843
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !2844
  store i32 %call, i32* %ctrl, align 4, !dbg !2845
  %2 = load i32, i32* %ctrl, align 4, !dbg !2846
  %and = and i32 %2, -97, !dbg !2846
  store i32 %and, i32* %ctrl, align 4, !dbg !2846
  %3 = load i32, i32* %ctrl, align 4, !dbg !2847
  %4 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc.addr, align 8, !dbg !2848
  %base1 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %4, i32 0, i32 2, !dbg !2849
  %5 = load i8*, i8** %base1, align 8, !dbg !2849
  %add.ptr2 = getelementptr i8, i8* %5, i64 8, !dbg !2850
  call void @writel(i32 %3, i8* %add.ptr2) #5, !dbg !2851
  ret void, !dbg !2852
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2853 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2858, metadata !DIExpression()), !dbg !2859
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2860
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2861
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2862
  store i8* %0, i8** %driver_data, align 8, !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_suspend(%struct.device* %dev) #2 !dbg !2865 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2868, metadata !DIExpression()), !dbg !2869
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2870
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2871
  %1 = bitcast i8* %call to %struct.imx_rngc*, !dbg !2871
  store %struct.imx_rngc* %1, %struct.imx_rngc** %rngc, align 8, !dbg !2869
  %2 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2872
  %clk = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %2, i32 0, i32 1, !dbg !2873
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2873
  call void @clk_disable_unprepare(%struct.clk* %3) #5, !dbg !2874
  ret i32 0, !dbg !2875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @imx_rngc_resume(%struct.device* %dev) #2 !dbg !2876 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %rngc = alloca %struct.imx_rngc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.imx_rngc** %rngc, metadata !2879, metadata !DIExpression()), !dbg !2880
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2881
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2882
  %1 = bitcast i8* %call to %struct.imx_rngc*, !dbg !2882
  store %struct.imx_rngc* %1, %struct.imx_rngc** %rngc, align 8, !dbg !2880
  %2 = load %struct.imx_rngc*, %struct.imx_rngc** %rngc, align 8, !dbg !2883
  %clk = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %2, i32 0, i32 1, !dbg !2884
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2884
  %call1 = call i32 @clk_prepare_enable(%struct.clk* %3) #5, !dbg !2885
  ret i32 0, !dbg !2886
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2226, !2227, !2228, !2229}
!llvm.ident = !{!2230}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_self_test", scope: !2, file: !3, line: 58, type: !2223, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !2069, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/imx-rngc.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !51, line: 11, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!56 = !{!57, !60, !62, !63, !64, !65, !67, !610}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !59, line: 76, flags: DIFlagFwdDecl)
!59 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !61, line: 148, baseType: !7)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "imx_rngc", file: !3, line: 60, size: 1344, elements: !69)
!69 = !{!70, !2031, !2035, !2036, !2067, !2068}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !68, file: !3, line: 61, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !73)
!73 = !{!74, !1580, !1581, !1584, !1585, !1636, !1730, !1731, !1732, !1733, !1734, !1743, !1848, !1861, !1864, !1865, !1869, !1871, !1872, !1873, !1877, !1883, !1884, !1887, !1891, !1981, !1984, !1985, !1986, !1987, !2019, !2020, !2021, !2024, !2027, !2028, !2029, !2030}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !72, file: !30, line: 462, baseType: !75, size: 512)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !76, line: 64, size: 512, elements: !77)
!76 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !82, !88, !90, !151, !1417, !1570, !1575, !1576, !1577, !1578, !1579}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 65, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !75, file: !76, line: 66, baseType: !83, size: 128, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !61, line: 178, size: 128, elements: !84)
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !61, line: 179, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !61, line: 179, baseType: !86, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 67, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !75, file: !76, line: 68, baseType: !91, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !76, line: 192, size: 704, elements: !93)
!93 = !{!94, !95, !111, !112}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !92, file: !76, line: 193, baseType: !83, size: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !92, file: !76, line: 194, baseType: !96, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !97, line: 83, baseType: !98)
!97 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !97, line: 71, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !97, line: 72, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !97, line: 72, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !101, file: !97, line: 73, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !97, line: 20, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !104, file: !97, line: 21, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !108, line: 25, baseType: !109)
!108 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 25, elements: !110)
!110 = !{}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !92, file: !76, line: 195, baseType: !75, size: 512, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !92, file: !76, line: 196, baseType: !113, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !76, line: 156, size: 192, elements: !116)
!116 = !{!117, !123, !128}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !115, file: !76, line: 157, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !91, !89}
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !76, line: 158, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!79, !91, !89}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !115, file: !76, line: 159, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!122, !91, !89, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !76, line: 148, size: 20736, elements: !135)
!135 = !{!136, !141, !145, !146, !150}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !134, file: !76, line: 149, baseType: !137, size: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 192, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !134, file: !76, line: 150, baseType: !142, size: 4096, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 4096, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !134, file: !76, line: 151, baseType: !122, size: 32, offset: 4288)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !76, line: 152, baseType: !147, size: 16384, offset: 4320)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16384, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 2048)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !134, file: !76, line: 153, baseType: !122, size: 32, offset: 20704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !75, file: !76, line: 69, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !76, line: 138, size: 448, elements: !154)
!154 = !{!155, !159, !187, !189, !1365, !1396, !1400}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !153, file: !76, line: 139, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !89}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !153, file: !76, line: 140, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !163, line: 230, size: 128, elements: !164)
!163 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !180}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !162, file: !163, line: 231, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !89, !173, !138}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !61, line: 60, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !171, line: 73, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !171, line: 15, baseType: !64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !163, line: 30, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !163, line: 31, baseType: !79, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !174, file: !163, line: 32, baseType: !178, size: 16, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !61, line: 19, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !162, file: !163, line: 232, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!169, !89, !173, !79, !184}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 55, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !171, line: 72, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !171, line: 16, baseType: !63)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !153, file: !76, line: 141, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !153, file: !76, line: 142, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !163, line: 84, size: 320, elements: !194)
!194 = !{!195, !196, !200, !1362, !1363}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !163, line: 85, baseType: !79, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !193, file: !163, line: 86, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!178, !89, !173, !122}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !193, file: !163, line: 88, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!178, !89, !204, !122}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !163, line: 168, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !220, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !205, file: !163, line: 169, baseType: !174, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !205, file: !163, line: 170, baseType: !184, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !205, file: !163, line: 171, baseType: !62, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !205, file: !163, line: 172, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!169, !214, !89, !204, !138, !217, !184}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !216, line: 526, flags: DIFlagFwdDecl)
!216 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !61, line: 46, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !171, line: 88, baseType: !219)
!219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !205, file: !163, line: 174, baseType: !211, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !205, file: !163, line: 176, baseType: !222, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!122, !214, !89, !204, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !227, line: 305, size: 1472, elements: !228)
!227 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !230, !231, !232, !233, !241, !242, !1336, !1342, !1343, !1348, !1349, !1352, !1356, !1357, !1358, !1359, !1360}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !226, file: !227, line: 308, baseType: !63, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !226, file: !227, line: 309, baseType: !63, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !226, file: !227, line: 313, baseType: !225, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !226, file: !227, line: 313, baseType: !225, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !226, file: !227, line: 315, baseType: !234, size: 192, align: 64, offset: 256)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !235, line: 24, size: 192, align: 64, elements: !236)
!235 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !234, file: !235, line: 25, baseType: !63, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !234, file: !235, line: 26, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !234, file: !235, line: 27, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !226, file: !227, line: 323, baseType: !63, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !226, file: !227, line: 327, baseType: !243, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !227, line: 388, size: 7296, elements: !245)
!245 = !{!246, !1332}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !227, line: 389, baseType: !247, size: 7296)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !227, line: 389, size: 7296, elements: !248)
!248 = !{!249, !250, !254, !260, !264, !265, !266, !267, !268, !276, !281, !282, !283, !284, !293, !294, !295, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !330, !338, !341, !389, !390, !1302, !1303, !1306, !1310, !1311, !1314, !1315, !1316, !1319, !1331}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !247, file: !227, line: 390, baseType: !225, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !247, file: !227, line: 391, baseType: !251, size: 64, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !235, line: 31, size: 64, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !251, file: !235, line: 32, baseType: !239, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !247, file: !227, line: 392, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !256, line: 23, baseType: !257)
!256 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !258, line: 31, baseType: !259)
!258 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!259 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !247, file: !227, line: 394, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!63, !214, !63, !63, !63, !63}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !247, file: !227, line: 398, baseType: !63, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !247, file: !227, line: 399, baseType: !63, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !247, file: !227, line: 405, baseType: !63, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !247, file: !227, line: 406, baseType: !63, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !247, file: !227, line: 407, baseType: !269, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !216, line: 286, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 286, size: 64, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !271, file: !216, line: 286, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !275, line: 18, baseType: !63)
!275 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !247, file: !227, line: 416, baseType: !277, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !61, line: 168, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 166, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !61, line: 167, baseType: !122, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !247, file: !227, line: 428, baseType: !277, size: 32, offset: 608)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !247, file: !227, line: 437, baseType: !277, size: 32, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !247, file: !227, line: 447, baseType: !277, size: 32, offset: 672)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !247, file: !227, line: 450, baseType: !285, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !286, line: 13, baseType: !287)
!286 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !61, line: 175, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 173, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !61, line: 174, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !256, line: 22, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !258, line: 30, baseType: !219)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !247, file: !227, line: 452, baseType: !122, size: 32, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !247, file: !227, line: 454, baseType: !96, offset: 800)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !247, file: !227, line: 457, baseType: !296, size: 256, offset: 832)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !297, line: 35, size: 256, elements: !298)
!297 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !296, file: !297, line: 36, baseType: !285, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !296, file: !297, line: 42, baseType: !285, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !296, file: !297, line: 46, baseType: !302, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !97, line: 29, baseType: !104)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !296, file: !297, line: 47, baseType: !83, size: 128, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !247, file: !227, line: 459, baseType: !83, size: 128, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !247, file: !227, line: 466, baseType: !63, size: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !247, file: !227, line: 467, baseType: !63, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !247, file: !227, line: 469, baseType: !63, size: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !247, file: !227, line: 470, baseType: !63, size: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !247, file: !227, line: 471, baseType: !287, size: 64, offset: 1472)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !247, file: !227, line: 472, baseType: !63, size: 64, offset: 1536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !247, file: !227, line: 473, baseType: !63, size: 64, offset: 1600)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !247, file: !227, line: 474, baseType: !63, size: 64, offset: 1664)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !247, file: !227, line: 475, baseType: !63, size: 64, offset: 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !247, file: !227, line: 477, baseType: !96, offset: 1792)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !247, file: !227, line: 478, baseType: !63, size: 64, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !247, file: !227, line: 478, baseType: !63, size: 64, offset: 1856)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !247, file: !227, line: 478, baseType: !63, size: 64, offset: 1920)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !247, file: !227, line: 478, baseType: !63, size: 64, offset: 1984)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !247, file: !227, line: 479, baseType: !63, size: 64, offset: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !247, file: !227, line: 479, baseType: !63, size: 64, offset: 2112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !247, file: !227, line: 479, baseType: !63, size: 64, offset: 2176)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !247, file: !227, line: 480, baseType: !63, size: 64, offset: 2240)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !247, file: !227, line: 480, baseType: !63, size: 64, offset: 2304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !247, file: !227, line: 480, baseType: !63, size: 64, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !247, file: !227, line: 480, baseType: !63, size: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !247, file: !227, line: 482, baseType: !327, size: 2816, offset: 2496)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2816, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 44)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !247, file: !227, line: 488, baseType: !331, size: 256, offset: 5312)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !332, line: 60, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !331, file: !332, line: 61, baseType: !335, size: 256)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !247, file: !227, line: 490, baseType: !339, size: 64, offset: 5568)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !227, line: 490, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !247, file: !227, line: 493, baseType: !342, size: 896, offset: 5632)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !343, line: 53, baseType: !344)
!343 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 896, elements: !345)
!345 = !{!346, !347, !348, !349, !352, !353, !360, !361, !381, !382, !385}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !344, file: !343, line: 18, baseType: !255, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !344, file: !343, line: 28, baseType: !287, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !344, file: !343, line: 31, baseType: !296, size: 256, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !344, file: !343, line: 32, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !343, line: 32, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !344, file: !343, line: 37, baseType: !179, size: 16, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !343, line: 40, baseType: !354, size: 192, offset: 512)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !355, line: 53, size: 192, elements: !356)
!355 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !358, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 54, baseType: !285, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 55, baseType: !96, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 59, baseType: !83, size: 128, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !344, file: !343, line: 41, baseType: !62, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !344, file: !343, line: 42, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !365, line: 13, size: 896, elements: !366)
!365 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !364, file: !365, line: 14, baseType: !62, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !364, file: !365, line: 15, baseType: !63, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !364, file: !365, line: 17, baseType: !63, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !364, file: !365, line: 17, baseType: !63, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !364, file: !365, line: 19, baseType: !64, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !364, file: !365, line: 21, baseType: !64, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !364, file: !365, line: 22, baseType: !64, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !364, file: !365, line: 23, baseType: !64, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !364, file: !365, line: 24, baseType: !64, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !364, file: !365, line: 25, baseType: !64, size: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !364, file: !365, line: 26, baseType: !64, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !364, file: !365, line: 27, baseType: !64, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !364, file: !365, line: 28, baseType: !64, size: 64, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !364, file: !365, line: 29, baseType: !64, size: 64, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !344, file: !343, line: 44, baseType: !277, size: 32, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !344, file: !343, line: 50, baseType: !383, size: 16, offset: 864)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !256, line: 19, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !258, line: 24, baseType: !179)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !344, file: !343, line: 51, baseType: !386, size: 16, offset: 880)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !256, line: 18, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !258, line: 23, baseType: !388)
!388 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !227, line: 495, baseType: !63, size: 64, offset: 6528)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !247, file: !227, line: 497, baseType: !391, size: 64, offset: 6592)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !227, line: 381, size: 384, elements: !393)
!393 = !{!394, !395, !1301}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !392, file: !227, line: 382, baseType: !277, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !392, file: !227, line: 383, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !227, line: 376, size: 128, elements: !397)
!397 = !{!398, !1299}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !396, file: !227, line: 377, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !401, line: 640, size: 48640, elements: !402)
!401 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !411, !413, !414, !420, !421, !422, !423, !424, !425, !426, !427, !431, !449, !460, !555, !556, !557, !568, !569, !571, !572, !573, !574, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !653, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !709, !711, !712, !713, !725, !727, !728, !729, !730, !731, !737, !738, !739, !740, !741, !742, !743, !755, !760, !765, !766, !767, !770, !774, !777, !780, !783, !786, !790, !793, !796, !802, !803, !804, !810, !811, !812, !813, !814, !823, !824, !825, !826, !827, !832, !833, !834, !837, !838, !841, !844, !847, !850, !853, !856, !857, !937, !940, !943, !944, !947, !948, !949, !955, !956, !957, !970, !971, !972, !984, !989, !992, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !400, file: !401, line: 646, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !405, line: 56, size: 128, elements: !406)
!405 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !405, line: 57, baseType: !63, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !404, file: !405, line: 58, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !256, line: 21, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !258, line: 27, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !401, line: 649, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !400, file: !401, line: 657, baseType: !62, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !400, file: !401, line: 658, baseType: !415, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !416, line: 113, baseType: !417)
!416 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !416, line: 111, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !417, file: !416, line: 112, baseType: !277, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !401, line: 660, baseType: !7, size: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !400, file: !401, line: 661, baseType: !7, size: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !400, file: !401, line: 684, baseType: !122, size: 32, offset: 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !400, file: !401, line: 686, baseType: !122, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !400, file: !401, line: 687, baseType: !122, size: 32, offset: 416)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !400, file: !401, line: 688, baseType: !122, size: 32, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !400, file: !401, line: 689, baseType: !7, size: 32, offset: 480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !400, file: !401, line: 691, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !401, line: 691, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !400, file: !401, line: 692, baseType: !432, size: 832, offset: 576)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !401, line: 451, size: 832, elements: !433)
!433 = !{!434, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !432, file: !401, line: 453, baseType: !435, size: 128)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !401, line: 325, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !435, file: !401, line: 326, baseType: !63, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !435, file: !401, line: 327, baseType: !409, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !432, file: !401, line: 454, baseType: !234, size: 192, align: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !432, file: !401, line: 455, baseType: !83, size: 128, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !401, line: 456, baseType: !7, size: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !432, file: !401, line: 458, baseType: !255, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !432, file: !401, line: 459, baseType: !255, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !432, file: !401, line: 460, baseType: !255, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !432, file: !401, line: 461, baseType: !255, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !432, file: !401, line: 463, baseType: !255, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !432, file: !401, line: 465, baseType: !448, offset: 832)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !401, line: 415, elements: !110)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !400, file: !401, line: 693, baseType: !450, size: 384, offset: 1408)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !401, line: 489, size: 384, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !450, file: !401, line: 490, baseType: !83, size: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !450, file: !401, line: 491, baseType: !63, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !450, file: !401, line: 492, baseType: !63, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !450, file: !401, line: 493, baseType: !7, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !450, file: !401, line: 494, baseType: !179, size: 16, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !450, file: !401, line: 495, baseType: !179, size: 16, offset: 304)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !450, file: !401, line: 497, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !400, file: !401, line: 697, baseType: !461, size: 1792, offset: 1792)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !401, line: 507, size: 1792, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !552, !553}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !461, file: !401, line: 508, baseType: !234, size: 192, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !461, file: !401, line: 515, baseType: !255, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !461, file: !401, line: 516, baseType: !255, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !461, file: !401, line: 517, baseType: !255, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !461, file: !401, line: 518, baseType: !255, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !461, file: !401, line: 519, baseType: !255, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !461, file: !401, line: 526, baseType: !291, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !461, file: !401, line: 527, baseType: !255, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !401, line: 528, baseType: !7, size: 32, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !461, file: !401, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !461, file: !401, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !461, file: !401, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !461, file: !401, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !461, file: !401, line: 563, baseType: !477, size: 512, offset: 704)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !478)
!478 = !{!479, !487, !488, !493, !545, !549, !550, !551}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !6, line: 119, baseType: !480, size: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !481, line: 9, size: 256, elements: !482)
!481 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !481, line: 10, baseType: !234, size: 192, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !480, file: !481, line: 11, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !486, line: 29, baseType: !291)
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
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !6, line: 215, baseType: !302)
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
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !61, line: 27, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !171, line: 96, baseType: !122)
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
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !235, line: 125, size: 128, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !536, file: !235, line: 126, baseType: !251, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !536, file: !235, line: 127, baseType: !239, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !495, file: !6, line: 166, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!485}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !495, file: !6, line: 167, baseType: !485, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !477, file: !6, line: 123, baseType: !546, size: 8, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !256, line: 17, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !258, line: 21, baseType: !548)
!548 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !477, file: !6, line: 124, baseType: !546, size: 8, offset: 456)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !477, file: !6, line: 125, baseType: !546, size: 8, offset: 464)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !477, file: !6, line: 126, baseType: !546, size: 8, offset: 472)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !461, file: !401, line: 572, baseType: !477, size: 512, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !461, file: !401, line: 580, baseType: !554, size: 64, offset: 1728)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !400, file: !401, line: 721, baseType: !7, size: 32, offset: 3584)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !400, file: !401, line: 722, baseType: !122, size: 32, offset: 3616)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !400, file: !401, line: 723, baseType: !558, size: 64, offset: 3648)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !561, line: 17, baseType: !562)
!561 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !561, line: 17, size: 64, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !562, file: !561, line: 17, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 1)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !400, file: !401, line: 724, baseType: !560, size: 64, offset: 3712)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !400, file: !401, line: 749, baseType: !570, offset: 3776)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !401, line: 290, elements: !110)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !400, file: !401, line: 751, baseType: !83, size: 128, offset: 3776)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !400, file: !401, line: 757, baseType: !243, size: 64, offset: 3904)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !400, file: !401, line: 758, baseType: !243, size: 64, offset: 3968)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !400, file: !401, line: 761, baseType: !575, size: 320, offset: 4032)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !332, line: 34, size: 320, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !575, file: !332, line: 35, baseType: !255, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !575, file: !332, line: 36, baseType: !579, size: 256, offset: 64)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !336)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !400, file: !401, line: 766, baseType: !122, size: 32, offset: 4352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !400, file: !401, line: 767, baseType: !122, size: 32, offset: 4384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !400, file: !401, line: 768, baseType: !122, size: 32, offset: 4416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !400, file: !401, line: 770, baseType: !122, size: 32, offset: 4448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !400, file: !401, line: 772, baseType: !63, size: 64, offset: 4480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !400, file: !401, line: 775, baseType: !7, size: 32, offset: 4544)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !400, file: !401, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !400, file: !401, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !400, file: !401, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !400, file: !401, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !400, file: !401, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !400, file: !401, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !400, file: !401, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !400, file: !401, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !400, file: !401, line: 831, baseType: !63, size: 64, offset: 4672)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !400, file: !401, line: 833, baseType: !596, size: 384, offset: 4736)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !597)
!597 = !{!598, !603}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !596, file: !12, line: 26, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!64, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !12, line: 27, baseType: !604, size: 320, offset: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !12, line: 27, size: 320, elements: !605)
!605 = !{!606, !616, !643}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !604, file: !12, line: 36, baseType: !607, size: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !12, line: 29, size: 320, elements: !608)
!608 = !{!609, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !607, file: !12, line: 30, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !607, file: !12, line: 31, baseType: !409, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !12, line: 32, baseType: !409, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !607, file: !12, line: 33, baseType: !409, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !607, file: !12, line: 34, baseType: !255, size: 64, offset: 192)
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
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !171, line: 93, baseType: !219)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !626, file: !627, line: 9, baseType: !219, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !622, file: !12, line: 43, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !635, line: 7, size: 64, elements: !636)
!635 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!636 = !{!637, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !634, file: !635, line: 8, baseType: !638, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !635, line: 5, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !256, line: 20, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !258, line: 26, baseType: !122)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !634, file: !635, line: 9, baseType: !639, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !617, file: !12, line: 45, baseType: !255, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !604, file: !12, line: 54, baseType: !644, size: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !12, line: 48, size: 256, elements: !645)
!645 = !{!646, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !644, file: !12, line: 49, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !644, file: !12, line: 50, baseType: !122, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !644, file: !12, line: 51, baseType: !122, size: 32, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !644, file: !12, line: 52, baseType: !63, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !644, file: !12, line: 53, baseType: !63, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !400, file: !401, line: 835, baseType: !654, size: 32, offset: 5120)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !61, line: 22, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !171, line: 28, baseType: !122)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !400, file: !401, line: 836, baseType: !654, size: 32, offset: 5152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !400, file: !401, line: 840, baseType: !63, size: 64, offset: 5184)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !400, file: !401, line: 849, baseType: !399, size: 64, offset: 5248)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !400, file: !401, line: 852, baseType: !399, size: 64, offset: 5312)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !400, file: !401, line: 857, baseType: !83, size: 128, offset: 5376)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !400, file: !401, line: 858, baseType: !83, size: 128, offset: 5504)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !400, file: !401, line: 859, baseType: !399, size: 64, offset: 5632)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !400, file: !401, line: 867, baseType: !83, size: 128, offset: 5696)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !400, file: !401, line: 868, baseType: !83, size: 128, offset: 5824)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !400, file: !401, line: 871, baseType: !666, size: 64, offset: 5952)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !668, line: 59, size: 768, elements: !669)
!668 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !671, !672, !673, !684, !685, !692, !701}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !668, line: 61, baseType: !415, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !667, file: !668, line: 62, baseType: !7, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !668, line: 63, baseType: !96, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !667, file: !668, line: 65, baseType: !674, size: 256, offset: 64)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !336)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !61, line: 182, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !675, file: !61, line: 183, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !61, line: 186, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !61, line: 187, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !679, file: !61, line: 187, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !667, file: !668, line: 66, baseType: !675, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !667, file: !668, line: 68, baseType: !686, size: 128, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !687, line: 40, baseType: !688)
!687 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !687, line: 36, size: 128, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !687, line: 37, baseType: !96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !688, file: !687, line: 38, baseType: !83, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !667, file: !668, line: 69, baseType: !693, size: 128, align: 64, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !61, line: 216, size: 128, align: 64, elements: !694)
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !61, line: 217, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !693, file: !61, line: 218, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !696}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !667, file: !668, line: 70, baseType: !702, size: 128, offset: 640)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 128, elements: !566)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !668, line: 54, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !703, file: !668, line: 55, baseType: !122, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !703, file: !668, line: 56, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !668, line: 56, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !400, file: !401, line: 872, baseType: !710, size: 512, offset: 6016)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 512, elements: !336)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !400, file: !401, line: 873, baseType: !83, size: 128, offset: 6528)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !400, file: !401, line: 874, baseType: !83, size: 128, offset: 6656)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !400, file: !401, line: 876, baseType: !714, size: 64, offset: 6784)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !716, line: 26, size: 192, elements: !717)
!716 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !715, file: !716, line: 27, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !715, file: !716, line: 28, baseType: !720, size: 128, offset: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !721, line: 43, size: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !720, file: !721, line: 44, baseType: !302)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !720, file: !721, line: 45, baseType: !83, size: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !400, file: !401, line: 879, baseType: !726, size: 64, offset: 6848)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !400, file: !401, line: 882, baseType: !726, size: 64, offset: 6912)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !400, file: !401, line: 884, baseType: !255, size: 64, offset: 6976)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !400, file: !401, line: 885, baseType: !255, size: 64, offset: 7040)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !400, file: !401, line: 890, baseType: !255, size: 64, offset: 7104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !400, file: !401, line: 891, baseType: !732, size: 128, offset: 7168)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !401, line: 242, size: 128, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !732, file: !401, line: 244, baseType: !255, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !732, file: !401, line: 245, baseType: !255, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !401, line: 246, baseType: !302, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !400, file: !401, line: 900, baseType: !63, size: 64, offset: 7296)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !400, file: !401, line: 901, baseType: !63, size: 64, offset: 7360)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !400, file: !401, line: 904, baseType: !255, size: 64, offset: 7424)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !400, file: !401, line: 907, baseType: !255, size: 64, offset: 7488)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !400, file: !401, line: 910, baseType: !63, size: 64, offset: 7552)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !400, file: !401, line: 911, baseType: !63, size: 64, offset: 7616)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !400, file: !401, line: 914, baseType: !744, size: 640, offset: 7680)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !745, line: 123, size: 640, elements: !746)
!745 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !753, !754}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !744, file: !745, line: 124, baseType: !748, size: 576)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 576, elements: !139)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !745, line: 108, size: 192, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !749, file: !745, line: 109, baseType: !255, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !749, file: !745, line: 110, baseType: !533, size: 128, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !744, file: !745, line: 125, baseType: !7, size: 32, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !744, file: !745, line: 126, baseType: !7, size: 32, offset: 608)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !400, file: !401, line: 917, baseType: !756, size: 192, offset: 8320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !745, line: 134, size: 192, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !756, file: !745, line: 135, baseType: !693, size: 128, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !756, file: !745, line: 136, baseType: !7, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !400, file: !401, line: 923, baseType: !761, size: 64, offset: 8512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !764, line: 11, flags: DIFlagFwdDecl)
!764 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !400, file: !401, line: 926, baseType: !761, size: 64, offset: 8576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !400, file: !401, line: 929, baseType: !761, size: 64, offset: 8640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !400, file: !401, line: 933, baseType: !768, size: 64, offset: 8704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !401, line: 933, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !400, file: !401, line: 943, baseType: !771, size: 128, offset: 8768)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !400, file: !401, line: 945, baseType: !775, size: 64, offset: 8896)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !401, line: 49, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !400, file: !401, line: 956, baseType: !778, size: 64, offset: 8960)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !401, line: 45, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !400, file: !401, line: 959, baseType: !781, size: 64, offset: 9024)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !401, line: 959, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !400, file: !401, line: 962, baseType: !784, size: 64, offset: 9088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !401, line: 66, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !400, file: !401, line: 966, baseType: !787, size: 64, offset: 9152)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !789, line: 35, flags: DIFlagFwdDecl)
!789 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !400, file: !401, line: 969, baseType: !791, size: 64, offset: 9216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !745, line: 223, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !400, file: !401, line: 970, baseType: !794, size: 64, offset: 9280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !401, line: 62, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !400, file: !401, line: 971, baseType: !797, size: 64, offset: 9344)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !798, line: 25, baseType: !799)
!798 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 23, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !799, file: !798, line: 24, baseType: !565, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !400, file: !401, line: 972, baseType: !797, size: 64, offset: 9408)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !400, file: !401, line: 974, baseType: !797, size: 64, offset: 9472)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !400, file: !401, line: 975, baseType: !805, size: 192, offset: 9536)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !806, line: 30, size: 192, elements: !807)
!806 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !805, file: !806, line: 31, baseType: !83, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !805, file: !806, line: 32, baseType: !797, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !400, file: !401, line: 976, baseType: !63, size: 64, offset: 9728)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !400, file: !401, line: 977, baseType: !184, size: 64, offset: 9792)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !400, file: !401, line: 978, baseType: !7, size: 32, offset: 9856)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !400, file: !401, line: 980, baseType: !696, size: 64, offset: 9920)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !400, file: !401, line: 989, baseType: !815, size: 128, offset: 9984)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !816, line: 35, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !815, file: !816, line: 36, baseType: !122, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !815, file: !816, line: 37, baseType: !277, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !815, file: !816, line: 38, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !816, line: 23, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !400, file: !401, line: 992, baseType: !255, size: 64, offset: 10112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !400, file: !401, line: 993, baseType: !255, size: 64, offset: 10176)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !400, file: !401, line: 996, baseType: !96, offset: 10240)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !400, file: !401, line: 999, baseType: !302, offset: 10240)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !400, file: !401, line: 1001, baseType: !828, size: 64, offset: 10240)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !401, line: 636, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !401, line: 637, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !400, file: !401, line: 1005, baseType: !536, size: 128, offset: 10304)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !400, file: !401, line: 1007, baseType: !399, size: 64, offset: 10432)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !400, file: !401, line: 1009, baseType: !835, size: 64, offset: 10496)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !401, line: 1009, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !400, file: !401, line: 1043, baseType: !62, size: 64, offset: 10560)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !400, file: !401, line: 1046, baseType: !839, size: 64, offset: 10624)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !401, line: 41, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !400, file: !401, line: 1050, baseType: !842, size: 64, offset: 10688)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !401, line: 42, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !400, file: !401, line: 1054, baseType: !845, size: 64, offset: 10752)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !401, line: 55, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !400, file: !401, line: 1056, baseType: !848, size: 64, offset: 10816)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !401, line: 40, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !400, file: !401, line: 1058, baseType: !851, size: 64, offset: 10880)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !401, line: 47, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !400, file: !401, line: 1061, baseType: !854, size: 64, offset: 10944)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !401, line: 43, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !400, file: !401, line: 1064, baseType: !63, size: 64, offset: 11008)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !400, file: !401, line: 1065, baseType: !858, size: 64, offset: 11072)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !806, line: 14, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !806, line: 12, size: 384, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !806, line: 13, baseType: !863, size: 384)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !806, line: 13, size: 384, elements: !864)
!864 = !{!865, !866, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !863, file: !806, line: 13, baseType: !122, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !863, file: !806, line: 13, baseType: !122, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !863, file: !806, line: 13, baseType: !122, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !863, file: !806, line: 13, baseType: !869, size: 256, offset: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !870, line: 32, size: 256, elements: !871)
!870 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !878, !891, !897, !906, !926, !931}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !869, file: !870, line: 37, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 34, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !873, file: !870, line: 35, baseType: !655, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !873, file: !870, line: 36, baseType: !877, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !171, line: 49, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !869, file: !870, line: 45, baseType: !879, size: 192)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 40, size: 192, elements: !880)
!880 = !{!881, !883, !884, !890}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !879, file: !870, line: 41, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !171, line: 95, baseType: !122)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !879, file: !870, line: 42, baseType: !122, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !879, file: !870, line: 43, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !870, line: 11, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !870, line: 8, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !886, file: !870, line: 9, baseType: !122, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !886, file: !870, line: 10, baseType: !62, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !879, file: !870, line: 44, baseType: !122, size: 32, offset: 128)
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
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !898, file: !870, line: 58, baseType: !122, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !898, file: !870, line: 59, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !171, line: 94, baseType: !172)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !898, file: !870, line: 60, baseType: !904, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !869, file: !870, line: 95, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 64, size: 256, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !907, file: !870, line: 65, baseType: !62, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !870, line: 77, baseType: !911, size: 192, offset: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !870, line: 77, size: 192, elements: !912)
!912 = !{!913, !914, !921}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !911, file: !870, line: 82, baseType: !388, size: 16)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !911, file: !870, line: 88, baseType: !915, size: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !870, line: 84, size: 192, elements: !916)
!916 = !{!917, !919, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !915, file: !870, line: 85, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !515)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !915, file: !870, line: 86, baseType: !62, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !915, file: !870, line: 87, baseType: !62, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !911, file: !870, line: 93, baseType: !922, size: 96)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !870, line: 90, size: 96, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !922, file: !870, line: 91, baseType: !918, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !922, file: !870, line: 92, baseType: !410, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !869, file: !870, line: 101, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 98, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !927, file: !870, line: 99, baseType: !64, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !927, file: !870, line: 100, baseType: !122, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !869, file: !870, line: 108, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !870, line: 104, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !932, file: !870, line: 105, baseType: !62, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !932, file: !870, line: 106, baseType: !122, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !932, file: !870, line: 107, baseType: !7, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !400, file: !401, line: 1067, baseType: !938, offset: 11136)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !939, line: 12, elements: !110)
!939 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !400, file: !401, line: 1099, baseType: !941, size: 64, offset: 11136)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !401, line: 56, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !400, file: !401, line: 1103, baseType: !83, size: 128, offset: 11200)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !400, file: !401, line: 1104, baseType: !945, size: 64, offset: 11328)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !401, line: 46, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !400, file: !401, line: 1105, baseType: !354, size: 192, offset: 11392)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !400, file: !401, line: 1106, baseType: !7, size: 32, offset: 11584)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !400, file: !401, line: 1109, baseType: !950, size: 128, offset: 11648)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 128, elements: !953)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !401, line: 51, flags: DIFlagFwdDecl)
!953 = !{!954}
!954 = !DISubrange(count: 2)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !400, file: !401, line: 1110, baseType: !354, size: 192, offset: 11776)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !400, file: !401, line: 1111, baseType: !83, size: 128, offset: 11968)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !400, file: !401, line: 1173, baseType: !958, size: 64, offset: 12096)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !960, line: 62, size: 256, align: 256, elements: !961)
!960 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!961 = !{!962, !963, !964, !969}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !959, file: !960, line: 75, baseType: !410, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !959, file: !960, line: 90, baseType: !410, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !959, file: !960, line: 124, baseType: !965, size: 64, offset: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !960, line: 109, size: 64, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !965, file: !960, line: 110, baseType: !257, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !965, file: !960, line: 112, baseType: !257, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !960, line: 144, baseType: !410, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !400, file: !401, line: 1174, baseType: !409, size: 32, offset: 12160)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !400, file: !401, line: 1179, baseType: !63, size: 64, offset: 12224)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !400, file: !401, line: 1182, baseType: !973, size: 128, offset: 12288)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !332, line: 76, size: 128, elements: !974)
!974 = !{!975, !980, !983}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !973, file: !332, line: 85, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !977, line: 7, size: 64, elements: !978)
!977 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !976, file: !977, line: 12, baseType: !562, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !973, file: !332, line: 88, baseType: !981, size: 8, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !61, line: 30, baseType: !982)
!982 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !973, file: !332, line: 95, baseType: !981, size: 8, offset: 72)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 1184, baseType: !985, size: 128, offset: 12416)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 1184, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !985, file: !401, line: 1185, baseType: !415, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !985, file: !401, line: 1186, baseType: !693, size: 128, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !400, file: !401, line: 1190, baseType: !990, size: 64, offset: 12544)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !401, line: 53, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !400, file: !401, line: 1192, baseType: !993, size: 128, offset: 12608)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !332, line: 64, size: 128, elements: !994)
!994 = !{!995, !1088, !1089}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !993, file: !332, line: 65, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !227, line: 68, size: 512, align: 128, elements: !998)
!998 = !{!999, !1000, !1080, !1087}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !227, line: 69, baseType: !63, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !227, line: 77, baseType: !1001, size: 320, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !227, line: 77, size: 320, elements: !1002)
!1002 = !{!1003, !1012, !1017, !1045, !1053, !1059, !1072, !1079}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 78, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 78, size: 320, elements: !1005)
!1005 = !{!1006, !1007, !1010, !1011}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1004, file: !227, line: 84, baseType: !83, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1004, file: !227, line: 86, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !227, line: 26, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1004, file: !227, line: 87, baseType: !63, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1004, file: !227, line: 94, baseType: !63, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 96, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 96, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1013, file: !227, line: 101, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !61, line: 143, baseType: !255)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 103, baseType: !1018, size: 320)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 103, size: 320, elements: !1019)
!1019 = !{!1020, !1030, !1033, !1034}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !227, line: 104, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !227, line: 104, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1021, file: !227, line: 105, baseType: !83, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !227, line: 106, baseType: !1025, size: 128)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !227, line: 106, size: 128, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1025, file: !227, line: 107, baseType: !996, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1025, file: !227, line: 109, baseType: !122, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1025, file: !227, line: 110, baseType: !122, size: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1018, file: !227, line: 117, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !227, line: 117, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1018, file: !227, line: 119, baseType: !62, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !227, line: 120, baseType: !1035, size: 64, offset: 256)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !227, line: 120, size: 64, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1035, file: !227, line: 121, baseType: !62, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1035, file: !227, line: 122, baseType: !63, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !227, line: 123, baseType: !1040, size: 32)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !227, line: 123, size: 32, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1040, file: !227, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1040, file: !227, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1040, file: !227, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 130, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 130, size: 192, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1046, file: !227, line: 131, baseType: !63, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1046, file: !227, line: 134, baseType: !548, size: 8, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1046, file: !227, line: 135, baseType: !548, size: 8, offset: 72)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1046, file: !227, line: 136, baseType: !277, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1046, file: !227, line: 137, baseType: !7, size: 32, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 139, baseType: !1054, size: 256)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 139, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1054, file: !227, line: 140, baseType: !63, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1054, file: !227, line: 141, baseType: !277, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1054, file: !227, line: 143, baseType: !83, size: 128, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 145, baseType: !1060, size: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 145, size: 256, elements: !1061)
!1061 = !{!1062, !1063, !1065, !1066, !1071}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1060, file: !227, line: 146, baseType: !63, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1060, file: !227, line: 147, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !216, line: 509, baseType: !996)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1060, file: !227, line: 148, baseType: !63, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !227, line: 149, baseType: !1067, size: 64, offset: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !227, line: 149, size: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1067, file: !227, line: 150, baseType: !243, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1067, file: !227, line: 151, baseType: !277, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1060, file: !227, line: 156, baseType: !96, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !227, line: 159, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !227, line: 159, size: 128, elements: !1074)
!1074 = !{!1075, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1073, file: !227, line: 161, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !227, line: 161, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1073, file: !227, line: 162, baseType: !62, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1001, file: !227, line: 176, baseType: !693, size: 128, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !227, line: 179, baseType: !1081, size: 32, offset: 384)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !227, line: 179, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1081, file: !227, line: 184, baseType: !277, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1081, file: !227, line: 192, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1081, file: !227, line: 194, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1081, file: !227, line: 195, baseType: !122, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !997, file: !227, line: 199, baseType: !277, size: 32, offset: 416)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !993, file: !332, line: 67, baseType: !410, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !993, file: !332, line: 68, baseType: !410, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !400, file: !401, line: 1206, baseType: !122, size: 32, offset: 12736)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !400, file: !401, line: 1207, baseType: !122, size: 32, offset: 12768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !400, file: !401, line: 1209, baseType: !63, size: 64, offset: 12800)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !400, file: !401, line: 1219, baseType: !255, size: 64, offset: 12864)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !400, file: !401, line: 1220, baseType: !255, size: 64, offset: 12928)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !400, file: !401, line: 1317, baseType: !122, size: 32, offset: 12992)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !400, file: !401, line: 1319, baseType: !399, size: 64, offset: 13056)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !400, file: !401, line: 1322, baseType: !1098, size: 64, offset: 13120)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1100, line: 56, size: 512, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1108, !1109, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1099, file: !1100, line: 57, baseType: !1098, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1099, file: !1100, line: 58, baseType: !62, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !1100, line: 59, baseType: !63, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1099, file: !1100, line: 60, baseType: !63, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1099, file: !1100, line: 61, baseType: !1107, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1099, file: !1100, line: 62, baseType: !7, size: 32, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1099, file: !1100, line: 63, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !61, line: 153, baseType: !255)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1099, file: !1100, line: 64, baseType: !1112, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !400, file: !401, line: 1326, baseType: !415, size: 32, offset: 13184)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !400, file: !401, line: 1342, baseType: !62, size: 64, offset: 13248)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !400, file: !401, line: 1343, baseType: !257, size: 64, offset: 13312)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !400, file: !401, line: 1344, baseType: !255, size: 64, offset: 13376)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !400, file: !401, line: 1345, baseType: !257, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !400, file: !401, line: 1346, baseType: !257, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !400, file: !401, line: 1347, baseType: !257, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !400, file: !401, line: 1348, baseType: !693, size: 128, align: 64, offset: 13504)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !400, file: !401, line: 1358, baseType: !1123, size: 34816, offset: 13824)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1124, line: 485, size: 34816, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1123, file: !1124, line: 487, baseType: !1127, size: 192)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 192, elements: !139)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1129, line: 16, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1128, file: !1129, line: 17, baseType: !383, size: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1128, file: !1129, line: 18, baseType: !383, size: 16, offset: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1128, file: !1129, line: 19, baseType: !383, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !1129, line: 19, baseType: !383, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1128, file: !1129, line: 19, baseType: !383, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1128, file: !1129, line: 19, baseType: !383, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1128, file: !1129, line: 19, baseType: !383, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1128, file: !1129, line: 20, baseType: !383, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1128, file: !1129, line: 20, baseType: !383, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1128, file: !1129, line: 20, baseType: !383, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1128, file: !1129, line: 20, baseType: !383, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1128, file: !1129, line: 20, baseType: !383, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1128, file: !1129, line: 20, baseType: !383, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1123, file: !1124, line: 491, baseType: !63, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1123, file: !1124, line: 495, baseType: !179, size: 16, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1123, file: !1124, line: 496, baseType: !179, size: 16, offset: 272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1123, file: !1124, line: 497, baseType: !179, size: 16, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1123, file: !1124, line: 498, baseType: !179, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1123, file: !1124, line: 502, baseType: !63, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1123, file: !1124, line: 503, baseType: !63, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1123, file: !1124, line: 514, baseType: !1152, size: 256, offset: 448)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !336)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1124, line: 483, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1123, file: !1124, line: 516, baseType: !63, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1123, file: !1124, line: 518, baseType: !63, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1123, file: !1124, line: 520, baseType: !63, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1123, file: !1124, line: 521, baseType: !63, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1123, file: !1124, line: 522, baseType: !63, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1123, file: !1124, line: 528, baseType: !1161, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1124, line: 10, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1123, file: !1124, line: 535, baseType: !63, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1123, file: !1124, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1123, file: !1124, line: 540, baseType: !1166, size: 33280, offset: 1536)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1167, line: 317, size: 33280, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1166, file: !1167, line: 330, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1166, file: !1167, line: 337, baseType: !63, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1166, file: !1167, line: 348, baseType: !1172, size: 32768, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1167, line: 304, size: 32768, elements: !1173)
!1173 = !{!1174, !1189, !1228, !1278, !1295}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1172, file: !1167, line: 305, baseType: !1175, size: 896)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1167, line: 12, size: 896, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1167, line: 13, baseType: !409, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1167, line: 14, baseType: !409, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1167, line: 15, baseType: !409, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1175, file: !1167, line: 16, baseType: !409, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1175, file: !1167, line: 17, baseType: !409, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1175, file: !1167, line: 18, baseType: !409, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1175, file: !1167, line: 19, baseType: !409, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1167, line: 22, baseType: !1185, size: 640, offset: 224)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 640, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 20)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1175, file: !1167, line: 25, baseType: !409, size: 32, offset: 864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1172, file: !1167, line: 306, baseType: !1190, size: 4096, align: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1167, line: 34, size: 4096, align: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1211, !1212, !1213, !1217, !1219, !1223}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1167, line: 35, baseType: !383, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1167, line: 36, baseType: !383, size: 16, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1167, line: 37, baseType: !383, size: 16, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1190, file: !1167, line: 38, baseType: !383, size: 16, offset: 48)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 39, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 39, size: 128, elements: !1198)
!1198 = !{!1199, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 40, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 40, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1200, file: !1167, line: 41, baseType: !255, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1200, file: !1167, line: 42, baseType: !255, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 44, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 44, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1205, file: !1167, line: 45, baseType: !409, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1205, file: !1167, line: 46, baseType: !409, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1205, file: !1167, line: 47, baseType: !409, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1205, file: !1167, line: 48, baseType: !409, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1190, file: !1167, line: 51, baseType: !409, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1190, file: !1167, line: 52, baseType: !409, size: 32, offset: 224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1167, line: 55, baseType: !1214, size: 1024, offset: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 1024, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1190, file: !1167, line: 58, baseType: !1218, size: 2048, offset: 1280)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !143)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1190, file: !1167, line: 60, baseType: !1220, size: 384, offset: 3328)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 384, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 12)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 62, baseType: !1224, size: 384, offset: 3712)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 62, size: 384, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1224, file: !1167, line: 63, baseType: !1220, size: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1224, file: !1167, line: 64, baseType: !1220, size: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1172, file: !1167, line: 307, baseType: !1229, size: 1088)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1167, line: 79, size: 1088, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1277}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1167, line: 80, baseType: !409, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1167, line: 81, baseType: !409, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1167, line: 82, baseType: !409, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1167, line: 83, baseType: !409, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1167, line: 84, baseType: !409, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1167, line: 85, baseType: !409, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1167, line: 86, baseType: !409, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1167, line: 88, baseType: !1185, size: 640, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1229, file: !1167, line: 89, baseType: !546, size: 8, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1229, file: !1167, line: 90, baseType: !546, size: 8, offset: 872)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1229, file: !1167, line: 91, baseType: !546, size: 8, offset: 880)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1229, file: !1167, line: 92, baseType: !546, size: 8, offset: 888)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1229, file: !1167, line: 93, baseType: !546, size: 8, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1229, file: !1167, line: 94, baseType: !546, size: 8, offset: 904)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1229, file: !1167, line: 95, baseType: !1246, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1248, line: 11, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1247, file: !1248, line: 12, baseType: !64, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1247, file: !1248, line: 13, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1254, line: 56, size: 1344, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1253, file: !1254, line: 61, baseType: !63, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1253, file: !1254, line: 62, baseType: !63, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1253, file: !1254, line: 63, baseType: !63, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1253, file: !1254, line: 64, baseType: !63, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1253, file: !1254, line: 65, baseType: !63, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1253, file: !1254, line: 66, baseType: !63, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1253, file: !1254, line: 68, baseType: !63, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1253, file: !1254, line: 69, baseType: !63, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1253, file: !1254, line: 70, baseType: !63, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1253, file: !1254, line: 71, baseType: !63, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1253, file: !1254, line: 72, baseType: !63, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1253, file: !1254, line: 73, baseType: !63, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1253, file: !1254, line: 74, baseType: !63, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1253, file: !1254, line: 75, baseType: !63, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1253, file: !1254, line: 76, baseType: !63, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1253, file: !1254, line: 81, baseType: !63, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1253, file: !1254, line: 83, baseType: !63, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1253, file: !1254, line: 84, baseType: !63, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 85, baseType: !63, size: 64, offset: 1152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1253, file: !1254, line: 86, baseType: !63, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1253, file: !1254, line: 87, baseType: !63, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1229, file: !1167, line: 96, baseType: !409, size: 32, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1172, file: !1167, line: 308, baseType: !1279, size: 4608, align: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1167, line: 289, size: 4608, align: 512, elements: !1280)
!1280 = !{!1281, !1282, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1279, file: !1167, line: 290, baseType: !1190, size: 4096, align: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1279, file: !1167, line: 291, baseType: !1283, size: 512, offset: 4096)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1167, line: 268, size: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1283, file: !1167, line: 269, baseType: !255, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1283, file: !1167, line: 270, baseType: !255, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1283, file: !1167, line: 271, baseType: !1288, size: 384, offset: 128)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 384, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 6)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1279, file: !1167, line: 292, baseType: !1292, offset: 4608)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1172, file: !1167, line: 309, baseType: !1296, size: 32768)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 32768, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 4096)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !227, line: 378, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !392, file: !227, line: 384, baseType: !715, size: 192, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !247, file: !227, line: 500, baseType: !96, offset: 6656)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !247, file: !227, line: 501, baseType: !1304, size: 64, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !227, line: 387, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !247, file: !227, line: 516, baseType: !1307, size: 64, offset: 6720)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1309, line: 18, flags: DIFlagFwdDecl)
!1309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !247, file: !227, line: 519, baseType: !214, size: 64, offset: 6784)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !247, file: !227, line: 521, baseType: !1312, size: 64, offset: 6848)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !227, line: 521, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !247, file: !227, line: 545, baseType: !277, size: 32, offset: 6912)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !247, file: !227, line: 548, baseType: !981, size: 8, offset: 6944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !247, file: !227, line: 550, baseType: !1317, offset: 6952)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1318, line: 142, elements: !110)
!1318 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !247, file: !227, line: 554, baseType: !1320, size: 256, offset: 6976)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 102, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 103, baseType: !285, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 104, baseType: !83, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 105, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !247, file: !227, line: 557, baseType: !409, size: 32, offset: 7232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !244, file: !227, line: 565, baseType: !1333, offset: 7296)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: -1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !226, file: !227, line: 333, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !216, line: 284, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !216, line: 284, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1338, file: !216, line: 284, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !275, line: 19, baseType: !63)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !226, file: !227, line: 334, baseType: !63, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !226, file: !227, line: 343, baseType: !1344, size: 256, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !227, line: 340, size: 256, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1344, file: !227, line: 341, baseType: !234, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1344, file: !227, line: 342, baseType: !63, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !226, file: !227, line: 351, baseType: !83, size: 128, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !226, file: !227, line: 353, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !227, line: 353, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !226, file: !227, line: 356, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !227, line: 356, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !226, file: !227, line: 359, baseType: !63, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !226, file: !227, line: 361, baseType: !214, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !226, file: !227, line: 362, baseType: !62, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !226, file: !227, line: 365, baseType: !285, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !226, file: !227, line: 373, baseType: !1361, offset: 1472)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !227, line: 296, elements: !110)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !193, file: !163, line: 90, baseType: !188, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !193, file: !163, line: 91, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !153, file: !76, line: 143, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !89}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1372)
!1372 = !{!1373, !1374, !1378, !1382, !1388, !1392}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !18, line: 40, baseType: !17, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1371, file: !18, line: 41, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!981}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1371, file: !18, line: 42, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!62}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1371, file: !18, line: 43, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1112, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1371, file: !18, line: 44, baseType: !1389, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1112}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1371, file: !18, line: 45, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !62}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !153, file: !76, line: 144, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1112, !89}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !153, file: !76, line: 145, baseType: !1401, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !89, !1404, !1410}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1309, line: 23, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 21, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1406, file: !1309, line: 22, baseType: !1409, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !61, line: 32, baseType: !877)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1309, line: 28, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 26, size: 32, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1412, file: !1309, line: 27, baseType: !1415, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !61, line: 33, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !171, line: 50, baseType: !7)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !75, file: !76, line: 70, baseType: !1418, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1420, line: 123, size: 1024, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1563, !1564, !1565, !1566, !1567}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1419, file: !1420, line: 124, baseType: !277, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1419, file: !1420, line: 125, baseType: !277, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1419, file: !1420, line: 135, baseType: !1418, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1419, file: !1420, line: 136, baseType: !79, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1419, file: !1420, line: 138, baseType: !234, size: 192, align: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1419, file: !1420, line: 140, baseType: !1112, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1419, file: !1420, line: 141, baseType: !7, size: 32, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1420, line: 142, baseType: !1430, size: 256, offset: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !1420, line: 142, size: 256, elements: !1431)
!1431 = !{!1432, !1486, !1490}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1430, file: !1420, line: 143, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1420, line: 91, size: 192, elements: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1433, file: !1420, line: 92, baseType: !63, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1433, file: !1420, line: 94, baseType: !251, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1433, file: !1420, line: 100, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1420, line: 180, size: 704, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1456, !1457, !1458, !1484, !1485}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1439, file: !1420, line: 182, baseType: !1418, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1420, line: 183, baseType: !7, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1439, file: !1420, line: 186, baseType: !1444, size: 192, offset: 128)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1445, line: 19, size: 192, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1454, !1455}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1444, file: !1445, line: 20, baseType: !1448, size: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1449, line: 292, size: 128, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1448, file: !1449, line: 293, baseType: !96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1448, file: !1449, line: 295, baseType: !60, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1448, file: !1449, line: 296, baseType: !62, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1444, file: !1445, line: 21, baseType: !7, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1444, file: !1445, line: 22, baseType: !7, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1439, file: !1420, line: 187, baseType: !409, size: 32, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1439, file: !1420, line: 188, baseType: !409, size: 32, offset: 352)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1439, file: !1420, line: 189, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1420, line: 168, size: 320, elements: !1461)
!1461 = !{!1462, !1468, !1472, !1476, !1480}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1460, file: !1420, line: 169, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!122, !1466, !1438}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !216, line: 539, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1460, file: !1420, line: 171, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!122, !1418, !79, !178}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1460, file: !1420, line: 173, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!122, !1418}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1460, file: !1420, line: 174, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!122, !1418, !1418, !79}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1460, file: !1420, line: 176, baseType: !1481, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!122, !1466, !1418, !1438}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1439, file: !1420, line: 192, baseType: !83, size: 128, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1439, file: !1420, line: 194, baseType: !686, size: 128, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1430, file: !1420, line: 144, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1420, line: 103, size: 64, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1487, file: !1420, line: 104, baseType: !1418, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1430, file: !1420, line: 145, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1420, line: 107, size: 256, elements: !1492)
!1492 = !{!1493, !1558, !1561, !1562}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1491, file: !1420, line: 108, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1420, line: 217, size: 768, elements: !1497)
!1497 = !{!1498, !1518, !1522, !1526, !1531, !1535, !1539, !1543, !1544, !1545, !1546, !1554}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1496, file: !1420, line: 222, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!122, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1420, line: 197, size: 1088, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1503, file: !1420, line: 199, baseType: !1418, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1503, file: !1420, line: 200, baseType: !214, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1503, file: !1420, line: 201, baseType: !1466, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1503, file: !1420, line: 202, baseType: !62, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1503, file: !1420, line: 205, baseType: !354, size: 192, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1503, file: !1420, line: 206, baseType: !354, size: 192, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1503, file: !1420, line: 207, baseType: !122, size: 32, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1503, file: !1420, line: 208, baseType: !83, size: 128, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1503, file: !1420, line: 209, baseType: !138, size: 64, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1503, file: !1420, line: 211, baseType: !184, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1503, file: !1420, line: 212, baseType: !981, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1503, file: !1420, line: 213, baseType: !981, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1503, file: !1420, line: 214, baseType: !1353, size: 64, offset: 1024)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1496, file: !1420, line: 223, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !1502}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1496, file: !1420, line: 236, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!122, !1466, !62}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1496, file: !1420, line: 238, baseType: !1527, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!62, !1466, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1496, file: !1420, line: 239, baseType: !1532, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!62, !1466, !62, !1530}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1496, file: !1420, line: 240, baseType: !1536, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1466, !62}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1496, file: !1420, line: 242, baseType: !1540, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!169, !1502, !138, !184, !217}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1496, file: !1420, line: 252, baseType: !184, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1496, file: !1420, line: 259, baseType: !981, size: 8, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1496, file: !1420, line: 260, baseType: !1540, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1496, file: !1420, line: 263, baseType: !1547, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1550, !1502, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1551, line: 52, baseType: !7)
!1551 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1420, line: 27, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1496, file: !1420, line: 266, baseType: !1555, size: 64, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!122, !1502, !225}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1491, file: !1420, line: 109, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1420, line: 31, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1491, file: !1420, line: 110, baseType: !217, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1491, file: !1420, line: 111, baseType: !1418, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1419, file: !1420, line: 148, baseType: !62, size: 64, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1419, file: !1420, line: 154, baseType: !255, size: 64, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !1420, line: 156, baseType: !179, size: 16, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1419, file: !1420, line: 157, baseType: !178, size: 16, offset: 912)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1419, file: !1420, line: 158, baseType: !1568, size: 64, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1420, line: 32, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !75, file: !76, line: 71, baseType: !1571, size: 32, offset: 448)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1572, line: 19, size: 32, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1571, file: !1572, line: 20, baseType: !415, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !75, file: !76, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !75, file: !76, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !75, file: !76, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !75, file: !76, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !75, file: !76, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !30, line: 463, baseType: !71, size: 64, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !72, file: !30, line: 465, baseType: !1582, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !72, file: !30, line: 467, baseType: !79, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !30, line: 468, baseType: !1586, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1596, !1601, !1605}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1588, file: !30, line: 88, baseType: !79, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1588, file: !30, line: 89, baseType: !190, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1588, file: !30, line: 90, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!122, !71, !133}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1588, file: !30, line: 91, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!138, !71, !1600, !1404, !1410}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1588, file: !30, line: 93, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !71}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1588, file: !30, line: 95, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1609)
!1609 = !{!1610, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1608, file: !37, line: 279, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!122, !71}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1608, file: !37, line: 280, baseType: !1602, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1608, file: !37, line: 281, baseType: !1611, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1608, file: !37, line: 282, baseType: !1611, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1608, file: !37, line: 283, baseType: !1611, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1608, file: !37, line: 284, baseType: !1611, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1608, file: !37, line: 285, baseType: !1611, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1608, file: !37, line: 286, baseType: !1611, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1608, file: !37, line: 287, baseType: !1611, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1608, file: !37, line: 288, baseType: !1611, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1608, file: !37, line: 289, baseType: !1611, size: 64, offset: 640)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1608, file: !37, line: 290, baseType: !1611, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1608, file: !37, line: 291, baseType: !1611, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1608, file: !37, line: 292, baseType: !1611, size: 64, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1608, file: !37, line: 293, baseType: !1611, size: 64, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1608, file: !37, line: 294, baseType: !1611, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1608, file: !37, line: 295, baseType: !1611, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1608, file: !37, line: 296, baseType: !1611, size: 64, offset: 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1608, file: !37, line: 297, baseType: !1611, size: 64, offset: 1152)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1608, file: !37, line: 298, baseType: !1611, size: 64, offset: 1216)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1608, file: !37, line: 299, baseType: !1611, size: 64, offset: 1280)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1608, file: !37, line: 300, baseType: !1611, size: 64, offset: 1344)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1608, file: !37, line: 301, baseType: !1611, size: 64, offset: 1408)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !72, file: !30, line: 470, baseType: !1637, size: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1639, line: 82, size: 1408, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1723, !1726, !1729}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !1639, line: 83, baseType: !79, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1638, file: !1639, line: 84, baseType: !79, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1638, file: !1639, line: 85, baseType: !71, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1638, file: !1639, line: 86, baseType: !190, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1638, file: !1639, line: 87, baseType: !190, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1638, file: !1639, line: 88, baseType: !190, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1638, file: !1639, line: 90, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!122, !71, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1674, !1687, !1688, !1689, !1690, !1691, !1699, !1700, !1701, !1702, !1703, !1704}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !24, line: 96, baseType: !79, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1652, file: !24, line: 97, baseType: !1637, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1652, file: !24, line: 99, baseType: !57, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1652, file: !24, line: 100, baseType: !79, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1652, file: !24, line: 102, baseType: !981, size: 8, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1652, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1652, file: !24, line: 105, baseType: !1661, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1664, line: 262, size: 1600, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1668, !1669, !1673}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1663, file: !1664, line: 263, baseType: !1667, size: 256)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !1215)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1663, file: !1664, line: 264, baseType: !1667, size: 256, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1663, file: !1664, line: 265, baseType: !1670, size: 1024, offset: 512)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1663, file: !1664, line: 266, baseType: !1112, size: 64, offset: 1536)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1652, file: !24, line: 106, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1664, line: 210, size: 256, elements: !1678)
!1678 = !{!1679, !1683, !1685, !1686}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1677, file: !1664, line: 211, baseType: !1680, size: 72)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 72, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 9)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1677, file: !1664, line: 212, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1664, line: 14, baseType: !63)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1677, file: !1664, line: 213, baseType: !410, size: 32, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1677, file: !1664, line: 214, baseType: !410, size: 32, offset: 224)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1652, file: !24, line: 108, baseType: !1611, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1652, file: !24, line: 109, baseType: !1602, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1652, file: !24, line: 110, baseType: !1611, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1652, file: !24, line: 111, baseType: !1602, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1652, file: !24, line: 112, baseType: !1692, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!122, !71, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1696, file: !37, line: 51, baseType: !122, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1652, file: !24, line: 113, baseType: !1611, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1652, file: !24, line: 114, baseType: !190, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1652, file: !24, line: 115, baseType: !190, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1652, file: !24, line: 117, baseType: !1606, size: 64, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1652, file: !24, line: 118, baseType: !1602, size: 64, offset: 1024)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1652, file: !24, line: 120, baseType: !1705, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !1639, line: 91, baseType: !1593, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1638, file: !1639, line: 92, baseType: !1611, size: 64, offset: 512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1638, file: !1639, line: 93, baseType: !1602, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1638, file: !1639, line: 94, baseType: !1611, size: 64, offset: 640)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1638, file: !1639, line: 95, baseType: !1602, size: 64, offset: 704)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1638, file: !1639, line: 97, baseType: !1611, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1638, file: !1639, line: 98, baseType: !1611, size: 64, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1638, file: !1639, line: 100, baseType: !1692, size: 64, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1638, file: !1639, line: 101, baseType: !1611, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1638, file: !1639, line: 103, baseType: !1611, size: 64, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1638, file: !1639, line: 105, baseType: !1611, size: 64, offset: 1088)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !1639, line: 107, baseType: !1606, size: 64, offset: 1152)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1638, file: !1639, line: 109, baseType: !1720, size: 64, offset: 1216)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1639, line: 109, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1638, file: !1639, line: 111, baseType: !1724, size: 64, offset: 1280)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1639, line: 111, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1638, file: !1639, line: 112, baseType: !1727, offset: 1344)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1728, line: 187, elements: !110)
!1728 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1638, file: !1639, line: 114, baseType: !981, size: 8, offset: 1344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !72, file: !30, line: 471, baseType: !1651, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !72, file: !30, line: 473, baseType: !62, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !72, file: !30, line: 475, baseType: !62, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !72, file: !30, line: 480, baseType: !354, size: 192, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !72, file: !30, line: 484, baseType: !1735, size: 576, offset: 1216)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1735, file: !30, line: 362, baseType: !83, size: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1735, file: !30, line: 363, baseType: !83, size: 128, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1735, file: !30, line: 364, baseType: !83, size: 128, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1735, file: !30, line: 365, baseType: !83, size: 128, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1735, file: !30, line: 366, baseType: !981, size: 8, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1735, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !72, file: !30, line: 485, baseType: !1744, size: 2304, offset: 1792)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1841, !1845}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1744, file: !37, line: 566, baseType: !1695, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1744, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1744, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1744, file: !37, line: 569, baseType: !981, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1744, file: !37, line: 570, baseType: !981, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1744, file: !37, line: 571, baseType: !981, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1744, file: !37, line: 572, baseType: !981, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1744, file: !37, line: 573, baseType: !981, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1744, file: !37, line: 574, baseType: !981, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1744, file: !37, line: 575, baseType: !981, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1744, file: !37, line: 576, baseType: !981, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1744, file: !37, line: 577, baseType: !409, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !37, line: 578, baseType: !96, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1744, file: !37, line: 580, baseType: !83, size: 128, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1744, file: !37, line: 581, baseType: !715, size: 192, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1744, file: !37, line: 582, baseType: !1762, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1764, line: 43, size: 1472, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1773, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1763, file: !1764, line: 44, baseType: !79, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1763, file: !1764, line: 45, baseType: !122, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1763, file: !1764, line: 46, baseType: !83, size: 128, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !1764, line: 47, baseType: !96, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1763, file: !1764, line: 48, baseType: !1771, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1763, file: !1764, line: 49, baseType: !1774, size: 320, offset: 320)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1775, line: 11, size: 320, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !{!1777, !1778, !1779, !1784}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1774, file: !1775, line: 16, baseType: !679, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1774, file: !1775, line: 17, baseType: !63, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1774, file: !1775, line: 18, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 19, baseType: !409, size: 32, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1763, file: !1764, line: 50, baseType: !63, size: 64, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1763, file: !1764, line: 51, baseType: !485, size: 64, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1763, file: !1764, line: 52, baseType: !485, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1763, file: !1764, line: 53, baseType: !485, size: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1763, file: !1764, line: 54, baseType: !485, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1763, file: !1764, line: 55, baseType: !485, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1763, file: !1764, line: 56, baseType: !63, size: 64, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1763, file: !1764, line: 57, baseType: !63, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1763, file: !1764, line: 58, baseType: !63, size: 64, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1763, file: !1764, line: 59, baseType: !63, size: 64, offset: 1216)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1763, file: !1764, line: 60, baseType: !63, size: 64, offset: 1280)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1763, file: !1764, line: 61, baseType: !71, size: 64, offset: 1344)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1763, file: !1764, line: 62, baseType: !981, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1763, file: !1764, line: 63, baseType: !981, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1744, file: !37, line: 583, baseType: !981, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1744, file: !37, line: 584, baseType: !981, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1744, file: !37, line: 585, baseType: !981, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1744, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1744, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1744, file: !37, line: 592, baseType: !477, size: 512, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1744, file: !37, line: 593, baseType: !255, size: 64, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1744, file: !37, line: 594, baseType: !1320, size: 256, offset: 1152)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1744, file: !37, line: 595, baseType: !686, size: 128, offset: 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1744, file: !37, line: 596, baseType: !1771, size: 64, offset: 1536)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1744, file: !37, line: 597, baseType: !277, size: 32, offset: 1600)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1744, file: !37, line: 598, baseType: !277, size: 32, offset: 1632)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1744, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1744, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1744, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1744, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1744, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1744, file: !37, line: 604, baseType: !981, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1744, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1744, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1744, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1744, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1744, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1744, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1744, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1744, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1744, file: !37, line: 613, baseType: !122, size: 32, offset: 1792)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1744, file: !37, line: 614, baseType: !122, size: 32, offset: 1824)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1744, file: !37, line: 615, baseType: !255, size: 64, offset: 1856)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1744, file: !37, line: 616, baseType: !255, size: 64, offset: 1920)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1744, file: !37, line: 617, baseType: !255, size: 64, offset: 1984)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1744, file: !37, line: 618, baseType: !255, size: 64, offset: 2048)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1744, file: !37, line: 620, baseType: !1832, size: 64, offset: 2112)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !37, line: 537, baseType: !96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1833, file: !37, line: 538, baseType: !7, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1833, file: !37, line: 540, baseType: !83, size: 128, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1833, file: !37, line: 543, baseType: !1839, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1744, file: !37, line: 621, baseType: !1842, size: 64, offset: 2176)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !71, !639}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1744, file: !37, line: 622, baseType: !1846, size: 64, offset: 2240)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !72, file: !30, line: 486, baseType: !1849, size: 64, offset: 4096)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1858, !1859, !1860}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1850, file: !37, line: 643, baseType: !1608, size: 1472)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1850, file: !37, line: 644, baseType: !1611, size: 64, offset: 1472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1850, file: !37, line: 645, baseType: !1855, size: 64, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !71, !981}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1850, file: !37, line: 646, baseType: !1611, size: 64, offset: 1600)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1850, file: !37, line: 647, baseType: !1602, size: 64, offset: 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1850, file: !37, line: 648, baseType: !1602, size: 64, offset: 1728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !72, file: !30, line: 493, baseType: !1862, size: 64, offset: 4160)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !72, file: !30, line: 499, baseType: !83, size: 128, offset: 4224)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !72, file: !30, line: 502, baseType: !1866, size: 64, offset: 4352)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !72, file: !30, line: 504, baseType: !1870, size: 64, offset: 4416)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !72, file: !30, line: 505, baseType: !255, size: 64, offset: 4480)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !72, file: !30, line: 510, baseType: !255, size: 64, offset: 4544)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !72, file: !30, line: 511, baseType: !1874, size: 64, offset: 4608)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !72, file: !30, line: 513, baseType: !1878, size: 64, offset: 4672)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1879, file: !30, line: 293, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1879, file: !30, line: 294, baseType: !63, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !72, file: !30, line: 515, baseType: !83, size: 128, offset: 4736)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !72, file: !30, line: 526, baseType: !1885, offset: 4864)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1886, line: 5, elements: !110)
!1886 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !72, file: !30, line: 528, baseType: !1888, size: 64, offset: 4864)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1890, line: 14, flags: DIFlagFwdDecl)
!1890 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !72, file: !30, line: 529, baseType: !1892, size: 64, offset: 4928)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1894, line: 17, size: 192, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897, !1980}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1893, file: !1894, line: 18, baseType: !1892, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1893, file: !1894, line: 19, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1894, line: 110, size: 1152, elements: !1901)
!1901 = !{!1902, !1906, !1910, !1916, !1922, !1926, !1930, !1935, !1939, !1940, !1944, !1948, !1952, !1963, !1964, !1965, !1966, !1976}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1900, file: !1894, line: 111, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!1892, !1892}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1900, file: !1894, line: 112, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1892}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1900, file: !1894, line: 113, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!981, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1900, file: !1894, line: 114, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1112, !1914, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1900, file: !1894, line: 116, baseType: !1923, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!981, !1914, !79}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1900, file: !1894, line: 118, baseType: !1927, size: 64, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!122, !1914, !79, !7, !62, !184}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1900, file: !1894, line: 123, baseType: !1931, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!122, !1914, !79, !1934, !184}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1900, file: !1894, line: 126, baseType: !1936, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!79, !1914}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1900, file: !1894, line: 127, baseType: !1936, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1900, file: !1894, line: 128, baseType: !1941, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1892, !1914}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1900, file: !1894, line: 130, baseType: !1945, size: 64, offset: 640)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1892, !1914, !1892}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1900, file: !1894, line: 133, baseType: !1949, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1892, !1914, !79}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1900, file: !1894, line: 135, baseType: !1953, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!122, !1914, !79, !79, !7, !7, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1894, line: 43, size: 640, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1957, file: !1894, line: 44, baseType: !1892, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1957, file: !1894, line: 45, baseType: !7, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1957, file: !1894, line: 46, baseType: !1962, size: 512, offset: 128)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 512, elements: !515)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1900, file: !1894, line: 140, baseType: !1945, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1900, file: !1894, line: 143, baseType: !1941, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1900, file: !1894, line: 145, baseType: !1903, size: 64, offset: 960)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1900, file: !1894, line: 146, baseType: !1967, size: 64, offset: 1024)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!122, !1914, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1894, line: 29, size: 128, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1971, file: !1894, line: 30, baseType: !7, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1971, file: !1894, line: 31, baseType: !7, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1971, file: !1894, line: 32, baseType: !1914, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1900, file: !1894, line: 148, baseType: !1977, size: 64, offset: 1088)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!122, !1914, !71}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1893, file: !1894, line: 20, baseType: !71, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !72, file: !30, line: 534, baseType: !1982, size: 32, offset: 4992)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !61, line: 16, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !61, line: 13, baseType: !409)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !72, file: !30, line: 535, baseType: !409, size: 32, offset: 5024)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !72, file: !30, line: 537, baseType: !96, offset: 5056)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !72, file: !30, line: 538, baseType: !83, size: 128, offset: 5056)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !72, file: !30, line: 540, baseType: !1988, size: 64, offset: 5184)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1990, line: 54, size: 960, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !1998, !2002, !2006, !2007, !2008, !2009, !2013, !2017, !2018}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1989, file: !1990, line: 55, baseType: !79, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1989, file: !1990, line: 56, baseType: !57, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1989, file: !1990, line: 58, baseType: !190, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1989, file: !1990, line: 59, baseType: !190, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1989, file: !1990, line: 60, baseType: !89, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1989, file: !1990, line: 62, baseType: !1593, size: 64, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1989, file: !1990, line: 63, baseType: !1999, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!138, !71, !1600}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1989, file: !1990, line: 65, baseType: !2003, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !1988}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1989, file: !1990, line: 66, baseType: !1602, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1989, file: !1990, line: 68, baseType: !1611, size: 64, offset: 576)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1989, file: !1990, line: 70, baseType: !1369, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1989, file: !1990, line: 71, baseType: !2010, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1112, !71}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1989, file: !1990, line: 73, baseType: !2014, size: 64, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !71, !1404, !1410}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1989, file: !1990, line: 75, baseType: !1606, size: 64, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1989, file: !1990, line: 77, baseType: !1724, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !72, file: !30, line: 541, baseType: !190, size: 64, offset: 5248)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !72, file: !30, line: 543, baseType: !1602, size: 64, offset: 5312)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !72, file: !30, line: 544, baseType: !2022, size: 64, offset: 5376)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !72, file: !30, line: 545, baseType: !2025, size: 64, offset: 5440)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !72, file: !30, line: 547, baseType: !981, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !72, file: !30, line: 548, baseType: !981, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !72, file: !30, line: 549, baseType: !981, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !72, file: !30, line: 550, baseType: !981, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !68, file: !3, line: 62, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2034, line: 17, flags: DIFlagFwdDecl)
!2034 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !68, file: !3, line: 63, baseType: !62, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !68, file: !3, line: 64, baseType: !2037, size: 896, offset: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !2038, line: 39, size: 896, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041, !2046, !2050, !2054, !2058, !2062, !2063, !2064, !2065, !2066}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2037, file: !2038, line: 40, baseType: !79, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2037, file: !2038, line: 41, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!122, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2037, file: !2038, line: 42, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2045}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !2037, file: !2038, line: 43, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!122, !2045, !122}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !2037, file: !2038, line: 44, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!122, !2045, !610}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2037, file: !2038, line: 45, baseType: !2059, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!122, !2045, !62, !184, !981}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2037, file: !2038, line: 46, baseType: !63, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !2037, file: !2038, line: 47, baseType: !179, size: 16, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2037, file: !2038, line: 50, baseType: !83, size: 128, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2037, file: !2038, line: 51, baseType: !1571, size: 32, offset: 640)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !2037, file: !2038, line: 52, baseType: !715, size: 192, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rng_op_done", scope: !68, file: !3, line: 65, baseType: !715, size: 192, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "err_reg", scope: !68, file: !3, line: 70, baseType: !409, size: 32, offset: 1280)
!2069 = !{!2070, !2123, !2128, !2130, !2137, !2142, !2144, !2146, !0, !2151, !2153, !2158, !2218, !2221}
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "__param_self_test", scope: !2, file: !3, line: 58, type: !2072, isLocal: true, isDefinition: true, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2074, line: 69, size: 320, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2077, !2078, !2094, !2096, !2100, !2101}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2073, file: !2074, line: 70, baseType: !79, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2073, file: !2074, line: 71, baseType: !57, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2073, file: !2074, line: 72, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2074, line: 47, size: 256, elements: !2082)
!2082 = !{!2083, !2084, !2089, !2093}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !2074, line: 49, baseType: !7, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2081, file: !2074, line: 51, baseType: !2085, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!122, !79, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2081, file: !2074, line: 53, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!122, !138, !2088}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2081, file: !2074, line: 55, baseType: !1393, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2073, file: !2074, line: 73, baseType: !2095, size: 16, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2073, file: !2074, line: 74, baseType: !2097, size: 8, offset: 208)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !256, line: 16, baseType: !2098)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !258, line: 20, baseType: !2099)
!2099 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2074, line: 75, baseType: !546, size: 8, offset: 216)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2074, line: 76, baseType: !2102, size: 64, offset: 256)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2074, line: 76, size: 64, elements: !2103)
!2103 = !{!2104, !2105, !2112}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2102, file: !2074, line: 77, baseType: !62, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2102, file: !2074, line: 78, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2074, line: 86, size: 128, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2108, file: !2074, line: 87, baseType: !7, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2108, file: !2074, line: 88, baseType: !138, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2102, file: !2074, line: 79, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2074, line: 92, size: 256, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2121, !2122}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2115, file: !2074, line: 94, baseType: !7, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2115, file: !2074, line: 95, baseType: !7, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2115, file: !2074, line: 96, baseType: !2120, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2115, file: !2074, line: 97, baseType: !2079, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2115, file: !2074, line: 98, baseType: !62, size: 64, offset: 192)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_self_testtype159", scope: !2, file: !3, line: 58, type: !2125, isLocal: true, isDefinition: true, align: 8)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 264, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 33)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_imx_rngc_driver_init163", scope: !2, file: !3, line: 367, type: !62, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "__exitcall_imx_rngc_driver_exit", scope: !2, file: !3, line: 367, type: !2132, isLocal: true, isDefinition: true)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2133, line: 117, baseType: !2134)
!2133 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null}
!2137 = !DIGlobalVariableExpression(var: !2138, expr: !DIExpression())
!2138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author164", scope: !2, file: !3, line: 369, type: !2139, isLocal: true, isDefinition: true, align: 8)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 368, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 46)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description165", scope: !2, file: !3, line: 370, type: !2139, isLocal: true, isDefinition: true, align: 8)
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file166", scope: !2, file: !3, line: 371, type: !2139, isLocal: true, isDefinition: true, align: 8)
!2146 = !DIGlobalVariableExpression(var: !2147, expr: !DIExpression())
!2147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license167", scope: !2, file: !3, line: 371, type: !2148, isLocal: true, isDefinition: true, align: 8)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 168, elements: !2149)
!2149 = !{!2150}
!2150 = !DISubrange(count: 21)
!2151 = !DIGlobalVariableExpression(var: !2152, expr: !DIExpression())
!2152 = distinct !DIGlobalVariable(name: "self_test", scope: !2, file: !3, line: 57, type: !981, isLocal: true, isDefinition: true)
!2153 = !DIGlobalVariableExpression(var: !2154, expr: !DIExpression())
!2154 = distinct !DIGlobalVariable(name: "__key", scope: !2155, file: !716, line: 88, type: !1727, isLocal: true, isDefinition: true)
!2155 = distinct !DISubprogram(name: "__init_completion", scope: !716, file: !716, line: 85, type: !2156, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !714}
!2158 = !DIGlobalVariableExpression(var: !2159, expr: !DIExpression())
!2159 = distinct !DIGlobalVariable(name: "imx_rngc_driver", scope: !2, file: !3, line: 358, type: !2160, isLocal: true, isDefinition: true)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2161, line: 200, size: 1600, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163, !2205, !2206, !2210, !2214, !2215, !2216, !2217}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2160, file: !2161, line: 201, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!122, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2161, line: 22, size: 6208, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2191, !2199, !2200, !2203}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !2161, line: 23, baseType: !79, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2168, file: !2161, line: 24, baseType: !122, size: 32, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2168, file: !2161, line: 25, baseType: !981, size: 8, offset: 96)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2168, file: !2161, line: 26, baseType: !72, size: 5568, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2168, file: !2161, line: 27, baseType: !255, size: 64, offset: 5696)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2168, file: !2161, line: 28, baseType: !1879, size: 128, offset: 5760)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2168, file: !2161, line: 29, baseType: !409, size: 32, offset: 5888)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2168, file: !2161, line: 30, baseType: !2178, size: 64, offset: 5952)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2180, line: 20, size: 512, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2179, file: !2180, line: 21, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !61, line: 158, baseType: !1110)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2179, file: !2180, line: 22, baseType: !2183, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2179, file: !2180, line: 23, baseType: !79, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2179, file: !2180, line: 24, baseType: !63, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2179, file: !2180, line: 25, baseType: !63, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2179, file: !2180, line: 26, baseType: !2178, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2179, file: !2180, line: 26, baseType: !2178, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2179, file: !2180, line: 26, baseType: !2178, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2168, file: !2161, line: 32, baseType: !2192, size: 64, offset: 6016)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1664, line: 586, size: 256, elements: !2195)
!2195 = !{!2196, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2194, file: !1664, line: 587, baseType: !2197, size: 160)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !1186)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2194, file: !1664, line: 588, baseType: !1684, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2168, file: !2161, line: 33, baseType: !138, size: 64, offset: 6080)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2168, file: !2161, line: 36, baseType: !2201, size: 64, offset: 6144)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2161, line: 18, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2168, file: !2161, line: 39, baseType: !2204, offset: 6208)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1886, line: 8, elements: !110)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2160, file: !2161, line: 202, baseType: !2164, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2160, file: !2161, line: 203, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2167}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2160, file: !2161, line: 204, baseType: !2211, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!122, !2167, !1695}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2160, file: !2161, line: 205, baseType: !2164, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2160, file: !2161, line: 206, baseType: !1652, size: 1152, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2160, file: !2161, line: 207, baseType: !2192, size: 64, offset: 1472)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2160, file: !2161, line: 208, baseType: !981, size: 8, offset: 1536)
!2218 = !DIGlobalVariableExpression(var: !2219, expr: !DIExpression())
!2219 = distinct !DIGlobalVariable(name: "imx_rngc_dt_ids", scope: !2, file: !3, line: 352, type: !2220, isLocal: true, isDefinition: true)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1662, size: 3200, elements: !953)
!2221 = !DIGlobalVariableExpression(var: !2222, expr: !DIExpression())
!2222 = distinct !DIGlobalVariable(name: "imx_rngc_pm_ops", scope: !2, file: !3, line: 350, type: !1607, isLocal: true, isDefinition: true)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 152, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 19)
!2226 = !{i32 7, !"Dwarf Version", i32 4}
!2227 = !{i32 2, !"Debug Info Version", i32 3}
!2228 = !{i32 1, !"wchar_size", i32 2}
!2229 = !{i32 1, !"Code Model", i32 2}
!2230 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2231 = distinct !DISubprogram(name: "imx_rngc_remove", scope: !3, file: !3, line: 321, type: !2165, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2232 = !DILocalVariable(name: "pdev", arg: 1, scope: !2231, file: !3, line: 321, type: !2167)
!2233 = !DILocation(line: 321, column: 59, scope: !2231)
!2234 = !DILocalVariable(name: "rngc", scope: !2231, file: !3, line: 323, type: !67)
!2235 = !DILocation(line: 323, column: 19, scope: !2231)
!2236 = !DILocation(line: 323, column: 47, scope: !2231)
!2237 = !DILocation(line: 323, column: 26, scope: !2231)
!2238 = !DILocation(line: 325, column: 20, scope: !2231)
!2239 = !DILocation(line: 325, column: 26, scope: !2231)
!2240 = !DILocation(line: 325, column: 2, scope: !2231)
!2241 = !DILocation(line: 327, column: 24, scope: !2231)
!2242 = !DILocation(line: 327, column: 30, scope: !2231)
!2243 = !DILocation(line: 327, column: 2, scope: !2231)
!2244 = !DILocation(line: 329, column: 2, scope: !2231)
!2245 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2161, file: !2161, line: 231, type: !2246, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!62, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2250 = !DILocalVariable(name: "pdev", arg: 1, scope: !2245, file: !2161, line: 231, type: !2248)
!2251 = !DILocation(line: 231, column: 72, scope: !2245)
!2252 = !DILocation(line: 233, column: 26, scope: !2245)
!2253 = !DILocation(line: 233, column: 32, scope: !2245)
!2254 = !DILocation(line: 233, column: 9, scope: !2245)
!2255 = !DILocation(line: 233, column: 2, scope: !2245)
!2256 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !2034, file: !2034, line: 921, type: !2257, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2032}
!2259 = !DILocalVariable(name: "clk", arg: 1, scope: !2256, file: !2034, line: 921, type: !2032)
!2260 = !DILocation(line: 921, column: 54, scope: !2256)
!2261 = !DILocation(line: 923, column: 14, scope: !2256)
!2262 = !DILocation(line: 923, column: 2, scope: !2256)
!2263 = !DILocation(line: 924, column: 16, scope: !2256)
!2264 = !DILocation(line: 924, column: 2, scope: !2256)
!2265 = !DILocation(line: 925, column: 1, scope: !2256)
!2266 = distinct !DISubprogram(name: "imx_rngc_driver_init", scope: !3, file: !3, line: 367, type: !2267, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!122}
!2269 = !DILocation(line: 367, column: 1, scope: !2266)
!2270 = distinct !DISubprogram(name: "imx_rngc_driver_exit", scope: !3, file: !3, line: 367, type: !2135, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2271 = !DILocation(line: 367, column: 1, scope: !2270)
!2272 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2273, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!62, !1920}
!2275 = !DILocalVariable(name: "dev", arg: 1, scope: !2272, file: !30, line: 655, type: !1920)
!2276 = !DILocation(line: 655, column: 58, scope: !2272)
!2277 = !DILocation(line: 657, column: 9, scope: !2272)
!2278 = !DILocation(line: 657, column: 14, scope: !2272)
!2279 = !DILocation(line: 657, column: 2, scope: !2272)
!2280 = distinct !DISubprogram(name: "imx_rngc_probe", scope: !3, file: !3, line: 232, type: !2165, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2281 = !DILocalVariable(name: "pdev", arg: 1, scope: !2280, file: !3, line: 232, type: !2167)
!2282 = !DILocation(line: 232, column: 51, scope: !2280)
!2283 = !DILocalVariable(name: "rngc", scope: !2280, file: !3, line: 234, type: !67)
!2284 = !DILocation(line: 234, column: 19, scope: !2280)
!2285 = !DILocalVariable(name: "ret", scope: !2280, file: !3, line: 235, type: !122)
!2286 = !DILocation(line: 235, column: 6, scope: !2280)
!2287 = !DILocalVariable(name: "irq", scope: !2280, file: !3, line: 236, type: !122)
!2288 = !DILocation(line: 236, column: 6, scope: !2280)
!2289 = !DILocalVariable(name: "ver_id", scope: !2280, file: !3, line: 237, type: !409)
!2290 = !DILocation(line: 237, column: 6, scope: !2280)
!2291 = !DILocalVariable(name: "rng_type", scope: !2280, file: !3, line: 238, type: !546)
!2292 = !DILocation(line: 238, column: 6, scope: !2280)
!2293 = !DILocation(line: 240, column: 23, scope: !2280)
!2294 = !DILocation(line: 240, column: 29, scope: !2280)
!2295 = !DILocation(line: 240, column: 9, scope: !2280)
!2296 = !DILocation(line: 240, column: 7, scope: !2280)
!2297 = !DILocation(line: 241, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 241, column: 6)
!2299 = !DILocation(line: 241, column: 6, scope: !2280)
!2300 = !DILocation(line: 242, column: 3, scope: !2298)
!2301 = !DILocation(line: 244, column: 46, scope: !2280)
!2302 = !DILocation(line: 244, column: 15, scope: !2280)
!2303 = !DILocation(line: 244, column: 2, scope: !2280)
!2304 = !DILocation(line: 244, column: 8, scope: !2280)
!2305 = !DILocation(line: 244, column: 13, scope: !2280)
!2306 = !DILocation(line: 245, column: 13, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 245, column: 6)
!2308 = !DILocation(line: 245, column: 19, scope: !2307)
!2309 = !DILocation(line: 245, column: 6, scope: !2307)
!2310 = !DILocation(line: 245, column: 6, scope: !2280)
!2311 = !DILocation(line: 246, column: 18, scope: !2307)
!2312 = !DILocation(line: 246, column: 24, scope: !2307)
!2313 = !DILocation(line: 246, column: 10, scope: !2307)
!2314 = !DILocation(line: 246, column: 3, scope: !2307)
!2315 = !DILocation(line: 248, column: 28, scope: !2280)
!2316 = !DILocation(line: 248, column: 34, scope: !2280)
!2317 = !DILocation(line: 248, column: 14, scope: !2280)
!2318 = !DILocation(line: 248, column: 2, scope: !2280)
!2319 = !DILocation(line: 248, column: 8, scope: !2280)
!2320 = !DILocation(line: 248, column: 12, scope: !2280)
!2321 = !DILocation(line: 249, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 249, column: 6)
!2323 = !DILocation(line: 249, column: 19, scope: !2322)
!2324 = !DILocation(line: 249, column: 6, scope: !2322)
!2325 = !DILocation(line: 249, column: 6, scope: !2280)
!2326 = !DILocation(line: 250, column: 3, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 249, column: 25)
!2328 = !DILocation(line: 251, column: 18, scope: !2327)
!2329 = !DILocation(line: 251, column: 24, scope: !2327)
!2330 = !DILocation(line: 251, column: 10, scope: !2327)
!2331 = !DILocation(line: 251, column: 3, scope: !2327)
!2332 = !DILocation(line: 254, column: 25, scope: !2280)
!2333 = !DILocation(line: 254, column: 8, scope: !2280)
!2334 = !DILocation(line: 254, column: 6, scope: !2280)
!2335 = !DILocation(line: 255, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 255, column: 6)
!2337 = !DILocation(line: 255, column: 10, scope: !2336)
!2338 = !DILocation(line: 255, column: 6, scope: !2280)
!2339 = !DILocation(line: 256, column: 3, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 255, column: 16)
!2341 = !DILocation(line: 257, column: 10, scope: !2340)
!2342 = !DILocation(line: 257, column: 3, scope: !2340)
!2343 = !DILocation(line: 260, column: 27, scope: !2280)
!2344 = !DILocation(line: 260, column: 33, scope: !2280)
!2345 = !DILocation(line: 260, column: 8, scope: !2280)
!2346 = !DILocation(line: 260, column: 6, scope: !2280)
!2347 = !DILocation(line: 261, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 261, column: 6)
!2349 = !DILocation(line: 261, column: 6, scope: !2280)
!2350 = !DILocation(line: 262, column: 10, scope: !2348)
!2351 = !DILocation(line: 262, column: 3, scope: !2348)
!2352 = !DILocation(line: 264, column: 17, scope: !2280)
!2353 = !DILocation(line: 264, column: 23, scope: !2280)
!2354 = !DILocation(line: 264, column: 28, scope: !2280)
!2355 = !DILocation(line: 264, column: 11, scope: !2280)
!2356 = !DILocation(line: 264, column: 9, scope: !2280)
!2357 = !DILocation(line: 265, column: 13, scope: !2280)
!2358 = !DILocation(line: 265, column: 20, scope: !2280)
!2359 = !DILocation(line: 265, column: 11, scope: !2280)
!2360 = !DILocation(line: 270, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 270, column: 6)
!2362 = !DILocation(line: 270, column: 15, scope: !2361)
!2363 = !DILocation(line: 270, column: 33, scope: !2361)
!2364 = !DILocation(line: 270, column: 36, scope: !2361)
!2365 = !DILocation(line: 270, column: 45, scope: !2361)
!2366 = !DILocation(line: 270, column: 6, scope: !2280)
!2367 = !DILocation(line: 271, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 270, column: 64)
!2369 = !DILocation(line: 272, column: 3, scope: !2368)
!2370 = !DILocation(line: 275, column: 26, scope: !2280)
!2371 = !DILocation(line: 275, column: 32, scope: !2280)
!2372 = !DILocation(line: 276, column: 4, scope: !2280)
!2373 = !DILocation(line: 276, column: 26, scope: !2280)
!2374 = !DILocation(line: 276, column: 32, scope: !2280)
!2375 = !DILocation(line: 276, column: 46, scope: !2280)
!2376 = !DILocation(line: 276, column: 38, scope: !2280)
!2377 = !DILocation(line: 275, column: 8, scope: !2280)
!2378 = !DILocation(line: 275, column: 6, scope: !2280)
!2379 = !DILocation(line: 277, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 277, column: 6)
!2381 = !DILocation(line: 277, column: 6, scope: !2280)
!2382 = !DILocation(line: 278, column: 3, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 277, column: 11)
!2384 = !DILocation(line: 279, column: 3, scope: !2383)
!2385 = !DILocation(line: 282, column: 2, scope: !2280)
!2386 = !DILocation(line: 284, column: 19, scope: !2280)
!2387 = !DILocation(line: 284, column: 25, scope: !2280)
!2388 = !DILocation(line: 284, column: 2, scope: !2280)
!2389 = !DILocation(line: 284, column: 8, scope: !2280)
!2390 = !DILocation(line: 284, column: 12, scope: !2280)
!2391 = !DILocation(line: 284, column: 17, scope: !2280)
!2392 = !DILocation(line: 285, column: 2, scope: !2280)
!2393 = !DILocation(line: 285, column: 8, scope: !2280)
!2394 = !DILocation(line: 285, column: 12, scope: !2280)
!2395 = !DILocation(line: 285, column: 17, scope: !2280)
!2396 = !DILocation(line: 286, column: 2, scope: !2280)
!2397 = !DILocation(line: 286, column: 8, scope: !2280)
!2398 = !DILocation(line: 286, column: 12, scope: !2280)
!2399 = !DILocation(line: 286, column: 17, scope: !2280)
!2400 = !DILocation(line: 287, column: 2, scope: !2280)
!2401 = !DILocation(line: 287, column: 8, scope: !2280)
!2402 = !DILocation(line: 287, column: 12, scope: !2280)
!2403 = !DILocation(line: 287, column: 20, scope: !2280)
!2404 = !DILocation(line: 288, column: 2, scope: !2280)
!2405 = !DILocation(line: 288, column: 8, scope: !2280)
!2406 = !DILocation(line: 288, column: 12, scope: !2280)
!2407 = !DILocation(line: 288, column: 20, scope: !2280)
!2408 = !DILocation(line: 290, column: 15, scope: !2280)
!2409 = !DILocation(line: 290, column: 21, scope: !2280)
!2410 = !DILocation(line: 290, column: 2, scope: !2280)
!2411 = !DILocation(line: 290, column: 8, scope: !2280)
!2412 = !DILocation(line: 290, column: 12, scope: !2280)
!2413 = !DILocation(line: 291, column: 23, scope: !2280)
!2414 = !DILocation(line: 291, column: 29, scope: !2280)
!2415 = !DILocation(line: 291, column: 2, scope: !2280)
!2416 = !DILocation(line: 293, column: 26, scope: !2280)
!2417 = !DILocation(line: 293, column: 2, scope: !2280)
!2418 = !DILocation(line: 295, column: 6, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 295, column: 6)
!2420 = !DILocation(line: 295, column: 6, scope: !2280)
!2421 = !DILocation(line: 296, column: 28, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 295, column: 17)
!2423 = !DILocation(line: 296, column: 9, scope: !2422)
!2424 = !DILocation(line: 296, column: 7, scope: !2422)
!2425 = !DILocation(line: 297, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 297, column: 7)
!2427 = !DILocation(line: 297, column: 7, scope: !2422)
!2428 = !DILocation(line: 298, column: 4, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 297, column: 12)
!2430 = !DILocation(line: 299, column: 4, scope: !2429)
!2431 = !DILocation(line: 301, column: 2, scope: !2422)
!2432 = !DILocation(line: 303, column: 24, scope: !2280)
!2433 = !DILocation(line: 303, column: 30, scope: !2280)
!2434 = !DILocation(line: 303, column: 8, scope: !2280)
!2435 = !DILocation(line: 303, column: 6, scope: !2280)
!2436 = !DILocation(line: 304, column: 6, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 304, column: 6)
!2438 = !DILocation(line: 304, column: 6, scope: !2280)
!2439 = !DILocation(line: 305, column: 3, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 304, column: 11)
!2441 = !DILocation(line: 306, column: 3, scope: !2440)
!2442 = !DILocation(line: 309, column: 2, scope: !2280)
!2443 = !DILocation(line: 313, column: 2, scope: !2280)
!2444 = !DILabel(scope: !2280, name: "err", file: !3, line: 315)
!2445 = !DILocation(line: 315, column: 1, scope: !2280)
!2446 = !DILocation(line: 316, column: 24, scope: !2280)
!2447 = !DILocation(line: 316, column: 30, scope: !2280)
!2448 = !DILocation(line: 316, column: 2, scope: !2280)
!2449 = !DILocation(line: 318, column: 9, scope: !2280)
!2450 = !DILocation(line: 318, column: 2, scope: !2280)
!2451 = !DILocation(line: 319, column: 1, scope: !2280)
!2452 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2453, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!62, !71, !184, !60}
!2455 = !DILocalVariable(name: "dev", arg: 1, scope: !2452, file: !30, line: 215, type: !71)
!2456 = !DILocation(line: 215, column: 49, scope: !2452)
!2457 = !DILocalVariable(name: "size", arg: 2, scope: !2452, file: !30, line: 215, type: !184)
!2458 = !DILocation(line: 215, column: 61, scope: !2452)
!2459 = !DILocalVariable(name: "gfp", arg: 3, scope: !2452, file: !30, line: 215, type: !60)
!2460 = !DILocation(line: 215, column: 73, scope: !2452)
!2461 = !DILocation(line: 217, column: 22, scope: !2452)
!2462 = !DILocation(line: 217, column: 27, scope: !2452)
!2463 = !DILocation(line: 217, column: 33, scope: !2452)
!2464 = !DILocation(line: 217, column: 37, scope: !2452)
!2465 = !DILocation(line: 217, column: 9, scope: !2452)
!2466 = !DILocation(line: 217, column: 2, scope: !2452)
!2467 = distinct !DISubprogram(name: "IS_ERR", scope: !2468, file: !2468, line: 34, type: !2469, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2468 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!981, !1112}
!2471 = !DILocalVariable(name: "ptr", arg: 1, scope: !2467, file: !2468, line: 34, type: !1112)
!2472 = !DILocation(line: 34, column: 60, scope: !2467)
!2473 = !DILocation(line: 36, column: 9, scope: !2467)
!2474 = !DILocation(line: 36, column: 2, scope: !2467)
!2475 = distinct !DISubprogram(name: "PTR_ERR", scope: !2468, file: !2468, line: 29, type: !2476, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!64, !1112}
!2478 = !DILocalVariable(name: "ptr", arg: 1, scope: !2475, file: !2468, line: 29, type: !1112)
!2479 = !DILocation(line: 29, column: 61, scope: !2475)
!2480 = !DILocation(line: 31, column: 16, scope: !2475)
!2481 = !DILocation(line: 31, column: 9, scope: !2475)
!2482 = !DILocation(line: 31, column: 2, scope: !2475)
!2483 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !2034, file: !2034, line: 906, type: !2484, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!122, !2032}
!2486 = !DILocalVariable(name: "clk", arg: 1, scope: !2483, file: !2034, line: 906, type: !2032)
!2487 = !DILocation(line: 906, column: 50, scope: !2483)
!2488 = !DILocalVariable(name: "ret", scope: !2483, file: !2034, line: 908, type: !122)
!2489 = !DILocation(line: 908, column: 6, scope: !2483)
!2490 = !DILocation(line: 910, column: 20, scope: !2483)
!2491 = !DILocation(line: 910, column: 8, scope: !2483)
!2492 = !DILocation(line: 910, column: 6, scope: !2483)
!2493 = !DILocation(line: 911, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2483, file: !2034, line: 911, column: 6)
!2495 = !DILocation(line: 911, column: 6, scope: !2483)
!2496 = !DILocation(line: 912, column: 10, scope: !2494)
!2497 = !DILocation(line: 912, column: 3, scope: !2494)
!2498 = !DILocation(line: 913, column: 19, scope: !2483)
!2499 = !DILocation(line: 913, column: 8, scope: !2483)
!2500 = !DILocation(line: 913, column: 6, scope: !2483)
!2501 = !DILocation(line: 914, column: 6, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2483, file: !2034, line: 914, column: 6)
!2503 = !DILocation(line: 914, column: 6, scope: !2483)
!2504 = !DILocation(line: 915, column: 17, scope: !2502)
!2505 = !DILocation(line: 915, column: 3, scope: !2502)
!2506 = !DILocation(line: 917, column: 9, scope: !2483)
!2507 = !DILocation(line: 917, column: 2, scope: !2483)
!2508 = !DILocation(line: 918, column: 1, scope: !2483)
!2509 = distinct !DISubprogram(name: "readl", scope: !2510, file: !2510, line: 59, type: !2511, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2510 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!7, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2516 = !DILocalVariable(name: "addr", arg: 1, scope: !2509, file: !2510, line: 59, type: !2513)
!2517 = !DILocation(line: 59, column: 1, scope: !2509)
!2518 = !DILocalVariable(name: "ret", scope: !2509, file: !2510, line: 59, type: !7)
!2519 = !{i32 -2143470431}
!2520 = distinct !DISubprogram(name: "devm_request_irq", scope: !2521, file: !2521, line: 203, type: !2522, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2521 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!122, !71, !7, !2524, !63, !79, !62}
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !2521, line: 92, baseType: !2525)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2528, !122, !62}
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !51, line: 17, baseType: !50)
!2529 = !DILocalVariable(name: "dev", arg: 1, scope: !2520, file: !2521, line: 203, type: !71)
!2530 = !DILocation(line: 203, column: 33, scope: !2520)
!2531 = !DILocalVariable(name: "irq", arg: 2, scope: !2520, file: !2521, line: 203, type: !7)
!2532 = !DILocation(line: 203, column: 51, scope: !2520)
!2533 = !DILocalVariable(name: "handler", arg: 3, scope: !2520, file: !2521, line: 203, type: !2524)
!2534 = !DILocation(line: 203, column: 70, scope: !2520)
!2535 = !DILocalVariable(name: "irqflags", arg: 4, scope: !2520, file: !2521, line: 204, type: !63)
!2536 = !DILocation(line: 204, column: 18, scope: !2520)
!2537 = !DILocalVariable(name: "devname", arg: 5, scope: !2520, file: !2521, line: 204, type: !79)
!2538 = !DILocation(line: 204, column: 40, scope: !2520)
!2539 = !DILocalVariable(name: "dev_id", arg: 6, scope: !2520, file: !2521, line: 204, type: !62)
!2540 = !DILocation(line: 204, column: 55, scope: !2520)
!2541 = !DILocation(line: 206, column: 35, scope: !2520)
!2542 = !DILocation(line: 206, column: 40, scope: !2520)
!2543 = !DILocation(line: 206, column: 45, scope: !2520)
!2544 = !DILocation(line: 206, column: 60, scope: !2520)
!2545 = !DILocation(line: 207, column: 7, scope: !2520)
!2546 = !DILocation(line: 207, column: 16, scope: !2520)
!2547 = !DILocation(line: 206, column: 9, scope: !2520)
!2548 = !DILocation(line: 206, column: 2, scope: !2520)
!2549 = distinct !DISubprogram(name: "imx_rngc_irq", scope: !3, file: !3, line: 152, type: !2526, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2550 = !DILocalVariable(name: "irq", arg: 1, scope: !2549, file: !3, line: 152, type: !122)
!2551 = !DILocation(line: 152, column: 37, scope: !2549)
!2552 = !DILocalVariable(name: "priv", arg: 2, scope: !2549, file: !3, line: 152, type: !62)
!2553 = !DILocation(line: 152, column: 48, scope: !2549)
!2554 = !DILocalVariable(name: "rngc", scope: !2549, file: !3, line: 154, type: !67)
!2555 = !DILocation(line: 154, column: 19, scope: !2549)
!2556 = !DILocation(line: 154, column: 45, scope: !2549)
!2557 = !DILocation(line: 154, column: 26, scope: !2549)
!2558 = !DILocalVariable(name: "status", scope: !2549, file: !3, line: 155, type: !409)
!2559 = !DILocation(line: 155, column: 6, scope: !2549)
!2560 = !DILocation(line: 161, column: 17, scope: !2549)
!2561 = !DILocation(line: 161, column: 23, scope: !2549)
!2562 = !DILocation(line: 161, column: 28, scope: !2549)
!2563 = !DILocation(line: 161, column: 11, scope: !2549)
!2564 = !DILocation(line: 161, column: 9, scope: !2549)
!2565 = !DILocation(line: 162, column: 24, scope: !2549)
!2566 = !DILocation(line: 162, column: 30, scope: !2549)
!2567 = !DILocation(line: 162, column: 35, scope: !2549)
!2568 = !DILocation(line: 162, column: 18, scope: !2549)
!2569 = !DILocation(line: 162, column: 2, scope: !2549)
!2570 = !DILocation(line: 162, column: 8, scope: !2549)
!2571 = !DILocation(line: 162, column: 16, scope: !2549)
!2572 = !DILocation(line: 164, column: 26, scope: !2549)
!2573 = !DILocation(line: 164, column: 2, scope: !2549)
!2574 = !DILocation(line: 166, column: 6, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 166, column: 6)
!2576 = !DILocation(line: 166, column: 13, scope: !2575)
!2577 = !DILocation(line: 166, column: 6, scope: !2549)
!2578 = !DILocation(line: 167, column: 13, scope: !2575)
!2579 = !DILocation(line: 167, column: 19, scope: !2575)
!2580 = !DILocation(line: 167, column: 3, scope: !2575)
!2581 = !DILocation(line: 169, column: 2, scope: !2549)
!2582 = !DILocalVariable(name: "x", arg: 1, scope: !2155, file: !716, line: 85, type: !714)
!2583 = !DILocation(line: 85, column: 57, scope: !2155)
!2584 = !DILocation(line: 87, column: 2, scope: !2155)
!2585 = !DILocation(line: 87, column: 5, scope: !2155)
!2586 = !DILocation(line: 87, column: 10, scope: !2155)
!2587 = !DILocation(line: 88, column: 2, scope: !2155)
!2588 = !DILocation(line: 88, column: 2, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2155, file: !716, line: 88, column: 2)
!2590 = !DILocation(line: 89, column: 1, scope: !2155)
!2591 = distinct !DISubprogram(name: "imx_rngc_init", scope: !3, file: !3, line: 172, type: !2043, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2592 = !DILocalVariable(name: "rng", arg: 1, scope: !2591, file: !3, line: 172, type: !2045)
!2593 = !DILocation(line: 172, column: 40, scope: !2591)
!2594 = !DILocalVariable(name: "rngc", scope: !2591, file: !3, line: 174, type: !67)
!2595 = !DILocation(line: 174, column: 19, scope: !2591)
!2596 = !DILocalVariable(name: "__mptr", scope: !2597, file: !3, line: 174, type: !62)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 174, column: 26)
!2598 = !DILocation(line: 174, column: 26, scope: !2597)
!2599 = !DILocation(line: 174, column: 26, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 174, column: 26)
!2601 = !DILocalVariable(name: "cmd", scope: !2591, file: !3, line: 175, type: !409)
!2602 = !DILocation(line: 175, column: 6, scope: !2591)
!2603 = !DILocalVariable(name: "ctrl", scope: !2591, file: !3, line: 175, type: !409)
!2604 = !DILocation(line: 175, column: 11, scope: !2591)
!2605 = !DILocalVariable(name: "ret", scope: !2591, file: !3, line: 176, type: !122)
!2606 = !DILocation(line: 176, column: 6, scope: !2591)
!2607 = !DILocation(line: 179, column: 14, scope: !2591)
!2608 = !DILocation(line: 179, column: 20, scope: !2591)
!2609 = !DILocation(line: 179, column: 25, scope: !2591)
!2610 = !DILocation(line: 179, column: 8, scope: !2591)
!2611 = !DILocation(line: 179, column: 6, scope: !2591)
!2612 = !DILocation(line: 180, column: 9, scope: !2591)
!2613 = !DILocation(line: 180, column: 13, scope: !2591)
!2614 = !DILocation(line: 180, column: 33, scope: !2591)
!2615 = !DILocation(line: 180, column: 39, scope: !2591)
!2616 = !DILocation(line: 180, column: 44, scope: !2591)
!2617 = !DILocation(line: 180, column: 2, scope: !2591)
!2618 = !DILocation(line: 182, column: 22, scope: !2591)
!2619 = !DILocation(line: 182, column: 2, scope: !2591)
!2620 = !DILocation(line: 185, column: 2, scope: !2591)
!2621 = !DILocation(line: 187, column: 15, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 185, column: 5)
!2623 = !DILocation(line: 187, column: 21, scope: !2622)
!2624 = !DILocation(line: 187, column: 26, scope: !2622)
!2625 = !DILocation(line: 187, column: 9, scope: !2622)
!2626 = !DILocation(line: 187, column: 7, scope: !2622)
!2627 = !DILocation(line: 188, column: 10, scope: !2622)
!2628 = !DILocation(line: 188, column: 14, scope: !2622)
!2629 = !DILocation(line: 188, column: 31, scope: !2622)
!2630 = !DILocation(line: 188, column: 37, scope: !2622)
!2631 = !DILocation(line: 188, column: 42, scope: !2622)
!2632 = !DILocation(line: 188, column: 3, scope: !2622)
!2633 = !DILocation(line: 190, column: 38, scope: !2622)
!2634 = !DILocation(line: 190, column: 44, scope: !2622)
!2635 = !DILocation(line: 190, column: 9, scope: !2622)
!2636 = !DILocation(line: 190, column: 7, scope: !2622)
!2637 = !DILocation(line: 193, column: 8, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 193, column: 7)
!2639 = !DILocation(line: 193, column: 7, scope: !2622)
!2640 = !DILocation(line: 194, column: 8, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 193, column: 13)
!2642 = !DILocation(line: 195, column: 4, scope: !2641)
!2643 = !DILocation(line: 198, column: 2, scope: !2622)
!2644 = !DILocation(line: 198, column: 11, scope: !2591)
!2645 = !DILocation(line: 198, column: 17, scope: !2591)
!2646 = !DILocation(line: 198, column: 25, scope: !2591)
!2647 = distinct !{!2647, !2620, !2648}
!2648 = !DILocation(line: 198, column: 54, scope: !2591)
!2649 = !DILocation(line: 200, column: 6, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 200, column: 6)
!2651 = !DILocation(line: 200, column: 12, scope: !2650)
!2652 = !DILocation(line: 200, column: 6, scope: !2591)
!2653 = !DILocation(line: 201, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 200, column: 21)
!2655 = !DILocation(line: 202, column: 3, scope: !2654)
!2656 = !DILocation(line: 209, column: 15, scope: !2591)
!2657 = !DILocation(line: 209, column: 21, scope: !2591)
!2658 = !DILocation(line: 209, column: 26, scope: !2591)
!2659 = !DILocation(line: 209, column: 9, scope: !2591)
!2660 = !DILocation(line: 209, column: 7, scope: !2591)
!2661 = !DILocation(line: 210, column: 7, scope: !2591)
!2662 = !DILocation(line: 211, column: 9, scope: !2591)
!2663 = !DILocation(line: 211, column: 15, scope: !2591)
!2664 = !DILocation(line: 211, column: 21, scope: !2591)
!2665 = !DILocation(line: 211, column: 26, scope: !2591)
!2666 = !DILocation(line: 211, column: 2, scope: !2591)
!2667 = !DILocation(line: 218, column: 2, scope: !2591)
!2668 = !DILabel(scope: !2591, name: "err", file: !3, line: 220)
!2669 = !DILocation(line: 220, column: 1, scope: !2591)
!2670 = !DILocation(line: 221, column: 26, scope: !2591)
!2671 = !DILocation(line: 221, column: 2, scope: !2591)
!2672 = !DILocation(line: 222, column: 9, scope: !2591)
!2673 = !DILocation(line: 222, column: 2, scope: !2591)
!2674 = !DILocation(line: 223, column: 1, scope: !2591)
!2675 = distinct !DISubprogram(name: "imx_rngc_read", scope: !3, file: !3, line: 121, type: !2060, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2676 = !DILocalVariable(name: "rng", arg: 1, scope: !2675, file: !3, line: 121, type: !2045)
!2677 = !DILocation(line: 121, column: 40, scope: !2675)
!2678 = !DILocalVariable(name: "data", arg: 2, scope: !2675, file: !3, line: 121, type: !62)
!2679 = !DILocation(line: 121, column: 51, scope: !2675)
!2680 = !DILocalVariable(name: "max", arg: 3, scope: !2675, file: !3, line: 121, type: !184)
!2681 = !DILocation(line: 121, column: 64, scope: !2675)
!2682 = !DILocalVariable(name: "wait", arg: 4, scope: !2675, file: !3, line: 121, type: !981)
!2683 = !DILocation(line: 121, column: 74, scope: !2675)
!2684 = !DILocalVariable(name: "rngc", scope: !2675, file: !3, line: 123, type: !67)
!2685 = !DILocation(line: 123, column: 19, scope: !2675)
!2686 = !DILocalVariable(name: "__mptr", scope: !2687, file: !3, line: 123, type: !62)
!2687 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 123, column: 26)
!2688 = !DILocation(line: 123, column: 26, scope: !2687)
!2689 = !DILocation(line: 123, column: 26, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 123, column: 26)
!2691 = !DILocalVariable(name: "status", scope: !2675, file: !3, line: 124, type: !7)
!2692 = !DILocation(line: 124, column: 15, scope: !2675)
!2693 = !DILocalVariable(name: "level", scope: !2675, file: !3, line: 125, type: !7)
!2694 = !DILocation(line: 125, column: 15, scope: !2675)
!2695 = !DILocalVariable(name: "retval", scope: !2675, file: !3, line: 126, type: !122)
!2696 = !DILocation(line: 126, column: 6, scope: !2675)
!2697 = !DILocation(line: 128, column: 2, scope: !2675)
!2698 = !DILocation(line: 128, column: 9, scope: !2675)
!2699 = !DILocation(line: 128, column: 13, scope: !2675)
!2700 = !DILocation(line: 129, column: 18, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 128, column: 29)
!2702 = !DILocation(line: 129, column: 24, scope: !2701)
!2703 = !DILocation(line: 129, column: 29, scope: !2701)
!2704 = !DILocation(line: 129, column: 12, scope: !2701)
!2705 = !DILocation(line: 129, column: 10, scope: !2701)
!2706 = !DILocation(line: 132, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 132, column: 7)
!2708 = !DILocation(line: 132, column: 14, scope: !2707)
!2709 = !DILocation(line: 132, column: 7, scope: !2701)
!2710 = !DILocation(line: 133, column: 4, scope: !2707)
!2711 = !DILocation(line: 136, column: 12, scope: !2701)
!2712 = !DILocation(line: 136, column: 19, scope: !2701)
!2713 = !DILocation(line: 136, column: 50, scope: !2701)
!2714 = !DILocation(line: 136, column: 9, scope: !2701)
!2715 = !DILocation(line: 139, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 139, column: 7)
!2717 = !DILocation(line: 139, column: 7, scope: !2701)
!2718 = !DILocation(line: 141, column: 25, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 139, column: 14)
!2720 = !DILocation(line: 141, column: 31, scope: !2719)
!2721 = !DILocation(line: 141, column: 36, scope: !2719)
!2722 = !DILocation(line: 141, column: 19, scope: !2719)
!2723 = !DILocation(line: 141, column: 12, scope: !2719)
!2724 = !DILocation(line: 141, column: 5, scope: !2719)
!2725 = !DILocation(line: 141, column: 17, scope: !2719)
!2726 = !DILocation(line: 143, column: 11, scope: !2719)
!2727 = !DILocation(line: 144, column: 9, scope: !2719)
!2728 = !DILocation(line: 145, column: 8, scope: !2719)
!2729 = !DILocation(line: 146, column: 3, scope: !2719)
!2730 = distinct !{!2730, !2697, !2731}
!2731 = !DILocation(line: 147, column: 2, scope: !2675)
!2732 = !DILocation(line: 149, column: 9, scope: !2675)
!2733 = !DILocation(line: 149, column: 18, scope: !2675)
!2734 = !DILocation(line: 149, column: 2, scope: !2675)
!2735 = distinct !DISubprogram(name: "imx_rngc_cleanup", scope: !3, file: !3, line: 225, type: !2048, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2736 = !DILocalVariable(name: "rng", arg: 1, scope: !2735, file: !3, line: 225, type: !2045)
!2737 = !DILocation(line: 225, column: 44, scope: !2735)
!2738 = !DILocalVariable(name: "rngc", scope: !2735, file: !3, line: 227, type: !67)
!2739 = !DILocation(line: 227, column: 19, scope: !2735)
!2740 = !DILocalVariable(name: "__mptr", scope: !2741, file: !3, line: 227, type: !62)
!2741 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 227, column: 26)
!2742 = !DILocation(line: 227, column: 26, scope: !2741)
!2743 = !DILocation(line: 227, column: 26, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 227, column: 26)
!2745 = !DILocation(line: 229, column: 26, scope: !2735)
!2746 = !DILocation(line: 229, column: 2, scope: !2735)
!2747 = !DILocation(line: 230, column: 1, scope: !2735)
!2748 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2161, file: !2161, line: 236, type: !2749, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2167, !62}
!2751 = !DILocalVariable(name: "pdev", arg: 1, scope: !2748, file: !2161, line: 236, type: !2167)
!2752 = !DILocation(line: 236, column: 65, scope: !2748)
!2753 = !DILocalVariable(name: "data", arg: 2, scope: !2748, file: !2161, line: 237, type: !62)
!2754 = !DILocation(line: 237, column: 12, scope: !2748)
!2755 = !DILocation(line: 239, column: 19, scope: !2748)
!2756 = !DILocation(line: 239, column: 25, scope: !2748)
!2757 = !DILocation(line: 239, column: 30, scope: !2748)
!2758 = !DILocation(line: 239, column: 2, scope: !2748)
!2759 = !DILocation(line: 240, column: 1, scope: !2748)
!2760 = distinct !DISubprogram(name: "imx_rngc_irq_mask_clear", scope: !3, file: !3, line: 74, type: !2761, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !67}
!2763 = !DILocalVariable(name: "rngc", arg: 1, scope: !2760, file: !3, line: 74, type: !67)
!2764 = !DILocation(line: 74, column: 61, scope: !2760)
!2765 = !DILocalVariable(name: "ctrl", scope: !2760, file: !3, line: 76, type: !409)
!2766 = !DILocation(line: 76, column: 6, scope: !2760)
!2767 = !DILocalVariable(name: "cmd", scope: !2760, file: !3, line: 76, type: !409)
!2768 = !DILocation(line: 76, column: 12, scope: !2760)
!2769 = !DILocation(line: 79, column: 15, scope: !2760)
!2770 = !DILocation(line: 79, column: 21, scope: !2760)
!2771 = !DILocation(line: 79, column: 26, scope: !2760)
!2772 = !DILocation(line: 79, column: 9, scope: !2760)
!2773 = !DILocation(line: 79, column: 7, scope: !2760)
!2774 = !DILocation(line: 80, column: 7, scope: !2760)
!2775 = !DILocation(line: 81, column: 9, scope: !2760)
!2776 = !DILocation(line: 81, column: 15, scope: !2760)
!2777 = !DILocation(line: 81, column: 21, scope: !2760)
!2778 = !DILocation(line: 81, column: 26, scope: !2760)
!2779 = !DILocation(line: 81, column: 2, scope: !2760)
!2780 = !DILocation(line: 88, column: 14, scope: !2760)
!2781 = !DILocation(line: 88, column: 20, scope: !2760)
!2782 = !DILocation(line: 88, column: 25, scope: !2760)
!2783 = !DILocation(line: 88, column: 8, scope: !2760)
!2784 = !DILocation(line: 88, column: 6, scope: !2760)
!2785 = !DILocation(line: 89, column: 6, scope: !2760)
!2786 = !DILocation(line: 90, column: 9, scope: !2760)
!2787 = !DILocation(line: 90, column: 14, scope: !2760)
!2788 = !DILocation(line: 90, column: 20, scope: !2760)
!2789 = !DILocation(line: 90, column: 25, scope: !2760)
!2790 = !DILocation(line: 90, column: 2, scope: !2760)
!2791 = !DILocation(line: 91, column: 1, scope: !2760)
!2792 = distinct !DISubprogram(name: "imx_rngc_self_test", scope: !3, file: !3, line: 102, type: !2793, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!122, !67}
!2795 = !DILocalVariable(name: "rngc", arg: 1, scope: !2792, file: !3, line: 102, type: !67)
!2796 = !DILocation(line: 102, column: 48, scope: !2792)
!2797 = !DILocalVariable(name: "cmd", scope: !2792, file: !3, line: 104, type: !409)
!2798 = !DILocation(line: 104, column: 6, scope: !2792)
!2799 = !DILocalVariable(name: "ret", scope: !2792, file: !3, line: 105, type: !122)
!2800 = !DILocation(line: 105, column: 6, scope: !2792)
!2801 = !DILocation(line: 107, column: 22, scope: !2792)
!2802 = !DILocation(line: 107, column: 2, scope: !2792)
!2803 = !DILocation(line: 110, column: 14, scope: !2792)
!2804 = !DILocation(line: 110, column: 20, scope: !2792)
!2805 = !DILocation(line: 110, column: 25, scope: !2792)
!2806 = !DILocation(line: 110, column: 8, scope: !2792)
!2807 = !DILocation(line: 110, column: 6, scope: !2792)
!2808 = !DILocation(line: 111, column: 9, scope: !2792)
!2809 = !DILocation(line: 111, column: 13, scope: !2792)
!2810 = !DILocation(line: 111, column: 35, scope: !2792)
!2811 = !DILocation(line: 111, column: 41, scope: !2792)
!2812 = !DILocation(line: 111, column: 46, scope: !2792)
!2813 = !DILocation(line: 111, column: 2, scope: !2792)
!2814 = !DILocation(line: 113, column: 37, scope: !2792)
!2815 = !DILocation(line: 113, column: 43, scope: !2792)
!2816 = !DILocation(line: 113, column: 8, scope: !2792)
!2817 = !DILocation(line: 113, column: 6, scope: !2792)
!2818 = !DILocation(line: 114, column: 26, scope: !2792)
!2819 = !DILocation(line: 114, column: 2, scope: !2792)
!2820 = !DILocation(line: 115, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 115, column: 6)
!2822 = !DILocation(line: 115, column: 6, scope: !2792)
!2823 = !DILocation(line: 116, column: 3, scope: !2821)
!2824 = !DILocation(line: 118, column: 9, scope: !2792)
!2825 = !DILocation(line: 118, column: 15, scope: !2792)
!2826 = !DILocation(line: 118, column: 2, scope: !2792)
!2827 = !DILocation(line: 119, column: 1, scope: !2792)
!2828 = distinct !DISubprogram(name: "writel", scope: !2510, file: !2510, line: 67, type: !2829, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !7, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2832 = !DILocalVariable(name: "val", arg: 1, scope: !2828, file: !2510, line: 67, type: !7)
!2833 = !DILocation(line: 67, column: 1, scope: !2828)
!2834 = !DILocalVariable(name: "addr", arg: 2, scope: !2828, file: !2510, line: 67, type: !2831)
!2835 = !{i32 -2143468038}
!2836 = distinct !DISubprogram(name: "imx_rngc_irq_unmask", scope: !3, file: !3, line: 93, type: !2761, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2837 = !DILocalVariable(name: "rngc", arg: 1, scope: !2836, file: !3, line: 93, type: !67)
!2838 = !DILocation(line: 93, column: 57, scope: !2836)
!2839 = !DILocalVariable(name: "ctrl", scope: !2836, file: !3, line: 95, type: !409)
!2840 = !DILocation(line: 95, column: 6, scope: !2836)
!2841 = !DILocation(line: 97, column: 15, scope: !2836)
!2842 = !DILocation(line: 97, column: 21, scope: !2836)
!2843 = !DILocation(line: 97, column: 26, scope: !2836)
!2844 = !DILocation(line: 97, column: 9, scope: !2836)
!2845 = !DILocation(line: 97, column: 7, scope: !2836)
!2846 = !DILocation(line: 98, column: 7, scope: !2836)
!2847 = !DILocation(line: 99, column: 9, scope: !2836)
!2848 = !DILocation(line: 99, column: 15, scope: !2836)
!2849 = !DILocation(line: 99, column: 21, scope: !2836)
!2850 = !DILocation(line: 99, column: 26, scope: !2836)
!2851 = !DILocation(line: 99, column: 2, scope: !2836)
!2852 = !DILocation(line: 100, column: 1, scope: !2836)
!2853 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2854, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !71, !62}
!2856 = !DILocalVariable(name: "dev", arg: 1, scope: !2853, file: !30, line: 660, type: !71)
!2857 = !DILocation(line: 660, column: 51, scope: !2853)
!2858 = !DILocalVariable(name: "data", arg: 2, scope: !2853, file: !30, line: 660, type: !62)
!2859 = !DILocation(line: 660, column: 62, scope: !2853)
!2860 = !DILocation(line: 662, column: 21, scope: !2853)
!2861 = !DILocation(line: 662, column: 2, scope: !2853)
!2862 = !DILocation(line: 662, column: 7, scope: !2853)
!2863 = !DILocation(line: 662, column: 19, scope: !2853)
!2864 = !DILocation(line: 663, column: 1, scope: !2853)
!2865 = distinct !DISubprogram(name: "imx_rngc_suspend", scope: !3, file: !3, line: 332, type: !1612, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2866 = !DILocalVariable(name: "dev", arg: 1, scope: !2865, file: !3, line: 332, type: !71)
!2867 = !DILocation(line: 332, column: 59, scope: !2865)
!2868 = !DILocalVariable(name: "rngc", scope: !2865, file: !3, line: 334, type: !67)
!2869 = !DILocation(line: 334, column: 19, scope: !2865)
!2870 = !DILocation(line: 334, column: 42, scope: !2865)
!2871 = !DILocation(line: 334, column: 26, scope: !2865)
!2872 = !DILocation(line: 336, column: 24, scope: !2865)
!2873 = !DILocation(line: 336, column: 30, scope: !2865)
!2874 = !DILocation(line: 336, column: 2, scope: !2865)
!2875 = !DILocation(line: 338, column: 2, scope: !2865)
!2876 = distinct !DISubprogram(name: "imx_rngc_resume", scope: !3, file: !3, line: 341, type: !1612, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !110)
!2877 = !DILocalVariable(name: "dev", arg: 1, scope: !2876, file: !3, line: 341, type: !71)
!2878 = !DILocation(line: 341, column: 58, scope: !2876)
!2879 = !DILocalVariable(name: "rngc", scope: !2876, file: !3, line: 343, type: !67)
!2880 = !DILocation(line: 343, column: 19, scope: !2876)
!2881 = !DILocation(line: 343, column: 42, scope: !2876)
!2882 = !DILocation(line: 343, column: 26, scope: !2876)
!2883 = !DILocation(line: 345, column: 21, scope: !2876)
!2884 = !DILocation(line: 345, column: 27, scope: !2876)
!2885 = !DILocation(line: 345, column: 2, scope: !2876)
!2886 = !DILocation(line: 347, column: 2, scope: !2876)
