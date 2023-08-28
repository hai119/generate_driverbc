; ModuleID = '../bcout/drivers/ptp/ptp_qoriq.llvm.bc'
source_filename = "drivers/ptp/ptp_qoriq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ptp_qoriq_driver_init6:\09\09\09"
module asm ".long\09ptp_qoriq_driver_init - .\09\09\09"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.40, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.40 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.39, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.20, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.19, i32, [12 x i8] }
%union.anon.19 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.20 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.21, %union.anon.34, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.34 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.35, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.38 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { i64, i64 }
%union.anon.38 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.39 = type { %struct.rb_node, i64 }
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
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.timespec64 = type { i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_clock_request = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.1, %struct.ptp_clock_time, i32, i32, %union.anon.2 }
%union.anon.1 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.2 = type { %struct.ptp_clock_time }
%struct.kmem_cache = type opaque
%struct.ptp_qoriq = type { i8*, %struct.ptp_qoriq_registers, %struct.spinlock, %struct.ptp_clock*, %struct.ptp_clock_info, %struct.resource*, %struct.dentry*, %struct.device*, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i32*)*, void (i32*, i32)* }
%struct.ptp_qoriq_registers = type { %struct.ctrl_regs*, %struct.alarm_regs*, %struct.fiper_regs*, %struct.etts_regs* }
%struct.ctrl_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32 }
%struct.alarm_regs = type { i32, i32, i32, i32 }
%struct.fiper_regs = type { i32, i32, i32 }
%struct.etts_regs = type { i32, i32, i32, i32 }
%struct.ptp_clock = type opaque
%struct.dentry = type opaque
%struct.ptp_clock_event = type { i32, i32, %union.anon.41 }
%union.anon.41 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.clk = type opaque

@.str = private unnamed_addr constant [10 x i8] c"fsl,cksel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fsl,extts-fifo\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,dpaa2-ptp\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fsl,enetc-ptp\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,tclk-period\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fsl,tmr-prsc\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fsl,tmr-add\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper1\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper2\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fsl,max-adj\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper3\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"\014ptp_qoriq: device tree node missing required elements, try automatic configuration\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fsl,etsec-ptp\00", align 1
@__UNIQUE_ID___addressable_ptp_qoriq_driver_init166 = internal global i8* bitcast (i32 ()* @ptp_qoriq_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ptp_qoriq_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @ptp_qoriq_probe, i32 (%struct.platform_device*)* @ptp_qoriq_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([3 x %struct.of_device_id], [3 x %struct.of_device_id]* @match_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2319
@__exitcall_ptp_qoriq_driver_exit = internal global void ()* @ptp_qoriq_driver_exit, section ".exitcall.exit", align 8, !dbg !2292
@__UNIQUE_ID_author167 = internal constant [60 x i8] c"ptp_qoriq.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1, !dbg !2299
@__UNIQUE_ID_description168 = internal constant [63 x i8] c"ptp_qoriq.description=PTP clock for Freescale QorIQ 1588 timer\00", section ".modinfo", align 1, !dbg !2304
@__UNIQUE_ID_file169 = internal constant [37 x i8] c"ptp_qoriq.file=drivers/ptp/ptp-qoriq\00", section ".modinfo", align 1, !dbg !2309
@__UNIQUE_ID_license170 = internal constant [22 x i8] c"ptp_qoriq.license=GPL\00", section ".modinfo", align 1, !dbg !2314
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.14 = private unnamed_addr constant [64 x i8] c"\013ptp_qoriq: error reference clock value, or lower than 100MHz\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ptp_qoriq\00", align 1
@match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec-ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-ptp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2369
@.str.16 = private unnamed_addr constant [37 x i8] c"\013ptp_qoriq: irq not in device tree\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\013ptp_qoriq: request_irq failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\013ptp_qoriq: no resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"\013ptp_qoriq: resource busy\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013ptp_qoriq: ioremap ptp registers failed\0A\00", align 1
@ptp_qoriq_caps = internal constant %struct.ptp_clock_info { %struct.module* null, [16 x i8] c"qoriq ptp clock\00", i32 512000, i32 0, i32 2, i32 0, i32 0, i32 1, %struct.ptp_pin_desc* null, i32 (%struct.ptp_clock_info*, i64)* @ptp_qoriq_adjfine, i32 (%struct.ptp_clock_info*, i32)* null, i32 (%struct.ptp_clock_info*, i32)* null, i32 (%struct.ptp_clock_info*, i64)* @ptp_qoriq_adjtime, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_qoriq_gettime, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* null, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)* null, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_qoriq_settime, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @ptp_qoriq_enable, i32 (%struct.ptp_clock_info*, i32, i32, i32)* null, i64 (%struct.ptp_clock_info*)* null }, align 8, !dbg !2366
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ptp_qoriq_driver_init166 to i8*), i8* bitcast (void ()* @ptp_qoriq_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ptp_qoriq_driver_exit to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_author167, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description168, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file169, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license170, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @extts_clean_up(%struct.ptp_qoriq* %ptp_qoriq, i32 %index, i1 zeroext %update_event) #0 !dbg !2378 {
entry:
  %retval = alloca i32, align 4
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %index.addr = alloca i32, align 4
  %update_event.addr = alloca i8, align 1
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %event = alloca %struct.ptp_clock_event, align 8
  %reg_etts_l = alloca i8*, align 8
  %reg_etts_h = alloca i8*, align 8
  %valid = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  %frombool = zext i1 %update_event to i8
  store i8 %frombool, i8* %update_event.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %update_event.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2387, metadata !DIExpression()), !dbg !2389
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2390
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !2391
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2389
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_event* %event, metadata !2392, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata i8** %reg_etts_l, metadata !2407, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.declare(metadata i8** %reg_etts_h, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata i32* %valid, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !2415, metadata !DIExpression()), !dbg !2416
  %1 = load i32, i32* %index.addr, align 4, !dbg !2417
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !2418

sw.bb:                                            ; preds = %entry
  store i32 16777216, i32* %valid, align 4, !dbg !2419
  %2 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2421
  %etts_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %2, i32 0, i32 3, !dbg !2422
  %3 = load %struct.etts_regs*, %struct.etts_regs** %etts_regs, align 8, !dbg !2422
  %tmr_etts1_l = getelementptr inbounds %struct.etts_regs, %struct.etts_regs* %3, i32 0, i32 1, !dbg !2423
  %4 = bitcast i32* %tmr_etts1_l to i8*, !dbg !2424
  store i8* %4, i8** %reg_etts_l, align 8, !dbg !2425
  %5 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2426
  %etts_regs2 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %5, i32 0, i32 3, !dbg !2427
  %6 = load %struct.etts_regs*, %struct.etts_regs** %etts_regs2, align 8, !dbg !2427
  %tmr_etts1_h = getelementptr inbounds %struct.etts_regs, %struct.etts_regs* %6, i32 0, i32 0, !dbg !2428
  %7 = bitcast i32* %tmr_etts1_h to i8*, !dbg !2429
  store i8* %7, i8** %reg_etts_h, align 8, !dbg !2430
  br label %sw.epilog, !dbg !2431

sw.bb3:                                           ; preds = %entry
  store i32 33554432, i32* %valid, align 4, !dbg !2432
  %8 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2433
  %etts_regs4 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %8, i32 0, i32 3, !dbg !2434
  %9 = load %struct.etts_regs*, %struct.etts_regs** %etts_regs4, align 8, !dbg !2434
  %tmr_etts2_l = getelementptr inbounds %struct.etts_regs, %struct.etts_regs* %9, i32 0, i32 3, !dbg !2435
  %10 = bitcast i32* %tmr_etts2_l to i8*, !dbg !2436
  store i8* %10, i8** %reg_etts_l, align 8, !dbg !2437
  %11 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2438
  %etts_regs5 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %11, i32 0, i32 3, !dbg !2439
  %12 = load %struct.etts_regs*, %struct.etts_regs** %etts_regs5, align 8, !dbg !2439
  %tmr_etts2_h = getelementptr inbounds %struct.etts_regs, %struct.etts_regs* %12, i32 0, i32 2, !dbg !2440
  %13 = bitcast i32* %tmr_etts2_h to i8*, !dbg !2441
  store i8* %13, i8** %reg_etts_h, align 8, !dbg !2442
  br label %sw.epilog, !dbg !2443

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2444
  br label %return, !dbg !2444

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %type = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %event, i32 0, i32 0, !dbg !2445
  store i32 1, i32* %type, align 8, !dbg !2446
  %14 = load i32, i32* %index.addr, align 4, !dbg !2447
  %index6 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %event, i32 0, i32 1, !dbg !2448
  store i32 %14, i32* %index6, align 4, !dbg !2449
  %15 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2450
  %extts_fifo_support = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %15, i32 0, i32 8, !dbg !2452
  %16 = load i8, i8* %extts_fifo_support, align 8, !dbg !2452
  %tobool = trunc i8 %16 to i1, !dbg !2452
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2453

if.then:                                          ; preds = %sw.epilog
  %17 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2454
  %read = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %17, i32 0, i32 19, !dbg !2456
  %18 = load i32 (i32*)*, i32 (i32*)** %read, align 8, !dbg !2456
  %19 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2457
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %19, i32 0, i32 0, !dbg !2458
  %20 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !2458
  %tmr_stat = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %20, i32 0, i32 5, !dbg !2459
  %call = call i32 %18(i32* %tmr_stat) #11, !dbg !2454
  %21 = load i32, i32* %valid, align 4, !dbg !2460
  %and = and i32 %call, %21, !dbg !2461
  %tobool7 = icmp ne i32 %and, 0, !dbg !2461
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !2462

if.then8:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !2463
  br label %return, !dbg !2463

if.end:                                           ; preds = %if.then
  br label %if.end9, !dbg !2464

if.end9:                                          ; preds = %if.end, %sw.epilog
  br label %do.body, !dbg !2465

do.body:                                          ; preds = %do.cond, %if.end9
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2466
  %read10 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %22, i32 0, i32 19, !dbg !2468
  %23 = load i32 (i32*)*, i32 (i32*)** %read10, align 8, !dbg !2468
  %24 = load i8*, i8** %reg_etts_l, align 8, !dbg !2469
  %25 = bitcast i8* %24 to i32*, !dbg !2469
  %call11 = call i32 %23(i32* %25) #11, !dbg !2466
  store i32 %call11, i32* %lo, align 4, !dbg !2470
  %26 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2471
  %read12 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %26, i32 0, i32 19, !dbg !2472
  %27 = load i32 (i32*)*, i32 (i32*)** %read12, align 8, !dbg !2472
  %28 = load i8*, i8** %reg_etts_h, align 8, !dbg !2473
  %29 = bitcast i8* %28 to i32*, !dbg !2473
  %call13 = call i32 %27(i32* %29) #11, !dbg !2471
  store i32 %call13, i32* %hi, align 4, !dbg !2474
  %30 = load i8, i8* %update_event.addr, align 1, !dbg !2475
  %tobool14 = trunc i8 %30 to i1, !dbg !2475
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !2477

if.then15:                                        ; preds = %do.body
  %31 = load i32, i32* %hi, align 4, !dbg !2478
  %conv = zext i32 %31 to i64, !dbg !2480
  %shl = shl i64 %conv, 32, !dbg !2481
  %32 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %event, i32 0, i32 2, !dbg !2482
  %timestamp = bitcast %union.anon.41* %32 to i64*, !dbg !2482
  store i64 %shl, i64* %timestamp, align 8, !dbg !2483
  %33 = load i32, i32* %lo, align 4, !dbg !2484
  %conv16 = zext i32 %33 to i64, !dbg !2484
  %34 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %event, i32 0, i32 2, !dbg !2485
  %timestamp17 = bitcast %union.anon.41* %34 to i64*, !dbg !2485
  %35 = load i64, i64* %timestamp17, align 8, !dbg !2486
  %or = or i64 %35, %conv16, !dbg !2486
  store i64 %or, i64* %timestamp17, align 8, !dbg !2486
  %36 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2487
  %clock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %36, i32 0, i32 3, !dbg !2488
  %37 = load %struct.ptp_clock*, %struct.ptp_clock** %clock, align 8, !dbg !2488
  call void @ptp_clock_event(%struct.ptp_clock* %37, %struct.ptp_clock_event* %event) #11, !dbg !2489
  br label %if.end18, !dbg !2490

if.end18:                                         ; preds = %if.then15, %do.body
  %38 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2491
  %extts_fifo_support19 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %38, i32 0, i32 8, !dbg !2493
  %39 = load i8, i8* %extts_fifo_support19, align 8, !dbg !2493
  %tobool20 = trunc i8 %39 to i1, !dbg !2493
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !2494

if.then21:                                        ; preds = %if.end18
  br label %do.end, !dbg !2495

if.end22:                                         ; preds = %if.end18
  br label %do.cond, !dbg !2496

do.cond:                                          ; preds = %if.end22
  %40 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2497
  %read23 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %40, i32 0, i32 19, !dbg !2498
  %41 = load i32 (i32*)*, i32 (i32*)** %read23, align 8, !dbg !2498
  %42 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2499
  %ctrl_regs24 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %42, i32 0, i32 0, !dbg !2500
  %43 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs24, align 8, !dbg !2500
  %tmr_stat25 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %43, i32 0, i32 5, !dbg !2501
  %call26 = call i32 %41(i32* %tmr_stat25) #11, !dbg !2497
  %44 = load i32, i32* %valid, align 4, !dbg !2502
  %and27 = and i32 %call26, %44, !dbg !2503
  %tobool28 = icmp ne i32 %and27, 0, !dbg !2496
  br i1 %tobool28, label %do.body, label %do.end, !dbg !2496, !llvm.loop !2504

do.end:                                           ; preds = %do.cond, %if.then21
  store i32 0, i32* %retval, align 4, !dbg !2506
  br label %return, !dbg !2506

return:                                           ; preds = %do.end, %if.then8, %sw.default
  %45 = load i32, i32* %retval, align 4, !dbg !2507
  ret i32 %45, !dbg !2507
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @ptp_clock_event(%struct.ptp_clock*, %struct.ptp_clock_event*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_isr(i32 %irq, i8* %priv) #0 !dbg !2508 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2512, metadata !DIExpression()), !dbg !2518
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2520, metadata !DIExpression()), !dbg !2522
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %priv.addr = alloca i8*, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %event = alloca %struct.ptp_clock_event, align 8
  %ack = alloca i32, align 4
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  %irqs = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = load i8*, i8** %priv.addr, align 8, !dbg !2530
  %1 = bitcast i8* %0 to %struct.ptp_qoriq*, !dbg !2530
  store %struct.ptp_qoriq* %1, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2531, metadata !DIExpression()), !dbg !2532
  %2 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2533
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %2, i32 0, i32 1, !dbg !2534
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_event* %event, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata i32* %ack, metadata !2537, metadata !DIExpression()), !dbg !2538
  store i32 0, i32* %ack, align 4, !dbg !2538
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.declare(metadata i32* %irqs, metadata !2543, metadata !DIExpression()), !dbg !2544
  %3 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2545
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %3, i32 0, i32 2, !dbg !2546
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2547, !srcloc !2549
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2550
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2550
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2550
  %6 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2552
  %read = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %6, i32 0, i32 19, !dbg !2553
  %7 = load i32 (i32*)*, i32 (i32*)** %read, align 8, !dbg !2553
  %8 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2554
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %8, i32 0, i32 0, !dbg !2555
  %9 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !2555
  %tmr_tevent = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %9, i32 0, i32 1, !dbg !2556
  %call = call i32 %7(i32* %tmr_tevent) #11, !dbg !2552
  store i32 %call, i32* %val, align 4, !dbg !2557
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2558
  %read2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %10, i32 0, i32 19, !dbg !2559
  %11 = load i32 (i32*)*, i32 (i32*)** %read2, align 8, !dbg !2559
  %12 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2560
  %ctrl_regs3 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %12, i32 0, i32 0, !dbg !2561
  %13 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs3, align 8, !dbg !2561
  %tmr_temask = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %13, i32 0, i32 2, !dbg !2562
  %call4 = call i32 %11(i32* %tmr_temask) #11, !dbg !2558
  store i32 %call4, i32* %mask, align 4, !dbg !2563
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2564
  %lock5 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 2, !dbg !2565
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i23, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2566, !srcloc !2568
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2569
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !2569
  %rlock.i24 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2569
  %17 = load i32, i32* %val, align 4, !dbg !2571
  %18 = load i32, i32* %mask, align 4, !dbg !2572
  %and = and i32 %17, %18, !dbg !2573
  store i32 %and, i32* %irqs, align 4, !dbg !2574
  %19 = load i32, i32* %irqs, align 4, !dbg !2575
  %and6 = and i32 %19, 16777216, !dbg !2577
  %tobool = icmp ne i32 %and6, 0, !dbg !2577
  br i1 %tobool, label %if.then, label %if.end, !dbg !2578

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %ack, align 4, !dbg !2579
  %or = or i32 %20, 16777216, !dbg !2579
  store i32 %or, i32* %ack, align 4, !dbg !2579
  %21 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2581
  %call7 = call i32 @extts_clean_up(%struct.ptp_qoriq* %21, i32 0, i1 zeroext true) #11, !dbg !2582
  br label %if.end, !dbg !2583

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %irqs, align 4, !dbg !2584
  %and8 = and i32 %22, 33554432, !dbg !2586
  %tobool9 = icmp ne i32 %and8, 0, !dbg !2586
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !2587

if.then10:                                        ; preds = %if.end
  %23 = load i32, i32* %ack, align 4, !dbg !2588
  %or11 = or i32 %23, 33554432, !dbg !2588
  store i32 %or11, i32* %ack, align 4, !dbg !2588
  %24 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2590
  %call12 = call i32 @extts_clean_up(%struct.ptp_qoriq* %24, i32 1, i1 zeroext true) #11, !dbg !2591
  br label %if.end13, !dbg !2592

if.end13:                                         ; preds = %if.then10, %if.end
  %25 = load i32, i32* %irqs, align 4, !dbg !2593
  %and14 = and i32 %25, 128, !dbg !2595
  %tobool15 = icmp ne i32 %and14, 0, !dbg !2595
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2596

if.then16:                                        ; preds = %if.end13
  %26 = load i32, i32* %ack, align 4, !dbg !2597
  %or17 = or i32 %26, 128, !dbg !2597
  store i32 %or17, i32* %ack, align 4, !dbg !2597
  %type = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %event, i32 0, i32 0, !dbg !2599
  store i32 2, i32* %type, align 8, !dbg !2600
  %27 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2601
  %clock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %27, i32 0, i32 3, !dbg !2602
  %28 = load %struct.ptp_clock*, %struct.ptp_clock** %clock, align 8, !dbg !2602
  call void @ptp_clock_event(%struct.ptp_clock* %28, %struct.ptp_clock_event* %event) #11, !dbg !2603
  br label %if.end18, !dbg !2604

if.end18:                                         ; preds = %if.then16, %if.end13
  %29 = load i32, i32* %ack, align 4, !dbg !2605
  %tobool19 = icmp ne i32 %29, 0, !dbg !2605
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !2607

if.then20:                                        ; preds = %if.end18
  %30 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2608
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %30, i32 0, i32 20, !dbg !2610
  %31 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !2610
  %32 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2611
  %ctrl_regs21 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %32, i32 0, i32 0, !dbg !2612
  %33 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs21, align 8, !dbg !2612
  %tmr_tevent22 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %33, i32 0, i32 1, !dbg !2613
  %34 = load i32, i32* %ack, align 4, !dbg !2614
  call void %31(i32* %tmr_tevent22, i32 %34) #11, !dbg !2608
  store i32 1, i32* %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

if.else:                                          ; preds = %if.end18
  store i32 0, i32* %retval, align 4, !dbg !2616
  br label %return, !dbg !2616

return:                                           ; preds = %if.else, %if.then20
  %35 = load i32, i32* %retval, align 4, !dbg !2617
  ret i32 %35, !dbg !2617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_adjfine(%struct.ptp_clock_info* %ptp, i64 %scaled_ppm) #0 !dbg !2618 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %scaled_ppm.addr = alloca i64, align 8
  %adj = alloca i64, align 8
  %diff = alloca i64, align 8
  %tmr_add = alloca i32, align 4
  %neg_adj = alloca i32, align 4
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i64 %scaled_ppm, i64* %scaled_ppm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %scaled_ppm.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.declare(metadata i64* %adj, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.declare(metadata i64* %diff, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.declare(metadata i32* %tmr_add, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata i32* %neg_adj, metadata !2629, metadata !DIExpression()), !dbg !2630
  store i32 0, i32* %neg_adj, align 4, !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2633, metadata !DIExpression()), !dbg !2635
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2635
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2635
  store i8* %1, i8** %__mptr, align 8, !dbg !2635
  br label %do.body, !dbg !2635

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2636

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2635
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !2635
  %3 = bitcast i8* %add.ptr to %struct.ptp_qoriq*, !dbg !2635
  store %struct.ptp_qoriq* %3, %struct.ptp_qoriq** %tmp, align 8, !dbg !2636
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %tmp, align 8, !dbg !2635
  store %struct.ptp_qoriq* %4, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2638, metadata !DIExpression()), !dbg !2639
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2640
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 1, !dbg !2641
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2639
  %6 = load i64, i64* %scaled_ppm.addr, align 8, !dbg !2642
  %cmp = icmp slt i64 %6, 0, !dbg !2644
  br i1 %cmp, label %if.then, label %if.end, !dbg !2645

if.then:                                          ; preds = %do.end
  store i32 1, i32* %neg_adj, align 4, !dbg !2646
  %7 = load i64, i64* %scaled_ppm.addr, align 8, !dbg !2648
  %sub = sub i64 0, %7, !dbg !2649
  store i64 %sub, i64* %scaled_ppm.addr, align 8, !dbg !2650
  br label %if.end, !dbg !2651

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2652
  %tmr_add2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 14, !dbg !2653
  %9 = load i32, i32* %tmr_add2, align 4, !dbg !2653
  store i32 %9, i32* %tmr_add, align 4, !dbg !2654
  %10 = load i32, i32* %tmr_add, align 4, !dbg !2655
  %conv = zext i32 %10 to i64, !dbg !2655
  store i64 %conv, i64* %adj, align 8, !dbg !2656
  %11 = load i64, i64* %scaled_ppm.addr, align 8, !dbg !2657
  %12 = load i64, i64* %adj, align 8, !dbg !2658
  %mul = mul i64 %12, %11, !dbg !2658
  store i64 %mul, i64* %adj, align 8, !dbg !2658
  %13 = load i64, i64* %adj, align 8, !dbg !2659
  %call = call i64 @div_u64(i64 %13, i32 8000000) #11, !dbg !2660
  store i64 %call, i64* %diff, align 8, !dbg !2661
  %14 = load i64, i64* %diff, align 8, !dbg !2662
  %shr = lshr i64 %14, 13, !dbg !2663
  %15 = load i64, i64* %diff, align 8, !dbg !2664
  %shr3 = lshr i64 %15, 12, !dbg !2665
  %and = and i64 %shr3, 1, !dbg !2666
  %add = add i64 %shr, %and, !dbg !2667
  store i64 %add, i64* %diff, align 8, !dbg !2668
  %16 = load i32, i32* %neg_adj, align 4, !dbg !2669
  %tobool = icmp ne i32 %16, 0, !dbg !2669
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2669

cond.true:                                        ; preds = %if.end
  %17 = load i32, i32* %tmr_add, align 4, !dbg !2670
  %conv4 = zext i32 %17 to i64, !dbg !2670
  %18 = load i64, i64* %diff, align 8, !dbg !2671
  %sub5 = sub i64 %conv4, %18, !dbg !2672
  br label %cond.end, !dbg !2669

cond.false:                                       ; preds = %if.end
  %19 = load i32, i32* %tmr_add, align 4, !dbg !2673
  %conv6 = zext i32 %19 to i64, !dbg !2673
  %20 = load i64, i64* %diff, align 8, !dbg !2674
  %add7 = add i64 %conv6, %20, !dbg !2675
  br label %cond.end, !dbg !2669

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub5, %cond.true ], [ %add7, %cond.false ], !dbg !2669
  %conv8 = trunc i64 %cond to i32, !dbg !2669
  store i32 %conv8, i32* %tmr_add, align 4, !dbg !2676
  %21 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2677
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %21, i32 0, i32 20, !dbg !2678
  %22 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !2678
  %23 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2679
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %23, i32 0, i32 0, !dbg !2680
  %24 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !2680
  %tmr_add9 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %24, i32 0, i32 8, !dbg !2681
  %25 = load i32, i32* %tmr_add, align 4, !dbg !2682
  call void %22(i32* %tmr_add9, i32 %25) #11, !dbg !2677
  ret i32 0, !dbg !2683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #0 !dbg !2684 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !2692, metadata !DIExpression()), !dbg !2693
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !2694
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !2695
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #11, !dbg !2696
  ret i64 %call, !dbg !2697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_adjtime(%struct.ptp_clock_info* %ptp, i64 %delta) #0 !dbg !2698 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !2699, metadata !DIExpression()), !dbg !2703
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2705, metadata !DIExpression()), !dbg !2706
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2707, metadata !DIExpression()), !dbg !2712
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %delta.addr = alloca i64, align 8
  %now = alloca i64, align 8
  %flags = alloca i64, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_qoriq*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata i64* %now, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2729, metadata !DIExpression()), !dbg !2731
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2731
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2731
  store i8* %1, i8** %__mptr, align 8, !dbg !2731
  br label %do.body, !dbg !2731

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2732

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2731
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !2731
  %3 = bitcast i8* %add.ptr to %struct.ptp_qoriq*, !dbg !2731
  store %struct.ptp_qoriq* %3, %struct.ptp_qoriq** %tmp, align 8, !dbg !2732
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %tmp, align 8, !dbg !2731
  store %struct.ptp_qoriq* %4, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2728
  br label %do.body1, !dbg !2734

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2735

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2739, metadata !DIExpression()), !dbg !2738
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2738
  %conv = zext i1 %cmp to i32, !dbg !2738
  store i32 1, i32* %tmp3, align 4, !dbg !2738
  %5 = load i32, i32* %tmp3, align 4, !dbg !2738
  br label %do.body4, !dbg !2740

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2741

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2742

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2744, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2748, metadata !DIExpression()), !dbg !2747
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2747
  %conv10 = zext i1 %cmp9 to i32, !dbg !2747
  store i32 1, i32* %tmp11, align 4, !dbg !2747
  %6 = load i32, i32* %tmp11, align 4, !dbg !2747
  %call = call i64 @arch_local_irq_save() #11, !dbg !2749
  store i64 %call, i64* %flags, align 8, !dbg !2749
  br label %do.end12, !dbg !2749

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2742

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2741

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2750, !srcloc !2751
  br label %do.body15, !dbg !2750

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2752
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %7, i32 0, i32 2, !dbg !2752
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2753
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2754
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2754
  br label %do.end17, !dbg !2752

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2750

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2741

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2740

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2735

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2755
  %call22 = call i64 @tmr_cnt_read(%struct.ptp_qoriq* %10) #11, !dbg !2756
  store i64 %call22, i64* %now, align 8, !dbg !2757
  %11 = load i64, i64* %delta.addr, align 8, !dbg !2758
  %12 = load i64, i64* %now, align 8, !dbg !2759
  %add = add i64 %12, %11, !dbg !2759
  store i64 %add, i64* %now, align 8, !dbg !2759
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2760
  %14 = load i64, i64* %now, align 8, !dbg !2761
  call void @tmr_cnt_write(%struct.ptp_qoriq* %13, i64 %14) #11, !dbg !2762
  %15 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2763
  call void @set_fipers(%struct.ptp_qoriq* %15) #11, !dbg !2764
  %16 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2765
  %lock23 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %16, i32 0, i32 2, !dbg !2766
  %17 = load i64, i64* %flags, align 8, !dbg !2767
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !205, metadata !2768, metadata !DIExpression()) #7, !dbg !2771
  call void @llvm.dbg.declare(metadata !205, metadata !2772, metadata !DIExpression()) #7, !dbg !2771
  store i32 1, i32* %tmp.i, align 4, !dbg !2771
  %18 = load i32, i32* %tmp.i, align 4, !dbg !2771
  call void @llvm.dbg.declare(metadata !205, metadata !2773, metadata !DIExpression()) #7, !dbg !2778
  call void @llvm.dbg.declare(metadata !205, metadata !2779, metadata !DIExpression()) #7, !dbg !2778
  store i32 1, i32* %tmp8.i, align 4, !dbg !2778
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !2778
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !2780
  call void @arch_local_irq_restore(i64 %20) #12, !dbg !2780
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2781, !srcloc !2783
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !2784
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !2784
  %rlock.i25 = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !2784
  ret i32 0, !dbg !2786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2787 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2791, metadata !DIExpression()), !dbg !2792
  %call = call i64 @arch_local_save_flags() #11, !dbg !2793
  store i64 %call, i64* %f, align 8, !dbg !2794
  call void @arch_local_irq_disable() #11, !dbg !2795
  %0 = load i64, i64* %f, align 8, !dbg !2796
  ret i64 %0, !dbg !2797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @tmr_cnt_read(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !2798 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %ns = alloca i64, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2803, metadata !DIExpression()), !dbg !2804
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2805
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !2806
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2804
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2807, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !2811, metadata !DIExpression()), !dbg !2812
  %1 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2813
  %read = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %1, i32 0, i32 19, !dbg !2814
  %2 = load i32 (i32*)*, i32 (i32*)** %read, align 8, !dbg !2814
  %3 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2815
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %3, i32 0, i32 0, !dbg !2816
  %4 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !2816
  %tmr_cnt_l = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %4, i32 0, i32 7, !dbg !2817
  %call = call i32 %2(i32* %tmr_cnt_l) #11, !dbg !2813
  store i32 %call, i32* %lo, align 4, !dbg !2818
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2819
  %read2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 19, !dbg !2820
  %6 = load i32 (i32*)*, i32 (i32*)** %read2, align 8, !dbg !2820
  %7 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2821
  %ctrl_regs3 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %7, i32 0, i32 0, !dbg !2822
  %8 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs3, align 8, !dbg !2822
  %tmr_cnt_h = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %8, i32 0, i32 6, !dbg !2823
  %call4 = call i32 %6(i32* %tmr_cnt_h) #11, !dbg !2819
  store i32 %call4, i32* %hi, align 4, !dbg !2824
  %9 = load i32, i32* %hi, align 4, !dbg !2825
  %conv = zext i32 %9 to i64, !dbg !2826
  %shl = shl i64 %conv, 32, !dbg !2827
  store i64 %shl, i64* %ns, align 8, !dbg !2828
  %10 = load i32, i32* %lo, align 4, !dbg !2829
  %conv5 = zext i32 %10 to i64, !dbg !2829
  %11 = load i64, i64* %ns, align 8, !dbg !2830
  %or = or i64 %11, %conv5, !dbg !2830
  store i64 %or, i64* %ns, align 8, !dbg !2830
  %12 = load i64, i64* %ns, align 8, !dbg !2831
  ret i64 %12, !dbg !2832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tmr_cnt_write(%struct.ptp_qoriq* %ptp_qoriq, i64 %ns) #0 !dbg !2833 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %ns.addr = alloca i64, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !2836, metadata !DIExpression()), !dbg !2837
  store i64 %ns, i64* %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ns.addr, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2840, metadata !DIExpression()), !dbg !2841
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2842
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !2843
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !2844, metadata !DIExpression()), !dbg !2845
  %1 = load i64, i64* %ns.addr, align 8, !dbg !2846
  %shr = lshr i64 %1, 32, !dbg !2847
  %conv = trunc i64 %shr to i32, !dbg !2846
  store i32 %conv, i32* %hi, align 4, !dbg !2845
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !2848, metadata !DIExpression()), !dbg !2849
  %2 = load i64, i64* %ns.addr, align 8, !dbg !2850
  %and = and i64 %2, 4294967295, !dbg !2851
  %conv2 = trunc i64 %and to i32, !dbg !2850
  store i32 %conv2, i32* %lo, align 4, !dbg !2849
  %3 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2852
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %3, i32 0, i32 20, !dbg !2853
  %4 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !2853
  %5 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2854
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %5, i32 0, i32 0, !dbg !2855
  %6 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !2855
  %tmr_cnt_l = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %6, i32 0, i32 7, !dbg !2856
  %7 = load i32, i32* %lo, align 4, !dbg !2857
  call void %4(i32* %tmr_cnt_l, i32 %7) #11, !dbg !2852
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2858
  %write3 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 20, !dbg !2859
  %9 = load void (i32*, i32)*, void (i32*, i32)** %write3, align 8, !dbg !2859
  %10 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2860
  %ctrl_regs4 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %10, i32 0, i32 0, !dbg !2861
  %11 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs4, align 8, !dbg !2861
  %tmr_cnt_h = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %11, i32 0, i32 6, !dbg !2862
  %12 = load i32, i32* %hi, align 4, !dbg !2863
  call void %9(i32* %tmr_cnt_h, i32 %12) #11, !dbg !2858
  ret void, !dbg !2864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_fipers(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !2865 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2872
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !2873
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2871
  %1 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2874
  call void @set_alarm(%struct.ptp_qoriq* %1) #11, !dbg !2875
  %2 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2876
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %2, i32 0, i32 20, !dbg !2877
  %3 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !2877
  %4 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2878
  %fiper_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %4, i32 0, i32 2, !dbg !2879
  %5 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs, align 8, !dbg !2879
  %tmr_fiper1 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %5, i32 0, i32 0, !dbg !2880
  %6 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2881
  %tmr_fiper12 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %6, i32 0, i32 16, !dbg !2882
  %7 = load i32, i32* %tmr_fiper12, align 4, !dbg !2882
  call void %3(i32* %tmr_fiper1, i32 %7) #11, !dbg !2876
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2883
  %write3 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 20, !dbg !2884
  %9 = load void (i32*, i32)*, void (i32*, i32)** %write3, align 8, !dbg !2884
  %10 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2885
  %fiper_regs4 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %10, i32 0, i32 2, !dbg !2886
  %11 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs4, align 8, !dbg !2886
  %tmr_fiper2 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %11, i32 0, i32 1, !dbg !2887
  %12 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2888
  %tmr_fiper25 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %12, i32 0, i32 17, !dbg !2889
  %13 = load i32, i32* %tmr_fiper25, align 8, !dbg !2889
  call void %9(i32* %tmr_fiper2, i32 %13) #11, !dbg !2883
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2890
  %fiper3_support = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 9, !dbg !2892
  %15 = load i8, i8* %fiper3_support, align 1, !dbg !2892
  %tobool = trunc i8 %15 to i1, !dbg !2892
  br i1 %tobool, label %if.then, label %if.end, !dbg !2893

if.then:                                          ; preds = %entry
  %16 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2894
  %write6 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %16, i32 0, i32 20, !dbg !2895
  %17 = load void (i32*, i32)*, void (i32*, i32)** %write6, align 8, !dbg !2895
  %18 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !2896
  %fiper_regs7 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %18, i32 0, i32 2, !dbg !2897
  %19 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs7, align 8, !dbg !2897
  %tmr_fiper3 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %19, i32 0, i32 2, !dbg !2898
  %20 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !2899
  %tmr_fiper38 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %20, i32 0, i32 18, !dbg !2900
  %21 = load i32, i32* %tmr_fiper38, align 4, !dbg !2900
  call void %17(i32* %tmr_fiper3, i32 %21) #11, !dbg !2894
  br label %if.end, !dbg !2894

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_gettime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #0 !dbg !2902 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !2699, metadata !DIExpression()), !dbg !2903
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2705, metadata !DIExpression()), !dbg !2905
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2707, metadata !DIExpression()), !dbg !2906
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  %ns = alloca i64, align 8
  %flags = alloca i64, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_qoriq*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %tmp24 = alloca %struct.timespec64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2923, metadata !DIExpression()), !dbg !2925
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2925
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2925
  store i8* %1, i8** %__mptr, align 8, !dbg !2925
  br label %do.body, !dbg !2925

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2926

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2925
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !2925
  %3 = bitcast i8* %add.ptr to %struct.ptp_qoriq*, !dbg !2925
  store %struct.ptp_qoriq* %3, %struct.ptp_qoriq** %tmp, align 8, !dbg !2926
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %tmp, align 8, !dbg !2925
  store %struct.ptp_qoriq* %4, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2922
  br label %do.body1, !dbg !2928

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2929

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2933, metadata !DIExpression()), !dbg !2932
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2932
  %conv = zext i1 %cmp to i32, !dbg !2932
  store i32 1, i32* %tmp3, align 4, !dbg !2932
  %5 = load i32, i32* %tmp3, align 4, !dbg !2932
  br label %do.body4, !dbg !2934

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2935

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2936

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2942, metadata !DIExpression()), !dbg !2941
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2941
  %conv10 = zext i1 %cmp9 to i32, !dbg !2941
  store i32 1, i32* %tmp11, align 4, !dbg !2941
  %6 = load i32, i32* %tmp11, align 4, !dbg !2941
  %call = call i64 @arch_local_irq_save() #11, !dbg !2943
  store i64 %call, i64* %flags, align 8, !dbg !2943
  br label %do.end12, !dbg !2943

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2936

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2935

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2944, !srcloc !2945
  br label %do.body15, !dbg !2944

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2946
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %7, i32 0, i32 2, !dbg !2946
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2947
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2948
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2948
  br label %do.end17, !dbg !2946

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2944

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2935

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2934

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2929

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2949
  %call22 = call i64 @tmr_cnt_read(%struct.ptp_qoriq* %10) #11, !dbg !2950
  store i64 %call22, i64* %ns, align 8, !dbg !2951
  %11 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2952
  %lock23 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %11, i32 0, i32 2, !dbg !2953
  %12 = load i64, i64* %flags, align 8, !dbg !2954
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !205, metadata !2768, metadata !DIExpression()) #7, !dbg !2955
  call void @llvm.dbg.declare(metadata !205, metadata !2772, metadata !DIExpression()) #7, !dbg !2955
  store i32 1, i32* %tmp.i, align 4, !dbg !2955
  %13 = load i32, i32* %tmp.i, align 4, !dbg !2955
  call void @llvm.dbg.declare(metadata !205, metadata !2773, metadata !DIExpression()) #7, !dbg !2956
  call void @llvm.dbg.declare(metadata !205, metadata !2779, metadata !DIExpression()) #7, !dbg !2956
  store i32 1, i32* %tmp8.i, align 4, !dbg !2956
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !2956
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !2957
  call void @arch_local_irq_restore(i64 %15) #12, !dbg !2957
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2958, !srcloc !2783
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !2959
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !2959
  %rlock.i27 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !2959
  %18 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2960
  %19 = load i64, i64* %ns, align 8, !dbg !2961
  %call25 = call { i64, i64 } @ns_to_timespec64(i64 %19) #11, !dbg !2962
  %20 = bitcast %struct.timespec64* %tmp24 to { i64, i64 }*, !dbg !2962
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0, !dbg !2962
  %22 = extractvalue { i64, i64 } %call25, 0, !dbg !2962
  store i64 %22, i64* %21, align 8, !dbg !2962
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1, !dbg !2962
  %24 = extractvalue { i64, i64 } %call25, 1, !dbg !2962
  store i64 %24, i64* %23, align 8, !dbg !2962
  %25 = bitcast %struct.timespec64* %18 to i8*, !dbg !2962
  %26 = bitcast %struct.timespec64* %tmp24 to i8*, !dbg !2962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false), !dbg !2962
  ret i32 0, !dbg !2963
}

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_settime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #0 !dbg !2964 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !2699, metadata !DIExpression()), !dbg !2965
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2705, metadata !DIExpression()), !dbg !2967
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2707, metadata !DIExpression()), !dbg !2968
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  %ns = alloca i64, align 8
  %flags = alloca i64, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_qoriq*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2985, metadata !DIExpression()), !dbg !2987
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !2987
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !2987
  store i8* %1, i8** %__mptr, align 8, !dbg !2987
  br label %do.body, !dbg !2987

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2988

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2987
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !2987
  %3 = bitcast i8* %add.ptr to %struct.ptp_qoriq*, !dbg !2987
  store %struct.ptp_qoriq* %3, %struct.ptp_qoriq** %tmp, align 8, !dbg !2988
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %tmp, align 8, !dbg !2987
  store %struct.ptp_qoriq* %4, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !2984
  %5 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !2990
  %call = call i64 @timespec64_to_ns(%struct.timespec64* %5) #11, !dbg !2991
  store i64 %call, i64* %ns, align 8, !dbg !2992
  br label %do.body1, !dbg !2993

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2994

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2998, metadata !DIExpression()), !dbg !2997
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2997
  %conv = zext i1 %cmp to i32, !dbg !2997
  store i32 1, i32* %tmp3, align 4, !dbg !2997
  %6 = load i32, i32* %tmp3, align 4, !dbg !2997
  br label %do.body4, !dbg !2999

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !3000

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !3001

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !3003, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !3007, metadata !DIExpression()), !dbg !3006
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !3006
  %conv10 = zext i1 %cmp9 to i32, !dbg !3006
  store i32 1, i32* %tmp11, align 4, !dbg !3006
  %7 = load i32, i32* %tmp11, align 4, !dbg !3006
  %call12 = call i64 @arch_local_irq_save() #11, !dbg !3008
  store i64 %call12, i64* %flags, align 8, !dbg !3008
  br label %do.end13, !dbg !3008

do.end13:                                         ; preds = %do.body6
  br label %do.end14, !dbg !3001

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !3000

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3009, !srcloc !3010
  br label %do.body16, !dbg !3009

do.body16:                                        ; preds = %do.body15
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3011
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 2, !dbg !3011
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3012
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !3013
  %rlock.i = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !3013
  br label %do.end18, !dbg !3011

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !3009

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !3000

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2999

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !2994

do.end22:                                         ; preds = %do.end21
  %11 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3014
  %12 = load i64, i64* %ns, align 8, !dbg !3015
  call void @tmr_cnt_write(%struct.ptp_qoriq* %11, i64 %12) #11, !dbg !3016
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3017
  call void @set_fipers(%struct.ptp_qoriq* %13) #11, !dbg !3018
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3019
  %lock23 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 2, !dbg !3020
  %15 = load i64, i64* %flags, align 8, !dbg !3021
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !205, metadata !2768, metadata !DIExpression()) #7, !dbg !3022
  call void @llvm.dbg.declare(metadata !205, metadata !2772, metadata !DIExpression()) #7, !dbg !3022
  store i32 1, i32* %tmp.i, align 4, !dbg !3022
  %16 = load i32, i32* %tmp.i, align 4, !dbg !3022
  call void @llvm.dbg.declare(metadata !205, metadata !2773, metadata !DIExpression()) #7, !dbg !3023
  call void @llvm.dbg.declare(metadata !205, metadata !2779, metadata !DIExpression()) #7, !dbg !3023
  store i32 1, i32* %tmp8.i, align 4, !dbg !3023
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !3023
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !3024
  call void @arch_local_irq_restore(i64 %18) #12, !dbg !3024
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3025, !srcloc !2783
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !3026
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !3026
  %rlock.i25 = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !3026
  ret i32 0, !dbg !3027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @timespec64_to_ns(%struct.timespec64* %ts) #0 !dbg !3028 {
entry:
  %retval = alloca i64, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !3031, metadata !DIExpression()), !dbg !3032
  %0 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !3033
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %0, i32 0, i32 0, !dbg !3035
  %1 = load i64, i64* %tv_sec, align 8, !dbg !3035
  %cmp = icmp uge i64 %1, 9223372036, !dbg !3036
  br i1 %cmp, label %if.then, label %if.end, !dbg !3037

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !3038
  br label %return, !dbg !3038

if.end:                                           ; preds = %entry
  %2 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !3039
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0, !dbg !3040
  %3 = load i64, i64* %tv_sec1, align 8, !dbg !3040
  %mul = mul i64 %3, 1000000000, !dbg !3041
  %4 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !3042
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1, !dbg !3043
  %5 = load i64, i64* %tv_nsec, align 8, !dbg !3043
  %add = add i64 %mul, %5, !dbg !3044
  store i64 %add, i64* %retval, align 8, !dbg !3045
  br label %return, !dbg !3045

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !3046
  ret i64 %6, !dbg !3046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_enable(%struct.ptp_clock_info* %ptp, %struct.ptp_clock_request* %rq, i32 %on) #0 !dbg !3047 {
entry:
  %lock.addr.i40 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i40, metadata !2699, metadata !DIExpression()), !dbg !3048
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2705, metadata !DIExpression()), !dbg !3050
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2707, metadata !DIExpression()), !dbg !3051
  %retval = alloca i32, align 4
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %rq.addr = alloca %struct.ptp_clock_request*, align 8
  %on.addr = alloca i32, align 4
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %flags = alloca i64, align 8
  %bit = alloca i32, align 4
  %mask = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !3058, metadata !DIExpression()), !dbg !3059
  store %struct.ptp_clock_request* %rq, %struct.ptp_clock_request** %rq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_request** %rq.addr, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3066, metadata !DIExpression()), !dbg !3068
  %0 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ptp.addr, align 8, !dbg !3068
  %1 = bitcast %struct.ptp_clock_info* %0 to i8*, !dbg !3068
  store i8* %1, i8** %__mptr, align 8, !dbg !3068
  br label %do.body, !dbg !3068

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3069

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3068
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !3068
  %3 = bitcast i8* %add.ptr to %struct.ptp_qoriq*, !dbg !3068
  store %struct.ptp_qoriq* %3, %struct.ptp_qoriq** %tmp, align 8, !dbg !3069
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %tmp, align 8, !dbg !3068
  store %struct.ptp_qoriq* %4, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3065
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !3071, metadata !DIExpression()), !dbg !3072
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3073
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 1, !dbg !3074
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3072
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i32 0, i32* %mask, align 4, !dbg !3080
  %6 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %rq.addr, align 8, !dbg !3081
  %type = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %6, i32 0, i32 0, !dbg !3082
  %7 = load i32, i32* %type, align 8, !dbg !3082
  switch i32 %7, label %sw.default7 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ], !dbg !3083

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %rq.addr, align 8, !dbg !3084
  %9 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 1, !dbg !3086
  %extts = bitcast %union.anon.0* %9 to %struct.ptp_extts_request*, !dbg !3086
  %index = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts, i32 0, i32 0, !dbg !3087
  %10 = load i32, i32* %index, align 8, !dbg !3087
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
  ], !dbg !3088

sw.bb2:                                           ; preds = %sw.bb
  store i32 16777216, i32* %bit, align 4, !dbg !3089
  br label %sw.epilog, !dbg !3091

sw.bb3:                                           ; preds = %sw.bb
  store i32 33554432, i32* %bit, align 4, !dbg !3092
  br label %sw.epilog, !dbg !3093

sw.default:                                       ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !3094
  br label %return, !dbg !3094

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2
  %11 = load i32, i32* %on.addr, align 4, !dbg !3095
  %tobool = icmp ne i32 %11, 0, !dbg !3095
  br i1 %tobool, label %if.then, label %if.end, !dbg !3097

if.then:                                          ; preds = %sw.epilog
  %12 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3098
  %13 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %rq.addr, align 8, !dbg !3099
  %14 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %13, i32 0, i32 1, !dbg !3100
  %extts4 = bitcast %union.anon.0* %14 to %struct.ptp_extts_request*, !dbg !3100
  %index5 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts4, i32 0, i32 0, !dbg !3101
  %15 = load i32, i32* %index5, align 8, !dbg !3101
  %call = call i32 @extts_clean_up(%struct.ptp_qoriq* %12, i32 %15, i1 zeroext false) #11, !dbg !3102
  br label %if.end, !dbg !3102

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %sw.epilog8, !dbg !3103

sw.bb6:                                           ; preds = %do.end
  store i32 128, i32* %bit, align 4, !dbg !3104
  br label %sw.epilog8, !dbg !3105

sw.default7:                                      ; preds = %do.end
  store i32 -95, i32* %retval, align 4, !dbg !3106
  br label %return, !dbg !3106

sw.epilog8:                                       ; preds = %sw.bb6, %if.end
  br label %do.body9, !dbg !3107

do.body9:                                         ; preds = %sw.epilog8
  br label %do.body10, !dbg !3108

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3112, metadata !DIExpression()), !dbg !3111
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3111
  %conv = zext i1 %cmp to i32, !dbg !3111
  store i32 1, i32* %tmp11, align 4, !dbg !3111
  %16 = load i32, i32* %tmp11, align 4, !dbg !3111
  br label %do.body12, !dbg !3113

do.body12:                                        ; preds = %do.body10
  br label %do.body13, !dbg !3114

do.body13:                                        ; preds = %do.body12
  br label %do.body14, !dbg !3115

do.body14:                                        ; preds = %do.body13
  call void @llvm.dbg.declare(metadata i64* %__dummy15, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.declare(metadata i64* %__dummy216, metadata !3121, metadata !DIExpression()), !dbg !3120
  %cmp17 = icmp eq i64* %__dummy15, %__dummy216, !dbg !3120
  %conv18 = zext i1 %cmp17 to i32, !dbg !3120
  store i32 1, i32* %tmp19, align 4, !dbg !3120
  %17 = load i32, i32* %tmp19, align 4, !dbg !3120
  %call20 = call i64 @arch_local_irq_save() #11, !dbg !3122
  store i64 %call20, i64* %flags, align 8, !dbg !3122
  br label %do.end21, !dbg !3122

do.end21:                                         ; preds = %do.body14
  br label %do.end22, !dbg !3115

do.end22:                                         ; preds = %do.end21
  br label %do.body23, !dbg !3114

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3123, !srcloc !3124
  br label %do.body24, !dbg !3123

do.body24:                                        ; preds = %do.body23
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3125
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 2, !dbg !3125
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3126
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !3127
  %rlock.i = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !3127
  br label %do.end26, !dbg !3125

do.end26:                                         ; preds = %do.body24
  br label %do.end27, !dbg !3123

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !3114

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !3113

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !3108

do.end30:                                         ; preds = %do.end29
  %21 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3128
  %read = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %21, i32 0, i32 19, !dbg !3129
  %22 = load i32 (i32*)*, i32 (i32*)** %read, align 8, !dbg !3129
  %23 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3130
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %23, i32 0, i32 0, !dbg !3131
  %24 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !3131
  %tmr_temask = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %24, i32 0, i32 2, !dbg !3132
  %call31 = call i32 %22(i32* %tmr_temask) #11, !dbg !3128
  store i32 %call31, i32* %mask, align 4, !dbg !3133
  %25 = load i32, i32* %on.addr, align 4, !dbg !3134
  %tobool32 = icmp ne i32 %25, 0, !dbg !3134
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !3136

if.then33:                                        ; preds = %do.end30
  %26 = load i32, i32* %bit, align 4, !dbg !3137
  %27 = load i32, i32* %mask, align 4, !dbg !3139
  %or = or i32 %27, %26, !dbg !3139
  store i32 %or, i32* %mask, align 4, !dbg !3139
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3140
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %28, i32 0, i32 20, !dbg !3141
  %29 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !3141
  %30 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3142
  %ctrl_regs34 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %30, i32 0, i32 0, !dbg !3143
  %31 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs34, align 8, !dbg !3143
  %tmr_tevent = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %31, i32 0, i32 1, !dbg !3144
  %32 = load i32, i32* %bit, align 4, !dbg !3145
  call void %29(i32* %tmr_tevent, i32 %32) #11, !dbg !3140
  br label %if.end35, !dbg !3146

if.else:                                          ; preds = %do.end30
  %33 = load i32, i32* %bit, align 4, !dbg !3147
  %neg = xor i32 %33, -1, !dbg !3149
  %34 = load i32, i32* %mask, align 4, !dbg !3150
  %and = and i32 %34, %neg, !dbg !3150
  store i32 %and, i32* %mask, align 4, !dbg !3150
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then33
  %35 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3151
  %write36 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %35, i32 0, i32 20, !dbg !3152
  %36 = load void (i32*, i32)*, void (i32*, i32)** %write36, align 8, !dbg !3152
  %37 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3153
  %ctrl_regs37 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %37, i32 0, i32 0, !dbg !3154
  %38 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs37, align 8, !dbg !3154
  %tmr_temask38 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %38, i32 0, i32 2, !dbg !3155
  %39 = load i32, i32* %mask, align 4, !dbg !3156
  call void %36(i32* %tmr_temask38, i32 %39) #11, !dbg !3151
  %40 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3157
  %lock39 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %40, i32 0, i32 2, !dbg !3158
  %41 = load i64, i64* %flags, align 8, !dbg !3159
  store %struct.spinlock* %lock39, %struct.spinlock** %lock.addr.i40, align 8
  store i64 %41, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !205, metadata !2768, metadata !DIExpression()) #7, !dbg !3160
  call void @llvm.dbg.declare(metadata !205, metadata !2772, metadata !DIExpression()) #7, !dbg !3160
  store i32 1, i32* %tmp.i, align 4, !dbg !3160
  %42 = load i32, i32* %tmp.i, align 4, !dbg !3160
  call void @llvm.dbg.declare(metadata !205, metadata !2773, metadata !DIExpression()) #7, !dbg !3161
  call void @llvm.dbg.declare(metadata !205, metadata !2779, metadata !DIExpression()) #7, !dbg !3161
  store i32 1, i32* %tmp8.i, align 4, !dbg !3161
  %43 = load i32, i32* %tmp8.i, align 4, !dbg !3161
  %44 = load i64, i64* %flags.addr.i, align 8, !dbg !3162
  call void @arch_local_irq_restore(i64 %44) #12, !dbg !3162
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3163, !srcloc !2783
  %45 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i40, align 8, !dbg !3164
  %46 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %45, i32 0, i32 0, !dbg !3164
  %rlock.i41 = bitcast %union.anon* %46 to %struct.raw_spinlock*, !dbg !3164
  store i32 0, i32* %retval, align 4, !dbg !3165
  br label %return, !dbg !3165

return:                                           ; preds = %if.end35, %sw.default7, %sw.default
  %47 = load i32, i32* %retval, align 4, !dbg !3166
  ret i32 %47, !dbg !3166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_qoriq_init(%struct.ptp_qoriq* %ptp_qoriq, i8* %base, %struct.ptp_clock_info* %caps) #0 !dbg !3167 {
entry:
  %lock.addr.i157 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i157, metadata !2699, metadata !DIExpression()), !dbg !3171
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2705, metadata !DIExpression()), !dbg !3173
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i155 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i155, metadata !2707, metadata !DIExpression()), !dbg !3174
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2707, metadata !DIExpression()), !dbg !3181
  %retval = alloca i32, align 4
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %base.addr = alloca i8*, align 8
  %caps.addr = alloca %struct.ptp_clock_info*, align 8
  %node = alloca %struct.device_node*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %now = alloca %struct.timespec64, align 8
  %flags = alloca i64, align 8
  %tmr_ctrl = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy90 = alloca i64, align 8
  %__dummy291 = alloca i64, align 8
  %tmp94 = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  store %struct.ptp_clock_info* %caps, %struct.ptp_clock_info** %caps.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %caps.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3190, metadata !DIExpression()), !dbg !3191
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3192
  %dev = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 7, !dbg !3193
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3193
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !3194
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3194
  store %struct.device_node* %2, %struct.device_node** %node, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.declare(metadata %struct.timespec64* %now, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.declare(metadata i32* %tmr_ctrl, metadata !3201, metadata !DIExpression()), !dbg !3202
  %3 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3203
  %tobool = icmp ne %struct.device_node* %3, null, !dbg !3203
  br i1 %tobool, label %if.end, label %if.then, !dbg !3205

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3206
  br label %return, !dbg !3206

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %base.addr, align 8, !dbg !3207
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3208
  %base1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 0, !dbg !3209
  store i8* %4, i8** %base1, align 8, !dbg !3210
  %6 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3211
  %caps2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %6, i32 0, i32 4, !dbg !3212
  %7 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %caps.addr, align 8, !dbg !3213
  %8 = bitcast %struct.ptp_clock_info* %caps2 to i8*, !dbg !3214
  %9 = bitcast %struct.ptp_clock_info* %7 to i8*, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 144, i1 false), !dbg !3214
  %10 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3215
  %11 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3217
  %cksel = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %11, i32 0, i32 15, !dbg !3218
  %call = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %cksel) #11, !dbg !3219
  %tobool3 = icmp ne i32 %call, 0, !dbg !3219
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3220

if.then4:                                         ; preds = %if.end
  %12 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3221
  %cksel5 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %12, i32 0, i32 15, !dbg !3222
  store i32 1, i32* %cksel5, align 8, !dbg !3223
  br label %if.end6, !dbg !3221

if.end6:                                          ; preds = %if.then4, %if.end
  %13 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3224
  %call7 = call zeroext i1 @of_property_read_bool(%struct.device_node* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !3226
  br i1 %call7, label %if.then8, label %if.else, !dbg !3227

if.then8:                                         ; preds = %if.end6
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3228
  %extts_fifo_support = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 8, !dbg !3229
  store i8 1, i8* %extts_fifo_support, align 8, !dbg !3230
  br label %if.end10, !dbg !3228

if.else:                                          ; preds = %if.end6
  %15 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3231
  %extts_fifo_support9 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %15, i32 0, i32 8, !dbg !3232
  store i8 0, i8* %extts_fifo_support9, align 8, !dbg !3233
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %16 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3234
  %call11 = call i32 @of_device_is_compatible(%struct.device_node* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !3236
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3236
  br i1 %tobool12, label %if.then15, label %lor.lhs.false, !dbg !3237

lor.lhs.false:                                    ; preds = %if.end10
  %17 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3238
  %call13 = call i32 @of_device_is_compatible(%struct.device_node* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !3239
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3239
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3240

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3241
  %fiper3_support = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 9, !dbg !3242
  store i8 1, i8* %fiper3_support, align 1, !dbg !3243
  br label %if.end16, !dbg !3241

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  %19 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3244
  %20 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3246
  %tclk_period = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %20, i32 0, i32 12, !dbg !3247
  %call17 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %tclk_period) #11, !dbg !3248
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3248
  br i1 %tobool18, label %if.then40, label %lor.lhs.false19, !dbg !3249

lor.lhs.false19:                                  ; preds = %if.end16
  %21 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3250
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3251
  %tmr_prsc = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %22, i32 0, i32 13, !dbg !3252
  %call20 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %tmr_prsc) #11, !dbg !3253
  %tobool21 = icmp ne i32 %call20, 0, !dbg !3253
  br i1 %tobool21, label %if.then40, label %lor.lhs.false22, !dbg !3254

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %23 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3255
  %24 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3256
  %tmr_add = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %24, i32 0, i32 14, !dbg !3257
  %call23 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %tmr_add) #11, !dbg !3258
  %tobool24 = icmp ne i32 %call23, 0, !dbg !3258
  br i1 %tobool24, label %if.then40, label %lor.lhs.false25, !dbg !3259

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %25 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3260
  %26 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3261
  %tmr_fiper1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %26, i32 0, i32 16, !dbg !3262
  %call26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %tmr_fiper1) #11, !dbg !3263
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3263
  br i1 %tobool27, label %if.then40, label %lor.lhs.false28, !dbg !3264

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %27 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3265
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3266
  %tmr_fiper2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %28, i32 0, i32 17, !dbg !3267
  %call29 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %tmr_fiper2) #11, !dbg !3268
  %tobool30 = icmp ne i32 %call29, 0, !dbg !3268
  br i1 %tobool30, label %if.then40, label %lor.lhs.false31, !dbg !3269

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %29 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3270
  %30 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3271
  %caps32 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %30, i32 0, i32 4, !dbg !3272
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %caps32, i32 0, i32 2, !dbg !3273
  %call33 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %max_adj) #11, !dbg !3274
  %tobool34 = icmp ne i32 %call33, 0, !dbg !3274
  br i1 %tobool34, label %if.then40, label %lor.lhs.false35, !dbg !3275

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %31 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3276
  %fiper3_support36 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %31, i32 0, i32 9, !dbg !3277
  %32 = load i8, i8* %fiper3_support36, align 1, !dbg !3277
  %tobool37 = trunc i8 %32 to i1, !dbg !3277
  br i1 %tobool37, label %land.lhs.true, label %if.end46, !dbg !3278

land.lhs.true:                                    ; preds = %lor.lhs.false35
  %33 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3279
  %34 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3280
  %tmr_fiper3 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %34, i32 0, i32 18, !dbg !3281
  %call38 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %tmr_fiper3) #11, !dbg !3282
  %tobool39 = icmp ne i32 %call38, 0, !dbg !3282
  br i1 %tobool39, label %if.then40, label %if.end46, !dbg !3283

if.then40:                                        ; preds = %land.lhs.true, %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %if.end16
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.11, i64 0, i64 0)) #13, !dbg !3284
  %35 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3286
  %36 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3288
  %call42 = call i32 @ptp_qoriq_auto_config(%struct.ptp_qoriq* %35, %struct.device_node* %36) #11, !dbg !3289
  %tobool43 = icmp ne i32 %call42, 0, !dbg !3289
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3290

if.then44:                                        ; preds = %if.then40
  store i32 -19, i32* %retval, align 4, !dbg !3291
  br label %return, !dbg !3291

if.end45:                                         ; preds = %if.then40
  br label %if.end46, !dbg !3292

if.end46:                                         ; preds = %if.end45, %land.lhs.true, %lor.lhs.false35
  %37 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3293
  %call47 = call zeroext i1 @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !3295
  br i1 %call47, label %if.then48, label %if.else49, !dbg !3296

if.then48:                                        ; preds = %if.end46
  %38 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3297
  %read = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %38, i32 0, i32 19, !dbg !3299
  store i32 (i32*)* @qoriq_read_le, i32 (i32*)** %read, align 8, !dbg !3300
  %39 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3301
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %39, i32 0, i32 20, !dbg !3302
  store void (i32*, i32)* @qoriq_write_le, void (i32*, i32)** %write, align 8, !dbg !3303
  br label %if.end52, !dbg !3304

if.else49:                                        ; preds = %if.end46
  %40 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3305
  %read50 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %40, i32 0, i32 19, !dbg !3307
  store i32 (i32*)* @qoriq_read_be, i32 (i32*)** %read50, align 8, !dbg !3308
  %41 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3309
  %write51 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %41, i32 0, i32 20, !dbg !3310
  store void (i32*, i32)* @qoriq_write_be, void (i32*, i32)** %write51, align 8, !dbg !3311
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48
  %42 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3312
  %call53 = call i32 @of_device_is_compatible(%struct.device_node* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !3314
  %tobool54 = icmp ne i32 %call53, 0, !dbg !3314
  br i1 %tobool54, label %if.then55, label %if.else63, !dbg !3315

if.then55:                                        ; preds = %if.end52
  %43 = load i8*, i8** %base.addr, align 8, !dbg !3316
  %add.ptr = getelementptr i8, i8* %43, i64 0, !dbg !3318
  %44 = bitcast i8* %add.ptr to %struct.ctrl_regs*, !dbg !3316
  %45 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3319
  %regs56 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %45, i32 0, i32 1, !dbg !3320
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs56, i32 0, i32 0, !dbg !3321
  store %struct.ctrl_regs* %44, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !3322
  %46 = load i8*, i8** %base.addr, align 8, !dbg !3323
  %add.ptr57 = getelementptr i8, i8* %46, i64 64, !dbg !3324
  %47 = bitcast i8* %add.ptr57 to %struct.alarm_regs*, !dbg !3323
  %48 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3325
  %regs58 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %48, i32 0, i32 1, !dbg !3326
  %alarm_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs58, i32 0, i32 1, !dbg !3327
  store %struct.alarm_regs* %47, %struct.alarm_regs** %alarm_regs, align 8, !dbg !3328
  %49 = load i8*, i8** %base.addr, align 8, !dbg !3329
  %add.ptr59 = getelementptr i8, i8* %49, i64 128, !dbg !3330
  %50 = bitcast i8* %add.ptr59 to %struct.fiper_regs*, !dbg !3329
  %51 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3331
  %regs60 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %51, i32 0, i32 1, !dbg !3332
  %fiper_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs60, i32 0, i32 2, !dbg !3333
  store %struct.fiper_regs* %50, %struct.fiper_regs** %fiper_regs, align 8, !dbg !3334
  %52 = load i8*, i8** %base.addr, align 8, !dbg !3335
  %add.ptr61 = getelementptr i8, i8* %52, i64 160, !dbg !3336
  %53 = bitcast i8* %add.ptr61 to %struct.etts_regs*, !dbg !3335
  %54 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3337
  %regs62 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %54, i32 0, i32 1, !dbg !3338
  %etts_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs62, i32 0, i32 3, !dbg !3339
  store %struct.etts_regs* %53, %struct.etts_regs** %etts_regs, align 8, !dbg !3340
  br label %if.end76, !dbg !3341

if.else63:                                        ; preds = %if.end52
  %55 = load i8*, i8** %base.addr, align 8, !dbg !3342
  %add.ptr64 = getelementptr i8, i8* %55, i64 128, !dbg !3344
  %56 = bitcast i8* %add.ptr64 to %struct.ctrl_regs*, !dbg !3342
  %57 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3345
  %regs65 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %57, i32 0, i32 1, !dbg !3346
  %ctrl_regs66 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs65, i32 0, i32 0, !dbg !3347
  store %struct.ctrl_regs* %56, %struct.ctrl_regs** %ctrl_regs66, align 8, !dbg !3348
  %58 = load i8*, i8** %base.addr, align 8, !dbg !3349
  %add.ptr67 = getelementptr i8, i8* %58, i64 184, !dbg !3350
  %59 = bitcast i8* %add.ptr67 to %struct.alarm_regs*, !dbg !3349
  %60 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3351
  %regs68 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %60, i32 0, i32 1, !dbg !3352
  %alarm_regs69 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs68, i32 0, i32 1, !dbg !3353
  store %struct.alarm_regs* %59, %struct.alarm_regs** %alarm_regs69, align 8, !dbg !3354
  %61 = load i8*, i8** %base.addr, align 8, !dbg !3355
  %add.ptr70 = getelementptr i8, i8* %61, i64 208, !dbg !3356
  %62 = bitcast i8* %add.ptr70 to %struct.fiper_regs*, !dbg !3355
  %63 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3357
  %regs71 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %63, i32 0, i32 1, !dbg !3358
  %fiper_regs72 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs71, i32 0, i32 2, !dbg !3359
  store %struct.fiper_regs* %62, %struct.fiper_regs** %fiper_regs72, align 8, !dbg !3360
  %64 = load i8*, i8** %base.addr, align 8, !dbg !3361
  %add.ptr73 = getelementptr i8, i8* %64, i64 224, !dbg !3362
  %65 = bitcast i8* %add.ptr73 to %struct.etts_regs*, !dbg !3361
  %66 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3363
  %regs74 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %66, i32 0, i32 1, !dbg !3364
  %etts_regs75 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %regs74, i32 0, i32 3, !dbg !3365
  store %struct.etts_regs* %65, %struct.etts_regs** %etts_regs75, align 8, !dbg !3366
  br label %if.end76

if.end76:                                         ; preds = %if.else63, %if.then55
  br label %do.body, !dbg !3367

do.body:                                          ; preds = %if.end76
  %67 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3368
  %lock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %67, i32 0, i32 2, !dbg !3368
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %68 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3369
  %69 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %68, i32 0, i32 0, !dbg !3370
  %rlock.i = bitcast %union.anon* %69 to %struct.raw_spinlock*, !dbg !3370
  %70 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3368
  %lock78 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %70, i32 0, i32 2, !dbg !3368
  %71 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !3368
  %rlock = bitcast %union.anon* %71 to %struct.raw_spinlock*, !dbg !3368
  %72 = bitcast %struct.spinlock* %lock78 to i8*, !dbg !3368
  %73 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !3368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 1 %73, i64 0, i1 false), !dbg !3368
  br label %do.end, !dbg !3368

do.end:                                           ; preds = %do.body
  call void @ktime_get_real_ts64(%struct.timespec64* %now) #11, !dbg !3371
  %74 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3372
  %caps79 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %74, i32 0, i32 4, !dbg !3373
  %call80 = call i32 @ptp_qoriq_settime(%struct.ptp_clock_info* %caps79, %struct.timespec64* %now) #11, !dbg !3374
  %75 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3375
  %tclk_period81 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %75, i32 0, i32 12, !dbg !3376
  %76 = load i32, i32* %tclk_period81, align 4, !dbg !3376
  %and = and i32 %76, 1023, !dbg !3377
  %shl = shl i32 %and, 16, !dbg !3378
  %77 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3379
  %cksel82 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %77, i32 0, i32 15, !dbg !3380
  %78 = load i32, i32* %cksel82, align 8, !dbg !3380
  %and83 = and i32 %78, 3, !dbg !3381
  %shl84 = shl i32 %and83, 0, !dbg !3382
  %or = or i32 %shl, %shl84, !dbg !3383
  store i32 %or, i32* %tmr_ctrl, align 4, !dbg !3384
  br label %do.body85, !dbg !3385

do.body85:                                        ; preds = %do.end
  br label %do.body86, !dbg !3386

do.body86:                                        ; preds = %do.body85
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3387, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3390, metadata !DIExpression()), !dbg !3389
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3389
  %conv = zext i1 %cmp to i32, !dbg !3389
  store i32 1, i32* %tmp, align 4, !dbg !3389
  %79 = load i32, i32* %tmp, align 4, !dbg !3389
  br label %do.body87, !dbg !3391

do.body87:                                        ; preds = %do.body86
  br label %do.body88, !dbg !3392

do.body88:                                        ; preds = %do.body87
  br label %do.body89, !dbg !3393

do.body89:                                        ; preds = %do.body88
  call void @llvm.dbg.declare(metadata i64* %__dummy90, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.declare(metadata i64* %__dummy291, metadata !3399, metadata !DIExpression()), !dbg !3398
  %cmp92 = icmp eq i64* %__dummy90, %__dummy291, !dbg !3398
  %conv93 = zext i1 %cmp92 to i32, !dbg !3398
  store i32 1, i32* %tmp94, align 4, !dbg !3398
  %80 = load i32, i32* %tmp94, align 4, !dbg !3398
  %call95 = call i64 @arch_local_irq_save() #11, !dbg !3400
  store i64 %call95, i64* %flags, align 8, !dbg !3400
  br label %do.end96, !dbg !3400

do.end96:                                         ; preds = %do.body89
  br label %do.end97, !dbg !3393

do.end97:                                         ; preds = %do.end96
  br label %do.body98, !dbg !3392

do.body98:                                        ; preds = %do.end97
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3401, !srcloc !3402
  br label %do.body99, !dbg !3401

do.body99:                                        ; preds = %do.body98
  %81 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3403
  %lock100 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %81, i32 0, i32 2, !dbg !3403
  store %struct.spinlock* %lock100, %struct.spinlock** %lock.addr.i155, align 8
  %82 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i155, align 8, !dbg !3404
  %83 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %82, i32 0, i32 0, !dbg !3405
  %rlock.i156 = bitcast %union.anon* %83 to %struct.raw_spinlock*, !dbg !3405
  br label %do.end102, !dbg !3403

do.end102:                                        ; preds = %do.body99
  br label %do.end103, !dbg !3401

do.end103:                                        ; preds = %do.end102
  br label %do.end104, !dbg !3392

do.end104:                                        ; preds = %do.end103
  br label %do.end105, !dbg !3391

do.end105:                                        ; preds = %do.end104
  br label %do.end106, !dbg !3386

do.end106:                                        ; preds = %do.end105
  %84 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3406
  %regs107 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %84, i32 0, i32 1, !dbg !3407
  store %struct.ptp_qoriq_registers* %regs107, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3408
  %85 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3409
  %write108 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %85, i32 0, i32 20, !dbg !3410
  %86 = load void (i32*, i32)*, void (i32*, i32)** %write108, align 8, !dbg !3410
  %87 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3411
  %ctrl_regs109 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %87, i32 0, i32 0, !dbg !3412
  %88 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs109, align 8, !dbg !3412
  %tmr_ctrl110 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %88, i32 0, i32 0, !dbg !3413
  %89 = load i32, i32* %tmr_ctrl, align 4, !dbg !3414
  call void %86(i32* %tmr_ctrl110, i32 %89) #11, !dbg !3409
  %90 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3415
  %write111 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %90, i32 0, i32 20, !dbg !3416
  %91 = load void (i32*, i32)*, void (i32*, i32)** %write111, align 8, !dbg !3416
  %92 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3417
  %ctrl_regs112 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %92, i32 0, i32 0, !dbg !3418
  %93 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs112, align 8, !dbg !3418
  %tmr_add113 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %93, i32 0, i32 8, !dbg !3419
  %94 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3420
  %tmr_add114 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %94, i32 0, i32 14, !dbg !3421
  %95 = load i32, i32* %tmr_add114, align 4, !dbg !3421
  call void %91(i32* %tmr_add113, i32 %95) #11, !dbg !3415
  %96 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3422
  %write115 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %96, i32 0, i32 20, !dbg !3423
  %97 = load void (i32*, i32)*, void (i32*, i32)** %write115, align 8, !dbg !3423
  %98 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3424
  %ctrl_regs116 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %98, i32 0, i32 0, !dbg !3425
  %99 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs116, align 8, !dbg !3425
  %tmr_prsc117 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %99, i32 0, i32 10, !dbg !3426
  %100 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3427
  %tmr_prsc118 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %100, i32 0, i32 13, !dbg !3428
  %101 = load i32, i32* %tmr_prsc118, align 8, !dbg !3428
  call void %97(i32* %tmr_prsc117, i32 %101) #11, !dbg !3422
  %102 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3429
  %write119 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %102, i32 0, i32 20, !dbg !3430
  %103 = load void (i32*, i32)*, void (i32*, i32)** %write119, align 8, !dbg !3430
  %104 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3431
  %fiper_regs120 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %104, i32 0, i32 2, !dbg !3432
  %105 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs120, align 8, !dbg !3432
  %tmr_fiper1121 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %105, i32 0, i32 0, !dbg !3433
  %106 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3434
  %tmr_fiper1122 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %106, i32 0, i32 16, !dbg !3435
  %107 = load i32, i32* %tmr_fiper1122, align 4, !dbg !3435
  call void %103(i32* %tmr_fiper1121, i32 %107) #11, !dbg !3429
  %108 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3436
  %write123 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %108, i32 0, i32 20, !dbg !3437
  %109 = load void (i32*, i32)*, void (i32*, i32)** %write123, align 8, !dbg !3437
  %110 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3438
  %fiper_regs124 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %110, i32 0, i32 2, !dbg !3439
  %111 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs124, align 8, !dbg !3439
  %tmr_fiper2125 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %111, i32 0, i32 1, !dbg !3440
  %112 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3441
  %tmr_fiper2126 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %112, i32 0, i32 17, !dbg !3442
  %113 = load i32, i32* %tmr_fiper2126, align 8, !dbg !3442
  call void %109(i32* %tmr_fiper2125, i32 %113) #11, !dbg !3436
  %114 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3443
  %fiper3_support127 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %114, i32 0, i32 9, !dbg !3445
  %115 = load i8, i8* %fiper3_support127, align 1, !dbg !3445
  %tobool128 = trunc i8 %115 to i1, !dbg !3445
  br i1 %tobool128, label %if.then129, label %if.end134, !dbg !3446

if.then129:                                       ; preds = %do.end106
  %116 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3447
  %write130 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %116, i32 0, i32 20, !dbg !3448
  %117 = load void (i32*, i32)*, void (i32*, i32)** %write130, align 8, !dbg !3448
  %118 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3449
  %fiper_regs131 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %118, i32 0, i32 2, !dbg !3450
  %119 = load %struct.fiper_regs*, %struct.fiper_regs** %fiper_regs131, align 8, !dbg !3450
  %tmr_fiper3132 = getelementptr inbounds %struct.fiper_regs, %struct.fiper_regs* %119, i32 0, i32 2, !dbg !3451
  %120 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3452
  %tmr_fiper3133 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %120, i32 0, i32 18, !dbg !3453
  %121 = load i32, i32* %tmr_fiper3133, align 4, !dbg !3453
  call void %117(i32* %tmr_fiper3132, i32 %121) #11, !dbg !3447
  br label %if.end134, !dbg !3447

if.end134:                                        ; preds = %if.then129, %do.end106
  %122 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3454
  call void @set_alarm(%struct.ptp_qoriq* %122) #11, !dbg !3455
  %123 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3456
  %write135 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %123, i32 0, i32 20, !dbg !3457
  %124 = load void (i32*, i32)*, void (i32*, i32)** %write135, align 8, !dbg !3457
  %125 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3458
  %ctrl_regs136 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %125, i32 0, i32 0, !dbg !3459
  %126 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs136, align 8, !dbg !3459
  %tmr_ctrl137 = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %126, i32 0, i32 0, !dbg !3460
  %127 = load i32, i32* %tmr_ctrl, align 4, !dbg !3461
  %or138 = or i32 %127, 268435456, !dbg !3462
  %or139 = or i32 %or138, 32768, !dbg !3463
  %or140 = or i32 %or139, 4, !dbg !3464
  %or141 = or i32 %or140, 16384, !dbg !3465
  call void %124(i32* %tmr_ctrl137, i32 %or141) #11, !dbg !3456
  %128 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3466
  %lock142 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %128, i32 0, i32 2, !dbg !3467
  %129 = load i64, i64* %flags, align 8, !dbg !3468
  store %struct.spinlock* %lock142, %struct.spinlock** %lock.addr.i157, align 8
  store i64 %129, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !205, metadata !2768, metadata !DIExpression()) #7, !dbg !3469
  call void @llvm.dbg.declare(metadata !205, metadata !2772, metadata !DIExpression()) #7, !dbg !3469
  store i32 1, i32* %tmp.i, align 4, !dbg !3469
  %130 = load i32, i32* %tmp.i, align 4, !dbg !3469
  call void @llvm.dbg.declare(metadata !205, metadata !2773, metadata !DIExpression()) #7, !dbg !3470
  call void @llvm.dbg.declare(metadata !205, metadata !2779, metadata !DIExpression()) #7, !dbg !3470
  store i32 1, i32* %tmp8.i, align 4, !dbg !3470
  %131 = load i32, i32* %tmp8.i, align 4, !dbg !3470
  %132 = load i64, i64* %flags.addr.i, align 8, !dbg !3471
  call void @arch_local_irq_restore(i64 %132) #12, !dbg !3471
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3472, !srcloc !2783
  %133 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i157, align 8, !dbg !3473
  %134 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %133, i32 0, i32 0, !dbg !3473
  %rlock.i158 = bitcast %union.anon* %134 to %struct.raw_spinlock*, !dbg !3473
  %135 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3474
  %caps143 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %135, i32 0, i32 4, !dbg !3475
  %136 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3476
  %dev144 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %136, i32 0, i32 7, !dbg !3477
  %137 = load %struct.device*, %struct.device** %dev144, align 8, !dbg !3477
  %call145 = call %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %caps143, %struct.device* %137) #11, !dbg !3478
  %138 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3479
  %clock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %138, i32 0, i32 3, !dbg !3480
  store %struct.ptp_clock* %call145, %struct.ptp_clock** %clock, align 8, !dbg !3481
  %139 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3482
  %clock146 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %139, i32 0, i32 3, !dbg !3484
  %140 = load %struct.ptp_clock*, %struct.ptp_clock** %clock146, align 8, !dbg !3484
  %141 = bitcast %struct.ptp_clock* %140 to i8*, !dbg !3482
  %call147 = call zeroext i1 @IS_ERR(i8* %141) #11, !dbg !3485
  br i1 %call147, label %if.then148, label %if.end152, !dbg !3486

if.then148:                                       ; preds = %if.end134
  %142 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3487
  %clock149 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %142, i32 0, i32 3, !dbg !3488
  %143 = load %struct.ptp_clock*, %struct.ptp_clock** %clock149, align 8, !dbg !3488
  %144 = bitcast %struct.ptp_clock* %143 to i8*, !dbg !3487
  %call150 = call i64 @PTR_ERR(i8* %144) #11, !dbg !3489
  %conv151 = trunc i64 %call150 to i32, !dbg !3489
  store i32 %conv151, i32* %retval, align 4, !dbg !3490
  br label %return, !dbg !3490

if.end152:                                        ; preds = %if.end134
  %145 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3491
  %clock153 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %145, i32 0, i32 3, !dbg !3492
  %146 = load %struct.ptp_clock*, %struct.ptp_clock** %clock153, align 8, !dbg !3492
  %call154 = call i32 @ptp_clock_index(%struct.ptp_clock* %146) #11, !dbg !3493
  %147 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3494
  %phc_index = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %147, i32 0, i32 11, !dbg !3495
  store i32 %call154, i32* %phc_index, align 8, !dbg !3496
  %148 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3497
  call void @ptp_qoriq_create_debugfs(%struct.ptp_qoriq* %148) #11, !dbg !3498
  store i32 0, i32* %retval, align 4, !dbg !3499
  br label %return, !dbg !3499

return:                                           ; preds = %if.end152, %if.then148, %if.then44, %if.then
  %149 = load i32, i32* %retval, align 4, !dbg !3500
  ret i32 %149, !dbg !3500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3501 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3506, metadata !DIExpression()), !dbg !3507
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3508, metadata !DIExpression()), !dbg !3509
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3510, metadata !DIExpression()), !dbg !3511
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3512
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3513
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3514
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #11, !dbg !3515
  ret i32 %call, !dbg !3516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !3517 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !3524, metadata !DIExpression()), !dbg !3525
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3526
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3527
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #11, !dbg !3528
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3525
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3529
  %tobool = icmp ne %struct.property* %2, null, !dbg !3529
  %3 = zext i1 %tobool to i64, !dbg !3529
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3529
  %tobool1 = icmp ne i32 %cond, 0, !dbg !3529
  ret i1 %tobool1, !dbg !3530
}

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_qoriq_auto_config(%struct.ptp_qoriq* %ptp_qoriq, %struct.device_node* %node) #0 !dbg !3531 {
entry:
  %retval = alloca i32, align 4
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %clk = alloca %struct.clk*, align 8
  %freq_comp = alloca i64, align 8
  %max_adj = alloca i64, align 8
  %nominal_freq = alloca i32, align 4
  %remainder = alloca i32, align 4
  %clk_src = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3534, metadata !DIExpression()), !dbg !3535
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3536, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata i64* %freq_comp, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.declare(metadata i64* %max_adj, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.declare(metadata i32* %nominal_freq, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i32 0, i32* %remainder, align 4, !dbg !3550
  call void @llvm.dbg.declare(metadata i32* %clk_src, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i32 0, i32* %clk_src, align 4, !dbg !3552
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3553
  %cksel = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 15, !dbg !3554
  store i32 1, i32* %cksel, align 8, !dbg !3555
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3556
  %call = call %struct.clk* @of_clk_get(%struct.device_node* %1, i32 0) #11, !dbg !3557
  store %struct.clk* %call, %struct.clk** %clk, align 8, !dbg !3558
  %2 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !3559
  %3 = bitcast %struct.clk* %2 to i8*, !dbg !3559
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #11, !dbg !3561
  br i1 %call1, label %if.end, label %if.then, !dbg !3562

if.then:                                          ; preds = %entry
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !3563
  %call2 = call i64 @clk_get_rate(%struct.clk* %4) #11, !dbg !3565
  %conv = trunc i64 %call2 to i32, !dbg !3565
  store i32 %conv, i32* %clk_src, align 4, !dbg !3566
  %5 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !3567
  call void @clk_put(%struct.clk* %5) #11, !dbg !3568
  br label %if.end, !dbg !3569

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %clk_src, align 4, !dbg !3570
  %conv3 = zext i32 %6 to i64, !dbg !3570
  %cmp = icmp ule i64 %conv3, 100000000, !dbg !3572
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !3573

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0)) #13, !dbg !3574
  store i32 -22, i32* %retval, align 4, !dbg !3576
  br label %return, !dbg !3576

if.end7:                                          ; preds = %if.end
  %7 = load i32, i32* %clk_src, align 4, !dbg !3577
  %call8 = call i32 @ptp_qoriq_nominal_freq(i32 %7) #11, !dbg !3578
  store i32 %call8, i32* %nominal_freq, align 4, !dbg !3579
  %8 = load i32, i32* %nominal_freq, align 4, !dbg !3580
  %tobool = icmp ne i32 %8, 0, !dbg !3580
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !3582

if.then9:                                         ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !3583
  br label %return, !dbg !3583

if.end10:                                         ; preds = %if.end7
  %9 = load i32, i32* %nominal_freq, align 4, !dbg !3584
  %conv11 = zext i32 %9 to i64, !dbg !3584
  %div = udiv i64 1000000000, %conv11, !dbg !3585
  %conv12 = trunc i64 %div to i32, !dbg !3586
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3587
  %tclk_period = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %10, i32 0, i32 12, !dbg !3588
  store i32 %conv12, i32* %tclk_period, align 4, !dbg !3589
  %11 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3590
  %tmr_prsc = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %11, i32 0, i32 13, !dbg !3591
  store i32 2, i32* %tmr_prsc, align 8, !dbg !3592
  %12 = load i32, i32* %nominal_freq, align 4, !dbg !3593
  %conv13 = zext i32 %12 to i64, !dbg !3593
  %mul = mul i64 4294967296, %conv13, !dbg !3594
  store i64 %mul, i64* %freq_comp, align 8, !dbg !3595
  %13 = load i64, i64* %freq_comp, align 8, !dbg !3596
  %14 = load i32, i32* %clk_src, align 4, !dbg !3597
  %call14 = call i64 @div_u64_rem(i64 %13, i32 %14, i32* %remainder) #11, !dbg !3598
  store i64 %call14, i64* %freq_comp, align 8, !dbg !3599
  %15 = load i32, i32* %remainder, align 4, !dbg !3600
  %tobool15 = icmp ne i32 %15, 0, !dbg !3600
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3602

if.then16:                                        ; preds = %if.end10
  %16 = load i64, i64* %freq_comp, align 8, !dbg !3603
  %inc = add i64 %16, 1, !dbg !3603
  store i64 %inc, i64* %freq_comp, align 8, !dbg !3603
  br label %if.end17, !dbg !3604

if.end17:                                         ; preds = %if.then16, %if.end10
  %17 = load i64, i64* %freq_comp, align 8, !dbg !3605
  %conv18 = trunc i64 %17 to i32, !dbg !3605
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3606
  %tmr_add = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 14, !dbg !3607
  store i32 %conv18, i32* %tmr_add, align 4, !dbg !3608
  %19 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3609
  %tclk_period19 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %19, i32 0, i32 12, !dbg !3610
  %20 = load i32, i32* %tclk_period19, align 4, !dbg !3610
  %sub = sub i32 1000000000, %20, !dbg !3611
  %21 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3612
  %tmr_fiper1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %21, i32 0, i32 16, !dbg !3613
  store i32 %sub, i32* %tmr_fiper1, align 4, !dbg !3614
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3615
  %tclk_period20 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %22, i32 0, i32 12, !dbg !3616
  %23 = load i32, i32* %tclk_period20, align 4, !dbg !3616
  %sub21 = sub i32 1000000000, %23, !dbg !3617
  %24 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3618
  %tmr_fiper2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %24, i32 0, i32 17, !dbg !3619
  store i32 %sub21, i32* %tmr_fiper2, align 8, !dbg !3620
  %25 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3621
  %tclk_period22 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %25, i32 0, i32 12, !dbg !3622
  %26 = load i32, i32* %tclk_period22, align 4, !dbg !3622
  %sub23 = sub i32 1000000000, %26, !dbg !3623
  %27 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3624
  %tmr_fiper3 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %27, i32 0, i32 18, !dbg !3625
  store i32 %sub23, i32* %tmr_fiper3, align 4, !dbg !3626
  %28 = load i32, i32* %clk_src, align 4, !dbg !3627
  %29 = load i32, i32* %nominal_freq, align 4, !dbg !3628
  %sub24 = sub i32 %28, %29, !dbg !3629
  %conv25 = zext i32 %sub24 to i64, !dbg !3630
  %mul26 = mul i64 1000000000, %conv25, !dbg !3631
  store i64 %mul26, i64* %max_adj, align 8, !dbg !3632
  %30 = load i64, i64* %max_adj, align 8, !dbg !3633
  %31 = load i32, i32* %nominal_freq, align 4, !dbg !3634
  %call27 = call i64 @div_u64(i64 %30, i32 %31) #11, !dbg !3635
  %sub28 = sub i64 %call27, 1, !dbg !3636
  store i64 %sub28, i64* %max_adj, align 8, !dbg !3637
  %32 = load i64, i64* %max_adj, align 8, !dbg !3638
  %conv29 = trunc i64 %32 to i32, !dbg !3638
  %33 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3639
  %caps = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %33, i32 0, i32 4, !dbg !3640
  %max_adj30 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %caps, i32 0, i32 2, !dbg !3641
  store i32 %conv29, i32* %max_adj30, align 8, !dbg !3642
  store i32 0, i32* %retval, align 4, !dbg !3643
  br label %return, !dbg !3643

return:                                           ; preds = %if.end17, %if.then9, %if.then5
  %34 = load i32, i32* %retval, align 4, !dbg !3644
  ret i32 %34, !dbg !3644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qoriq_read_le(i32* %addr) #0 !dbg !3645 {
entry:
  %addr.addr = alloca i32*, align 8
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !3646, metadata !DIExpression()), !dbg !3647
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !3648
  %1 = bitcast i32* %0 to i8*, !dbg !3648
  %call = call i32 @ioread32(i8* %1) #11, !dbg !3649
  ret i32 %call, !dbg !3650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @qoriq_write_le(i32* %addr, i32 %val) #0 !dbg !3651 {
entry:
  %addr.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  %0 = load i32, i32* %val.addr, align 4, !dbg !3656
  %1 = load i32*, i32** %addr.addr, align 8, !dbg !3657
  %2 = bitcast i32* %1 to i8*, !dbg !3657
  call void @iowrite32(i32 %0, i8* %2) #11, !dbg !3658
  ret void, !dbg !3659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qoriq_read_be(i32* %addr) #0 !dbg !3660 {
entry:
  %addr.addr = alloca i32*, align 8
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !3661, metadata !DIExpression()), !dbg !3662
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !3663
  %1 = bitcast i32* %0 to i8*, !dbg !3663
  %call = call i32 @ioread32be(i8* %1) #11, !dbg !3664
  ret i32 %call, !dbg !3665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @qoriq_write_be(i32* %addr, i32 %val) #0 !dbg !3666 {
entry:
  %addr.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  %0 = load i32, i32* %val.addr, align 4, !dbg !3671
  %1 = load i32*, i32** %addr.addr, align 8, !dbg !3672
  %2 = bitcast i32* %1 to i8*, !dbg !3672
  call void @iowrite32be(i32 %0, i8* %2) #11, !dbg !3673
  ret void, !dbg !3674
}

; Function Attrs: noredzone
declare dso_local void @ktime_get_real_ts64(%struct.timespec64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_alarm(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !3675 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  %ns = alloca i64, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !3678, metadata !DIExpression()), !dbg !3679
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3680
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !3681
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3679
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !3686, metadata !DIExpression()), !dbg !3687
  %1 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3688
  %call = call i64 @tmr_cnt_read(%struct.ptp_qoriq* %1) #11, !dbg !3689
  %add = add i64 %call, 1500000000, !dbg !3690
  store i64 %add, i64* %ns, align 8, !dbg !3691
  %2 = load i64, i64* %ns, align 8, !dbg !3692
  %call2 = call i64 @div_u64(i64 %2, i32 1000000000) #11, !dbg !3693
  %mul = mul i64 %call2, 1000000000, !dbg !3694
  store i64 %mul, i64* %ns, align 8, !dbg !3695
  %3 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3696
  %tclk_period = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %3, i32 0, i32 12, !dbg !3697
  %4 = load i32, i32* %tclk_period, align 4, !dbg !3697
  %conv = zext i32 %4 to i64, !dbg !3696
  %5 = load i64, i64* %ns, align 8, !dbg !3698
  %sub = sub i64 %5, %conv, !dbg !3698
  store i64 %sub, i64* %ns, align 8, !dbg !3698
  %6 = load i64, i64* %ns, align 8, !dbg !3699
  %shr = lshr i64 %6, 32, !dbg !3700
  %conv3 = trunc i64 %shr to i32, !dbg !3699
  store i32 %conv3, i32* %hi, align 4, !dbg !3701
  %7 = load i64, i64* %ns, align 8, !dbg !3702
  %and = and i64 %7, 4294967295, !dbg !3703
  %conv4 = trunc i64 %and to i32, !dbg !3702
  store i32 %conv4, i32* %lo, align 4, !dbg !3704
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3705
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 20, !dbg !3706
  %9 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !3706
  %10 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3707
  %alarm_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %10, i32 0, i32 1, !dbg !3708
  %11 = load %struct.alarm_regs*, %struct.alarm_regs** %alarm_regs, align 8, !dbg !3708
  %tmr_alarm1_l = getelementptr inbounds %struct.alarm_regs, %struct.alarm_regs* %11, i32 0, i32 1, !dbg !3709
  %12 = load i32, i32* %lo, align 4, !dbg !3710
  call void %9(i32* %tmr_alarm1_l, i32 %12) #11, !dbg !3705
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3711
  %write5 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %13, i32 0, i32 20, !dbg !3712
  %14 = load void (i32*, i32)*, void (i32*, i32)** %write5, align 8, !dbg !3712
  %15 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3713
  %alarm_regs6 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %15, i32 0, i32 1, !dbg !3714
  %16 = load %struct.alarm_regs*, %struct.alarm_regs** %alarm_regs6, align 8, !dbg !3714
  %tmr_alarm1_h = getelementptr inbounds %struct.alarm_regs, %struct.alarm_regs* %16, i32 0, i32 0, !dbg !3715
  %17 = load i32, i32* %hi, align 4, !dbg !3716
  call void %14(i32* %tmr_alarm1_h, i32 %17) #11, !dbg !3711
  ret void, !dbg !3717
}

; Function Attrs: noredzone
declare dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info*, %struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3718 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3722, metadata !DIExpression()), !dbg !3723
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3724
  %1 = ptrtoint i8* %0 to i64, !dbg !3724
  %2 = inttoptr i64 %1 to i8*, !dbg !3724
  %3 = ptrtoint i8* %2 to i64, !dbg !3724
  %cmp = icmp uge i64 %3, -4095, !dbg !3724
  %lnot = xor i1 %cmp, true, !dbg !3724
  %lnot1 = xor i1 %lnot, true, !dbg !3724
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3724
  %conv = sext i32 %lnot.ext to i64, !dbg !3724
  %tobool = icmp ne i64 %conv, 0, !dbg !3724
  ret i1 %tobool, !dbg !3725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3726 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3729, metadata !DIExpression()), !dbg !3730
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3731
  %1 = ptrtoint i8* %0 to i64, !dbg !3732
  ret i64 %1, !dbg !3733
}

; Function Attrs: noredzone
declare dso_local i32 @ptp_clock_index(%struct.ptp_clock*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ptp_qoriq_create_debugfs(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !3734 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3735, metadata !DIExpression()), !dbg !3736
  ret void, !dbg !3737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ptp_qoriq_free(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !3738 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  %regs = alloca %struct.ptp_qoriq_registers*, align 8
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq_registers** %regs, metadata !3741, metadata !DIExpression()), !dbg !3742
  %0 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3743
  %regs1 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %0, i32 0, i32 1, !dbg !3744
  store %struct.ptp_qoriq_registers* %regs1, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3742
  %1 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3745
  %write = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %1, i32 0, i32 20, !dbg !3746
  %2 = load void (i32*, i32)*, void (i32*, i32)** %write, align 8, !dbg !3746
  %3 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3747
  %ctrl_regs = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %3, i32 0, i32 0, !dbg !3748
  %4 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs, align 8, !dbg !3748
  %tmr_temask = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %4, i32 0, i32 2, !dbg !3749
  call void %2(i32* %tmr_temask, i32 0) #11, !dbg !3745
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3750
  %write2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 20, !dbg !3751
  %6 = load void (i32*, i32)*, void (i32*, i32)** %write2, align 8, !dbg !3751
  %7 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %regs, align 8, !dbg !3752
  %ctrl_regs3 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %7, i32 0, i32 0, !dbg !3753
  %8 = load %struct.ctrl_regs*, %struct.ctrl_regs** %ctrl_regs3, align 8, !dbg !3753
  %tmr_ctrl = getelementptr inbounds %struct.ctrl_regs, %struct.ctrl_regs* %8, i32 0, i32 0, !dbg !3754
  call void %6(i32* %tmr_ctrl, i32 0) #11, !dbg !3750
  %9 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3755
  call void @ptp_qoriq_remove_debugfs(%struct.ptp_qoriq* %9) #11, !dbg !3756
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3757
  %clock = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %10, i32 0, i32 3, !dbg !3758
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %clock, align 8, !dbg !3758
  %call = call i32 @ptp_clock_unregister(%struct.ptp_clock* %11) #11, !dbg !3759
  %12 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3760
  %base = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %12, i32 0, i32 0, !dbg !3761
  %13 = load i8*, i8** %base, align 8, !dbg !3761
  call void @iounmap(i8* %13) #11, !dbg !3762
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3763
  %irq = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 10, !dbg !3764
  %15 = load i32, i32* %irq, align 4, !dbg !3764
  %16 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8, !dbg !3765
  %17 = bitcast %struct.ptp_qoriq* %16 to i8*, !dbg !3765
  %call4 = call i8* @free_irq(i32 %15, i8* %17) #11, !dbg !3766
  ret void, !dbg !3767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ptp_qoriq_remove_debugfs(%struct.ptp_qoriq* %ptp_qoriq) #0 !dbg !3768 {
entry:
  %ptp_qoriq.addr = alloca %struct.ptp_qoriq*, align 8
  store %struct.ptp_qoriq* %ptp_qoriq, %struct.ptp_qoriq** %ptp_qoriq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq.addr, metadata !3769, metadata !DIExpression()), !dbg !3770
  ret void, !dbg !3771
}

; Function Attrs: noredzone
declare dso_local i32 @ptp_clock_unregister(%struct.ptp_clock*) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_qoriq_driver_init() #5 section ".init.text" !dbg !3772 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @ptp_qoriq_driver, %struct.module* null) #11, !dbg !3775
  ret i32 %call, !dbg !3775
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ptp_qoriq_driver_exit() #5 section ".exit.text" !dbg !3776 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @ptp_qoriq_driver) #11, !dbg !3777
  ret void, !dbg !3777
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !3778 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !3785, metadata !DIExpression()), !dbg !3786
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !3787
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !3788
  %conv = zext i32 %1 to i64, !dbg !3788
  %rem = urem i64 %0, %conv, !dbg !3789
  %conv1 = trunc i64 %rem to i32, !dbg !3787
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !3790
  store i32 %conv1, i32* %2, align 4, !dbg !3791
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !3792
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !3793
  %conv2 = zext i32 %4 to i64, !dbg !3793
  %div = udiv i64 %3, %conv2, !dbg !3794
  ret i64 %div, !dbg !3795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3796 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3800, metadata !DIExpression()), !dbg !3799
  %0 = load i64, i64* %__edi, align 8, !dbg !3799
  store i64 %0, i64* %__edi, align 8, !dbg !3799
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3801, metadata !DIExpression()), !dbg !3799
  %1 = load i64, i64* %__esi, align 8, !dbg !3799
  store i64 %1, i64* %__esi, align 8, !dbg !3799
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3802, metadata !DIExpression()), !dbg !3799
  %2 = load i64, i64* %__edx, align 8, !dbg !3799
  store i64 %2, i64* %__edx, align 8, !dbg !3799
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3803, metadata !DIExpression()), !dbg !3799
  %3 = load i64, i64* %__ecx, align 8, !dbg !3799
  store i64 %3, i64* %__ecx, align 8, !dbg !3799
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3804, metadata !DIExpression()), !dbg !3799
  %4 = load i64, i64* %__eax, align 8, !dbg !3799
  store i64 %4, i64* %__eax, align 8, !dbg !3799
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3799
  %6 = call i64 @llvm.read_register.i64(metadata !2372), !dbg !3805
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3805, !srcloc !3808
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3805
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3805
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3805
  call void @llvm.write_register.i64(metadata !2372, i64 %asmresult1), !dbg !3805
  %8 = load i64, i64* %__eax, align 8, !dbg !3805
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3809, metadata !DIExpression()), !dbg !3811
  store i64 -1, i64* %__mask, align 8, !dbg !3811
  %9 = load i64, i64* %__mask, align 8, !dbg !3811
  store i64 %9, i64* %tmp, align 8, !dbg !3811
  %10 = load i64, i64* %tmp, align 8, !dbg !3811
  %and = and i64 %8, %10, !dbg !3805
  store i64 %and, i64* %__ret, align 8, !dbg !3805
  %11 = load i64, i64* %__ret, align 8, !dbg !3799
  store i64 %11, i64* %tmp2, align 8, !dbg !3812
  %12 = load i64, i64* %tmp2, align 8, !dbg !3799
  ret i64 %12, !dbg !3813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3814 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3815, metadata !DIExpression()), !dbg !3817
  %0 = load i64, i64* %__edi, align 8, !dbg !3817
  store i64 %0, i64* %__edi, align 8, !dbg !3817
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3818, metadata !DIExpression()), !dbg !3817
  %1 = load i64, i64* %__esi, align 8, !dbg !3817
  store i64 %1, i64* %__esi, align 8, !dbg !3817
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3819, metadata !DIExpression()), !dbg !3817
  %2 = load i64, i64* %__edx, align 8, !dbg !3817
  store i64 %2, i64* %__edx, align 8, !dbg !3817
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3820, metadata !DIExpression()), !dbg !3817
  %3 = load i64, i64* %__ecx, align 8, !dbg !3817
  store i64 %3, i64* %__ecx, align 8, !dbg !3817
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3821, metadata !DIExpression()), !dbg !3817
  %4 = load i64, i64* %__eax, align 8, !dbg !3817
  store i64 %4, i64* %__eax, align 8, !dbg !3817
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3817
  %6 = call i64 @llvm.read_register.i64(metadata !2372), !dbg !3817
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !3817, !srcloc !3822
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3817
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3817
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3817
  call void @llvm.write_register.i64(metadata !2372, i64 %asmresult1), !dbg !3817
  ret void, !dbg !3823
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3824 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3827, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3829, metadata !DIExpression()), !dbg !3831
  %0 = load i64, i64* %__edi, align 8, !dbg !3831
  store i64 %0, i64* %__edi, align 8, !dbg !3831
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3832, metadata !DIExpression()), !dbg !3831
  %1 = load i64, i64* %__esi, align 8, !dbg !3831
  store i64 %1, i64* %__esi, align 8, !dbg !3831
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3833, metadata !DIExpression()), !dbg !3831
  %2 = load i64, i64* %__edx, align 8, !dbg !3831
  store i64 %2, i64* %__edx, align 8, !dbg !3831
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3834, metadata !DIExpression()), !dbg !3831
  %3 = load i64, i64* %__ecx, align 8, !dbg !3831
  store i64 %3, i64* %__ecx, align 8, !dbg !3831
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3835, metadata !DIExpression()), !dbg !3831
  %4 = load i64, i64* %__eax, align 8, !dbg !3831
  store i64 %4, i64* %__eax, align 8, !dbg !3831
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3831
  %6 = call i64 @llvm.read_register.i64(metadata !2372), !dbg !3831
  %7 = load i64, i64* %f.addr, align 8, !dbg !3831
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !3831, !srcloc !3836
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3831
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3831
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3831
  call void @llvm.write_register.i64(metadata !2372, i64 %asmresult1), !dbg !3831
  ret void, !dbg !3837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3838 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3845, metadata !DIExpression()), !dbg !3846
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3849, metadata !DIExpression()), !dbg !3850
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3851
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3852
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3853
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3854
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #11, !dbg !3855
  store i32 %call, i32* %ret, align 4, !dbg !3850
  %4 = load i32, i32* %ret, align 4, !dbg !3856
  %cmp = icmp sge i32 %4, 0, !dbg !3858
  br i1 %cmp, label %if.then, label %if.else, !dbg !3859

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3860
  br label %return, !dbg !3860

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3861
  store i32 %5, i32* %retval, align 4, !dbg !3862
  br label %return, !dbg !3862

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3863
  ret i32 %6, !dbg !3863
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @clk_get_rate(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @clk_put(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_qoriq_nominal_freq(i32 %clk_src) #0 !dbg !3864 {
entry:
  %clk_src.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i32 %clk_src, i32* %clk_src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %clk_src.addr, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !3869, metadata !DIExpression()), !dbg !3870
  store i32 0, i32* %remainder, align 4, !dbg !3870
  %0 = load i32, i32* %clk_src.addr, align 4, !dbg !3871
  %div = udiv i32 %0, 1000000, !dbg !3871
  store i32 %div, i32* %clk_src.addr, align 4, !dbg !3871
  %1 = load i32, i32* %clk_src.addr, align 4, !dbg !3872
  %rem = urem i32 %1, 100, !dbg !3873
  store i32 %rem, i32* %remainder, align 4, !dbg !3874
  %2 = load i32, i32* %remainder, align 4, !dbg !3875
  %tobool = icmp ne i32 %2, 0, !dbg !3875
  br i1 %tobool, label %if.then, label %if.end, !dbg !3877

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %remainder, align 4, !dbg !3878
  %4 = load i32, i32* %clk_src.addr, align 4, !dbg !3880
  %sub = sub i32 %4, %3, !dbg !3880
  store i32 %sub, i32* %clk_src.addr, align 4, !dbg !3880
  %5 = load i32, i32* %clk_src.addr, align 4, !dbg !3881
  %add = add i32 %5, 100, !dbg !3881
  store i32 %add, i32* %clk_src.addr, align 4, !dbg !3881
  br label %if.end, !dbg !3882

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !3883

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load i32, i32* %clk_src.addr, align 4, !dbg !3884
  %sub1 = sub i32 %6, 100, !dbg !3884
  store i32 %sub1, i32* %clk_src.addr, align 4, !dbg !3884
  br label %do.cond, !dbg !3886

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %clk_src.addr, align 4, !dbg !3887
  %rem2 = urem i32 1000, %7, !dbg !3888
  %tobool3 = icmp ne i32 %rem2, 0, !dbg !3886
  br i1 %tobool3, label %do.body, label %do.end, !dbg !3886, !llvm.loop !3889

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %clk_src.addr, align 4, !dbg !3891
  %mul = mul i32 %8, 1000000, !dbg !3892
  ret i32 %mul, !dbg !3893
}

; Function Attrs: noredzone
declare dso_local i32 @ioread32(i8*) #2

; Function Attrs: noredzone
declare dso_local void @iowrite32(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #2

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_qoriq_probe(%struct.platform_device* %dev) #0 !dbg !3894 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.platform_device*, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  %err = alloca i32, align 4
  %base = alloca i8*, align 8
  store %struct.platform_device* %dev, %struct.platform_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %dev.addr, metadata !3895, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i32 -12, i32* %err, align 4, !dbg !3900
  call void @llvm.dbg.declare(metadata i8** %base, metadata !3901, metadata !DIExpression()), !dbg !3902
  %call = call i8* @kzalloc(i64 272, i32 3264) #11, !dbg !3903
  %0 = bitcast i8* %call to %struct.ptp_qoriq*, !dbg !3903
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3904
  %1 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3905
  %tobool = icmp ne %struct.ptp_qoriq* %1, null, !dbg !3905
  br i1 %tobool, label %if.end, label %if.then, !dbg !3907

if.then:                                          ; preds = %entry
  br label %no_memory, !dbg !3908

if.end:                                           ; preds = %entry
  %2 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !3909
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !3910
  %3 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3911
  %dev2 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %3, i32 0, i32 7, !dbg !3912
  store %struct.device* %dev1, %struct.device** %dev2, align 8, !dbg !3913
  store i32 -19, i32* %err, align 4, !dbg !3914
  %4 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !3915
  %call3 = call i32 @platform_get_irq(%struct.platform_device* %4, i32 0) #11, !dbg !3916
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3917
  %irq = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %5, i32 0, i32 10, !dbg !3918
  store i32 %call3, i32* %irq, align 4, !dbg !3919
  %6 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3920
  %irq4 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %6, i32 0, i32 10, !dbg !3922
  %7 = load i32, i32* %irq4, align 4, !dbg !3922
  %cmp = icmp slt i32 %7, 0, !dbg !3923
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !3924

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0)) #13, !dbg !3925
  br label %no_node, !dbg !3927

if.end7:                                          ; preds = %if.end
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3928
  %irq8 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 10, !dbg !3930
  %9 = load i32, i32* %irq8, align 4, !dbg !3930
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3931
  %11 = bitcast %struct.ptp_qoriq* %10 to i8*, !dbg !3931
  %call9 = call i32 @request_irq(i32 %9, i32 (i32, i8*)* @ptp_qoriq_isr, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %11) #11, !dbg !3932
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3932
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !3933

if.then11:                                        ; preds = %if.end7
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #13, !dbg !3934
  br label %no_node, !dbg !3936

if.end13:                                         ; preds = %if.end7
  %12 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !3937
  %call14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 512, i32 0) #11, !dbg !3938
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3939
  %rsrc = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %13, i32 0, i32 5, !dbg !3940
  store %struct.resource* %call14, %struct.resource** %rsrc, align 8, !dbg !3941
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3942
  %rsrc15 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 5, !dbg !3944
  %15 = load %struct.resource*, %struct.resource** %rsrc15, align 8, !dbg !3944
  %tobool16 = icmp ne %struct.resource* %15, null, !dbg !3942
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !3945

if.then17:                                        ; preds = %if.end13
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0)) #13, !dbg !3946
  br label %no_resource, !dbg !3948

if.end19:                                         ; preds = %if.end13
  %16 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3949
  %rsrc20 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %16, i32 0, i32 5, !dbg !3951
  %17 = load %struct.resource*, %struct.resource** %rsrc20, align 8, !dbg !3951
  %call21 = call i32 @request_resource(%struct.resource* @iomem_resource, %struct.resource* %17) #11, !dbg !3952
  %tobool22 = icmp ne i32 %call21, 0, !dbg !3952
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !3953

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #13, !dbg !3954
  br label %no_resource, !dbg !3956

if.end25:                                         ; preds = %if.end19
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3957
  %rsrc26 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 5, !dbg !3958
  %19 = load %struct.resource*, %struct.resource** %rsrc26, align 8, !dbg !3958
  %start = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0, !dbg !3959
  %20 = load i64, i64* %start, align 8, !dbg !3959
  %21 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3960
  %rsrc27 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %21, i32 0, i32 5, !dbg !3961
  %22 = load %struct.resource*, %struct.resource** %rsrc27, align 8, !dbg !3961
  %call28 = call i64 @resource_size(%struct.resource* %22) #11, !dbg !3962
  %call29 = call i8* @ioremap(i64 %20, i64 %call28) #11, !dbg !3963
  store i8* %call29, i8** %base, align 8, !dbg !3964
  %23 = load i8*, i8** %base, align 8, !dbg !3965
  %tobool30 = icmp ne i8* %23, null, !dbg !3965
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !3967

if.then31:                                        ; preds = %if.end25
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #13, !dbg !3968
  br label %no_ioremap, !dbg !3970

if.end33:                                         ; preds = %if.end25
  %24 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3971
  %25 = load i8*, i8** %base, align 8, !dbg !3972
  %call34 = call i32 @ptp_qoriq_init(%struct.ptp_qoriq* %24, i8* %25, %struct.ptp_clock_info* @ptp_qoriq_caps) #11, !dbg !3973
  store i32 %call34, i32* %err, align 4, !dbg !3974
  %26 = load i32, i32* %err, align 4, !dbg !3975
  %tobool35 = icmp ne i32 %26, 0, !dbg !3975
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !3977

if.then36:                                        ; preds = %if.end33
  br label %no_clock, !dbg !3978

if.end37:                                         ; preds = %if.end33
  %27 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !3979
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3980
  %29 = bitcast %struct.ptp_qoriq* %28 to i8*, !dbg !3980
  call void @platform_set_drvdata(%struct.platform_device* %27, i8* %29) #11, !dbg !3981
  store i32 0, i32* %retval, align 4, !dbg !3982
  br label %return, !dbg !3982

no_clock:                                         ; preds = %if.then36
  call void @llvm.dbg.label(metadata !3983), !dbg !3984
  %30 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3985
  %base38 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %30, i32 0, i32 0, !dbg !3986
  %31 = load i8*, i8** %base38, align 8, !dbg !3986
  call void @iounmap(i8* %31) #11, !dbg !3987
  br label %no_ioremap, !dbg !3987

no_ioremap:                                       ; preds = %no_clock, %if.then31
  call void @llvm.dbg.label(metadata !3988), !dbg !3989
  %32 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3990
  %rsrc39 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %32, i32 0, i32 5, !dbg !3991
  %33 = load %struct.resource*, %struct.resource** %rsrc39, align 8, !dbg !3991
  %call40 = call i32 @release_resource(%struct.resource* %33) #11, !dbg !3992
  br label %no_resource, !dbg !3992

no_resource:                                      ; preds = %no_ioremap, %if.then23, %if.then17
  call void @llvm.dbg.label(metadata !3993), !dbg !3994
  %34 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3995
  %irq41 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %34, i32 0, i32 10, !dbg !3996
  %35 = load i32, i32* %irq41, align 4, !dbg !3996
  %36 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !3997
  %37 = bitcast %struct.ptp_qoriq* %36 to i8*, !dbg !3997
  %call42 = call i8* @free_irq(i32 %35, i8* %37) #11, !dbg !3998
  br label %no_node, !dbg !3998

no_node:                                          ; preds = %no_resource, %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !3999), !dbg !4000
  %38 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !4001
  %39 = bitcast %struct.ptp_qoriq* %38 to i8*, !dbg !4001
  call void @kfree(i8* %39) #11, !dbg !4002
  br label %no_memory, !dbg !4002

no_memory:                                        ; preds = %no_node, %if.then
  call void @llvm.dbg.label(metadata !4003), !dbg !4004
  %40 = load i32, i32* %err, align 4, !dbg !4005
  store i32 %40, i32* %retval, align 4, !dbg !4006
  br label %return, !dbg !4006

return:                                           ; preds = %no_memory, %if.end37
  %41 = load i32, i32* %retval, align 4, !dbg !4007
  ret i32 %41, !dbg !4007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_qoriq_remove(%struct.platform_device* %dev) #0 !dbg !4008 {
entry:
  %dev.addr = alloca %struct.platform_device*, align 8
  %ptp_qoriq = alloca %struct.ptp_qoriq*, align 8
  store %struct.platform_device* %dev, %struct.platform_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %dev.addr, metadata !4009, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.declare(metadata %struct.ptp_qoriq** %ptp_qoriq, metadata !4011, metadata !DIExpression()), !dbg !4012
  %0 = load %struct.platform_device*, %struct.platform_device** %dev.addr, align 8, !dbg !4013
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #11, !dbg !4014
  %1 = bitcast i8* %call to %struct.ptp_qoriq*, !dbg !4014
  store %struct.ptp_qoriq* %1, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !4012
  %2 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !4015
  call void @ptp_qoriq_free(%struct.ptp_qoriq* %2) #11, !dbg !4016
  %3 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !4017
  %rsrc = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %3, i32 0, i32 5, !dbg !4018
  %4 = load %struct.resource*, %struct.resource** %rsrc, align 8, !dbg !4018
  %call1 = call i32 @release_resource(%struct.resource* %4) #11, !dbg !4019
  %5 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %ptp_qoriq, align 8, !dbg !4020
  %6 = bitcast %struct.ptp_qoriq* %5 to i8*, !dbg !4020
  call void @kfree(i8* %6) #11, !dbg !4021
  ret i32 0, !dbg !4022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4023 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4026, metadata !DIExpression()), !dbg !4030
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4036, metadata !DIExpression()), !dbg !4037
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4038, metadata !DIExpression()), !dbg !4039
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4040, metadata !DIExpression()), !dbg !4041
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4042, metadata !DIExpression()), !dbg !4046
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4048, metadata !DIExpression()), !dbg !4052
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4054, metadata !DIExpression()), !dbg !4058
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4063, metadata !DIExpression()), !dbg !4064
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4065, metadata !DIExpression()), !dbg !4066
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4067, metadata !DIExpression()), !dbg !4068
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4069, metadata !DIExpression()), !dbg !4070
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4071, metadata !DIExpression()), !dbg !4072
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4073, metadata !DIExpression()), !dbg !4074
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4075, metadata !DIExpression()), !dbg !4076
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4077, metadata !DIExpression()), !dbg !4078
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  %0 = load i64, i64* %size.addr, align 8, !dbg !4083
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4084
  %or = or i32 %1, 256, !dbg !4085
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4086
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !4087
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4088

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4089
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4090
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4091

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4092
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4093
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4094
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !4095
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4072
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4096
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4097
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4098
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4099
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4100
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4101
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4102
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4102
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4102
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4102
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4102
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4103
  br label %kmalloc.exit, !dbg !4103

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4104
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4105
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4105
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4107

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4108
  br label %kmalloc_index.exit.i, !dbg !4108

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4109
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4111
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4112

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4113
  br label %kmalloc_index.exit.i, !dbg !4113

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4114
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4116
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4117

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4118
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4119
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4120

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4121
  br label %kmalloc_index.exit.i, !dbg !4121

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4122
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4124
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4125

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4126
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4127
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4128

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4129
  br label %kmalloc_index.exit.i, !dbg !4129

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4130
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4132
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4133

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4134
  br label %kmalloc_index.exit.i, !dbg !4134

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4135
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4137
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4138

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4139
  br label %kmalloc_index.exit.i, !dbg !4139

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4140
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4142
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4143

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4144
  br label %kmalloc_index.exit.i, !dbg !4144

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4145
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4147
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4148

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4149
  br label %kmalloc_index.exit.i, !dbg !4149

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4150
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4152
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4153

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4154
  br label %kmalloc_index.exit.i, !dbg !4154

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4155
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4157
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4158

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4159
  br label %kmalloc_index.exit.i, !dbg !4159

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4160
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4162
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4163

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4164
  br label %kmalloc_index.exit.i, !dbg !4164

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4165
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4167
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4168

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4169
  br label %kmalloc_index.exit.i, !dbg !4169

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4170
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4172
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4173

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4174
  br label %kmalloc_index.exit.i, !dbg !4174

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4175
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4177
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4178

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4179
  br label %kmalloc_index.exit.i, !dbg !4179

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4180
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4182
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4183

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4184
  br label %kmalloc_index.exit.i, !dbg !4184

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4185
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4187
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4188

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4189
  br label %kmalloc_index.exit.i, !dbg !4189

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4190
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4192
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4193

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4194
  br label %kmalloc_index.exit.i, !dbg !4194

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4195
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4197
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4198

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4199
  br label %kmalloc_index.exit.i, !dbg !4199

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4200
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4202
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4203

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4204
  br label %kmalloc_index.exit.i, !dbg !4204

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4205
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4207
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4208

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4209
  br label %kmalloc_index.exit.i, !dbg !4209

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4210
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4212
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4213

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4214
  br label %kmalloc_index.exit.i, !dbg !4214

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4215
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4217
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4218

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4219
  br label %kmalloc_index.exit.i, !dbg !4219

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4220
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4222
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4223

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4224
  br label %kmalloc_index.exit.i, !dbg !4224

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4225
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4227
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4228

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4229
  br label %kmalloc_index.exit.i, !dbg !4229

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4230
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4232
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4233

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4234
  br label %kmalloc_index.exit.i, !dbg !4234

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4235
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4237
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4238

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4239
  br label %kmalloc_index.exit.i, !dbg !4239

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4240
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4242
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4243

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4244
  br label %kmalloc_index.exit.i, !dbg !4244

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4245
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4247
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4248

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4249
  br label %kmalloc_index.exit.i, !dbg !4249

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4250, !srcloc !4253
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #7, !dbg !4254, !srcloc !4257
  unreachable, !dbg !4258

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4259
  store i32 %45, i32* %index.i, align 4, !dbg !4260
  %46 = load i32, i32* %index.i, align 4, !dbg !4261
  %tobool.i = icmp ne i32 %46, 0, !dbg !4261
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4263

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4264
  br label %kmalloc.exit, !dbg !4264

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4265
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4266
  %and.i.i = and i32 %48, 17, !dbg !4266
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4266
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4266
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4266
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4266
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4268

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4269
  br label %kmalloc_type.exit.i, !dbg !4269

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4270
  %and2.i.i = and i32 %49, 1, !dbg !4271
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4270
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4270
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4270
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4272
  br label %kmalloc_type.exit.i, !dbg !4272

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4273
  %idxprom.i = zext i32 %51 to i64, !dbg !4274
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4274
  %52 = load i32, i32* %index.i, align 4, !dbg !4275
  %idxprom6.i = zext i32 %52 to i64, !dbg !4274
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4274
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4274
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4276
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4277
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4278
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4279
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4280
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4280
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4280
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4280
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4280
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4041
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4281
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4282
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4283
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4284
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4285
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4286
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4287
  store i8* %62, i8** %retval.i, align 8, !dbg !4288
  br label %kmalloc.exit, !dbg !4288

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4289
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4290
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4291
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4291
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4291
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4291
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4291
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4292
  br label %kmalloc.exit, !dbg !4292

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4293
  ret i8* %65, !dbg !4294
}

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4295 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4301, metadata !DIExpression()), !dbg !4302
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4307, metadata !DIExpression()), !dbg !4308
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4311
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4312
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4313
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4314
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4315
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #11, !dbg !4316
  ret i32 %call, !dbg !4317
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !4318 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4325
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !4326
  %1 = load i64, i64* %end, align 8, !dbg !4326
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4327
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4328
  %3 = load i64, i64* %start, align 8, !dbg !4328
  %sub = sub i64 %1, %3, !dbg !4329
  %add = add i64 %sub, 1, !dbg !4330
  ret i64 %add, !dbg !4331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #0 !dbg !4332 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4339
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4340
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4341
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #11, !dbg !4342
  ret void, !dbg !4343
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #10 !dbg !4344 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4348, metadata !DIExpression()), !dbg !4353
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4355, metadata !DIExpression()), !dbg !4356
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  %0 = load i64, i64* %size.addr, align 8, !dbg !4359
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4361
  br i1 %1, label %if.then, label %if.end447, !dbg !4362

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4363
  %tobool = icmp ne i64 %2, 0, !dbg !4363
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4366

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4367
  br label %return, !dbg !4367

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4368
  %cmp = icmp ult i64 %3, 4096, !dbg !4370
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4371

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4372
  br label %return, !dbg !4372

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub = sub i64 %4, 1, !dbg !4373
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4373
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4373

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub4 = sub i64 %6, 1, !dbg !4373
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4373
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4373

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub6 = sub i64 %8, 1, !dbg !4373
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4373
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4373

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4373

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub9 = sub i64 %9, 1, !dbg !4373
  %and = and i64 %sub9, -9223372036854775808, !dbg !4373
  %tobool10 = icmp ne i64 %and, 0, !dbg !4373
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4373

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4373

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub13 = sub i64 %10, 1, !dbg !4373
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4373
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4373
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4373

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4373

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub18 = sub i64 %11, 1, !dbg !4373
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4373
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4373
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4373

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4373

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub23 = sub i64 %12, 1, !dbg !4373
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4373
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4373
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4373

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4373

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub28 = sub i64 %13, 1, !dbg !4373
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4373
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4373
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4373

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4373

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub33 = sub i64 %14, 1, !dbg !4373
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4373
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4373
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4373

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4373

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub38 = sub i64 %15, 1, !dbg !4373
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4373
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4373
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4373

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4373

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub43 = sub i64 %16, 1, !dbg !4373
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4373
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4373
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4373

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4373

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub48 = sub i64 %17, 1, !dbg !4373
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4373
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4373
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4373

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4373

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub53 = sub i64 %18, 1, !dbg !4373
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4373
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4373
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4373

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4373

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub58 = sub i64 %19, 1, !dbg !4373
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4373
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4373
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4373

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4373

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub63 = sub i64 %20, 1, !dbg !4373
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4373
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4373
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4373

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4373

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub68 = sub i64 %21, 1, !dbg !4373
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4373
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4373
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4373

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4373

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub73 = sub i64 %22, 1, !dbg !4373
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4373
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4373
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4373

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4373

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub78 = sub i64 %23, 1, !dbg !4373
  %and79 = and i64 %sub78, 562949953421312, !dbg !4373
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4373
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4373

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4373

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub83 = sub i64 %24, 1, !dbg !4373
  %and84 = and i64 %sub83, 281474976710656, !dbg !4373
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4373
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4373

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4373

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub88 = sub i64 %25, 1, !dbg !4373
  %and89 = and i64 %sub88, 140737488355328, !dbg !4373
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4373
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4373

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4373

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub93 = sub i64 %26, 1, !dbg !4373
  %and94 = and i64 %sub93, 70368744177664, !dbg !4373
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4373
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4373

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4373

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub98 = sub i64 %27, 1, !dbg !4373
  %and99 = and i64 %sub98, 35184372088832, !dbg !4373
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4373
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4373

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4373

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub103 = sub i64 %28, 1, !dbg !4373
  %and104 = and i64 %sub103, 17592186044416, !dbg !4373
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4373
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4373

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4373

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub108 = sub i64 %29, 1, !dbg !4373
  %and109 = and i64 %sub108, 8796093022208, !dbg !4373
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4373
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4373

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4373

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub113 = sub i64 %30, 1, !dbg !4373
  %and114 = and i64 %sub113, 4398046511104, !dbg !4373
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4373
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4373

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4373

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub118 = sub i64 %31, 1, !dbg !4373
  %and119 = and i64 %sub118, 2199023255552, !dbg !4373
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4373
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4373

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4373

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub123 = sub i64 %32, 1, !dbg !4373
  %and124 = and i64 %sub123, 1099511627776, !dbg !4373
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4373
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4373

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4373

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub128 = sub i64 %33, 1, !dbg !4373
  %and129 = and i64 %sub128, 549755813888, !dbg !4373
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4373
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4373

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4373

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub133 = sub i64 %34, 1, !dbg !4373
  %and134 = and i64 %sub133, 274877906944, !dbg !4373
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4373
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4373

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4373

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub138 = sub i64 %35, 1, !dbg !4373
  %and139 = and i64 %sub138, 137438953472, !dbg !4373
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4373
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4373

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4373

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub143 = sub i64 %36, 1, !dbg !4373
  %and144 = and i64 %sub143, 68719476736, !dbg !4373
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4373
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4373

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4373

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub148 = sub i64 %37, 1, !dbg !4373
  %and149 = and i64 %sub148, 34359738368, !dbg !4373
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4373
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4373

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4373

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub153 = sub i64 %38, 1, !dbg !4373
  %and154 = and i64 %sub153, 17179869184, !dbg !4373
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4373
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4373

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4373

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub158 = sub i64 %39, 1, !dbg !4373
  %and159 = and i64 %sub158, 8589934592, !dbg !4373
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4373
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4373

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4373

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub163 = sub i64 %40, 1, !dbg !4373
  %and164 = and i64 %sub163, 4294967296, !dbg !4373
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4373
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4373

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4373

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub168 = sub i64 %41, 1, !dbg !4373
  %and169 = and i64 %sub168, 2147483648, !dbg !4373
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4373
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4373

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4373

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub173 = sub i64 %42, 1, !dbg !4373
  %and174 = and i64 %sub173, 1073741824, !dbg !4373
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4373
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4373

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4373

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub178 = sub i64 %43, 1, !dbg !4373
  %and179 = and i64 %sub178, 536870912, !dbg !4373
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4373
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4373

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4373

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub183 = sub i64 %44, 1, !dbg !4373
  %and184 = and i64 %sub183, 268435456, !dbg !4373
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4373
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4373

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4373

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub188 = sub i64 %45, 1, !dbg !4373
  %and189 = and i64 %sub188, 134217728, !dbg !4373
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4373
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4373

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4373

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub193 = sub i64 %46, 1, !dbg !4373
  %and194 = and i64 %sub193, 67108864, !dbg !4373
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4373
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4373

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4373

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub198 = sub i64 %47, 1, !dbg !4373
  %and199 = and i64 %sub198, 33554432, !dbg !4373
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4373
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4373

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4373

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub203 = sub i64 %48, 1, !dbg !4373
  %and204 = and i64 %sub203, 16777216, !dbg !4373
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4373
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4373

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4373

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub208 = sub i64 %49, 1, !dbg !4373
  %and209 = and i64 %sub208, 8388608, !dbg !4373
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4373
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4373

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4373

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub213 = sub i64 %50, 1, !dbg !4373
  %and214 = and i64 %sub213, 4194304, !dbg !4373
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4373
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4373

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4373

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub218 = sub i64 %51, 1, !dbg !4373
  %and219 = and i64 %sub218, 2097152, !dbg !4373
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4373
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4373

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4373

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub223 = sub i64 %52, 1, !dbg !4373
  %and224 = and i64 %sub223, 1048576, !dbg !4373
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4373
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4373

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4373

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub228 = sub i64 %53, 1, !dbg !4373
  %and229 = and i64 %sub228, 524288, !dbg !4373
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4373
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4373

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4373

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub233 = sub i64 %54, 1, !dbg !4373
  %and234 = and i64 %sub233, 262144, !dbg !4373
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4373
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4373

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4373

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub238 = sub i64 %55, 1, !dbg !4373
  %and239 = and i64 %sub238, 131072, !dbg !4373
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4373
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4373

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4373

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub243 = sub i64 %56, 1, !dbg !4373
  %and244 = and i64 %sub243, 65536, !dbg !4373
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4373
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4373

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4373

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub248 = sub i64 %57, 1, !dbg !4373
  %and249 = and i64 %sub248, 32768, !dbg !4373
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4373
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4373

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4373

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub253 = sub i64 %58, 1, !dbg !4373
  %and254 = and i64 %sub253, 16384, !dbg !4373
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4373
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4373

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4373

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub258 = sub i64 %59, 1, !dbg !4373
  %and259 = and i64 %sub258, 8192, !dbg !4373
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4373
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4373

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4373

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub263 = sub i64 %60, 1, !dbg !4373
  %and264 = and i64 %sub263, 4096, !dbg !4373
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4373
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4373

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4373

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub268 = sub i64 %61, 1, !dbg !4373
  %and269 = and i64 %sub268, 2048, !dbg !4373
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4373
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4373

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4373

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub273 = sub i64 %62, 1, !dbg !4373
  %and274 = and i64 %sub273, 1024, !dbg !4373
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4373
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4373

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4373

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub278 = sub i64 %63, 1, !dbg !4373
  %and279 = and i64 %sub278, 512, !dbg !4373
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4373
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4373

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4373

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub283 = sub i64 %64, 1, !dbg !4373
  %and284 = and i64 %sub283, 256, !dbg !4373
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4373
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4373

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4373

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub288 = sub i64 %65, 1, !dbg !4373
  %and289 = and i64 %sub288, 128, !dbg !4373
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4373
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4373

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4373

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub293 = sub i64 %66, 1, !dbg !4373
  %and294 = and i64 %sub293, 64, !dbg !4373
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4373
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4373

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4373

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub298 = sub i64 %67, 1, !dbg !4373
  %and299 = and i64 %sub298, 32, !dbg !4373
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4373
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4373

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4373

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub303 = sub i64 %68, 1, !dbg !4373
  %and304 = and i64 %sub303, 16, !dbg !4373
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4373
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4373

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4373

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub308 = sub i64 %69, 1, !dbg !4373
  %and309 = and i64 %sub308, 8, !dbg !4373
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4373
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4373

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4373

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub313 = sub i64 %70, 1, !dbg !4373
  %and314 = and i64 %sub313, 4, !dbg !4373
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4373
  %71 = zext i1 %tobool315 to i64, !dbg !4373
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4373
  br label %cond.end, !dbg !4373

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4373
  br label %cond.end317, !dbg !4373

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4373
  br label %cond.end319, !dbg !4373

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4373
  br label %cond.end321, !dbg !4373

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4373
  br label %cond.end323, !dbg !4373

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4373
  br label %cond.end325, !dbg !4373

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4373
  br label %cond.end327, !dbg !4373

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4373
  br label %cond.end329, !dbg !4373

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4373
  br label %cond.end331, !dbg !4373

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4373
  br label %cond.end333, !dbg !4373

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4373
  br label %cond.end335, !dbg !4373

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4373
  br label %cond.end337, !dbg !4373

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4373
  br label %cond.end339, !dbg !4373

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4373
  br label %cond.end341, !dbg !4373

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4373
  br label %cond.end343, !dbg !4373

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4373
  br label %cond.end345, !dbg !4373

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4373
  br label %cond.end347, !dbg !4373

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4373
  br label %cond.end349, !dbg !4373

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4373
  br label %cond.end351, !dbg !4373

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4373
  br label %cond.end353, !dbg !4373

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4373
  br label %cond.end355, !dbg !4373

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4373
  br label %cond.end357, !dbg !4373

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4373
  br label %cond.end359, !dbg !4373

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4373
  br label %cond.end361, !dbg !4373

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4373
  br label %cond.end363, !dbg !4373

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4373
  br label %cond.end365, !dbg !4373

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4373
  br label %cond.end367, !dbg !4373

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4373
  br label %cond.end369, !dbg !4373

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4373
  br label %cond.end371, !dbg !4373

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4373
  br label %cond.end373, !dbg !4373

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4373
  br label %cond.end375, !dbg !4373

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4373
  br label %cond.end377, !dbg !4373

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4373
  br label %cond.end379, !dbg !4373

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4373
  br label %cond.end381, !dbg !4373

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4373
  br label %cond.end383, !dbg !4373

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4373
  br label %cond.end385, !dbg !4373

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4373
  br label %cond.end387, !dbg !4373

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4373
  br label %cond.end389, !dbg !4373

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4373
  br label %cond.end391, !dbg !4373

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4373
  br label %cond.end393, !dbg !4373

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4373
  br label %cond.end395, !dbg !4373

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4373
  br label %cond.end397, !dbg !4373

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4373
  br label %cond.end399, !dbg !4373

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4373
  br label %cond.end401, !dbg !4373

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4373
  br label %cond.end403, !dbg !4373

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4373
  br label %cond.end405, !dbg !4373

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4373
  br label %cond.end407, !dbg !4373

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4373
  br label %cond.end409, !dbg !4373

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4373
  br label %cond.end411, !dbg !4373

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4373
  br label %cond.end413, !dbg !4373

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4373
  br label %cond.end415, !dbg !4373

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4373
  br label %cond.end417, !dbg !4373

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4373
  br label %cond.end419, !dbg !4373

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4373
  br label %cond.end421, !dbg !4373

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4373
  br label %cond.end423, !dbg !4373

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4373
  br label %cond.end425, !dbg !4373

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4373
  br label %cond.end427, !dbg !4373

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4373
  br label %cond.end429, !dbg !4373

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4373
  br label %cond.end431, !dbg !4373

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4373
  br label %cond.end433, !dbg !4373

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4373
  br label %cond.end435, !dbg !4373

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4373
  br label %cond.end437, !dbg !4373

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4373
  br label %cond.end440, !dbg !4373

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4373

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4373
  br label %cond.end444, !dbg !4373

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4373
  %sub443 = sub i64 %72, 1, !dbg !4373
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !4373
  br label %cond.end444, !dbg !4373

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4373
  %sub446 = sub i32 %cond445, 12, !dbg !4374
  %add = add i32 %sub446, 1, !dbg !4375
  store i32 %add, i32* %retval, align 4, !dbg !4376
  br label %return, !dbg !4376

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4377
  %dec = add i64 %73, -1, !dbg !4377
  store i64 %dec, i64* %size.addr, align 8, !dbg !4377
  %74 = load i64, i64* %size.addr, align 8, !dbg !4378
  %shr = lshr i64 %74, 12, !dbg !4378
  store i64 %shr, i64* %size.addr, align 8, !dbg !4378
  %75 = load i64, i64* %size.addr, align 8, !dbg !4379
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4356
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4380
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4381
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !4380, !srcloc !4382
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4380
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4383
  %add.i = add i32 %79, 1, !dbg !4384
  store i32 %add.i, i32* %retval, align 4, !dbg !4385
  br label %return, !dbg !4385

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4386
  ret i32 %80, !dbg !4386
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #10 !dbg !4387 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4348, metadata !DIExpression()), !dbg !4391
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4355, metadata !DIExpression()), !dbg !4393
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  %0 = load i64, i64* %n.addr, align 8, !dbg !4396
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4393
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4397
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4398
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !4397, !srcloc !4382
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4397
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4399
  %add.i = add i32 %4, 1, !dbg !4400
  %sub = sub i32 %add.i, 1, !dbg !4401
  ret i32 %sub, !dbg !4402
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4403 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4415
  ret i8* %0, !dbg !4416
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4417 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4424
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4425
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4426
  store i8* %0, i8** %driver_data, align 8, !dbg !4427
  ret void, !dbg !4428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #0 !dbg !4429 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4436
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4437
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #11, !dbg !4438
  ret i8* %call, !dbg !4439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4440 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4445
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4446
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4446
  ret i8* %1, !dbg !4447
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind willreturn }
attributes #10 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2372}
!llvm.module.flags = !{!2373, !2374, !2375, !2376}
!llvm.ident = !{!2377}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_qoriq_driver_init166", scope: !2, file: !3, line: 640, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !2291, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_qoriq.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !56, !62, !67, !73, !79, !85, !92, !100, !106, !112, !118, !123}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 17, baseType: !18, size: 32, elements: !52)
!6 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !6, line: 16, size: 512, elements: !8)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 21, baseType: !5, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, scope: !7, file: !6, line: 22, baseType: !11, size: 448, offset: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !6, line: 22, size: 448, elements: !12)
!12 = !{!13, !24}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !11, file: !6, line: 23, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !15, line: 101, size: 128, elements: !16)
!15 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !19, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !14, file: !15, line: 102, baseType: !18, size: 32)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 103, baseType: !18, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !14, file: !15, line: 104, baseType: !21, size: 64, offset: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !11, file: !6, line: 24, baseType: !25, size: 448)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !15, line: 107, size: 448, elements: !26)
!26 = !{!27, !41, !42, !43, !44}
!27 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !15, line: 108, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !15, line: 108, size: 128, elements: !29)
!29 = !{!30, !40}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !28, file: !15, line: 113, baseType: !31, size: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !15, line: 81, size: 128, elements: !32)
!32 = !{!33, !37, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !31, file: !15, line: 82, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !35, line: 30, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !31, file: !15, line: 83, baseType: !38, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !18)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !31, file: !15, line: 84, baseType: !38, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !28, file: !15, line: 120, baseType: !31, size: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !25, file: !15, line: 122, baseType: !31, size: 128, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !25, file: !15, line: 123, baseType: !18, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !15, line: 124, baseType: !18, size: 32, offset: 288)
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !15, line: 125, baseType: !45, size: 128, offset: 320)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !15, line: 125, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !45, file: !15, line: 131, baseType: !31, size: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !45, file: !15, line: 133, baseType: !49, size: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !15, line: 167, baseType: !18, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "PTP_PF_NONE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !63, line: 65, baseType: !18, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !18, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !74, line: 26, baseType: !18, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !80, line: 44, baseType: !18, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !86, line: 343, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !93, line: 524, baseType: !18, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!99 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !93, line: 502, baseType: !18, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_clock_events", file: !6, line: 151, baseType: !18, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "PTP_CLOCK_ALARM", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "PTP_CLOCK_EXTTS", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "PTP_CLOCK_PPS", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "PTP_CLOCK_PPSUSR", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !113, line: 11, baseType: !18, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !18, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !124, line: 305, baseType: !18, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!130 = !{!131, !135, !136, !327, !134, !260, !250, !213, !1670}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !132, line: 23, baseType: !133)
!132 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !134)
!134 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_qoriq", file: !138, line: 141, size: 2176, elements: !139)
!138 = !DIFile(filename: "./include/linux/fsl/ptp_qoriq.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141, !190, !206, !209, !313, !332, !336, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2287}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !137, file: !138, line: 142, baseType: !135, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !137, file: !138, line: 143, baseType: !142, size: 256, offset: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_qoriq_registers", file: !138, line: 53, size: 256, elements: !143)
!143 = !{!144, !167, !175, !182}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_regs", scope: !142, file: !138, line: 54, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctrl_regs", file: !138, line: 16, size: 448, elements: !147)
!147 = !{!148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !165, !166}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_ctrl", scope: !146, file: !138, line: 17, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !132, line: 21, baseType: !38)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_tevent", scope: !146, file: !138, line: 18, baseType: !149, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_temask", scope: !146, file: !138, line: 19, baseType: !149, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_pevent", scope: !146, file: !138, line: 20, baseType: !149, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_pemask", scope: !146, file: !138, line: 21, baseType: !149, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_stat", scope: !146, file: !138, line: 22, baseType: !149, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_cnt_h", scope: !146, file: !138, line: 23, baseType: !149, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_cnt_l", scope: !146, file: !138, line: 24, baseType: !149, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_add", scope: !146, file: !138, line: 25, baseType: !149, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_acc", scope: !146, file: !138, line: 26, baseType: !149, size: 32, offset: 288)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_prsc", scope: !146, file: !138, line: 27, baseType: !149, size: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !146, file: !138, line: 28, baseType: !161, size: 32, offset: 352)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 32, elements: !50)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !132, line: 17, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !164)
!164 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tmroff_h", scope: !146, file: !138, line: 29, baseType: !149, size: 32, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tmroff_l", scope: !146, file: !138, line: 30, baseType: !149, size: 32, offset: 416)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_regs", scope: !142, file: !138, line: 55, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alarm_regs", file: !138, line: 33, size: 128, elements: !170)
!170 = !{!171, !172, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_alarm1_h", scope: !169, file: !138, line: 34, baseType: !149, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_alarm1_l", scope: !169, file: !138, line: 35, baseType: !149, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_alarm2_h", scope: !169, file: !138, line: 36, baseType: !149, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_alarm2_l", scope: !169, file: !138, line: 37, baseType: !149, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fiper_regs", scope: !142, file: !138, line: 56, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiper_regs", file: !138, line: 40, size: 96, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper1", scope: !177, file: !138, line: 41, baseType: !149, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper2", scope: !177, file: !138, line: 42, baseType: !149, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper3", scope: !177, file: !138, line: 43, baseType: !149, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "etts_regs", scope: !142, file: !138, line: 57, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "etts_regs", file: !138, line: 46, size: 128, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_etts1_h", scope: !184, file: !138, line: 47, baseType: !149, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_etts1_l", scope: !184, file: !138, line: 48, baseType: !149, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_etts2_h", scope: !184, file: !138, line: 49, baseType: !149, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_etts2_l", scope: !184, file: !138, line: 50, baseType: !149, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !137, file: !138, line: 144, baseType: !191, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !192, line: 83, baseType: !193)
!192 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !192, line: 71, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !192, line: 72, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 72, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !196, file: !192, line: 73, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !192, line: 20, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !199, file: !192, line: 21, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !203, line: 25, baseType: !204)
!203 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 25, elements: !205)
!205 = !{}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !137, file: !138, line: 145, baseType: !207, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !6, line: 149, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !137, file: !138, line: 146, baseType: !210, size: 1152, offset: 384)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !6, line: 122, size: 1152, elements: !211)
!211 = !{!212, !216, !221, !225, !226, !227, !228, !229, !230, !245, !251, !255, !256, !261, !272, !281, !294, !300, !305, !309}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !210, file: !6, line: 123, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !215, line: 76, flags: DIFlagFwdDecl)
!215 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !6, line: 124, baseType: !217, size: 128, offset: 64)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 128, elements: !219)
!218 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!219 = !{!220}
!220 = !DISubrange(count: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !210, file: !6, line: 125, baseType: !222, size: 32, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !132, line: 20, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !35, line: 26, baseType: !224)
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !210, file: !6, line: 126, baseType: !224, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !210, file: !6, line: 127, baseType: !224, size: 32, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !210, file: !6, line: 128, baseType: !224, size: 32, offset: 288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !210, file: !6, line: 129, baseType: !224, size: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !210, file: !6, line: 130, baseType: !224, size: 32, offset: 352)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !210, file: !6, line: 131, baseType: !231, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !15, line: 174, size: 768, elements: !233)
!233 = !{!234, !238, !239, !240, !241}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !15, line: 180, baseType: !235, size: 512)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 512, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !232, file: !15, line: 184, baseType: !18, size: 32, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !232, file: !15, line: 188, baseType: !18, size: 32, offset: 544)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !232, file: !15, line: 194, baseType: !18, size: 32, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !232, file: !15, line: 198, baseType: !242, size: 160, offset: 608)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 5)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !210, file: !6, line: 132, baseType: !246, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!224, !249, !250}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!250 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "adjfreq", scope: !210, file: !6, line: 133, baseType: !252, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!224, !249, !222}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !210, file: !6, line: 134, baseType: !252, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !210, file: !6, line: 135, baseType: !257, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!224, !249, !260}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !132, line: 22, baseType: !34)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !210, file: !6, line: 136, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!224, !249, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !267, line: 13, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !266, file: !267, line: 14, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !267, line: 8, baseType: !34)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !266, file: !267, line: 15, baseType: !250, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !210, file: !6, line: 137, baseType: !273, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!224, !249, !265, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !6, line: 33, size: 256, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !277, file: !6, line: 34, baseType: !266, size: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !277, file: !6, line: 35, baseType: !266, size: 128, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !210, file: !6, line: 139, baseType: !282, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!224, !249, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !287, line: 261, size: 192, elements: !288)
!287 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !286, file: !287, line: 262, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !291, line: 29, baseType: !260)
!291 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !286, file: !287, line: 263, baseType: !290, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !286, file: !287, line: 264, baseType: !290, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !210, file: !6, line: 141, baseType: !295, size: 64, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!224, !249, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !210, file: !6, line: 142, baseType: !301, size: 64, offset: 960)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!224, !249, !304, !224}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !210, file: !6, line: 144, baseType: !306, size: 64, offset: 1024)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!224, !249, !18, !56, !18}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !210, file: !6, line: 146, baseType: !310, size: 64, offset: 1088)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!250, !249}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc", scope: !137, file: !138, line: 147, baseType: !314, size: 64, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !316, line: 20, size: 512, elements: !317)
!316 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !322, !323, !326, !328, !329, !330, !331}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !315, file: !316, line: 21, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !320, line: 158, baseType: !321)
!320 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !320, line: 153, baseType: !131)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !315, file: !316, line: 22, baseType: !319, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 23, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !316, line: 24, baseType: !327, size: 64, offset: 192)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !315, file: !316, line: 25, baseType: !327, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !137, file: !138, line: 148, baseType: !333, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !335, line: 21, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !137, file: !138, line: 149, baseType: !337, size: 64, offset: 1664)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !86, line: 461, size: 5568, elements: !339)
!339 = !{!340, !1798, !1799, !1802, !1803, !1854, !1948, !1949, !1950, !1951, !1952, !1961, !2066, !2079, !2082, !2083, !2087, !2089, !2090, !2091, !2095, !2101, !2102, !2105, !2220, !2221, !2224, !2225, !2226, !2227, !2259, !2260, !2261, !2264, !2267, !2268, !2269, !2270}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !338, file: !86, line: 462, baseType: !341, size: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !342, line: 64, size: 512, elements: !343)
!342 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !345, !351, !353, !396, !1635, !1788, !1793, !1794, !1795, !1796, !1797}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !342, line: 65, baseType: !324, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !341, file: !342, line: 66, baseType: !346, size: 128, offset: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !320, line: 178, size: 128, elements: !347)
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !320, line: 179, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !346, file: !320, line: 179, baseType: !349, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !342, line: 67, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !341, file: !342, line: 68, baseType: !354, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !342, line: 192, size: 704, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !355, file: !342, line: 193, baseType: !346, size: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !355, file: !342, line: 194, baseType: !191, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !355, file: !342, line: 195, baseType: !341, size: 512, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !355, file: !342, line: 196, baseType: !361, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !342, line: 156, size: 192, elements: !364)
!364 = !{!365, !370, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !363, file: !342, line: 157, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!224, !354, !352}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !342, line: 158, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!324, !354, !352}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !363, file: !342, line: 159, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!224, !354, !352, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !342, line: 148, size: 20736, elements: !382)
!382 = !{!383, !388, !390, !391, !395}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !381, file: !342, line: 149, baseType: !384, size: 192)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 192, elements: !386)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!386 = !{!387}
!387 = !DISubrange(count: 3)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !381, file: !342, line: 150, baseType: !389, size: 4096, offset: 192)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 4096, elements: !236)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !381, file: !342, line: 151, baseType: !224, size: 32, offset: 4288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !381, file: !342, line: 152, baseType: !392, size: 16384, offset: 4320)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 16384, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 2048)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !381, file: !342, line: 153, baseType: !224, size: 32, offset: 20704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !341, file: !342, line: 69, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !342, line: 138, size: 448, elements: !399)
!399 = !{!400, !404, !432, !434, !1583, !1614, !1618}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !398, file: !342, line: 139, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !352}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !398, file: !342, line: 140, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !408, line: 230, size: 128, elements: !409)
!408 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !425}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !407, file: !408, line: 231, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !352, !418, !385}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !320, line: 60, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !416, line: 73, baseType: !417)
!416 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !416, line: 15, baseType: !250)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !408, line: 30, size: 128, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !419, file: !408, line: 31, baseType: !324, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !419, file: !408, line: 32, baseType: !423, size: 16, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !320, line: 19, baseType: !424)
!424 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !407, file: !408, line: 232, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!414, !352, !418, !324, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 55, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !416, line: 72, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !416, line: 16, baseType: !327)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !398, file: !342, line: 141, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !398, file: !342, line: 142, baseType: !435, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !408, line: 84, size: 320, elements: !439)
!439 = !{!440, !441, !445, !1580, !1581}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !408, line: 85, baseType: !324, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !438, file: !408, line: 86, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!423, !352, !418, !224}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !438, file: !408, line: 88, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!423, !352, !449, !224}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !408, line: 168, size: 448, elements: !451)
!451 = !{!452, !453, !454, !455, !464, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !450, file: !408, line: 169, baseType: !419, size: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !450, file: !408, line: 170, baseType: !429, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !450, file: !408, line: 171, baseType: !135, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !450, file: !408, line: 172, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!414, !459, !352, !449, !385, !462, !429}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !461, line: 526, flags: DIFlagFwdDecl)
!461 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !320, line: 46, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !416, line: 88, baseType: !36)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !450, file: !408, line: 174, baseType: !456, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !450, file: !408, line: 176, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!224, !459, !352, !449, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !471, line: 305, size: 1472, elements: !472)
!471 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !474, !475, !476, !477, !485, !486, !1554, !1560, !1561, !1566, !1567, !1570, !1574, !1575, !1576, !1577, !1578}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !470, file: !471, line: 308, baseType: !327, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !470, file: !471, line: 309, baseType: !327, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !470, file: !471, line: 313, baseType: !469, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !470, file: !471, line: 313, baseType: !469, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !470, file: !471, line: 315, baseType: !478, size: 192, align: 64, offset: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !479, line: 24, size: 192, align: 64, elements: !480)
!479 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !478, file: !479, line: 25, baseType: !327, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !478, file: !479, line: 26, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !478, file: !479, line: 27, baseType: !483, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !470, file: !471, line: 323, baseType: !327, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !470, file: !471, line: 327, baseType: !487, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !471, line: 388, size: 7296, elements: !489)
!489 = !{!490, !1550}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !471, line: 389, baseType: !491, size: 7296)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !471, line: 389, size: 7296, elements: !492)
!492 = !{!493, !494, !498, !499, !503, !504, !505, !506, !507, !515, !520, !521, !522, !523, !530, !531, !532, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !567, !573, !576, !624, !625, !1520, !1521, !1524, !1528, !1529, !1532, !1533, !1534, !1537, !1549}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !491, file: !471, line: 390, baseType: !469, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !491, file: !471, line: 391, baseType: !495, size: 64, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !479, line: 31, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !495, file: !479, line: 32, baseType: !483, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !491, file: !471, line: 392, baseType: !131, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !491, file: !471, line: 394, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!327, !459, !327, !327, !327, !327}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !491, file: !471, line: 398, baseType: !327, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !491, file: !471, line: 399, baseType: !327, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !491, file: !471, line: 405, baseType: !327, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !491, file: !471, line: 406, baseType: !327, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !491, file: !471, line: 407, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !461, line: 286, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 286, size: 64, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !510, file: !461, line: 286, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !514, line: 18, baseType: !327)
!514 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !491, file: !471, line: 416, baseType: !516, size: 32, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !320, line: 168, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 166, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !517, file: !320, line: 167, baseType: !224, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !491, file: !471, line: 428, baseType: !516, size: 32, offset: 608)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !491, file: !471, line: 437, baseType: !516, size: 32, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !491, file: !471, line: 447, baseType: !516, size: 32, offset: 672)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !491, file: !471, line: 450, baseType: !524, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !525, line: 13, baseType: !526)
!525 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !320, line: 175, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 173, size: 64, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !527, file: !320, line: 174, baseType: !260, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !491, file: !471, line: 452, baseType: !224, size: 32, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !491, file: !471, line: 454, baseType: !191, offset: 800)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !491, file: !471, line: 457, baseType: !533, size: 256, offset: 832)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !534, line: 35, size: 256, elements: !535)
!534 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !537, !538, !540}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !534, line: 36, baseType: !524, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !534, line: 42, baseType: !524, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !533, file: !534, line: 46, baseType: !539, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !192, line: 29, baseType: !199)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !533, file: !534, line: 47, baseType: !346, size: 128, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !491, file: !471, line: 459, baseType: !346, size: 128, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !491, file: !471, line: 466, baseType: !327, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !491, file: !471, line: 467, baseType: !327, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !491, file: !471, line: 469, baseType: !327, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !491, file: !471, line: 470, baseType: !327, size: 64, offset: 1408)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !491, file: !471, line: 471, baseType: !526, size: 64, offset: 1472)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !491, file: !471, line: 472, baseType: !327, size: 64, offset: 1536)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !491, file: !471, line: 473, baseType: !327, size: 64, offset: 1600)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !491, file: !471, line: 474, baseType: !327, size: 64, offset: 1664)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !491, file: !471, line: 475, baseType: !327, size: 64, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !491, file: !471, line: 477, baseType: !191, offset: 1792)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !491, file: !471, line: 478, baseType: !327, size: 64, offset: 1792)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !491, file: !471, line: 478, baseType: !327, size: 64, offset: 1856)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !491, file: !471, line: 478, baseType: !327, size: 64, offset: 1920)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !491, file: !471, line: 478, baseType: !327, size: 64, offset: 1984)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !491, file: !471, line: 479, baseType: !327, size: 64, offset: 2048)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !491, file: !471, line: 479, baseType: !327, size: 64, offset: 2112)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !491, file: !471, line: 479, baseType: !327, size: 64, offset: 2176)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !491, file: !471, line: 480, baseType: !327, size: 64, offset: 2240)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !491, file: !471, line: 480, baseType: !327, size: 64, offset: 2304)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !491, file: !471, line: 480, baseType: !327, size: 64, offset: 2368)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !491, file: !471, line: 480, baseType: !327, size: 64, offset: 2432)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !491, file: !471, line: 482, baseType: !564, size: 2816, offset: 2496)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2816, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 44)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !491, file: !471, line: 488, baseType: !568, size: 256, offset: 5312)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !569, line: 60, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !568, file: !569, line: 61, baseType: !572, size: 256)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, elements: !50)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !491, file: !471, line: 490, baseType: !574, size: 64, offset: 5568)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !471, line: 490, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !491, file: !471, line: 493, baseType: !577, size: 896, offset: 5632)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !578, line: 53, baseType: !579)
!578 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !578, line: 13, size: 896, elements: !580)
!580 = !{!581, !582, !583, !584, !587, !588, !595, !596, !616, !617, !620}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !579, file: !578, line: 18, baseType: !131, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !579, file: !578, line: 28, baseType: !526, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !579, file: !578, line: 31, baseType: !533, size: 256, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !579, file: !578, line: 32, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !578, line: 32, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !579, file: !578, line: 37, baseType: !424, size: 16, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !578, line: 40, baseType: !589, size: 192, offset: 512)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !590, line: 53, size: 192, elements: !591)
!590 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !590, line: 54, baseType: !524, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !589, file: !590, line: 55, baseType: !191, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !589, file: !590, line: 59, baseType: !346, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !579, file: !578, line: 41, baseType: !135, size: 64, offset: 704)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !579, file: !578, line: 42, baseType: !597, size: 64, offset: 768)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !600, line: 13, size: 896, elements: !601)
!600 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !599, file: !600, line: 14, baseType: !135, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !600, line: 15, baseType: !327, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !599, file: !600, line: 17, baseType: !327, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !599, file: !600, line: 17, baseType: !327, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !599, file: !600, line: 19, baseType: !250, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !599, file: !600, line: 21, baseType: !250, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !599, file: !600, line: 22, baseType: !250, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !599, file: !600, line: 23, baseType: !250, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !599, file: !600, line: 24, baseType: !250, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !599, file: !600, line: 25, baseType: !250, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !599, file: !600, line: 26, baseType: !250, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !599, file: !600, line: 27, baseType: !250, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !599, file: !600, line: 28, baseType: !250, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !599, file: !600, line: 29, baseType: !250, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !579, file: !578, line: 44, baseType: !516, size: 32, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !579, file: !578, line: 50, baseType: !618, size: 16, offset: 864)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !132, line: 19, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !424)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !579, file: !578, line: 51, baseType: !621, size: 16, offset: 880)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !132, line: 18, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !35, line: 23, baseType: !623)
!623 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !471, line: 495, baseType: !327, size: 64, offset: 6528)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !491, file: !471, line: 497, baseType: !626, size: 64, offset: 6592)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !471, line: 381, size: 384, elements: !628)
!628 = !{!629, !630, !1519}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !627, file: !471, line: 382, baseType: !516, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !627, file: !471, line: 383, baseType: !631, size: 128, offset: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !471, line: 376, size: 128, elements: !632)
!632 = !{!633, !1517}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !631, file: !471, line: 377, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !636, line: 640, size: 48640, elements: !637)
!636 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !644, !646, !647, !653, !654, !655, !656, !657, !658, !659, !660, !664, !682, !693, !783, !784, !785, !796, !797, !799, !800, !801, !802, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !879, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !935, !937, !938, !939, !951, !953, !954, !955, !956, !957, !963, !964, !965, !966, !967, !968, !969, !981, !986, !990, !991, !992, !995, !996, !999, !1002, !1005, !1008, !1011, !1014, !1017, !1023, !1024, !1025, !1031, !1032, !1033, !1034, !1035, !1044, !1045, !1046, !1047, !1048, !1053, !1054, !1055, !1058, !1059, !1062, !1065, !1068, !1071, !1074, !1077, !1078, !1158, !1161, !1164, !1165, !1168, !1169, !1170, !1174, !1175, !1176, !1189, !1190, !1191, !1203, !1208, !1211, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !635, file: !636, line: 646, baseType: !639, size: 128)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !640, line: 56, size: 128, elements: !641)
!640 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !640, line: 57, baseType: !327, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !639, file: !640, line: 58, baseType: !149, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !635, file: !636, line: 649, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !250)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !635, file: !636, line: 657, baseType: !135, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !635, file: !636, line: 658, baseType: !648, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !649, line: 113, baseType: !650)
!649 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !649, line: 111, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !650, file: !649, line: 112, baseType: !516, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !636, line: 660, baseType: !18, size: 32, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !635, file: !636, line: 661, baseType: !18, size: 32, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !635, file: !636, line: 684, baseType: !224, size: 32, offset: 352)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !635, file: !636, line: 686, baseType: !224, size: 32, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !635, file: !636, line: 687, baseType: !224, size: 32, offset: 416)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !635, file: !636, line: 688, baseType: !224, size: 32, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !635, file: !636, line: 689, baseType: !18, size: 32, offset: 480)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !635, file: !636, line: 691, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !636, line: 691, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !635, file: !636, line: 692, baseType: !665, size: 832, offset: 576)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !636, line: 451, size: 832, elements: !666)
!666 = !{!667, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !665, file: !636, line: 453, baseType: !668, size: 128)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !636, line: 325, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !668, file: !636, line: 326, baseType: !327, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !668, file: !636, line: 327, baseType: !149, size: 32, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !665, file: !636, line: 454, baseType: !478, size: 192, align: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !665, file: !636, line: 455, baseType: !346, size: 128, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !665, file: !636, line: 456, baseType: !18, size: 32, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !665, file: !636, line: 458, baseType: !131, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !665, file: !636, line: 459, baseType: !131, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !665, file: !636, line: 460, baseType: !131, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !665, file: !636, line: 461, baseType: !131, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !665, file: !636, line: 463, baseType: !131, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !665, file: !636, line: 465, baseType: !681, offset: 832)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !636, line: 415, elements: !205)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !635, file: !636, line: 693, baseType: !683, size: 384, offset: 1408)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !636, line: 489, size: 384, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !683, file: !636, line: 490, baseType: !346, size: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !683, file: !636, line: 491, baseType: !327, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !683, file: !636, line: 492, baseType: !327, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !683, file: !636, line: 493, baseType: !18, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !683, file: !636, line: 494, baseType: !424, size: 16, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !683, file: !636, line: 495, baseType: !424, size: 16, offset: 304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !683, file: !636, line: 497, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !635, file: !636, line: 697, baseType: !694, size: 1792, offset: 1792)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !636, line: 507, size: 1792, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !780, !781}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !694, file: !636, line: 508, baseType: !478, size: 192, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !694, file: !636, line: 515, baseType: !131, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !694, file: !636, line: 516, baseType: !131, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !694, file: !636, line: 517, baseType: !131, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !694, file: !636, line: 518, baseType: !131, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !694, file: !636, line: 519, baseType: !131, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !694, file: !636, line: 526, baseType: !260, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !694, file: !636, line: 527, baseType: !131, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !636, line: 528, baseType: !18, size: 32, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !694, file: !636, line: 554, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !694, file: !636, line: 555, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !694, file: !636, line: 556, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !694, file: !636, line: 557, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !694, file: !636, line: 563, baseType: !710, size: 512, offset: 704)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !63, line: 118, size: 512, elements: !711)
!711 = !{!712, !718, !719, !724, !776, !777, !778, !779}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !63, line: 119, baseType: !713, size: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !714, line: 9, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !714, line: 10, baseType: !478, size: 192, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !713, file: !714, line: 11, baseType: !290, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !710, file: !63, line: 120, baseType: !290, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !710, file: !63, line: 121, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!62, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !710, file: !63, line: 122, baseType: !725, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !63, line: 159, size: 512, align: 512, elements: !727)
!727 = !{!728, !748, !749, !752, !762, !763, !771, !775}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !726, file: !63, line: 160, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !63, line: 214, size: 4608, align: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !63, line: 215, baseType: !539)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !730, file: !63, line: 216, baseType: !18, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !730, file: !63, line: 217, baseType: !18, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !730, file: !63, line: 218, baseType: !18, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !730, file: !63, line: 219, baseType: !18, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !730, file: !63, line: 220, baseType: !18, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !730, file: !63, line: 221, baseType: !18, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !730, file: !63, line: 222, baseType: !18, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !730, file: !63, line: 233, baseType: !290, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !730, file: !63, line: 234, baseType: !723, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !730, file: !63, line: 235, baseType: !290, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !730, file: !63, line: 236, baseType: !723, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !730, file: !63, line: 237, baseType: !745, size: 4096, offset: 512)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 4096, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 8)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !726, file: !63, line: 161, baseType: !18, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !726, file: !63, line: 162, baseType: !750, size: 32, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !320, line: 27, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !416, line: 96, baseType: !224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !726, file: !63, line: 163, baseType: !753, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !754, line: 276, baseType: !755)
!754 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !754, line: 276, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !755, file: !754, line: 276, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !754, line: 70, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !754, line: 65, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !759, file: !754, line: 66, baseType: !18, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !726, file: !63, line: 164, baseType: !723, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !726, file: !63, line: 165, baseType: !764, size: 128, offset: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !714, line: 14, size: 128, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !764, file: !714, line: 15, baseType: !767, size: 128)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !479, line: 125, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !767, file: !479, line: 126, baseType: !495, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !767, file: !479, line: 127, baseType: !483, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !726, file: !63, line: 166, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!290}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !726, file: !63, line: 167, baseType: !290, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !710, file: !63, line: 123, baseType: !162, size: 8, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !710, file: !63, line: 124, baseType: !162, size: 8, offset: 456)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !710, file: !63, line: 125, baseType: !162, size: 8, offset: 464)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !710, file: !63, line: 126, baseType: !162, size: 8, offset: 472)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !694, file: !636, line: 572, baseType: !710, size: 512, offset: 1216)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !694, file: !636, line: 580, baseType: !782, size: 64, offset: 1728)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !635, file: !636, line: 721, baseType: !18, size: 32, offset: 3584)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !635, file: !636, line: 722, baseType: !224, size: 32, offset: 3616)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !635, file: !636, line: 723, baseType: !786, size: 64, offset: 3648)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !789, line: 17, baseType: !790)
!789 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !789, line: 17, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !790, file: !789, line: 17, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 1)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !635, file: !636, line: 724, baseType: !788, size: 64, offset: 3712)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !635, file: !636, line: 749, baseType: !798, offset: 3776)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !636, line: 290, elements: !205)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !635, file: !636, line: 751, baseType: !346, size: 128, offset: 3776)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !635, file: !636, line: 757, baseType: !487, size: 64, offset: 3904)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !635, file: !636, line: 758, baseType: !487, size: 64, offset: 3968)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !635, file: !636, line: 761, baseType: !803, size: 320, offset: 4032)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !569, line: 34, size: 320, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !803, file: !569, line: 35, baseType: !131, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !803, file: !569, line: 36, baseType: !807, size: 256, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 256, elements: !50)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !635, file: !636, line: 766, baseType: !224, size: 32, offset: 4352)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !635, file: !636, line: 767, baseType: !224, size: 32, offset: 4384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !635, file: !636, line: 768, baseType: !224, size: 32, offset: 4416)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !635, file: !636, line: 770, baseType: !224, size: 32, offset: 4448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !635, file: !636, line: 772, baseType: !327, size: 64, offset: 4480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !635, file: !636, line: 775, baseType: !18, size: 32, offset: 4544)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !635, file: !636, line: 778, baseType: !18, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !635, file: !636, line: 779, baseType: !18, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !635, file: !636, line: 780, baseType: !18, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !635, file: !636, line: 803, baseType: !18, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !635, file: !636, line: 806, baseType: !18, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !635, file: !636, line: 807, baseType: !18, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !635, file: !636, line: 809, baseType: !18, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !635, file: !636, line: 815, baseType: !18, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !635, file: !636, line: 831, baseType: !327, size: 64, offset: 4672)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !635, file: !636, line: 833, baseType: !824, size: 384, offset: 4736)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 384, elements: !825)
!825 = !{!826, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !824, file: !68, line: 26, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!250, !830}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !68, line: 27, baseType: !832, size: 320, offset: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !68, line: 27, size: 320, elements: !833)
!833 = !{!834, !844, !869}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !832, file: !68, line: 36, baseType: !835, size: 320)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !68, line: 29, size: 320, elements: !836)
!836 = !{!837, !839, !840, !841, !842, !843}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !835, file: !68, line: 30, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !835, file: !68, line: 31, baseType: !149, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !68, line: 32, baseType: !149, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !835, file: !68, line: 33, baseType: !149, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !835, file: !68, line: 34, baseType: !131, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !835, file: !68, line: 35, baseType: !838, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !832, file: !68, line: 46, baseType: !845, size: 192)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !68, line: 38, size: 192, elements: !846)
!846 = !{!847, !848, !849, !868}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !845, file: !68, line: 39, baseType: !750, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !68, line: 40, baseType: !67, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !68, line: 41, baseType: !850, size: 64, offset: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !68, line: 41, size: 64, elements: !851)
!851 = !{!852, !860}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !850, file: !68, line: 42, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !855, line: 7, size: 128, elements: !856)
!855 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !854, file: !855, line: 8, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !416, line: 93, baseType: !36)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !854, file: !855, line: 9, baseType: !36, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !850, file: !68, line: 43, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !863, line: 7, size: 64, elements: !864)
!863 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!864 = !{!865, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !862, file: !863, line: 8, baseType: !866, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !863, line: 5, baseType: !222)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !862, file: !863, line: 9, baseType: !222, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !845, file: !68, line: 45, baseType: !131, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !832, file: !68, line: 54, baseType: !870, size: 256)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !68, line: 48, size: 256, elements: !871)
!871 = !{!872, !875, !876, !877, !878}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !870, file: !68, line: 49, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !870, file: !68, line: 50, baseType: !224, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !870, file: !68, line: 51, baseType: !224, size: 32, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !870, file: !68, line: 52, baseType: !327, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !870, file: !68, line: 53, baseType: !327, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !635, file: !636, line: 835, baseType: !880, size: 32, offset: 5120)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !320, line: 22, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !416, line: 28, baseType: !224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !635, file: !636, line: 836, baseType: !880, size: 32, offset: 5152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !635, file: !636, line: 840, baseType: !327, size: 64, offset: 5184)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !635, file: !636, line: 849, baseType: !634, size: 64, offset: 5248)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !635, file: !636, line: 852, baseType: !634, size: 64, offset: 5312)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !635, file: !636, line: 857, baseType: !346, size: 128, offset: 5376)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !635, file: !636, line: 858, baseType: !346, size: 128, offset: 5504)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !635, file: !636, line: 859, baseType: !634, size: 64, offset: 5632)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !635, file: !636, line: 867, baseType: !346, size: 128, offset: 5696)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !635, file: !636, line: 868, baseType: !346, size: 128, offset: 5824)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !635, file: !636, line: 871, baseType: !892, size: 64, offset: 5952)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !894, line: 59, size: 768, elements: !895)
!894 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897, !898, !899, !910, !911, !918, !927}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !893, file: !894, line: 61, baseType: !648, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !893, file: !894, line: 62, baseType: !18, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !893, file: !894, line: 63, baseType: !191, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !893, file: !894, line: 65, baseType: !900, size: 256, offset: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 256, elements: !50)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !320, line: 182, size: 64, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !901, file: !320, line: 183, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !320, line: 186, size: 128, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !320, line: 187, baseType: !904, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !905, file: !320, line: 187, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !893, file: !894, line: 66, baseType: !901, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !893, file: !894, line: 68, baseType: !912, size: 128, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !913, line: 40, baseType: !914)
!913 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !913, line: 36, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !913, line: 37, baseType: !191)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !914, file: !913, line: 38, baseType: !346, size: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !893, file: !894, line: 69, baseType: !919, size: 128, align: 64, offset: 512)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !320, line: 216, size: 128, align: 64, elements: !920)
!920 = !{!921, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !919, file: !320, line: 217, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !919, file: !320, line: 218, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !922}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !893, file: !894, line: 70, baseType: !928, size: 128, offset: 640)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 128, elements: !794)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !894, line: 54, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !929, file: !894, line: 55, baseType: !224, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !929, file: !894, line: 56, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !894, line: 56, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !635, file: !636, line: 872, baseType: !936, size: 512, offset: 6016)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 512, elements: !50)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !635, file: !636, line: 873, baseType: !346, size: 128, offset: 6528)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !635, file: !636, line: 874, baseType: !346, size: 128, offset: 6656)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !635, file: !636, line: 876, baseType: !940, size: 64, offset: 6784)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !942, line: 26, size: 192, elements: !943)
!942 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !941, file: !942, line: 27, baseType: !18, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !941, file: !942, line: 28, baseType: !946, size: 128, offset: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !947, line: 43, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !946, file: !947, line: 44, baseType: !539)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !946, file: !947, line: 45, baseType: !346, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !635, file: !636, line: 879, baseType: !952, size: 64, offset: 6848)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !635, file: !636, line: 882, baseType: !952, size: 64, offset: 6912)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !635, file: !636, line: 884, baseType: !131, size: 64, offset: 6976)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !635, file: !636, line: 885, baseType: !131, size: 64, offset: 7040)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !635, file: !636, line: 890, baseType: !131, size: 64, offset: 7104)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !635, file: !636, line: 891, baseType: !958, size: 128, offset: 7168)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !636, line: 242, size: 128, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !958, file: !636, line: 244, baseType: !131, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !958, file: !636, line: 245, baseType: !131, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !958, file: !636, line: 246, baseType: !539, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !635, file: !636, line: 900, baseType: !327, size: 64, offset: 7296)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !635, file: !636, line: 901, baseType: !327, size: 64, offset: 7360)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !635, file: !636, line: 904, baseType: !131, size: 64, offset: 7424)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !635, file: !636, line: 907, baseType: !131, size: 64, offset: 7488)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !635, file: !636, line: 910, baseType: !327, size: 64, offset: 7552)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !635, file: !636, line: 911, baseType: !327, size: 64, offset: 7616)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !635, file: !636, line: 914, baseType: !970, size: 640, offset: 7680)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !971, line: 123, size: 640, elements: !972)
!971 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973, !979, !980}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !970, file: !971, line: 124, baseType: !974, size: 576)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 576, elements: !386)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !971, line: 108, size: 192, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !975, file: !971, line: 109, baseType: !131, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !975, file: !971, line: 110, baseType: !764, size: 128, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !970, file: !971, line: 125, baseType: !18, size: 32, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !970, file: !971, line: 126, baseType: !18, size: 32, offset: 608)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !635, file: !636, line: 917, baseType: !982, size: 192, offset: 8320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !971, line: 134, size: 192, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !982, file: !971, line: 135, baseType: !919, size: 128, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !982, file: !971, line: 136, baseType: !18, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !635, file: !636, line: 923, baseType: !987, size: 64, offset: 8512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !636, line: 923, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !635, file: !636, line: 926, baseType: !987, size: 64, offset: 8576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !635, file: !636, line: 929, baseType: !987, size: 64, offset: 8640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !635, file: !636, line: 933, baseType: !993, size: 64, offset: 8704)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !636, line: 933, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !635, file: !636, line: 943, baseType: !217, size: 128, offset: 8768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !635, file: !636, line: 945, baseType: !997, size: 64, offset: 8896)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !636, line: 49, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !635, file: !636, line: 956, baseType: !1000, size: 64, offset: 8960)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !636, line: 45, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !635, file: !636, line: 959, baseType: !1003, size: 64, offset: 9024)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !636, line: 959, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !635, file: !636, line: 962, baseType: !1006, size: 64, offset: 9088)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !636, line: 66, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !635, file: !636, line: 966, baseType: !1009, size: 64, offset: 9152)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !636, line: 50, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !635, file: !636, line: 969, baseType: !1012, size: 64, offset: 9216)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !971, line: 223, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !635, file: !636, line: 970, baseType: !1015, size: 64, offset: 9280)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !636, line: 62, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !635, file: !636, line: 971, baseType: !1018, size: 64, offset: 9344)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1019, line: 25, baseType: !1020)
!1019 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1019, line: 23, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1020, file: !1019, line: 24, baseType: !793, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !635, file: !636, line: 972, baseType: !1018, size: 64, offset: 9408)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !635, file: !636, line: 974, baseType: !1018, size: 64, offset: 9472)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !635, file: !636, line: 975, baseType: !1026, size: 192, offset: 9536)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1027, line: 30, size: 192, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1026, file: !1027, line: 31, baseType: !346, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1026, file: !1027, line: 32, baseType: !1018, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !635, file: !636, line: 976, baseType: !327, size: 64, offset: 9728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !635, file: !636, line: 977, baseType: !429, size: 64, offset: 9792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !635, file: !636, line: 978, baseType: !18, size: 32, offset: 9856)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !635, file: !636, line: 980, baseType: !922, size: 64, offset: 9920)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !635, file: !636, line: 989, baseType: !1036, size: 128, offset: 9984)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1037, line: 35, size: 128, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1036, file: !1037, line: 36, baseType: !224, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1036, file: !1037, line: 37, baseType: !516, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1036, file: !1037, line: 38, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1037, line: 23, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !635, file: !636, line: 992, baseType: !131, size: 64, offset: 10112)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !635, file: !636, line: 993, baseType: !131, size: 64, offset: 10176)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !635, file: !636, line: 996, baseType: !191, offset: 10240)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !635, file: !636, line: 999, baseType: !539, offset: 10240)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !635, file: !636, line: 1001, baseType: !1049, size: 64, offset: 10240)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !636, line: 636, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !636, line: 637, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !635, file: !636, line: 1005, baseType: !767, size: 128, offset: 10304)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !635, file: !636, line: 1007, baseType: !634, size: 64, offset: 10432)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !635, file: !636, line: 1009, baseType: !1056, size: 64, offset: 10496)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !636, line: 1009, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !635, file: !636, line: 1043, baseType: !135, size: 64, offset: 10560)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !635, file: !636, line: 1046, baseType: !1060, size: 64, offset: 10624)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !636, line: 41, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !635, file: !636, line: 1050, baseType: !1063, size: 64, offset: 10688)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !636, line: 42, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !635, file: !636, line: 1054, baseType: !1066, size: 64, offset: 10752)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !636, line: 55, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !635, file: !636, line: 1056, baseType: !1069, size: 64, offset: 10816)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !636, line: 40, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !635, file: !636, line: 1058, baseType: !1072, size: 64, offset: 10880)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !636, line: 47, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !635, file: !636, line: 1061, baseType: !1075, size: 64, offset: 10944)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !636, line: 43, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !635, file: !636, line: 1064, baseType: !327, size: 64, offset: 11008)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !635, file: !636, line: 1065, baseType: !1079, size: 64, offset: 11072)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1027, line: 14, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1027, line: 12, size: 384, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1027, line: 13, baseType: !1084, size: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1027, line: 13, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1084, file: !1027, line: 13, baseType: !224, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1084, file: !1027, line: 13, baseType: !224, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1084, file: !1027, line: 13, baseType: !224, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1084, file: !1027, line: 13, baseType: !1090, size: 256, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1091, line: 32, size: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1099, !1112, !1118, !1127, !1147, !1152}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1090, file: !1091, line: 37, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 34, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1094, file: !1091, line: 35, baseType: !881, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1094, file: !1091, line: 36, baseType: !1098, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !416, line: 49, baseType: !18)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1090, file: !1091, line: 45, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 40, size: 192, elements: !1101)
!1101 = !{!1102, !1104, !1105, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1100, file: !1091, line: 41, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !416, line: 95, baseType: !224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1100, file: !1091, line: 42, baseType: !224, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1100, file: !1091, line: 43, baseType: !1106, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1091, line: 11, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1091, line: 8, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1107, file: !1091, line: 9, baseType: !224, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1107, file: !1091, line: 10, baseType: !135, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1100, file: !1091, line: 44, baseType: !224, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1090, file: !1091, line: 52, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 48, size: 128, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1113, file: !1091, line: 49, baseType: !881, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1113, file: !1091, line: 50, baseType: !1098, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1113, file: !1091, line: 51, baseType: !1106, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1090, file: !1091, line: 61, baseType: !1119, size: 256)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 55, size: 256, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1119, file: !1091, line: 56, baseType: !881, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1119, file: !1091, line: 57, baseType: !1098, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1119, file: !1091, line: 58, baseType: !224, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1119, file: !1091, line: 59, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !416, line: 94, baseType: !417)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1119, file: !1091, line: 60, baseType: !1125, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1090, file: !1091, line: 95, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 64, size: 256, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1128, file: !1091, line: 65, baseType: !135, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1091, line: 77, baseType: !1132, size: 192, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1091, line: 77, size: 192, elements: !1133)
!1133 = !{!1134, !1135, !1142}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1132, file: !1091, line: 82, baseType: !623, size: 16)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1132, file: !1091, line: 88, baseType: !1136, size: 192)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !1091, line: 84, size: 192, elements: !1137)
!1137 = !{!1138, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1136, file: !1091, line: 85, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !746)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1136, file: !1091, line: 86, baseType: !135, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1136, file: !1091, line: 87, baseType: !135, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1132, file: !1091, line: 93, baseType: !1143, size: 96)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !1091, line: 90, size: 96, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1143, file: !1091, line: 91, baseType: !1139, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1143, file: !1091, line: 92, baseType: !38, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1090, file: !1091, line: 101, baseType: !1148, size: 128)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 98, size: 128, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1148, file: !1091, line: 99, baseType: !250, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1148, file: !1091, line: 100, baseType: !224, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1090, file: !1091, line: 108, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 104, size: 128, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1153, file: !1091, line: 105, baseType: !135, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1153, file: !1091, line: 106, baseType: !224, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1153, file: !1091, line: 107, baseType: !18, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !635, file: !636, line: 1067, baseType: !1159, offset: 11136)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1160, line: 12, elements: !205)
!1160 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !635, file: !636, line: 1099, baseType: !1162, size: 64, offset: 11136)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !636, line: 56, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !635, file: !636, line: 1103, baseType: !346, size: 128, offset: 11200)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !635, file: !636, line: 1104, baseType: !1166, size: 64, offset: 11328)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !636, line: 46, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !635, file: !636, line: 1105, baseType: !589, size: 192, offset: 11392)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !635, file: !636, line: 1106, baseType: !18, size: 32, offset: 11584)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !635, file: !636, line: 1109, baseType: !1171, size: 128, offset: 11648)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 128, elements: !22)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !636, line: 51, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !635, file: !636, line: 1110, baseType: !589, size: 192, offset: 11776)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !635, file: !636, line: 1111, baseType: !346, size: 128, offset: 11968)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !635, file: !636, line: 1173, baseType: !1177, size: 64, offset: 12096)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1179, line: 62, size: 256, align: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183, !1188}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1178, file: !1179, line: 75, baseType: !38, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1178, file: !1179, line: 90, baseType: !38, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1178, file: !1179, line: 124, baseType: !1184, size: 64, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1179, line: 109, size: 64, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1184, file: !1179, line: 110, baseType: !133, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1184, file: !1179, line: 112, baseType: !133, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !1179, line: 144, baseType: !38, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !635, file: !636, line: 1174, baseType: !149, size: 32, offset: 12160)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !635, file: !636, line: 1179, baseType: !327, size: 64, offset: 12224)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !635, file: !636, line: 1182, baseType: !1192, size: 128, offset: 12288)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !569, line: 76, size: 128, elements: !1193)
!1193 = !{!1194, !1199, !1202}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1192, file: !569, line: 85, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1196, line: 7, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1195, file: !1196, line: 12, baseType: !790, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1192, file: !569, line: 88, baseType: !1200, size: 8, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !320, line: 30, baseType: !1201)
!1201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1192, file: !569, line: 95, baseType: !1200, size: 8, offset: 72)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !636, line: 1184, baseType: !1204, size: 128, offset: 12416)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !636, line: 1184, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1204, file: !636, line: 1185, baseType: !648, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1204, file: !636, line: 1186, baseType: !919, size: 128, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !635, file: !636, line: 1190, baseType: !1209, size: 64, offset: 12544)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !636, line: 53, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !635, file: !636, line: 1192, baseType: !1212, size: 128, offset: 12608)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !569, line: 64, size: 128, elements: !1213)
!1213 = !{!1214, !1307, !1308}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1212, file: !569, line: 65, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !471, line: 68, size: 512, align: 128, elements: !1217)
!1217 = !{!1218, !1219, !1299, !1306}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !471, line: 69, baseType: !327, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !471, line: 77, baseType: !1220, size: 320, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !471, line: 77, size: 320, elements: !1221)
!1221 = !{!1222, !1231, !1236, !1264, !1272, !1278, !1291, !1298}
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 78, baseType: !1223, size: 320)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 78, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1229, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1223, file: !471, line: 84, baseType: !346, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1223, file: !471, line: 86, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !471, line: 26, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1223, file: !471, line: 87, baseType: !327, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1223, file: !471, line: 94, baseType: !327, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 96, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 96, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1232, file: !471, line: 101, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !320, line: 143, baseType: !131)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 103, baseType: !1237, size: 320)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 103, size: 320, elements: !1238)
!1238 = !{!1239, !1249, !1252, !1253}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !471, line: 104, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !471, line: 104, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1240, file: !471, line: 105, baseType: !346, size: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !471, line: 106, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !471, line: 106, size: 128, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1244, file: !471, line: 107, baseType: !1215, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1244, file: !471, line: 109, baseType: !224, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1244, file: !471, line: 110, baseType: !224, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1237, file: !471, line: 117, baseType: !1250, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !471, line: 117, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1237, file: !471, line: 119, baseType: !135, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !471, line: 120, baseType: !1254, size: 64, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !471, line: 120, size: 64, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1254, file: !471, line: 121, baseType: !135, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1254, file: !471, line: 122, baseType: !327, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !471, line: 123, baseType: !1259, size: 32)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !471, line: 123, size: 32, elements: !1260)
!1260 = !{!1261, !1262, !1263}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1259, file: !471, line: 124, baseType: !18, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1259, file: !471, line: 125, baseType: !18, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1259, file: !471, line: 126, baseType: !18, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 130, baseType: !1265, size: 192)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 130, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1265, file: !471, line: 131, baseType: !327, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1265, file: !471, line: 134, baseType: !164, size: 8, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1265, file: !471, line: 135, baseType: !164, size: 8, offset: 72)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1265, file: !471, line: 136, baseType: !516, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1265, file: !471, line: 137, baseType: !18, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 139, baseType: !1273, size: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 139, size: 256, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1273, file: !471, line: 140, baseType: !327, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1273, file: !471, line: 141, baseType: !516, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1273, file: !471, line: 143, baseType: !346, size: 128, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 145, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 145, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1284, !1285, !1290}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1279, file: !471, line: 146, baseType: !327, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1279, file: !471, line: 147, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !461, line: 509, baseType: !1215)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1279, file: !471, line: 148, baseType: !327, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !471, line: 149, baseType: !1286, size: 64, offset: 192)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !471, line: 149, size: 64, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1286, file: !471, line: 150, baseType: !487, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1286, file: !471, line: 151, baseType: !516, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1279, file: !471, line: 156, baseType: !191, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !471, line: 159, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !471, line: 159, size: 128, elements: !1293)
!1293 = !{!1294, !1297}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1292, file: !471, line: 161, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !471, line: 161, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1292, file: !471, line: 162, baseType: !135, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1220, file: !471, line: 176, baseType: !919, size: 128, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !471, line: 179, baseType: !1300, size: 32, offset: 384)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !471, line: 179, size: 32, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1300, file: !471, line: 184, baseType: !516, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1300, file: !471, line: 192, baseType: !18, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1300, file: !471, line: 194, baseType: !18, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1300, file: !471, line: 195, baseType: !224, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1216, file: !471, line: 199, baseType: !516, size: 32, offset: 416)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1212, file: !569, line: 67, baseType: !38, size: 32, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1212, file: !569, line: 68, baseType: !38, size: 32, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !635, file: !636, line: 1206, baseType: !224, size: 32, offset: 12736)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !635, file: !636, line: 1207, baseType: !224, size: 32, offset: 12768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !635, file: !636, line: 1209, baseType: !327, size: 64, offset: 12800)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !635, file: !636, line: 1219, baseType: !131, size: 64, offset: 12864)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !635, file: !636, line: 1220, baseType: !131, size: 64, offset: 12928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !635, file: !636, line: 1317, baseType: !224, size: 32, offset: 12992)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !635, file: !636, line: 1319, baseType: !634, size: 64, offset: 13056)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !635, file: !636, line: 1322, baseType: !1317, size: 64, offset: 13120)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1319, line: 56, size: 512, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1327, !1328, !1329}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !1319, line: 57, baseType: !1317, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1318, file: !1319, line: 58, baseType: !135, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1318, file: !1319, line: 59, baseType: !327, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1319, line: 60, baseType: !327, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1318, file: !1319, line: 61, baseType: !1326, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1318, file: !1319, line: 62, baseType: !18, size: 32, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1318, file: !1319, line: 63, baseType: !321, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1318, file: !1319, line: 64, baseType: !1330, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !635, file: !636, line: 1326, baseType: !648, size: 32, offset: 13184)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !635, file: !636, line: 1342, baseType: !135, size: 64, offset: 13248)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !635, file: !636, line: 1343, baseType: !133, size: 64, offset: 13312)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !635, file: !636, line: 1344, baseType: !131, size: 64, offset: 13376)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !635, file: !636, line: 1345, baseType: !133, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !635, file: !636, line: 1346, baseType: !133, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !635, file: !636, line: 1347, baseType: !133, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !635, file: !636, line: 1348, baseType: !919, size: 128, align: 64, offset: 13504)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !635, file: !636, line: 1358, baseType: !1341, size: 34816, offset: 13824)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1342, line: 485, size: 34816, elements: !1343)
!1342 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1373, !1374, !1375, !1376, !1377, !1378, !1381, !1382, !1383}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1341, file: !1342, line: 487, baseType: !1345, size: 192)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 192, elements: !386)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1347, line: 16, size: 64, elements: !1348)
!1347 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1346, file: !1347, line: 17, baseType: !618, size: 16)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1346, file: !1347, line: 18, baseType: !618, size: 16, offset: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1346, file: !1347, line: 19, baseType: !618, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1346, file: !1347, line: 19, baseType: !618, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1346, file: !1347, line: 19, baseType: !618, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1346, file: !1347, line: 19, baseType: !618, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1346, file: !1347, line: 19, baseType: !618, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1346, file: !1347, line: 20, baseType: !618, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1346, file: !1347, line: 20, baseType: !618, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1346, file: !1347, line: 20, baseType: !618, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1346, file: !1347, line: 20, baseType: !618, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1346, file: !1347, line: 20, baseType: !618, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1346, file: !1347, line: 20, baseType: !618, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1341, file: !1342, line: 491, baseType: !327, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1341, file: !1342, line: 495, baseType: !424, size: 16, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1341, file: !1342, line: 496, baseType: !424, size: 16, offset: 272)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1341, file: !1342, line: 497, baseType: !424, size: 16, offset: 288)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1341, file: !1342, line: 498, baseType: !424, size: 16, offset: 304)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1341, file: !1342, line: 502, baseType: !327, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1341, file: !1342, line: 503, baseType: !327, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1341, file: !1342, line: 514, baseType: !1370, size: 256, offset: 448)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 256, elements: !50)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1342, line: 483, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1341, file: !1342, line: 516, baseType: !327, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1341, file: !1342, line: 518, baseType: !327, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1341, file: !1342, line: 520, baseType: !327, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1341, file: !1342, line: 521, baseType: !327, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1341, file: !1342, line: 522, baseType: !327, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1341, file: !1342, line: 528, baseType: !1379, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1342, line: 10, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1341, file: !1342, line: 535, baseType: !327, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1341, file: !1342, line: 537, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1341, file: !1342, line: 540, baseType: !1384, size: 33280, offset: 1536)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1385, line: 317, size: 33280, elements: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1384, file: !1385, line: 330, baseType: !18, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1384, file: !1385, line: 337, baseType: !327, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1384, file: !1385, line: 348, baseType: !1390, size: 32768, offset: 512)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1385, line: 304, size: 32768, elements: !1391)
!1391 = !{!1392, !1407, !1446, !1496, !1513}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1390, file: !1385, line: 305, baseType: !1393, size: 896)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1385, line: 12, size: 896, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1393, file: !1385, line: 13, baseType: !149, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1393, file: !1385, line: 14, baseType: !149, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1393, file: !1385, line: 15, baseType: !149, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1393, file: !1385, line: 16, baseType: !149, size: 32, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1393, file: !1385, line: 17, baseType: !149, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1393, file: !1385, line: 18, baseType: !149, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1393, file: !1385, line: 19, baseType: !149, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1393, file: !1385, line: 22, baseType: !1403, size: 640, offset: 224)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 20)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1393, file: !1385, line: 25, baseType: !149, size: 32, offset: 864)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1390, file: !1385, line: 306, baseType: !1408, size: 4096, align: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1385, line: 34, size: 4096, align: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1429, !1430, !1431, !1435, !1437, !1441}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1408, file: !1385, line: 35, baseType: !618, size: 16)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1408, file: !1385, line: 36, baseType: !618, size: 16, offset: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1408, file: !1385, line: 37, baseType: !618, size: 16, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1408, file: !1385, line: 38, baseType: !618, size: 16, offset: 48)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1385, line: 39, baseType: !1415, size: 128, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1385, line: 39, size: 128, elements: !1416)
!1416 = !{!1417, !1422}
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1385, line: 40, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1385, line: 40, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1418, file: !1385, line: 41, baseType: !131, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1418, file: !1385, line: 42, baseType: !131, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1385, line: 44, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1385, line: 44, size: 128, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1423, file: !1385, line: 45, baseType: !149, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1423, file: !1385, line: 46, baseType: !149, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1423, file: !1385, line: 47, baseType: !149, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1423, file: !1385, line: 48, baseType: !149, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1408, file: !1385, line: 51, baseType: !149, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1408, file: !1385, line: 52, baseType: !149, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1408, file: !1385, line: 55, baseType: !1432, size: 1024, offset: 256)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1408, file: !1385, line: 58, baseType: !1436, size: 2048, offset: 1280)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, elements: !236)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1408, file: !1385, line: 60, baseType: !1438, size: 384, offset: 3328)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 384, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 12)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1385, line: 62, baseType: !1442, size: 384, offset: 3712)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1385, line: 62, size: 384, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1442, file: !1385, line: 63, baseType: !1438, size: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1442, file: !1385, line: 64, baseType: !1438, size: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1390, file: !1385, line: 307, baseType: !1447, size: 1088)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1385, line: 79, size: 1088, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1495}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1447, file: !1385, line: 80, baseType: !149, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1447, file: !1385, line: 81, baseType: !149, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1447, file: !1385, line: 82, baseType: !149, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1447, file: !1385, line: 83, baseType: !149, size: 32, offset: 96)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1447, file: !1385, line: 84, baseType: !149, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1447, file: !1385, line: 85, baseType: !149, size: 32, offset: 160)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1447, file: !1385, line: 86, baseType: !149, size: 32, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1447, file: !1385, line: 88, baseType: !1403, size: 640, offset: 224)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1447, file: !1385, line: 89, baseType: !162, size: 8, offset: 864)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1447, file: !1385, line: 90, baseType: !162, size: 8, offset: 872)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1447, file: !1385, line: 91, baseType: !162, size: 8, offset: 880)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1447, file: !1385, line: 92, baseType: !162, size: 8, offset: 888)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1447, file: !1385, line: 93, baseType: !162, size: 8, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1447, file: !1385, line: 94, baseType: !162, size: 8, offset: 904)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1447, file: !1385, line: 95, baseType: !1464, size: 64, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1466, line: 11, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1465, file: !1466, line: 12, baseType: !250, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1465, file: !1466, line: 13, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1472, line: 56, size: 1344, elements: !1473)
!1472 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1471, file: !1472, line: 61, baseType: !327, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1471, file: !1472, line: 62, baseType: !327, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1471, file: !1472, line: 63, baseType: !327, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1471, file: !1472, line: 64, baseType: !327, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1471, file: !1472, line: 65, baseType: !327, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1471, file: !1472, line: 66, baseType: !327, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1471, file: !1472, line: 68, baseType: !327, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1471, file: !1472, line: 69, baseType: !327, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1471, file: !1472, line: 70, baseType: !327, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1471, file: !1472, line: 71, baseType: !327, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1471, file: !1472, line: 72, baseType: !327, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1471, file: !1472, line: 73, baseType: !327, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1471, file: !1472, line: 74, baseType: !327, size: 64, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1471, file: !1472, line: 75, baseType: !327, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1471, file: !1472, line: 76, baseType: !327, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1471, file: !1472, line: 81, baseType: !327, size: 64, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1471, file: !1472, line: 83, baseType: !327, size: 64, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1471, file: !1472, line: 84, baseType: !327, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !1472, line: 85, baseType: !327, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1471, file: !1472, line: 86, baseType: !327, size: 64, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1471, file: !1472, line: 87, baseType: !327, size: 64, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1447, file: !1385, line: 96, baseType: !149, size: 32, offset: 1024)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1390, file: !1385, line: 308, baseType: !1497, size: 4608, align: 512)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1385, line: 289, size: 4608, align: 512, elements: !1498)
!1498 = !{!1499, !1500, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1497, file: !1385, line: 290, baseType: !1408, size: 4096, align: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1497, file: !1385, line: 291, baseType: !1501, size: 512, offset: 4096)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1385, line: 268, size: 512, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1501, file: !1385, line: 269, baseType: !131, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1501, file: !1385, line: 270, baseType: !131, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1501, file: !1385, line: 271, baseType: !1506, size: 384, offset: 128)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 384, elements: !1507)
!1507 = !{!1508}
!1508 = !DISubrange(count: 6)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1497, file: !1385, line: 292, baseType: !1510, offset: 4608)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 0)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1390, file: !1385, line: 309, baseType: !1514, size: 32768)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 32768, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 4096)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !471, line: 378, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !627, file: !471, line: 384, baseType: !941, size: 192, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !491, file: !471, line: 500, baseType: !191, offset: 6656)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !491, file: !471, line: 501, baseType: !1522, size: 64, offset: 6656)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !471, line: 387, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !491, file: !471, line: 516, baseType: !1525, size: 64, offset: 6720)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1527, line: 18, flags: DIFlagFwdDecl)
!1527 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !491, file: !471, line: 519, baseType: !459, size: 64, offset: 6784)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !491, file: !471, line: 521, baseType: !1530, size: 64, offset: 6848)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !471, line: 521, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !491, file: !471, line: 545, baseType: !516, size: 32, offset: 6912)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !491, file: !471, line: 548, baseType: !1200, size: 8, offset: 6944)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !491, file: !471, line: 550, baseType: !1535, offset: 6952)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1536, line: 142, elements: !205)
!1536 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !491, file: !471, line: 554, baseType: !1538, size: 256, offset: 6976)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1539, line: 102, size: 256, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !1539, line: 103, baseType: !524, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1538, file: !1539, line: 104, baseType: !346, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1538, file: !1539, line: 105, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1539, line: 21, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !491, file: !471, line: 557, baseType: !149, size: 32, offset: 7232)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !488, file: !471, line: 565, baseType: !1551, offset: 7296)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: -1)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !470, file: !471, line: 333, baseType: !1555, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !461, line: 284, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !461, line: 284, size: 64, elements: !1557)
!1557 = !{!1558}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1556, file: !461, line: 284, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !514, line: 19, baseType: !327)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !470, file: !471, line: 334, baseType: !327, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !470, file: !471, line: 343, baseType: !1562, size: 256, offset: 704)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !471, line: 340, size: 256, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1562, file: !471, line: 341, baseType: !478, size: 192, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1562, file: !471, line: 342, baseType: !327, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !470, file: !471, line: 351, baseType: !346, size: 128, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !470, file: !471, line: 353, baseType: !1568, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !471, line: 353, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !470, file: !471, line: 356, baseType: !1571, size: 64, offset: 1152)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !471, line: 356, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !470, file: !471, line: 359, baseType: !327, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !470, file: !471, line: 361, baseType: !459, size: 64, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !470, file: !471, line: 362, baseType: !135, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !470, file: !471, line: 365, baseType: !524, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !470, file: !471, line: 373, baseType: !1579, offset: 1472)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !471, line: 296, elements: !205)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !438, file: !408, line: 90, baseType: !433, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !438, file: !408, line: 91, baseType: !1582, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !398, file: !342, line: 143, baseType: !1584, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1587, !352}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !74, line: 39, size: 384, elements: !1590)
!1590 = !{!1591, !1592, !1596, !1600, !1606, !1610}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1589, file: !74, line: 40, baseType: !73, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1589, file: !74, line: 41, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1200}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1589, file: !74, line: 42, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!135}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1589, file: !74, line: 43, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1330, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !74, line: 19, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1589, file: !74, line: 44, baseType: !1607, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1330}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1589, file: !74, line: 45, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !135}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !398, file: !342, line: 144, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1330, !352}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !398, file: !342, line: 145, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !352, !1622, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1527, line: 23, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 21, size: 32, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1624, file: !1527, line: 22, baseType: !1627, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !320, line: 32, baseType: !1098)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1527, line: 28, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 26, size: 32, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1630, file: !1527, line: 27, baseType: !1633, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !320, line: 33, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !416, line: 50, baseType: !18)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !341, file: !342, line: 70, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !335, line: 123, size: 1024, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1781, !1782, !1783, !1784, !1785}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1637, file: !335, line: 124, baseType: !516, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1637, file: !335, line: 125, baseType: !516, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1637, file: !335, line: 135, baseType: !1636, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1637, file: !335, line: 136, baseType: !324, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1637, file: !335, line: 138, baseType: !478, size: 192, align: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1637, file: !335, line: 140, baseType: !1330, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1637, file: !335, line: 141, baseType: !18, size: 32, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !335, line: 142, baseType: !1647, size: 256, offset: 512)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !335, line: 142, size: 256, elements: !1648)
!1648 = !{!1649, !1704, !1708}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1647, file: !335, line: 143, baseType: !1650, size: 192)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !335, line: 91, size: 192, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1650, file: !335, line: 92, baseType: !327, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1650, file: !335, line: 94, baseType: !495, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1650, file: !335, line: 100, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !335, line: 180, size: 704, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1674, !1675, !1676, !1702, !1703}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1656, file: !335, line: 182, baseType: !1636, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !335, line: 183, baseType: !18, size: 32, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1656, file: !335, line: 186, baseType: !1661, size: 192, offset: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1662, line: 19, size: 192, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1672, !1673}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1661, file: !1662, line: 20, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1666, line: 292, size: 128, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1671}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1665, file: !1666, line: 293, baseType: !191)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1665, file: !1666, line: 295, baseType: !1670, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !320, line: 148, baseType: !18)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1665, file: !1666, line: 296, baseType: !135, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1661, file: !1662, line: 21, baseType: !18, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1661, file: !1662, line: 22, baseType: !18, size: 32, offset: 160)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1656, file: !335, line: 187, baseType: !149, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1656, file: !335, line: 188, baseType: !149, size: 32, offset: 352)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1656, file: !335, line: 189, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !335, line: 168, size: 320, elements: !1679)
!1679 = !{!1680, !1686, !1690, !1694, !1698}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1678, file: !335, line: 169, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!224, !1684, !1655}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !461, line: 539, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1678, file: !335, line: 171, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!224, !1636, !324, !423}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1678, file: !335, line: 173, baseType: !1691, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!224, !1636}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1678, file: !335, line: 174, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!224, !1636, !1636, !324}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1678, file: !335, line: 176, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!224, !1684, !1636, !1655}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1656, file: !335, line: 192, baseType: !346, size: 128, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1656, file: !335, line: 194, baseType: !912, size: 128, offset: 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1647, file: !335, line: 144, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !335, line: 103, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1705, file: !335, line: 104, baseType: !1636, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1647, file: !335, line: 145, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !335, line: 107, size: 256, elements: !1710)
!1710 = !{!1711, !1776, !1779, !1780}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1709, file: !335, line: 108, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !335, line: 217, size: 768, elements: !1715)
!1715 = !{!1716, !1736, !1740, !1744, !1749, !1753, !1757, !1761, !1762, !1763, !1764, !1772}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1714, file: !335, line: 222, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!224, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !335, line: 197, size: 1088, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1721, file: !335, line: 199, baseType: !1636, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1721, file: !335, line: 200, baseType: !459, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1721, file: !335, line: 201, baseType: !1684, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1721, file: !335, line: 202, baseType: !135, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1721, file: !335, line: 205, baseType: !589, size: 192, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1721, file: !335, line: 206, baseType: !589, size: 192, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1721, file: !335, line: 207, baseType: !224, size: 32, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1721, file: !335, line: 208, baseType: !346, size: 128, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1721, file: !335, line: 209, baseType: !385, size: 64, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1721, file: !335, line: 211, baseType: !429, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1721, file: !335, line: 212, baseType: !1200, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1721, file: !335, line: 213, baseType: !1200, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1721, file: !335, line: 214, baseType: !1571, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1714, file: !335, line: 223, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1720}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1714, file: !335, line: 236, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!224, !1684, !135}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1714, file: !335, line: 238, baseType: !1745, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!135, !1684, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1714, file: !335, line: 239, baseType: !1750, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!135, !1684, !135, !1748}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1714, file: !335, line: 240, baseType: !1754, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1684, !135}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1714, file: !335, line: 242, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!414, !1720, !385, !429, !462}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1714, file: !335, line: 252, baseType: !429, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1714, file: !335, line: 259, baseType: !1200, size: 8, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1714, file: !335, line: 260, baseType: !1758, size: 64, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1714, file: !335, line: 263, baseType: !1765, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1768, !1720, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1769, line: 52, baseType: !18)
!1769 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !335, line: 27, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1714, file: !335, line: 266, baseType: !1773, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!224, !1720, !469}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1709, file: !335, line: 109, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !335, line: 31, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1709, file: !335, line: 110, baseType: !462, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1709, file: !335, line: 111, baseType: !1636, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1637, file: !335, line: 148, baseType: !135, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1637, file: !335, line: 154, baseType: !131, size: 64, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1637, file: !335, line: 156, baseType: !424, size: 16, offset: 896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1637, file: !335, line: 157, baseType: !423, size: 16, offset: 912)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1637, file: !335, line: 158, baseType: !1786, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !335, line: 32, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !341, file: !342, line: 71, baseType: !1789, size: 32, offset: 448)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1790, line: 19, size: 32, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1789, file: !1790, line: 20, baseType: !648, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !341, file: !342, line: 75, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !341, file: !342, line: 76, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !341, file: !342, line: 77, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !341, file: !342, line: 78, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !341, file: !342, line: 79, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !338, file: !86, line: 463, baseType: !337, size: 64, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !338, file: !86, line: 465, baseType: !1800, size: 64, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !86, line: 36, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !338, file: !86, line: 467, baseType: !324, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !86, line: 468, baseType: !1804, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !86, line: 87, size: 384, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1814, !1819, !1823}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1806, file: !86, line: 88, baseType: !324, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1806, file: !86, line: 89, baseType: !435, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1806, file: !86, line: 90, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!224, !337, !380}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1806, file: !86, line: 91, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!385, !337, !1818, !1622, !1628}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1806, file: !86, line: 93, baseType: !1820, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !337}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1806, file: !86, line: 95, baseType: !1824, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 278, size: 1472, elements: !1827)
!1827 = !{!1828, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1826, file: !93, line: 279, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!224, !337}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1826, file: !93, line: 280, baseType: !1820, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1826, file: !93, line: 281, baseType: !1829, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1826, file: !93, line: 282, baseType: !1829, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1826, file: !93, line: 283, baseType: !1829, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1826, file: !93, line: 284, baseType: !1829, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1826, file: !93, line: 285, baseType: !1829, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1826, file: !93, line: 286, baseType: !1829, size: 64, offset: 448)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1826, file: !93, line: 287, baseType: !1829, size: 64, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1826, file: !93, line: 288, baseType: !1829, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1826, file: !93, line: 289, baseType: !1829, size: 64, offset: 640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1826, file: !93, line: 290, baseType: !1829, size: 64, offset: 704)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1826, file: !93, line: 291, baseType: !1829, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1826, file: !93, line: 292, baseType: !1829, size: 64, offset: 832)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1826, file: !93, line: 293, baseType: !1829, size: 64, offset: 896)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1826, file: !93, line: 294, baseType: !1829, size: 64, offset: 960)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1826, file: !93, line: 295, baseType: !1829, size: 64, offset: 1024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1826, file: !93, line: 296, baseType: !1829, size: 64, offset: 1088)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1826, file: !93, line: 297, baseType: !1829, size: 64, offset: 1152)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1826, file: !93, line: 298, baseType: !1829, size: 64, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1826, file: !93, line: 299, baseType: !1829, size: 64, offset: 1280)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1826, file: !93, line: 300, baseType: !1829, size: 64, offset: 1344)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1826, file: !93, line: 301, baseType: !1829, size: 64, offset: 1408)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !338, file: !86, line: 470, baseType: !1855, size: 64, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1857, line: 82, size: 1408, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1941, !1944, !1947}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1856, file: !1857, line: 83, baseType: !324, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1856, file: !1857, line: 84, baseType: !324, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1856, file: !1857, line: 85, baseType: !337, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1856, file: !1857, line: 86, baseType: !435, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1856, file: !1857, line: 87, baseType: !435, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1856, file: !1857, line: 88, baseType: !435, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1856, file: !1857, line: 90, baseType: !1866, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!224, !337, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !80, line: 95, size: 1152, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1892, !1905, !1906, !1907, !1908, !1909, !1917, !1918, !1919, !1920, !1921, !1922}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1870, file: !80, line: 96, baseType: !324, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1870, file: !80, line: 97, baseType: !1855, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1870, file: !80, line: 99, baseType: !213, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1870, file: !80, line: 100, baseType: !324, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1870, file: !80, line: 102, baseType: !1200, size: 8, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1870, file: !80, line: 103, baseType: !79, size: 32, offset: 288)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1870, file: !80, line: 105, baseType: !1879, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1882, line: 262, size: 1600, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1886, !1887, !1891}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1881, file: !1882, line: 263, baseType: !1885, size: 256)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !1433)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1881, file: !1882, line: 264, baseType: !1885, size: 256, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1881, file: !1882, line: 265, baseType: !1888, size: 1024, offset: 512)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 1024, elements: !1889)
!1889 = !{!1890}
!1890 = !DISubrange(count: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1881, file: !1882, line: 266, baseType: !1330, size: 64, offset: 1536)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1870, file: !80, line: 106, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1882, line: 210, size: 256, elements: !1896)
!1896 = !{!1897, !1901, !1903, !1904}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !1882, line: 211, baseType: !1898, size: 72)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 72, elements: !1899)
!1899 = !{!1900}
!1900 = !DISubrange(count: 9)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1895, file: !1882, line: 212, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1882, line: 14, baseType: !327)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1895, file: !1882, line: 213, baseType: !38, size: 32, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1895, file: !1882, line: 214, baseType: !38, size: 32, offset: 224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1870, file: !80, line: 108, baseType: !1829, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1870, file: !80, line: 109, baseType: !1820, size: 64, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1870, file: !80, line: 110, baseType: !1829, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1870, file: !80, line: 111, baseType: !1820, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1870, file: !80, line: 112, baseType: !1910, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!224, !337, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 52, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 50, size: 32, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1914, file: !93, line: 51, baseType: !224, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1870, file: !80, line: 113, baseType: !1829, size: 64, offset: 768)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1870, file: !80, line: 114, baseType: !435, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1870, file: !80, line: 115, baseType: !435, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1870, file: !80, line: 117, baseType: !1824, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1870, file: !80, line: 118, baseType: !1820, size: 64, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1870, file: !80, line: 120, baseType: !1923, size: 64, offset: 1088)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !80, line: 120, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1856, file: !1857, line: 91, baseType: !1811, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1856, file: !1857, line: 92, baseType: !1829, size: 64, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1856, file: !1857, line: 93, baseType: !1820, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1856, file: !1857, line: 94, baseType: !1829, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1856, file: !1857, line: 95, baseType: !1820, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1856, file: !1857, line: 97, baseType: !1829, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1856, file: !1857, line: 98, baseType: !1829, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1856, file: !1857, line: 100, baseType: !1910, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1856, file: !1857, line: 101, baseType: !1829, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1856, file: !1857, line: 103, baseType: !1829, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1856, file: !1857, line: 105, baseType: !1829, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1856, file: !1857, line: 107, baseType: !1824, size: 64, offset: 1152)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1856, file: !1857, line: 109, baseType: !1938, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1857, line: 109, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1856, file: !1857, line: 111, baseType: !1942, size: 64, offset: 1280)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1857, line: 111, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1856, file: !1857, line: 112, baseType: !1945, offset: 1344)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1946, line: 187, elements: !205)
!1946 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1856, file: !1857, line: 114, baseType: !1200, size: 8, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !338, file: !86, line: 471, baseType: !1869, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !338, file: !86, line: 473, baseType: !135, size: 64, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !338, file: !86, line: 475, baseType: !135, size: 64, offset: 960)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !338, file: !86, line: 480, baseType: !589, size: 192, offset: 1024)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !338, file: !86, line: 484, baseType: !1953, size: 576, offset: 1216)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !86, line: 361, size: 576, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1953, file: !86, line: 362, baseType: !346, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1953, file: !86, line: 363, baseType: !346, size: 128, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1953, file: !86, line: 364, baseType: !346, size: 128, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1953, file: !86, line: 365, baseType: !346, size: 128, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1953, file: !86, line: 366, baseType: !1200, size: 8, offset: 512)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1953, file: !86, line: 367, baseType: !85, size: 32, offset: 544)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !338, file: !86, line: 485, baseType: !1962, size: 2304, offset: 1792)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 565, size: 2304, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2059, !2063}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1962, file: !93, line: 566, baseType: !1913, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1962, file: !93, line: 567, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1962, file: !93, line: 568, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1962, file: !93, line: 569, baseType: !1200, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1962, file: !93, line: 570, baseType: !1200, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1962, file: !93, line: 571, baseType: !1200, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1962, file: !93, line: 572, baseType: !1200, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1962, file: !93, line: 573, baseType: !1200, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1962, file: !93, line: 574, baseType: !1200, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1962, file: !93, line: 575, baseType: !1200, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1962, file: !93, line: 576, baseType: !1200, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1962, file: !93, line: 577, baseType: !149, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1962, file: !93, line: 578, baseType: !191, offset: 96)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1962, file: !93, line: 580, baseType: !346, size: 128, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1962, file: !93, line: 581, baseType: !941, size: 192, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1962, file: !93, line: 582, baseType: !1980, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1982, line: 43, size: 1472, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1991, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1981, file: !1982, line: 44, baseType: !324, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1981, file: !1982, line: 45, baseType: !224, size: 32, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1981, file: !1982, line: 46, baseType: !346, size: 128, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !1982, line: 47, baseType: !191, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1981, file: !1982, line: 48, baseType: !1989, size: 64, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 533, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1981, file: !1982, line: 49, baseType: !1992, size: 320, offset: 320)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1993, line: 11, size: 320, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !1996, !1997, !2002}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1992, file: !1993, line: 16, baseType: !905, size: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1992, file: !1993, line: 17, baseType: !327, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1992, file: !1993, line: 18, baseType: !1998, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1992, file: !1993, line: 19, baseType: !149, size: 32, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1981, file: !1982, line: 50, baseType: !327, size: 64, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1981, file: !1982, line: 51, baseType: !290, size: 64, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1981, file: !1982, line: 52, baseType: !290, size: 64, offset: 768)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1981, file: !1982, line: 53, baseType: !290, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1981, file: !1982, line: 54, baseType: !290, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1981, file: !1982, line: 55, baseType: !290, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1981, file: !1982, line: 56, baseType: !327, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1981, file: !1982, line: 57, baseType: !327, size: 64, offset: 1088)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1981, file: !1982, line: 58, baseType: !327, size: 64, offset: 1152)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1981, file: !1982, line: 59, baseType: !327, size: 64, offset: 1216)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1981, file: !1982, line: 60, baseType: !327, size: 64, offset: 1280)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1981, file: !1982, line: 61, baseType: !337, size: 64, offset: 1344)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1981, file: !1982, line: 62, baseType: !1200, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1981, file: !1982, line: 63, baseType: !1200, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1962, file: !93, line: 583, baseType: !1200, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1962, file: !93, line: 584, baseType: !1200, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1962, file: !93, line: 585, baseType: !1200, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1962, file: !93, line: 586, baseType: !18, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1962, file: !93, line: 587, baseType: !18, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1962, file: !93, line: 592, baseType: !710, size: 512, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1962, file: !93, line: 593, baseType: !131, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1962, file: !93, line: 594, baseType: !1538, size: 256, offset: 1152)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1962, file: !93, line: 595, baseType: !912, size: 128, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1962, file: !93, line: 596, baseType: !1989, size: 64, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1962, file: !93, line: 597, baseType: !516, size: 32, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1962, file: !93, line: 598, baseType: !516, size: 32, offset: 1632)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1962, file: !93, line: 599, baseType: !18, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1962, file: !93, line: 600, baseType: !18, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1962, file: !93, line: 601, baseType: !18, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1962, file: !93, line: 602, baseType: !18, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1962, file: !93, line: 603, baseType: !18, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1962, file: !93, line: 604, baseType: !1200, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1962, file: !93, line: 605, baseType: !18, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1962, file: !93, line: 606, baseType: !18, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1962, file: !93, line: 607, baseType: !18, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1962, file: !93, line: 608, baseType: !18, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1962, file: !93, line: 609, baseType: !18, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1962, file: !93, line: 610, baseType: !18, size: 32, offset: 1696)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1962, file: !93, line: 611, baseType: !92, size: 32, offset: 1728)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1962, file: !93, line: 612, baseType: !100, size: 32, offset: 1760)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1962, file: !93, line: 613, baseType: !224, size: 32, offset: 1792)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1962, file: !93, line: 614, baseType: !224, size: 32, offset: 1824)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1962, file: !93, line: 615, baseType: !131, size: 64, offset: 1856)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1962, file: !93, line: 616, baseType: !131, size: 64, offset: 1920)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1962, file: !93, line: 617, baseType: !131, size: 64, offset: 1984)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1962, file: !93, line: 618, baseType: !131, size: 64, offset: 2048)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1962, file: !93, line: 620, baseType: !2050, size: 64, offset: 2112)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 536, size: 256, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2051, file: !93, line: 537, baseType: !191)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2051, file: !93, line: 538, baseType: !18, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2051, file: !93, line: 540, baseType: !346, size: 128, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2051, file: !93, line: 543, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !93, line: 534, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1962, file: !93, line: 621, baseType: !2060, size: 64, offset: 2176)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !337, !222}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1962, file: !93, line: 622, baseType: !2064, size: 64, offset: 2240)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 622, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !338, file: !86, line: 486, baseType: !2067, size: 64, offset: 4096)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 642, size: 1792, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2076, !2077, !2078}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2068, file: !93, line: 643, baseType: !1826, size: 1472)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2068, file: !93, line: 644, baseType: !1829, size: 64, offset: 1472)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2068, file: !93, line: 645, baseType: !2073, size: 64, offset: 1536)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !337, !1200}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2068, file: !93, line: 646, baseType: !1829, size: 64, offset: 1600)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2068, file: !93, line: 647, baseType: !1820, size: 64, offset: 1664)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2068, file: !93, line: 648, baseType: !1820, size: 64, offset: 1728)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !338, file: !86, line: 493, baseType: !2080, size: 64, offset: 4160)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !86, line: 493, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !338, file: !86, line: 499, baseType: !346, size: 128, offset: 4224)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !338, file: !86, line: 502, baseType: !2084, size: 64, offset: 4352)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2086)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !86, line: 502, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !338, file: !86, line: 504, baseType: !2088, size: 64, offset: 4416)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !338, file: !86, line: 505, baseType: !131, size: 64, offset: 4480)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !338, file: !86, line: 510, baseType: !131, size: 64, offset: 4544)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !338, file: !86, line: 511, baseType: !2092, size: 64, offset: 4608)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !86, line: 511, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !338, file: !86, line: 513, baseType: !2096, size: 64, offset: 4672)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !86, line: 288, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2097, file: !86, line: 293, baseType: !18, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2097, file: !86, line: 294, baseType: !327, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !338, file: !86, line: 515, baseType: !346, size: 128, offset: 4736)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !338, file: !86, line: 526, baseType: !2103, offset: 4864)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2104, line: 5, elements: !205)
!2104 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !338, file: !86, line: 528, baseType: !2106, size: 64, offset: 4864)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2108, line: 51, size: 1344, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2113, !2114, !2204, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2107, file: !2108, line: 52, baseType: !324, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2107, file: !2108, line: 53, baseType: !2112, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2108, line: 28, baseType: !149)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2107, file: !2108, line: 54, baseType: !324, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2107, file: !2108, line: 55, baseType: !2115, size: 192, offset: 192)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2116, line: 17, size: 192, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2120, !2203}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2115, file: !2116, line: 18, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2115, file: !2116, line: 19, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2116, line: 110, size: 1152, elements: !2124)
!2124 = !{!2125, !2129, !2133, !2139, !2145, !2149, !2153, !2158, !2162, !2163, !2167, !2171, !2175, !2186, !2187, !2188, !2189, !2199}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2123, file: !2116, line: 111, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2119, !2119}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2123, file: !2116, line: 112, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2119}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2123, file: !2116, line: 113, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!1200, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2123, file: !2116, line: 114, baseType: !2140, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!1330, !2137, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2123, file: !2116, line: 116, baseType: !2146, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!1200, !2137, !324}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2123, file: !2116, line: 118, baseType: !2150, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!224, !2137, !324, !18, !135, !429}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2123, file: !2116, line: 123, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!224, !2137, !324, !2157, !429}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2123, file: !2116, line: 126, baseType: !2159, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!324, !2137}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2123, file: !2116, line: 127, baseType: !2159, size: 64, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2123, file: !2116, line: 128, baseType: !2164, size: 64, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!2119, !2137}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2123, file: !2116, line: 130, baseType: !2168, size: 64, offset: 640)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2119, !2137, !2119}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2123, file: !2116, line: 133, baseType: !2172, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2119, !2137, !324}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2123, file: !2116, line: 135, baseType: !2176, size: 64, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!224, !2137, !324, !324, !18, !18, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2116, line: 43, size: 640, elements: !2181)
!2181 = !{!2182, !2183, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2180, file: !2116, line: 44, baseType: !2119, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2180, file: !2116, line: 45, baseType: !18, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2180, file: !2116, line: 46, baseType: !2185, size: 512, offset: 128)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 512, elements: !746)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2123, file: !2116, line: 140, baseType: !2168, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2123, file: !2116, line: 143, baseType: !2164, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2123, file: !2116, line: 145, baseType: !2126, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2123, file: !2116, line: 146, baseType: !2190, size: 64, offset: 1024)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!224, !2137, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2116, line: 29, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2194, file: !2116, line: 30, baseType: !18, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2194, file: !2116, line: 31, baseType: !18, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2194, file: !2116, line: 32, baseType: !2137, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2123, file: !2116, line: 148, baseType: !2200, size: 64, offset: 1088)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!224, !2137, !337}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2115, file: !2116, line: 20, baseType: !337, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2107, file: !2108, line: 57, baseType: !2205, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2108, line: 31, size: 704, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2206, file: !2108, line: 32, baseType: !385, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2206, file: !2108, line: 33, baseType: !224, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2206, file: !2108, line: 34, baseType: !135, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2206, file: !2108, line: 35, baseType: !2205, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2206, file: !2108, line: 43, baseType: !450, size: 448, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2107, file: !2108, line: 58, baseType: !2205, size: 64, offset: 448)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2107, file: !2108, line: 59, baseType: !2106, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2107, file: !2108, line: 60, baseType: !2106, size: 64, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2107, file: !2108, line: 61, baseType: !2106, size: 64, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2107, file: !2108, line: 63, baseType: !341, size: 512, offset: 704)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2107, file: !2108, line: 65, baseType: !327, size: 64, offset: 1216)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2107, file: !2108, line: 66, baseType: !135, size: 64, offset: 1280)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !338, file: !86, line: 529, baseType: !2119, size: 64, offset: 4928)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !338, file: !86, line: 534, baseType: !2222, size: 32, offset: 4992)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !320, line: 16, baseType: !2223)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !320, line: 13, baseType: !149)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !338, file: !86, line: 535, baseType: !149, size: 32, offset: 5024)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !338, file: !86, line: 537, baseType: !191, offset: 5056)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !338, file: !86, line: 538, baseType: !346, size: 128, offset: 5056)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !338, file: !86, line: 540, baseType: !2228, size: 64, offset: 5184)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2230, line: 54, size: 960, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242, !2246, !2247, !2248, !2249, !2253, !2257, !2258}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2229, file: !2230, line: 55, baseType: !324, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2229, file: !2230, line: 56, baseType: !213, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2229, file: !2230, line: 58, baseType: !435, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2229, file: !2230, line: 59, baseType: !435, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2229, file: !2230, line: 60, baseType: !352, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2229, file: !2230, line: 62, baseType: !1811, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2229, file: !2230, line: 63, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!385, !337, !1818}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2229, file: !2230, line: 65, baseType: !2243, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2228}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2229, file: !2230, line: 66, baseType: !1820, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2229, file: !2230, line: 68, baseType: !1829, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2229, file: !2230, line: 70, baseType: !1587, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2229, file: !2230, line: 71, baseType: !2250, size: 64, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!1330, !337}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2229, file: !2230, line: 73, baseType: !2254, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !337, !1622, !1628}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2229, file: !2230, line: 75, baseType: !1824, size: 64, offset: 832)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2229, file: !2230, line: 77, baseType: !1942, size: 64, offset: 896)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !338, file: !86, line: 541, baseType: !435, size: 64, offset: 5248)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !338, file: !86, line: 543, baseType: !1820, size: 64, offset: 5312)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !338, file: !86, line: 544, baseType: !2262, size: 64, offset: 5376)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !86, line: 45, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !338, file: !86, line: 545, baseType: !2265, size: 64, offset: 5440)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !86, line: 47, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !338, file: !86, line: 547, baseType: !1200, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !338, file: !86, line: 548, baseType: !1200, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !338, file: !86, line: 549, baseType: !1200, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !338, file: !86, line: 550, baseType: !1200, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "extts_fifo_support", scope: !137, file: !138, line: 150, baseType: !1200, size: 8, offset: 1728)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fiper3_support", scope: !137, file: !138, line: 151, baseType: !1200, size: 8, offset: 1736)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !137, file: !138, line: 152, baseType: !224, size: 32, offset: 1760)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "phc_index", scope: !137, file: !138, line: 153, baseType: !224, size: 32, offset: 1792)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "tclk_period", scope: !137, file: !138, line: 154, baseType: !149, size: 32, offset: 1824)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_prsc", scope: !137, file: !138, line: 155, baseType: !149, size: 32, offset: 1856)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_add", scope: !137, file: !138, line: 156, baseType: !149, size: 32, offset: 1888)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cksel", scope: !137, file: !138, line: 157, baseType: !149, size: 32, offset: 1920)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper1", scope: !137, file: !138, line: 158, baseType: !149, size: 32, offset: 1952)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper2", scope: !137, file: !138, line: 159, baseType: !149, size: 32, offset: 1984)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_fiper3", scope: !137, file: !138, line: 160, baseType: !149, size: 32, offset: 2016)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !137, file: !138, line: 161, baseType: !2283, size: 64, offset: 2048)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!149, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !137, file: !138, line: 162, baseType: !2288, size: 64, offset: 2112)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !2286, !149}
!2291 = !{!0, !2292, !2299, !2304, !2309, !2314, !2319, !2366, !2369}
!2292 = !DIGlobalVariableExpression(var: !2293, expr: !DIExpression())
!2293 = distinct !DIGlobalVariable(name: "__exitcall_ptp_qoriq_driver_exit", scope: !2, file: !3, line: 640, type: !2294, isLocal: true, isDefinition: true)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2295, line: 117, baseType: !2296)
!2295 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null}
!2299 = !DIGlobalVariableExpression(var: !2300, expr: !DIExpression())
!2300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author167", scope: !2, file: !3, line: 642, type: !2301, isLocal: true, isDefinition: true, align: 8)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 480, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: 60)
!2304 = !DIGlobalVariableExpression(var: !2305, expr: !DIExpression())
!2305 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description168", scope: !2, file: !3, line: 643, type: !2306, isLocal: true, isDefinition: true, align: 8)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 504, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 63)
!2309 = !DIGlobalVariableExpression(var: !2310, expr: !DIExpression())
!2310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file169", scope: !2, file: !3, line: 644, type: !2311, isLocal: true, isDefinition: true, align: 8)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 296, elements: !2312)
!2312 = !{!2313}
!2313 = !DISubrange(count: 37)
!2314 = !DIGlobalVariableExpression(var: !2315, expr: !DIExpression())
!2315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license170", scope: !2, file: !3, line: 644, type: !2316, isLocal: true, isDefinition: true, align: 8)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 176, elements: !2317)
!2317 = !{!2318}
!2318 = !DISubrange(count: 22)
!2319 = !DIGlobalVariableExpression(var: !2320, expr: !DIExpression())
!2320 = distinct !DIGlobalVariable(name: "ptp_qoriq_driver", scope: !2, file: !3, line: 631, type: !2321, isLocal: true, isDefinition: true)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2322, line: 200, size: 1600, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !{!2324, !2353, !2354, !2358, !2362, !2363, !2364, !2365}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2321, file: !2322, line: 201, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!224, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2322, line: 22, size: 6208, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2347, !2348, !2351}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2329, file: !2322, line: 23, baseType: !324, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2329, file: !2322, line: 24, baseType: !224, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2329, file: !2322, line: 25, baseType: !1200, size: 8, offset: 96)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2329, file: !2322, line: 26, baseType: !338, size: 5568, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2329, file: !2322, line: 27, baseType: !131, size: 64, offset: 5696)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2329, file: !2322, line: 28, baseType: !2097, size: 128, offset: 5760)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2329, file: !2322, line: 29, baseType: !149, size: 32, offset: 5888)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2329, file: !2322, line: 30, baseType: !314, size: 64, offset: 5952)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2329, file: !2322, line: 32, baseType: !2340, size: 64, offset: 6016)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1882, line: 586, size: 256, elements: !2343)
!2343 = !{!2344, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2342, file: !1882, line: 587, baseType: !2345, size: 160)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 160, elements: !1404)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2342, file: !1882, line: 588, baseType: !1902, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2329, file: !2322, line: 33, baseType: !385, size: 64, offset: 6080)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2329, file: !2322, line: 36, baseType: !2349, size: 64, offset: 6144)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2322, line: 18, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2329, file: !2322, line: 39, baseType: !2352, offset: 6208)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2104, line: 8, elements: !205)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2321, file: !2322, line: 202, baseType: !2325, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2321, file: !2322, line: 203, baseType: !2355, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2328}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2321, file: !2322, line: 204, baseType: !2359, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!224, !2328, !1913}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2321, file: !2322, line: 205, baseType: !2325, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2321, file: !2322, line: 206, baseType: !1870, size: 1152, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2321, file: !2322, line: 207, baseType: !2340, size: 64, offset: 1472)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2321, file: !2322, line: 208, baseType: !1200, size: 8, offset: 1536)
!2366 = !DIGlobalVariableExpression(var: !2367, expr: !DIExpression())
!2367 = distinct !DIGlobalVariable(name: "ptp_qoriq_caps", scope: !2, file: !3, line: 313, type: !2368, isLocal: true, isDefinition: true)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2369 = !DIGlobalVariableExpression(var: !2370, expr: !DIExpression())
!2370 = distinct !DIGlobalVariable(name: "match_table", scope: !2, file: !3, line: 624, type: !2371, isLocal: true, isDefinition: true)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 4800, elements: !386)
!2372 = !{!"rsp"}
!2373 = !{i32 7, !"Dwarf Version", i32 4}
!2374 = !{i32 2, !"Debug Info Version", i32 3}
!2375 = !{i32 1, !"wchar_size", i32 2}
!2376 = !{i32 1, !"Code Model", i32 2}
!2377 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2378 = distinct !DISubprogram(name: "extts_clean_up", scope: !3, file: !3, line: 81, type: !2379, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!224, !136, !224, !1200}
!2381 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !2378, file: !3, line: 81, type: !136)
!2382 = !DILocation(line: 81, column: 38, scope: !2378)
!2383 = !DILocalVariable(name: "index", arg: 2, scope: !2378, file: !3, line: 81, type: !224)
!2384 = !DILocation(line: 81, column: 53, scope: !2378)
!2385 = !DILocalVariable(name: "update_event", arg: 3, scope: !2378, file: !3, line: 81, type: !1200)
!2386 = !DILocation(line: 81, column: 65, scope: !2378)
!2387 = !DILocalVariable(name: "regs", scope: !2378, file: !3, line: 83, type: !2388)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2389 = !DILocation(line: 83, column: 30, scope: !2378)
!2390 = !DILocation(line: 83, column: 38, scope: !2378)
!2391 = !DILocation(line: 83, column: 49, scope: !2378)
!2392 = !DILocalVariable(name: "event", scope: !2378, file: !3, line: 84, type: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_event", file: !6, line: 167, size: 192, elements: !2394)
!2394 = !{!2395, !2396, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2393, file: !6, line: 168, baseType: !224, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2393, file: !6, line: 169, baseType: !224, size: 32, offset: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !6, line: 170, baseType: !2398, size: 128, offset: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2393, file: !6, line: 170, size: 128, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2398, file: !6, line: 171, baseType: !131, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pps_times", scope: !2398, file: !6, line: 172, baseType: !2402, size: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_event_time", file: !2403, line: 35, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ts_real", scope: !2402, file: !2403, line: 39, baseType: !266, size: 128)
!2406 = !DILocation(line: 84, column: 25, scope: !2378)
!2407 = !DILocalVariable(name: "reg_etts_l", scope: !2378, file: !3, line: 85, type: !135)
!2408 = !DILocation(line: 85, column: 16, scope: !2378)
!2409 = !DILocalVariable(name: "reg_etts_h", scope: !2378, file: !3, line: 86, type: !135)
!2410 = !DILocation(line: 86, column: 16, scope: !2378)
!2411 = !DILocalVariable(name: "valid", scope: !2378, file: !3, line: 87, type: !149)
!2412 = !DILocation(line: 87, column: 6, scope: !2378)
!2413 = !DILocalVariable(name: "lo", scope: !2378, file: !3, line: 87, type: !149)
!2414 = !DILocation(line: 87, column: 13, scope: !2378)
!2415 = !DILocalVariable(name: "hi", scope: !2378, file: !3, line: 87, type: !149)
!2416 = !DILocation(line: 87, column: 17, scope: !2378)
!2417 = !DILocation(line: 89, column: 10, scope: !2378)
!2418 = !DILocation(line: 89, column: 2, scope: !2378)
!2419 = !DILocation(line: 91, column: 9, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 89, column: 17)
!2421 = !DILocation(line: 92, column: 17, scope: !2420)
!2422 = !DILocation(line: 92, column: 23, scope: !2420)
!2423 = !DILocation(line: 92, column: 34, scope: !2420)
!2424 = !DILocation(line: 92, column: 16, scope: !2420)
!2425 = !DILocation(line: 92, column: 14, scope: !2420)
!2426 = !DILocation(line: 93, column: 17, scope: !2420)
!2427 = !DILocation(line: 93, column: 23, scope: !2420)
!2428 = !DILocation(line: 93, column: 34, scope: !2420)
!2429 = !DILocation(line: 93, column: 16, scope: !2420)
!2430 = !DILocation(line: 93, column: 14, scope: !2420)
!2431 = !DILocation(line: 94, column: 3, scope: !2420)
!2432 = !DILocation(line: 96, column: 9, scope: !2420)
!2433 = !DILocation(line: 97, column: 17, scope: !2420)
!2434 = !DILocation(line: 97, column: 23, scope: !2420)
!2435 = !DILocation(line: 97, column: 34, scope: !2420)
!2436 = !DILocation(line: 97, column: 16, scope: !2420)
!2437 = !DILocation(line: 97, column: 14, scope: !2420)
!2438 = !DILocation(line: 98, column: 17, scope: !2420)
!2439 = !DILocation(line: 98, column: 23, scope: !2420)
!2440 = !DILocation(line: 98, column: 34, scope: !2420)
!2441 = !DILocation(line: 98, column: 16, scope: !2420)
!2442 = !DILocation(line: 98, column: 14, scope: !2420)
!2443 = !DILocation(line: 99, column: 3, scope: !2420)
!2444 = !DILocation(line: 101, column: 3, scope: !2420)
!2445 = !DILocation(line: 104, column: 8, scope: !2378)
!2446 = !DILocation(line: 104, column: 13, scope: !2378)
!2447 = !DILocation(line: 105, column: 16, scope: !2378)
!2448 = !DILocation(line: 105, column: 8, scope: !2378)
!2449 = !DILocation(line: 105, column: 14, scope: !2378)
!2450 = !DILocation(line: 107, column: 6, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 107, column: 6)
!2452 = !DILocation(line: 107, column: 17, scope: !2451)
!2453 = !DILocation(line: 107, column: 6, scope: !2378)
!2454 = !DILocation(line: 108, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 108, column: 7)
!2456 = !DILocation(line: 108, column: 20, scope: !2455)
!2457 = !DILocation(line: 108, column: 26, scope: !2455)
!2458 = !DILocation(line: 108, column: 32, scope: !2455)
!2459 = !DILocation(line: 108, column: 43, scope: !2455)
!2460 = !DILocation(line: 108, column: 55, scope: !2455)
!2461 = !DILocation(line: 108, column: 53, scope: !2455)
!2462 = !DILocation(line: 108, column: 7, scope: !2451)
!2463 = !DILocation(line: 109, column: 4, scope: !2455)
!2464 = !DILocation(line: 108, column: 60, scope: !2455)
!2465 = !DILocation(line: 111, column: 2, scope: !2378)
!2466 = !DILocation(line: 112, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 111, column: 5)
!2468 = !DILocation(line: 112, column: 19, scope: !2467)
!2469 = !DILocation(line: 112, column: 24, scope: !2467)
!2470 = !DILocation(line: 112, column: 6, scope: !2467)
!2471 = !DILocation(line: 113, column: 8, scope: !2467)
!2472 = !DILocation(line: 113, column: 19, scope: !2467)
!2473 = !DILocation(line: 113, column: 24, scope: !2467)
!2474 = !DILocation(line: 113, column: 6, scope: !2467)
!2475 = !DILocation(line: 115, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 115, column: 7)
!2477 = !DILocation(line: 115, column: 7, scope: !2467)
!2478 = !DILocation(line: 116, column: 29, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 115, column: 21)
!2480 = !DILocation(line: 116, column: 23, scope: !2479)
!2481 = !DILocation(line: 116, column: 33, scope: !2479)
!2482 = !DILocation(line: 116, column: 10, scope: !2479)
!2483 = !DILocation(line: 116, column: 20, scope: !2479)
!2484 = !DILocation(line: 117, column: 23, scope: !2479)
!2485 = !DILocation(line: 117, column: 10, scope: !2479)
!2486 = !DILocation(line: 117, column: 20, scope: !2479)
!2487 = !DILocation(line: 118, column: 20, scope: !2479)
!2488 = !DILocation(line: 118, column: 31, scope: !2479)
!2489 = !DILocation(line: 118, column: 4, scope: !2479)
!2490 = !DILocation(line: 119, column: 3, scope: !2479)
!2491 = !DILocation(line: 121, column: 8, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 121, column: 7)
!2493 = !DILocation(line: 121, column: 19, scope: !2492)
!2494 = !DILocation(line: 121, column: 7, scope: !2467)
!2495 = !DILocation(line: 122, column: 4, scope: !2492)
!2496 = !DILocation(line: 123, column: 2, scope: !2467)
!2497 = !DILocation(line: 123, column: 11, scope: !2378)
!2498 = !DILocation(line: 123, column: 22, scope: !2378)
!2499 = !DILocation(line: 123, column: 28, scope: !2378)
!2500 = !DILocation(line: 123, column: 34, scope: !2378)
!2501 = !DILocation(line: 123, column: 45, scope: !2378)
!2502 = !DILocation(line: 123, column: 57, scope: !2378)
!2503 = !DILocation(line: 123, column: 55, scope: !2378)
!2504 = distinct !{!2504, !2465, !2505}
!2505 = !DILocation(line: 123, column: 62, scope: !2378)
!2506 = !DILocation(line: 125, column: 2, scope: !2378)
!2507 = !DILocation(line: 126, column: 1, scope: !2378)
!2508 = distinct !DISubprogram(name: "ptp_qoriq_isr", scope: !3, file: !3, line: 133, type: !2509, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2511, !224, !135}
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !113, line: 17, baseType: !112)
!2512 = !DILocalVariable(name: "lock", arg: 1, scope: !2513, file: !2514, line: 392, type: !2517)
!2513 = distinct !DISubprogram(name: "spin_unlock", scope: !2514, file: !2514, line: 392, type: !2515, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2514 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2518 = !DILocation(line: 392, column: 53, scope: !2513, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 145, column: 2, scope: !2508)
!2520 = !DILocalVariable(name: "lock", arg: 1, scope: !2521, file: !2514, line: 352, type: !2517)
!2521 = distinct !DISubprogram(name: "spin_lock", scope: !2514, file: !2514, line: 352, type: !2515, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2522 = !DILocation(line: 352, column: 51, scope: !2521, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 140, column: 2, scope: !2508)
!2524 = !DILocalVariable(name: "irq", arg: 1, scope: !2508, file: !3, line: 133, type: !224)
!2525 = !DILocation(line: 133, column: 31, scope: !2508)
!2526 = !DILocalVariable(name: "priv", arg: 2, scope: !2508, file: !3, line: 133, type: !135)
!2527 = !DILocation(line: 133, column: 42, scope: !2508)
!2528 = !DILocalVariable(name: "ptp_qoriq", scope: !2508, file: !3, line: 135, type: !136)
!2529 = !DILocation(line: 135, column: 20, scope: !2508)
!2530 = !DILocation(line: 135, column: 32, scope: !2508)
!2531 = !DILocalVariable(name: "regs", scope: !2508, file: !3, line: 136, type: !2388)
!2532 = !DILocation(line: 136, column: 30, scope: !2508)
!2533 = !DILocation(line: 136, column: 38, scope: !2508)
!2534 = !DILocation(line: 136, column: 49, scope: !2508)
!2535 = !DILocalVariable(name: "event", scope: !2508, file: !3, line: 137, type: !2393)
!2536 = !DILocation(line: 137, column: 25, scope: !2508)
!2537 = !DILocalVariable(name: "ack", scope: !2508, file: !3, line: 138, type: !149)
!2538 = !DILocation(line: 138, column: 6, scope: !2508)
!2539 = !DILocalVariable(name: "mask", scope: !2508, file: !3, line: 138, type: !149)
!2540 = !DILocation(line: 138, column: 15, scope: !2508)
!2541 = !DILocalVariable(name: "val", scope: !2508, file: !3, line: 138, type: !149)
!2542 = !DILocation(line: 138, column: 21, scope: !2508)
!2543 = !DILocalVariable(name: "irqs", scope: !2508, file: !3, line: 138, type: !149)
!2544 = !DILocation(line: 138, column: 26, scope: !2508)
!2545 = !DILocation(line: 140, column: 13, scope: !2508)
!2546 = !DILocation(line: 140, column: 24, scope: !2508)
!2547 = !DILocation(line: 354, column: 2, scope: !2548, inlinedAt: !2523)
!2548 = distinct !DILexicalBlock(scope: !2521, file: !2514, line: 354, column: 2)
!2549 = !{i32 -2145287207}
!2550 = !DILocation(line: 354, column: 2, scope: !2551, inlinedAt: !2523)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !2514, line: 354, column: 2)
!2552 = !DILocation(line: 142, column: 8, scope: !2508)
!2553 = !DILocation(line: 142, column: 19, scope: !2508)
!2554 = !DILocation(line: 142, column: 25, scope: !2508)
!2555 = !DILocation(line: 142, column: 31, scope: !2508)
!2556 = !DILocation(line: 142, column: 42, scope: !2508)
!2557 = !DILocation(line: 142, column: 6, scope: !2508)
!2558 = !DILocation(line: 143, column: 9, scope: !2508)
!2559 = !DILocation(line: 143, column: 20, scope: !2508)
!2560 = !DILocation(line: 143, column: 26, scope: !2508)
!2561 = !DILocation(line: 143, column: 32, scope: !2508)
!2562 = !DILocation(line: 143, column: 43, scope: !2508)
!2563 = !DILocation(line: 143, column: 7, scope: !2508)
!2564 = !DILocation(line: 145, column: 15, scope: !2508)
!2565 = !DILocation(line: 145, column: 26, scope: !2508)
!2566 = !DILocation(line: 394, column: 2, scope: !2567, inlinedAt: !2519)
!2567 = distinct !DILexicalBlock(scope: !2513, file: !2514, line: 394, column: 2)
!2568 = !{i32 -2145284846}
!2569 = !DILocation(line: 394, column: 2, scope: !2570, inlinedAt: !2519)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !2514, line: 394, column: 2)
!2571 = !DILocation(line: 147, column: 9, scope: !2508)
!2572 = !DILocation(line: 147, column: 15, scope: !2508)
!2573 = !DILocation(line: 147, column: 13, scope: !2508)
!2574 = !DILocation(line: 147, column: 7, scope: !2508)
!2575 = !DILocation(line: 149, column: 6, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 149, column: 6)
!2577 = !DILocation(line: 149, column: 11, scope: !2576)
!2578 = !DILocation(line: 149, column: 6, scope: !2508)
!2579 = !DILocation(line: 150, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 149, column: 19)
!2581 = !DILocation(line: 151, column: 18, scope: !2580)
!2582 = !DILocation(line: 151, column: 3, scope: !2580)
!2583 = !DILocation(line: 152, column: 2, scope: !2580)
!2584 = !DILocation(line: 154, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 154, column: 6)
!2586 = !DILocation(line: 154, column: 11, scope: !2585)
!2587 = !DILocation(line: 154, column: 6, scope: !2508)
!2588 = !DILocation(line: 155, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 154, column: 19)
!2590 = !DILocation(line: 156, column: 18, scope: !2589)
!2591 = !DILocation(line: 156, column: 3, scope: !2589)
!2592 = !DILocation(line: 157, column: 2, scope: !2589)
!2593 = !DILocation(line: 159, column: 6, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 159, column: 6)
!2595 = !DILocation(line: 159, column: 11, scope: !2594)
!2596 = !DILocation(line: 159, column: 6, scope: !2508)
!2597 = !DILocation(line: 160, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 159, column: 18)
!2599 = !DILocation(line: 161, column: 9, scope: !2598)
!2600 = !DILocation(line: 161, column: 14, scope: !2598)
!2601 = !DILocation(line: 162, column: 19, scope: !2598)
!2602 = !DILocation(line: 162, column: 30, scope: !2598)
!2603 = !DILocation(line: 162, column: 3, scope: !2598)
!2604 = !DILocation(line: 163, column: 2, scope: !2598)
!2605 = !DILocation(line: 165, column: 6, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 165, column: 6)
!2607 = !DILocation(line: 165, column: 6, scope: !2508)
!2608 = !DILocation(line: 166, column: 3, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 165, column: 11)
!2610 = !DILocation(line: 166, column: 14, scope: !2609)
!2611 = !DILocation(line: 166, column: 21, scope: !2609)
!2612 = !DILocation(line: 166, column: 27, scope: !2609)
!2613 = !DILocation(line: 166, column: 38, scope: !2609)
!2614 = !DILocation(line: 166, column: 50, scope: !2609)
!2615 = !DILocation(line: 167, column: 3, scope: !2609)
!2616 = !DILocation(line: 169, column: 3, scope: !2606)
!2617 = !DILocation(line: 170, column: 1, scope: !2508)
!2618 = distinct !DISubprogram(name: "ptp_qoriq_adjfine", scope: !3, file: !3, line: 177, type: !247, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2619 = !DILocalVariable(name: "ptp", arg: 1, scope: !2618, file: !3, line: 177, type: !249)
!2620 = !DILocation(line: 177, column: 46, scope: !2618)
!2621 = !DILocalVariable(name: "scaled_ppm", arg: 2, scope: !2618, file: !3, line: 177, type: !250)
!2622 = !DILocation(line: 177, column: 56, scope: !2618)
!2623 = !DILocalVariable(name: "adj", scope: !2618, file: !3, line: 179, type: !131)
!2624 = !DILocation(line: 179, column: 6, scope: !2618)
!2625 = !DILocalVariable(name: "diff", scope: !2618, file: !3, line: 179, type: !131)
!2626 = !DILocation(line: 179, column: 11, scope: !2618)
!2627 = !DILocalVariable(name: "tmr_add", scope: !2618, file: !3, line: 180, type: !149)
!2628 = !DILocation(line: 180, column: 6, scope: !2618)
!2629 = !DILocalVariable(name: "neg_adj", scope: !2618, file: !3, line: 181, type: !224)
!2630 = !DILocation(line: 181, column: 6, scope: !2618)
!2631 = !DILocalVariable(name: "ptp_qoriq", scope: !2618, file: !3, line: 182, type: !136)
!2632 = !DILocation(line: 182, column: 20, scope: !2618)
!2633 = !DILocalVariable(name: "__mptr", scope: !2634, file: !3, line: 182, type: !135)
!2634 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 182, column: 32)
!2635 = !DILocation(line: 182, column: 32, scope: !2634)
!2636 = !DILocation(line: 182, column: 32, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 182, column: 32)
!2638 = !DILocalVariable(name: "regs", scope: !2618, file: !3, line: 183, type: !2388)
!2639 = !DILocation(line: 183, column: 30, scope: !2618)
!2640 = !DILocation(line: 183, column: 38, scope: !2618)
!2641 = !DILocation(line: 183, column: 49, scope: !2618)
!2642 = !DILocation(line: 185, column: 6, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 185, column: 6)
!2644 = !DILocation(line: 185, column: 17, scope: !2643)
!2645 = !DILocation(line: 185, column: 6, scope: !2618)
!2646 = !DILocation(line: 186, column: 11, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 185, column: 22)
!2648 = !DILocation(line: 187, column: 17, scope: !2647)
!2649 = !DILocation(line: 187, column: 16, scope: !2647)
!2650 = !DILocation(line: 187, column: 14, scope: !2647)
!2651 = !DILocation(line: 188, column: 2, scope: !2647)
!2652 = !DILocation(line: 189, column: 12, scope: !2618)
!2653 = !DILocation(line: 189, column: 23, scope: !2618)
!2654 = !DILocation(line: 189, column: 10, scope: !2618)
!2655 = !DILocation(line: 190, column: 8, scope: !2618)
!2656 = !DILocation(line: 190, column: 6, scope: !2618)
!2657 = !DILocation(line: 195, column: 9, scope: !2618)
!2658 = !DILocation(line: 195, column: 6, scope: !2618)
!2659 = !DILocation(line: 196, column: 17, scope: !2618)
!2660 = !DILocation(line: 196, column: 9, scope: !2618)
!2661 = !DILocation(line: 196, column: 7, scope: !2618)
!2662 = !DILocation(line: 197, column: 10, scope: !2618)
!2663 = !DILocation(line: 197, column: 15, scope: !2618)
!2664 = !DILocation(line: 197, column: 26, scope: !2618)
!2665 = !DILocation(line: 197, column: 31, scope: !2618)
!2666 = !DILocation(line: 197, column: 38, scope: !2618)
!2667 = !DILocation(line: 197, column: 22, scope: !2618)
!2668 = !DILocation(line: 197, column: 7, scope: !2618)
!2669 = !DILocation(line: 199, column: 12, scope: !2618)
!2670 = !DILocation(line: 199, column: 22, scope: !2618)
!2671 = !DILocation(line: 199, column: 32, scope: !2618)
!2672 = !DILocation(line: 199, column: 30, scope: !2618)
!2673 = !DILocation(line: 199, column: 39, scope: !2618)
!2674 = !DILocation(line: 199, column: 49, scope: !2618)
!2675 = !DILocation(line: 199, column: 47, scope: !2618)
!2676 = !DILocation(line: 199, column: 10, scope: !2618)
!2677 = !DILocation(line: 201, column: 2, scope: !2618)
!2678 = !DILocation(line: 201, column: 13, scope: !2618)
!2679 = !DILocation(line: 201, column: 20, scope: !2618)
!2680 = !DILocation(line: 201, column: 26, scope: !2618)
!2681 = !DILocation(line: 201, column: 37, scope: !2618)
!2682 = !DILocation(line: 201, column: 46, scope: !2618)
!2683 = !DILocation(line: 203, column: 2, scope: !2618)
!2684 = distinct !DISubprogram(name: "div_u64", scope: !2685, file: !2685, line: 124, type: !2686, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2685 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!131, !131, !149}
!2688 = !DILocalVariable(name: "dividend", arg: 1, scope: !2684, file: !2685, line: 124, type: !131)
!2689 = !DILocation(line: 124, column: 31, scope: !2684)
!2690 = !DILocalVariable(name: "divisor", arg: 2, scope: !2684, file: !2685, line: 124, type: !149)
!2691 = !DILocation(line: 124, column: 45, scope: !2684)
!2692 = !DILocalVariable(name: "remainder", scope: !2684, file: !2685, line: 126, type: !149)
!2693 = !DILocation(line: 126, column: 6, scope: !2684)
!2694 = !DILocation(line: 127, column: 21, scope: !2684)
!2695 = !DILocation(line: 127, column: 31, scope: !2684)
!2696 = !DILocation(line: 127, column: 9, scope: !2684)
!2697 = !DILocation(line: 127, column: 2, scope: !2684)
!2698 = distinct !DISubprogram(name: "ptp_qoriq_adjtime", scope: !3, file: !3, line: 207, type: !258, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2699 = !DILocalVariable(name: "lock", arg: 1, scope: !2700, file: !2514, line: 407, type: !2517)
!2700 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2514, file: !2514, line: 407, type: !2701, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2517, !327}
!2703 = !DILocation(line: 407, column: 64, scope: !2700, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 220, column: 2, scope: !2698)
!2705 = !DILocalVariable(name: "flags", arg: 2, scope: !2700, file: !2514, line: 407, type: !327)
!2706 = !DILocation(line: 407, column: 84, scope: !2700, inlinedAt: !2704)
!2707 = !DILocalVariable(name: "lock", arg: 1, scope: !2708, file: !2514, line: 327, type: !2517)
!2708 = distinct !DISubprogram(name: "spinlock_check", scope: !2514, file: !2514, line: 327, type: !2709, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2711, !2517}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!2712 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 213, column: 2, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 213, column: 2)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 213, column: 2)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 213, column: 2)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 213, column: 2)
!2718 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 213, column: 2)
!2719 = !DILocalVariable(name: "ptp", arg: 1, scope: !2698, file: !3, line: 207, type: !249)
!2720 = !DILocation(line: 207, column: 46, scope: !2698)
!2721 = !DILocalVariable(name: "delta", arg: 2, scope: !2698, file: !3, line: 207, type: !260)
!2722 = !DILocation(line: 207, column: 55, scope: !2698)
!2723 = !DILocalVariable(name: "now", scope: !2698, file: !3, line: 209, type: !260)
!2724 = !DILocation(line: 209, column: 6, scope: !2698)
!2725 = !DILocalVariable(name: "flags", scope: !2698, file: !3, line: 210, type: !327)
!2726 = !DILocation(line: 210, column: 16, scope: !2698)
!2727 = !DILocalVariable(name: "ptp_qoriq", scope: !2698, file: !3, line: 211, type: !136)
!2728 = !DILocation(line: 211, column: 20, scope: !2698)
!2729 = !DILocalVariable(name: "__mptr", scope: !2730, file: !3, line: 211, type: !135)
!2730 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 211, column: 32)
!2731 = !DILocation(line: 211, column: 32, scope: !2730)
!2732 = !DILocation(line: 211, column: 32, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 211, column: 32)
!2734 = !DILocation(line: 213, column: 2, scope: !2698)
!2735 = !DILocation(line: 213, column: 2, scope: !2718)
!2736 = !DILocalVariable(name: "__dummy", scope: !2737, file: !3, line: 213, type: !327)
!2737 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 213, column: 2)
!2738 = !DILocation(line: 213, column: 2, scope: !2737)
!2739 = !DILocalVariable(name: "__dummy2", scope: !2737, file: !3, line: 213, type: !327)
!2740 = !DILocation(line: 213, column: 2, scope: !2717)
!2741 = !DILocation(line: 213, column: 2, scope: !2716)
!2742 = !DILocation(line: 213, column: 2, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 213, column: 2)
!2744 = !DILocalVariable(name: "__dummy", scope: !2745, file: !3, line: 213, type: !327)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 213, column: 2)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 213, column: 2)
!2747 = !DILocation(line: 213, column: 2, scope: !2745)
!2748 = !DILocalVariable(name: "__dummy2", scope: !2745, file: !3, line: 213, type: !327)
!2749 = !DILocation(line: 213, column: 2, scope: !2746)
!2750 = !DILocation(line: 213, column: 2, scope: !2715)
!2751 = !{i32 -2143140547}
!2752 = !DILocation(line: 213, column: 2, scope: !2714)
!2753 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !2713)
!2754 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !2713)
!2755 = !DILocation(line: 215, column: 21, scope: !2698)
!2756 = !DILocation(line: 215, column: 8, scope: !2698)
!2757 = !DILocation(line: 215, column: 6, scope: !2698)
!2758 = !DILocation(line: 216, column: 9, scope: !2698)
!2759 = !DILocation(line: 216, column: 6, scope: !2698)
!2760 = !DILocation(line: 217, column: 16, scope: !2698)
!2761 = !DILocation(line: 217, column: 27, scope: !2698)
!2762 = !DILocation(line: 217, column: 2, scope: !2698)
!2763 = !DILocation(line: 218, column: 13, scope: !2698)
!2764 = !DILocation(line: 218, column: 2, scope: !2698)
!2765 = !DILocation(line: 220, column: 26, scope: !2698)
!2766 = !DILocation(line: 220, column: 37, scope: !2698)
!2767 = !DILocation(line: 220, column: 43, scope: !2698)
!2768 = !DILocalVariable(name: "__dummy", scope: !2769, file: !2514, line: 409, type: !327)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !2514, line: 409, column: 2)
!2770 = distinct !DILexicalBlock(scope: !2700, file: !2514, line: 409, column: 2)
!2771 = !DILocation(line: 409, column: 2, scope: !2769, inlinedAt: !2704)
!2772 = !DILocalVariable(name: "__dummy2", scope: !2769, file: !2514, line: 409, type: !327)
!2773 = !DILocalVariable(name: "__dummy", scope: !2774, file: !2514, line: 409, type: !327)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !2514, line: 409, column: 2)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2514, line: 409, column: 2)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !2514, line: 409, column: 2)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !2514, line: 409, column: 2)
!2778 = !DILocation(line: 409, column: 2, scope: !2774, inlinedAt: !2704)
!2779 = !DILocalVariable(name: "__dummy2", scope: !2774, file: !2514, line: 409, type: !327)
!2780 = !DILocation(line: 409, column: 2, scope: !2775, inlinedAt: !2704)
!2781 = !DILocation(line: 409, column: 2, scope: !2782, inlinedAt: !2704)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !2514, line: 409, column: 2)
!2783 = !{i32 -2145282520}
!2784 = !DILocation(line: 409, column: 2, scope: !2785, inlinedAt: !2704)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !2514, line: 409, column: 2)
!2786 = !DILocation(line: 222, column: 2, scope: !2698)
!2787 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2788, file: !2788, line: 666, type: !2789, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2788 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!327}
!2791 = !DILocalVariable(name: "f", scope: !2787, file: !2788, line: 668, type: !327)
!2792 = !DILocation(line: 668, column: 16, scope: !2787)
!2793 = !DILocation(line: 670, column: 6, scope: !2787)
!2794 = !DILocation(line: 670, column: 4, scope: !2787)
!2795 = !DILocation(line: 671, column: 2, scope: !2787)
!2796 = !DILocation(line: 672, column: 9, scope: !2787)
!2797 = !DILocation(line: 672, column: 2, scope: !2787)
!2798 = distinct !DISubprogram(name: "tmr_cnt_read", scope: !3, file: !3, line: 27, type: !2799, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!131, !136}
!2801 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !2798, file: !3, line: 27, type: !136)
!2802 = !DILocation(line: 27, column: 43, scope: !2798)
!2803 = !DILocalVariable(name: "regs", scope: !2798, file: !3, line: 29, type: !2388)
!2804 = !DILocation(line: 29, column: 30, scope: !2798)
!2805 = !DILocation(line: 29, column: 38, scope: !2798)
!2806 = !DILocation(line: 29, column: 49, scope: !2798)
!2807 = !DILocalVariable(name: "ns", scope: !2798, file: !3, line: 30, type: !131)
!2808 = !DILocation(line: 30, column: 6, scope: !2798)
!2809 = !DILocalVariable(name: "lo", scope: !2798, file: !3, line: 31, type: !149)
!2810 = !DILocation(line: 31, column: 6, scope: !2798)
!2811 = !DILocalVariable(name: "hi", scope: !2798, file: !3, line: 31, type: !149)
!2812 = !DILocation(line: 31, column: 10, scope: !2798)
!2813 = !DILocation(line: 33, column: 7, scope: !2798)
!2814 = !DILocation(line: 33, column: 18, scope: !2798)
!2815 = !DILocation(line: 33, column: 24, scope: !2798)
!2816 = !DILocation(line: 33, column: 30, scope: !2798)
!2817 = !DILocation(line: 33, column: 41, scope: !2798)
!2818 = !DILocation(line: 33, column: 5, scope: !2798)
!2819 = !DILocation(line: 34, column: 7, scope: !2798)
!2820 = !DILocation(line: 34, column: 18, scope: !2798)
!2821 = !DILocation(line: 34, column: 24, scope: !2798)
!2822 = !DILocation(line: 34, column: 30, scope: !2798)
!2823 = !DILocation(line: 34, column: 41, scope: !2798)
!2824 = !DILocation(line: 34, column: 5, scope: !2798)
!2825 = !DILocation(line: 35, column: 14, scope: !2798)
!2826 = !DILocation(line: 35, column: 8, scope: !2798)
!2827 = !DILocation(line: 35, column: 18, scope: !2798)
!2828 = !DILocation(line: 35, column: 5, scope: !2798)
!2829 = !DILocation(line: 36, column: 8, scope: !2798)
!2830 = !DILocation(line: 36, column: 5, scope: !2798)
!2831 = !DILocation(line: 37, column: 9, scope: !2798)
!2832 = !DILocation(line: 37, column: 2, scope: !2798)
!2833 = distinct !DISubprogram(name: "tmr_cnt_write", scope: !3, file: !3, line: 41, type: !2834, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !136, !131}
!2836 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !2833, file: !3, line: 41, type: !136)
!2837 = !DILocation(line: 41, column: 45, scope: !2833)
!2838 = !DILocalVariable(name: "ns", arg: 2, scope: !2833, file: !3, line: 41, type: !131)
!2839 = !DILocation(line: 41, column: 60, scope: !2833)
!2840 = !DILocalVariable(name: "regs", scope: !2833, file: !3, line: 43, type: !2388)
!2841 = !DILocation(line: 43, column: 30, scope: !2833)
!2842 = !DILocation(line: 43, column: 38, scope: !2833)
!2843 = !DILocation(line: 43, column: 49, scope: !2833)
!2844 = !DILocalVariable(name: "hi", scope: !2833, file: !3, line: 44, type: !149)
!2845 = !DILocation(line: 44, column: 6, scope: !2833)
!2846 = !DILocation(line: 44, column: 11, scope: !2833)
!2847 = !DILocation(line: 44, column: 14, scope: !2833)
!2848 = !DILocalVariable(name: "lo", scope: !2833, file: !3, line: 45, type: !149)
!2849 = !DILocation(line: 45, column: 6, scope: !2833)
!2850 = !DILocation(line: 45, column: 11, scope: !2833)
!2851 = !DILocation(line: 45, column: 14, scope: !2833)
!2852 = !DILocation(line: 47, column: 2, scope: !2833)
!2853 = !DILocation(line: 47, column: 13, scope: !2833)
!2854 = !DILocation(line: 47, column: 20, scope: !2833)
!2855 = !DILocation(line: 47, column: 26, scope: !2833)
!2856 = !DILocation(line: 47, column: 37, scope: !2833)
!2857 = !DILocation(line: 47, column: 48, scope: !2833)
!2858 = !DILocation(line: 48, column: 2, scope: !2833)
!2859 = !DILocation(line: 48, column: 13, scope: !2833)
!2860 = !DILocation(line: 48, column: 20, scope: !2833)
!2861 = !DILocation(line: 48, column: 26, scope: !2833)
!2862 = !DILocation(line: 48, column: 37, scope: !2833)
!2863 = !DILocation(line: 48, column: 48, scope: !2833)
!2864 = !DILocation(line: 49, column: 1, scope: !2833)
!2865 = distinct !DISubprogram(name: "set_fipers", scope: !3, file: !3, line: 68, type: !2866, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !136}
!2868 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !2865, file: !3, line: 68, type: !136)
!2869 = !DILocation(line: 68, column: 42, scope: !2865)
!2870 = !DILocalVariable(name: "regs", scope: !2865, file: !3, line: 70, type: !2388)
!2871 = !DILocation(line: 70, column: 30, scope: !2865)
!2872 = !DILocation(line: 70, column: 38, scope: !2865)
!2873 = !DILocation(line: 70, column: 49, scope: !2865)
!2874 = !DILocation(line: 72, column: 12, scope: !2865)
!2875 = !DILocation(line: 72, column: 2, scope: !2865)
!2876 = !DILocation(line: 73, column: 2, scope: !2865)
!2877 = !DILocation(line: 73, column: 13, scope: !2865)
!2878 = !DILocation(line: 73, column: 20, scope: !2865)
!2879 = !DILocation(line: 73, column: 26, scope: !2865)
!2880 = !DILocation(line: 73, column: 38, scope: !2865)
!2881 = !DILocation(line: 73, column: 50, scope: !2865)
!2882 = !DILocation(line: 73, column: 61, scope: !2865)
!2883 = !DILocation(line: 74, column: 2, scope: !2865)
!2884 = !DILocation(line: 74, column: 13, scope: !2865)
!2885 = !DILocation(line: 74, column: 20, scope: !2865)
!2886 = !DILocation(line: 74, column: 26, scope: !2865)
!2887 = !DILocation(line: 74, column: 38, scope: !2865)
!2888 = !DILocation(line: 74, column: 50, scope: !2865)
!2889 = !DILocation(line: 74, column: 61, scope: !2865)
!2890 = !DILocation(line: 76, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 76, column: 6)
!2892 = !DILocation(line: 76, column: 17, scope: !2891)
!2893 = !DILocation(line: 76, column: 6, scope: !2865)
!2894 = !DILocation(line: 77, column: 3, scope: !2891)
!2895 = !DILocation(line: 77, column: 14, scope: !2891)
!2896 = !DILocation(line: 77, column: 21, scope: !2891)
!2897 = !DILocation(line: 77, column: 27, scope: !2891)
!2898 = !DILocation(line: 77, column: 39, scope: !2891)
!2899 = !DILocation(line: 78, column: 6, scope: !2891)
!2900 = !DILocation(line: 78, column: 17, scope: !2891)
!2901 = !DILocation(line: 79, column: 1, scope: !2865)
!2902 = distinct !DISubprogram(name: "ptp_qoriq_gettime", scope: !3, file: !3, line: 226, type: !263, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2903 = !DILocation(line: 407, column: 64, scope: !2700, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 236, column: 2, scope: !2902)
!2905 = !DILocation(line: 407, column: 84, scope: !2700, inlinedAt: !2904)
!2906 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 232, column: 2, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 232, column: 2)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 232, column: 2)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 232, column: 2)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 232, column: 2)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 232, column: 2)
!2913 = !DILocalVariable(name: "ptp", arg: 1, scope: !2902, file: !3, line: 226, type: !249)
!2914 = !DILocation(line: 226, column: 46, scope: !2902)
!2915 = !DILocalVariable(name: "ts", arg: 2, scope: !2902, file: !3, line: 226, type: !265)
!2916 = !DILocation(line: 226, column: 70, scope: !2902)
!2917 = !DILocalVariable(name: "ns", scope: !2902, file: !3, line: 228, type: !131)
!2918 = !DILocation(line: 228, column: 6, scope: !2902)
!2919 = !DILocalVariable(name: "flags", scope: !2902, file: !3, line: 229, type: !327)
!2920 = !DILocation(line: 229, column: 16, scope: !2902)
!2921 = !DILocalVariable(name: "ptp_qoriq", scope: !2902, file: !3, line: 230, type: !136)
!2922 = !DILocation(line: 230, column: 20, scope: !2902)
!2923 = !DILocalVariable(name: "__mptr", scope: !2924, file: !3, line: 230, type: !135)
!2924 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 230, column: 32)
!2925 = !DILocation(line: 230, column: 32, scope: !2924)
!2926 = !DILocation(line: 230, column: 32, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 230, column: 32)
!2928 = !DILocation(line: 232, column: 2, scope: !2902)
!2929 = !DILocation(line: 232, column: 2, scope: !2912)
!2930 = !DILocalVariable(name: "__dummy", scope: !2931, file: !3, line: 232, type: !327)
!2931 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 232, column: 2)
!2932 = !DILocation(line: 232, column: 2, scope: !2931)
!2933 = !DILocalVariable(name: "__dummy2", scope: !2931, file: !3, line: 232, type: !327)
!2934 = !DILocation(line: 232, column: 2, scope: !2911)
!2935 = !DILocation(line: 232, column: 2, scope: !2910)
!2936 = !DILocation(line: 232, column: 2, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 232, column: 2)
!2938 = !DILocalVariable(name: "__dummy", scope: !2939, file: !3, line: 232, type: !327)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 232, column: 2)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 232, column: 2)
!2941 = !DILocation(line: 232, column: 2, scope: !2939)
!2942 = !DILocalVariable(name: "__dummy2", scope: !2939, file: !3, line: 232, type: !327)
!2943 = !DILocation(line: 232, column: 2, scope: !2940)
!2944 = !DILocation(line: 232, column: 2, scope: !2909)
!2945 = !{i32 -2143137963}
!2946 = !DILocation(line: 232, column: 2, scope: !2908)
!2947 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !2907)
!2948 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !2907)
!2949 = !DILocation(line: 234, column: 20, scope: !2902)
!2950 = !DILocation(line: 234, column: 7, scope: !2902)
!2951 = !DILocation(line: 234, column: 5, scope: !2902)
!2952 = !DILocation(line: 236, column: 26, scope: !2902)
!2953 = !DILocation(line: 236, column: 37, scope: !2902)
!2954 = !DILocation(line: 236, column: 43, scope: !2902)
!2955 = !DILocation(line: 409, column: 2, scope: !2769, inlinedAt: !2904)
!2956 = !DILocation(line: 409, column: 2, scope: !2774, inlinedAt: !2904)
!2957 = !DILocation(line: 409, column: 2, scope: !2775, inlinedAt: !2904)
!2958 = !DILocation(line: 409, column: 2, scope: !2782, inlinedAt: !2904)
!2959 = !DILocation(line: 409, column: 2, scope: !2785, inlinedAt: !2904)
!2960 = !DILocation(line: 238, column: 3, scope: !2902)
!2961 = !DILocation(line: 238, column: 25, scope: !2902)
!2962 = !DILocation(line: 238, column: 8, scope: !2902)
!2963 = !DILocation(line: 240, column: 2, scope: !2902)
!2964 = distinct !DISubprogram(name: "ptp_qoriq_settime", scope: !3, file: !3, line: 244, type: !296, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!2965 = !DILocation(line: 407, column: 64, scope: !2700, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 258, column: 2, scope: !2964)
!2967 = !DILocation(line: 407, column: 84, scope: !2700, inlinedAt: !2966)
!2968 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 253, column: 2, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 253, column: 2)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 253, column: 2)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 253, column: 2)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 253, column: 2)
!2974 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 253, column: 2)
!2975 = !DILocalVariable(name: "ptp", arg: 1, scope: !2964, file: !3, line: 244, type: !249)
!2976 = !DILocation(line: 244, column: 46, scope: !2964)
!2977 = !DILocalVariable(name: "ts", arg: 2, scope: !2964, file: !3, line: 245, type: !298)
!2978 = !DILocation(line: 245, column: 34, scope: !2964)
!2979 = !DILocalVariable(name: "ns", scope: !2964, file: !3, line: 247, type: !131)
!2980 = !DILocation(line: 247, column: 6, scope: !2964)
!2981 = !DILocalVariable(name: "flags", scope: !2964, file: !3, line: 248, type: !327)
!2982 = !DILocation(line: 248, column: 16, scope: !2964)
!2983 = !DILocalVariable(name: "ptp_qoriq", scope: !2964, file: !3, line: 249, type: !136)
!2984 = !DILocation(line: 249, column: 20, scope: !2964)
!2985 = !DILocalVariable(name: "__mptr", scope: !2986, file: !3, line: 249, type: !135)
!2986 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 249, column: 32)
!2987 = !DILocation(line: 249, column: 32, scope: !2986)
!2988 = !DILocation(line: 249, column: 32, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 249, column: 32)
!2990 = !DILocation(line: 251, column: 24, scope: !2964)
!2991 = !DILocation(line: 251, column: 7, scope: !2964)
!2992 = !DILocation(line: 251, column: 5, scope: !2964)
!2993 = !DILocation(line: 253, column: 2, scope: !2964)
!2994 = !DILocation(line: 253, column: 2, scope: !2974)
!2995 = !DILocalVariable(name: "__dummy", scope: !2996, file: !3, line: 253, type: !327)
!2996 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 253, column: 2)
!2997 = !DILocation(line: 253, column: 2, scope: !2996)
!2998 = !DILocalVariable(name: "__dummy2", scope: !2996, file: !3, line: 253, type: !327)
!2999 = !DILocation(line: 253, column: 2, scope: !2973)
!3000 = !DILocation(line: 253, column: 2, scope: !2972)
!3001 = !DILocation(line: 253, column: 2, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 253, column: 2)
!3003 = !DILocalVariable(name: "__dummy", scope: !3004, file: !3, line: 253, type: !327)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 253, column: 2)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 253, column: 2)
!3006 = !DILocation(line: 253, column: 2, scope: !3004)
!3007 = !DILocalVariable(name: "__dummy2", scope: !3004, file: !3, line: 253, type: !327)
!3008 = !DILocation(line: 253, column: 2, scope: !3005)
!3009 = !DILocation(line: 253, column: 2, scope: !2971)
!3010 = !{i32 -2143135379}
!3011 = !DILocation(line: 253, column: 2, scope: !2970)
!3012 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !2969)
!3013 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !2969)
!3014 = !DILocation(line: 255, column: 16, scope: !2964)
!3015 = !DILocation(line: 255, column: 27, scope: !2964)
!3016 = !DILocation(line: 255, column: 2, scope: !2964)
!3017 = !DILocation(line: 256, column: 13, scope: !2964)
!3018 = !DILocation(line: 256, column: 2, scope: !2964)
!3019 = !DILocation(line: 258, column: 26, scope: !2964)
!3020 = !DILocation(line: 258, column: 37, scope: !2964)
!3021 = !DILocation(line: 258, column: 43, scope: !2964)
!3022 = !DILocation(line: 409, column: 2, scope: !2769, inlinedAt: !2966)
!3023 = !DILocation(line: 409, column: 2, scope: !2774, inlinedAt: !2966)
!3024 = !DILocation(line: 409, column: 2, scope: !2775, inlinedAt: !2966)
!3025 = !DILocation(line: 409, column: 2, scope: !2782, inlinedAt: !2966)
!3026 = !DILocation(line: 409, column: 2, scope: !2785, inlinedAt: !2966)
!3027 = !DILocation(line: 260, column: 2, scope: !2964)
!3028 = distinct !DISubprogram(name: "timespec64_to_ns", scope: !267, file: !267, line: 125, type: !3029, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!260, !298}
!3031 = !DILocalVariable(name: "ts", arg: 1, scope: !3028, file: !267, line: 125, type: !298)
!3032 = !DILocation(line: 125, column: 61, scope: !3028)
!3033 = !DILocation(line: 128, column: 26, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !267, line: 128, column: 6)
!3035 = !DILocation(line: 128, column: 30, scope: !3034)
!3036 = !DILocation(line: 128, column: 37, scope: !3034)
!3037 = !DILocation(line: 128, column: 6, scope: !3028)
!3038 = !DILocation(line: 129, column: 3, scope: !3034)
!3039 = !DILocation(line: 131, column: 16, scope: !3028)
!3040 = !DILocation(line: 131, column: 20, scope: !3028)
!3041 = !DILocation(line: 131, column: 27, scope: !3028)
!3042 = !DILocation(line: 131, column: 45, scope: !3028)
!3043 = !DILocation(line: 131, column: 49, scope: !3028)
!3044 = !DILocation(line: 131, column: 43, scope: !3028)
!3045 = !DILocation(line: 131, column: 2, scope: !3028)
!3046 = !DILocation(line: 132, column: 1, scope: !3028)
!3047 = distinct !DISubprogram(name: "ptp_qoriq_enable", scope: !3, file: !3, line: 264, type: !302, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3048 = !DILocation(line: 407, column: 64, scope: !2700, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 308, column: 2, scope: !3047)
!3050 = !DILocation(line: 407, column: 84, scope: !2700, inlinedAt: !3049)
!3051 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 296, column: 2, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 296, column: 2)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 296, column: 2)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 296, column: 2)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 296, column: 2)
!3057 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 296, column: 2)
!3058 = !DILocalVariable(name: "ptp", arg: 1, scope: !3047, file: !3, line: 264, type: !249)
!3059 = !DILocation(line: 264, column: 45, scope: !3047)
!3060 = !DILocalVariable(name: "rq", arg: 2, scope: !3047, file: !3, line: 265, type: !304)
!3061 = !DILocation(line: 265, column: 34, scope: !3047)
!3062 = !DILocalVariable(name: "on", arg: 3, scope: !3047, file: !3, line: 265, type: !224)
!3063 = !DILocation(line: 265, column: 42, scope: !3047)
!3064 = !DILocalVariable(name: "ptp_qoriq", scope: !3047, file: !3, line: 267, type: !136)
!3065 = !DILocation(line: 267, column: 20, scope: !3047)
!3066 = !DILocalVariable(name: "__mptr", scope: !3067, file: !3, line: 267, type: !135)
!3067 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 267, column: 32)
!3068 = !DILocation(line: 267, column: 32, scope: !3067)
!3069 = !DILocation(line: 267, column: 32, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 267, column: 32)
!3071 = !DILocalVariable(name: "regs", scope: !3047, file: !3, line: 268, type: !2388)
!3072 = !DILocation(line: 268, column: 30, scope: !3047)
!3073 = !DILocation(line: 268, column: 38, scope: !3047)
!3074 = !DILocation(line: 268, column: 49, scope: !3047)
!3075 = !DILocalVariable(name: "flags", scope: !3047, file: !3, line: 269, type: !327)
!3076 = !DILocation(line: 269, column: 16, scope: !3047)
!3077 = !DILocalVariable(name: "bit", scope: !3047, file: !3, line: 270, type: !149)
!3078 = !DILocation(line: 270, column: 6, scope: !3047)
!3079 = !DILocalVariable(name: "mask", scope: !3047, file: !3, line: 270, type: !149)
!3080 = !DILocation(line: 270, column: 11, scope: !3047)
!3081 = !DILocation(line: 272, column: 10, scope: !3047)
!3082 = !DILocation(line: 272, column: 14, scope: !3047)
!3083 = !DILocation(line: 272, column: 2, scope: !3047)
!3084 = !DILocation(line: 274, column: 11, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 272, column: 20)
!3086 = !DILocation(line: 274, column: 15, scope: !3085)
!3087 = !DILocation(line: 274, column: 21, scope: !3085)
!3088 = !DILocation(line: 274, column: 3, scope: !3085)
!3089 = !DILocation(line: 276, column: 8, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 274, column: 28)
!3091 = !DILocation(line: 277, column: 4, scope: !3090)
!3092 = !DILocation(line: 279, column: 8, scope: !3090)
!3093 = !DILocation(line: 280, column: 4, scope: !3090)
!3094 = !DILocation(line: 282, column: 4, scope: !3090)
!3095 = !DILocation(line: 285, column: 7, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 285, column: 7)
!3097 = !DILocation(line: 285, column: 7, scope: !3085)
!3098 = !DILocation(line: 286, column: 19, scope: !3096)
!3099 = !DILocation(line: 286, column: 30, scope: !3096)
!3100 = !DILocation(line: 286, column: 34, scope: !3096)
!3101 = !DILocation(line: 286, column: 40, scope: !3096)
!3102 = !DILocation(line: 286, column: 4, scope: !3096)
!3103 = !DILocation(line: 288, column: 3, scope: !3085)
!3104 = !DILocation(line: 290, column: 7, scope: !3085)
!3105 = !DILocation(line: 291, column: 3, scope: !3085)
!3106 = !DILocation(line: 293, column: 3, scope: !3085)
!3107 = !DILocation(line: 296, column: 2, scope: !3047)
!3108 = !DILocation(line: 296, column: 2, scope: !3057)
!3109 = !DILocalVariable(name: "__dummy", scope: !3110, file: !3, line: 296, type: !327)
!3110 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 296, column: 2)
!3111 = !DILocation(line: 296, column: 2, scope: !3110)
!3112 = !DILocalVariable(name: "__dummy2", scope: !3110, file: !3, line: 296, type: !327)
!3113 = !DILocation(line: 296, column: 2, scope: !3056)
!3114 = !DILocation(line: 296, column: 2, scope: !3055)
!3115 = !DILocation(line: 296, column: 2, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 296, column: 2)
!3117 = !DILocalVariable(name: "__dummy", scope: !3118, file: !3, line: 296, type: !327)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 296, column: 2)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 296, column: 2)
!3120 = !DILocation(line: 296, column: 2, scope: !3118)
!3121 = !DILocalVariable(name: "__dummy2", scope: !3118, file: !3, line: 296, type: !327)
!3122 = !DILocation(line: 296, column: 2, scope: !3119)
!3123 = !DILocation(line: 296, column: 2, scope: !3054)
!3124 = !{i32 -2143132766}
!3125 = !DILocation(line: 296, column: 2, scope: !3053)
!3126 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !3052)
!3127 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !3052)
!3128 = !DILocation(line: 298, column: 9, scope: !3047)
!3129 = !DILocation(line: 298, column: 20, scope: !3047)
!3130 = !DILocation(line: 298, column: 26, scope: !3047)
!3131 = !DILocation(line: 298, column: 32, scope: !3047)
!3132 = !DILocation(line: 298, column: 43, scope: !3047)
!3133 = !DILocation(line: 298, column: 7, scope: !3047)
!3134 = !DILocation(line: 299, column: 6, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 299, column: 6)
!3136 = !DILocation(line: 299, column: 6, scope: !3047)
!3137 = !DILocation(line: 300, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 299, column: 10)
!3139 = !DILocation(line: 300, column: 8, scope: !3138)
!3140 = !DILocation(line: 301, column: 3, scope: !3138)
!3141 = !DILocation(line: 301, column: 14, scope: !3138)
!3142 = !DILocation(line: 301, column: 21, scope: !3138)
!3143 = !DILocation(line: 301, column: 27, scope: !3138)
!3144 = !DILocation(line: 301, column: 38, scope: !3138)
!3145 = !DILocation(line: 301, column: 50, scope: !3138)
!3146 = !DILocation(line: 302, column: 2, scope: !3138)
!3147 = !DILocation(line: 303, column: 12, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 302, column: 9)
!3149 = !DILocation(line: 303, column: 11, scope: !3148)
!3150 = !DILocation(line: 303, column: 8, scope: !3148)
!3151 = !DILocation(line: 306, column: 2, scope: !3047)
!3152 = !DILocation(line: 306, column: 13, scope: !3047)
!3153 = !DILocation(line: 306, column: 20, scope: !3047)
!3154 = !DILocation(line: 306, column: 26, scope: !3047)
!3155 = !DILocation(line: 306, column: 37, scope: !3047)
!3156 = !DILocation(line: 306, column: 49, scope: !3047)
!3157 = !DILocation(line: 308, column: 26, scope: !3047)
!3158 = !DILocation(line: 308, column: 37, scope: !3047)
!3159 = !DILocation(line: 308, column: 43, scope: !3047)
!3160 = !DILocation(line: 409, column: 2, scope: !2769, inlinedAt: !3049)
!3161 = !DILocation(line: 409, column: 2, scope: !2774, inlinedAt: !3049)
!3162 = !DILocation(line: 409, column: 2, scope: !2775, inlinedAt: !3049)
!3163 = !DILocation(line: 409, column: 2, scope: !2782, inlinedAt: !3049)
!3164 = !DILocation(line: 409, column: 2, scope: !2785, inlinedAt: !3049)
!3165 = !DILocation(line: 309, column: 2, scope: !3047)
!3166 = !DILocation(line: 310, column: 1, scope: !3047)
!3167 = distinct !DISubprogram(name: "ptp_qoriq_init", scope: !3, file: !3, line: 432, type: !3168, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!224, !136, !135, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!3171 = !DILocation(line: 407, column: 64, scope: !2700, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 527, column: 2, scope: !3167)
!3173 = !DILocation(line: 407, column: 84, scope: !2700, inlinedAt: !3172)
!3174 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 510, column: 2, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 510, column: 2)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 510, column: 2)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 510, column: 2)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 510, column: 2)
!3180 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 510, column: 2)
!3181 = !DILocation(line: 327, column: 67, scope: !2708, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 501, column: 2, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 501, column: 2)
!3184 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3167, file: !3, line: 432, type: !136)
!3185 = !DILocation(line: 432, column: 38, scope: !3167)
!3186 = !DILocalVariable(name: "base", arg: 2, scope: !3167, file: !3, line: 432, type: !135)
!3187 = !DILocation(line: 432, column: 63, scope: !3167)
!3188 = !DILocalVariable(name: "caps", arg: 3, scope: !3167, file: !3, line: 433, type: !3170)
!3189 = !DILocation(line: 433, column: 35, scope: !3167)
!3190 = !DILocalVariable(name: "node", scope: !3167, file: !3, line: 435, type: !2106)
!3191 = !DILocation(line: 435, column: 22, scope: !3167)
!3192 = !DILocation(line: 435, column: 29, scope: !3167)
!3193 = !DILocation(line: 435, column: 40, scope: !3167)
!3194 = !DILocation(line: 435, column: 45, scope: !3167)
!3195 = !DILocalVariable(name: "regs", scope: !3167, file: !3, line: 436, type: !2388)
!3196 = !DILocation(line: 436, column: 30, scope: !3167)
!3197 = !DILocalVariable(name: "now", scope: !3167, file: !3, line: 437, type: !266)
!3198 = !DILocation(line: 437, column: 20, scope: !3167)
!3199 = !DILocalVariable(name: "flags", scope: !3167, file: !3, line: 438, type: !327)
!3200 = !DILocation(line: 438, column: 16, scope: !3167)
!3201 = !DILocalVariable(name: "tmr_ctrl", scope: !3167, file: !3, line: 439, type: !149)
!3202 = !DILocation(line: 439, column: 6, scope: !3167)
!3203 = !DILocation(line: 441, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 441, column: 6)
!3205 = !DILocation(line: 441, column: 6, scope: !3167)
!3206 = !DILocation(line: 442, column: 3, scope: !3204)
!3207 = !DILocation(line: 444, column: 20, scope: !3167)
!3208 = !DILocation(line: 444, column: 2, scope: !3167)
!3209 = !DILocation(line: 444, column: 13, scope: !3167)
!3210 = !DILocation(line: 444, column: 18, scope: !3167)
!3211 = !DILocation(line: 445, column: 2, scope: !3167)
!3212 = !DILocation(line: 445, column: 13, scope: !3167)
!3213 = !DILocation(line: 445, column: 21, scope: !3167)
!3214 = !DILocation(line: 445, column: 20, scope: !3167)
!3215 = !DILocation(line: 447, column: 27, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 447, column: 6)
!3217 = !DILocation(line: 447, column: 47, scope: !3216)
!3218 = !DILocation(line: 447, column: 58, scope: !3216)
!3219 = !DILocation(line: 447, column: 6, scope: !3216)
!3220 = !DILocation(line: 447, column: 6, scope: !3167)
!3221 = !DILocation(line: 448, column: 3, scope: !3216)
!3222 = !DILocation(line: 448, column: 14, scope: !3216)
!3223 = !DILocation(line: 448, column: 20, scope: !3216)
!3224 = !DILocation(line: 450, column: 28, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 450, column: 6)
!3226 = !DILocation(line: 450, column: 6, scope: !3225)
!3227 = !DILocation(line: 450, column: 6, scope: !3167)
!3228 = !DILocation(line: 451, column: 3, scope: !3225)
!3229 = !DILocation(line: 451, column: 14, scope: !3225)
!3230 = !DILocation(line: 451, column: 33, scope: !3225)
!3231 = !DILocation(line: 453, column: 3, scope: !3225)
!3232 = !DILocation(line: 453, column: 14, scope: !3225)
!3233 = !DILocation(line: 453, column: 33, scope: !3225)
!3234 = !DILocation(line: 455, column: 30, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 455, column: 6)
!3236 = !DILocation(line: 455, column: 6, scope: !3235)
!3237 = !DILocation(line: 455, column: 53, scope: !3235)
!3238 = !DILocation(line: 456, column: 30, scope: !3235)
!3239 = !DILocation(line: 456, column: 6, scope: !3235)
!3240 = !DILocation(line: 455, column: 6, scope: !3167)
!3241 = !DILocation(line: 457, column: 3, scope: !3235)
!3242 = !DILocation(line: 457, column: 14, scope: !3235)
!3243 = !DILocation(line: 457, column: 29, scope: !3235)
!3244 = !DILocation(line: 459, column: 27, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 459, column: 6)
!3246 = !DILocation(line: 460, column: 26, scope: !3245)
!3247 = !DILocation(line: 460, column: 37, scope: !3245)
!3248 = !DILocation(line: 459, column: 6, scope: !3245)
!3249 = !DILocation(line: 460, column: 50, scope: !3245)
!3250 = !DILocation(line: 461, column: 27, scope: !3245)
!3251 = !DILocation(line: 462, column: 23, scope: !3245)
!3252 = !DILocation(line: 462, column: 34, scope: !3245)
!3253 = !DILocation(line: 461, column: 6, scope: !3245)
!3254 = !DILocation(line: 462, column: 44, scope: !3245)
!3255 = !DILocation(line: 463, column: 27, scope: !3245)
!3256 = !DILocation(line: 464, column: 22, scope: !3245)
!3257 = !DILocation(line: 464, column: 33, scope: !3245)
!3258 = !DILocation(line: 463, column: 6, scope: !3245)
!3259 = !DILocation(line: 464, column: 42, scope: !3245)
!3260 = !DILocation(line: 465, column: 27, scope: !3245)
!3261 = !DILocation(line: 466, column: 25, scope: !3245)
!3262 = !DILocation(line: 466, column: 36, scope: !3245)
!3263 = !DILocation(line: 465, column: 6, scope: !3245)
!3264 = !DILocation(line: 466, column: 48, scope: !3245)
!3265 = !DILocation(line: 467, column: 27, scope: !3245)
!3266 = !DILocation(line: 468, column: 25, scope: !3245)
!3267 = !DILocation(line: 468, column: 36, scope: !3245)
!3268 = !DILocation(line: 467, column: 6, scope: !3245)
!3269 = !DILocation(line: 468, column: 48, scope: !3245)
!3270 = !DILocation(line: 469, column: 27, scope: !3245)
!3271 = !DILocation(line: 470, column: 22, scope: !3245)
!3272 = !DILocation(line: 470, column: 33, scope: !3245)
!3273 = !DILocation(line: 470, column: 38, scope: !3245)
!3274 = !DILocation(line: 469, column: 6, scope: !3245)
!3275 = !DILocation(line: 470, column: 47, scope: !3245)
!3276 = !DILocation(line: 471, column: 7, scope: !3245)
!3277 = !DILocation(line: 471, column: 18, scope: !3245)
!3278 = !DILocation(line: 471, column: 33, scope: !3245)
!3279 = !DILocation(line: 472, column: 28, scope: !3245)
!3280 = !DILocation(line: 473, column: 8, scope: !3245)
!3281 = !DILocation(line: 473, column: 19, scope: !3245)
!3282 = !DILocation(line: 472, column: 7, scope: !3245)
!3283 = !DILocation(line: 459, column: 6, scope: !3167)
!3284 = !DILocation(line: 474, column: 3, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 473, column: 33)
!3286 = !DILocation(line: 476, column: 29, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 476, column: 7)
!3288 = !DILocation(line: 476, column: 40, scope: !3287)
!3289 = !DILocation(line: 476, column: 7, scope: !3287)
!3290 = !DILocation(line: 476, column: 7, scope: !3285)
!3291 = !DILocation(line: 477, column: 4, scope: !3287)
!3292 = !DILocation(line: 478, column: 2, scope: !3285)
!3293 = !DILocation(line: 480, column: 28, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 480, column: 6)
!3295 = !DILocation(line: 480, column: 6, scope: !3294)
!3296 = !DILocation(line: 480, column: 6, scope: !3167)
!3297 = !DILocation(line: 481, column: 3, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 480, column: 52)
!3299 = !DILocation(line: 481, column: 14, scope: !3298)
!3300 = !DILocation(line: 481, column: 19, scope: !3298)
!3301 = !DILocation(line: 482, column: 3, scope: !3298)
!3302 = !DILocation(line: 482, column: 14, scope: !3298)
!3303 = !DILocation(line: 482, column: 20, scope: !3298)
!3304 = !DILocation(line: 483, column: 2, scope: !3298)
!3305 = !DILocation(line: 484, column: 3, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 483, column: 9)
!3307 = !DILocation(line: 484, column: 14, scope: !3306)
!3308 = !DILocation(line: 484, column: 19, scope: !3306)
!3309 = !DILocation(line: 485, column: 3, scope: !3306)
!3310 = !DILocation(line: 485, column: 14, scope: !3306)
!3311 = !DILocation(line: 485, column: 20, scope: !3306)
!3312 = !DILocation(line: 489, column: 30, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 489, column: 6)
!3314 = !DILocation(line: 489, column: 6, scope: !3313)
!3315 = !DILocation(line: 489, column: 6, scope: !3167)
!3316 = !DILocation(line: 490, column: 31, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 489, column: 54)
!3318 = !DILocation(line: 490, column: 36, scope: !3317)
!3319 = !DILocation(line: 490, column: 3, scope: !3317)
!3320 = !DILocation(line: 490, column: 14, scope: !3317)
!3321 = !DILocation(line: 490, column: 19, scope: !3317)
!3322 = !DILocation(line: 490, column: 29, scope: !3317)
!3323 = !DILocation(line: 491, column: 32, scope: !3317)
!3324 = !DILocation(line: 491, column: 37, scope: !3317)
!3325 = !DILocation(line: 491, column: 3, scope: !3317)
!3326 = !DILocation(line: 491, column: 14, scope: !3317)
!3327 = !DILocation(line: 491, column: 19, scope: !3317)
!3328 = !DILocation(line: 491, column: 30, scope: !3317)
!3329 = !DILocation(line: 492, column: 32, scope: !3317)
!3330 = !DILocation(line: 492, column: 37, scope: !3317)
!3331 = !DILocation(line: 492, column: 3, scope: !3317)
!3332 = !DILocation(line: 492, column: 14, scope: !3317)
!3333 = !DILocation(line: 492, column: 19, scope: !3317)
!3334 = !DILocation(line: 492, column: 30, scope: !3317)
!3335 = !DILocation(line: 493, column: 31, scope: !3317)
!3336 = !DILocation(line: 493, column: 36, scope: !3317)
!3337 = !DILocation(line: 493, column: 3, scope: !3317)
!3338 = !DILocation(line: 493, column: 14, scope: !3317)
!3339 = !DILocation(line: 493, column: 19, scope: !3317)
!3340 = !DILocation(line: 493, column: 29, scope: !3317)
!3341 = !DILocation(line: 494, column: 2, scope: !3317)
!3342 = !DILocation(line: 495, column: 31, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 494, column: 9)
!3344 = !DILocation(line: 495, column: 36, scope: !3343)
!3345 = !DILocation(line: 495, column: 3, scope: !3343)
!3346 = !DILocation(line: 495, column: 14, scope: !3343)
!3347 = !DILocation(line: 495, column: 19, scope: !3343)
!3348 = !DILocation(line: 495, column: 29, scope: !3343)
!3349 = !DILocation(line: 496, column: 32, scope: !3343)
!3350 = !DILocation(line: 496, column: 37, scope: !3343)
!3351 = !DILocation(line: 496, column: 3, scope: !3343)
!3352 = !DILocation(line: 496, column: 14, scope: !3343)
!3353 = !DILocation(line: 496, column: 19, scope: !3343)
!3354 = !DILocation(line: 496, column: 30, scope: !3343)
!3355 = !DILocation(line: 497, column: 32, scope: !3343)
!3356 = !DILocation(line: 497, column: 37, scope: !3343)
!3357 = !DILocation(line: 497, column: 3, scope: !3343)
!3358 = !DILocation(line: 497, column: 14, scope: !3343)
!3359 = !DILocation(line: 497, column: 19, scope: !3343)
!3360 = !DILocation(line: 497, column: 30, scope: !3343)
!3361 = !DILocation(line: 498, column: 31, scope: !3343)
!3362 = !DILocation(line: 498, column: 36, scope: !3343)
!3363 = !DILocation(line: 498, column: 3, scope: !3343)
!3364 = !DILocation(line: 498, column: 14, scope: !3343)
!3365 = !DILocation(line: 498, column: 19, scope: !3343)
!3366 = !DILocation(line: 498, column: 29, scope: !3343)
!3367 = !DILocation(line: 501, column: 2, scope: !3167)
!3368 = !DILocation(line: 501, column: 2, scope: !3183)
!3369 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !3182)
!3370 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !3182)
!3371 = !DILocation(line: 503, column: 2, scope: !3167)
!3372 = !DILocation(line: 504, column: 21, scope: !3167)
!3373 = !DILocation(line: 504, column: 32, scope: !3167)
!3374 = !DILocation(line: 504, column: 2, scope: !3167)
!3375 = !DILocation(line: 507, column: 5, scope: !3167)
!3376 = !DILocation(line: 507, column: 16, scope: !3167)
!3377 = !DILocation(line: 507, column: 28, scope: !3167)
!3378 = !DILocation(line: 507, column: 48, scope: !3167)
!3379 = !DILocation(line: 508, column: 5, scope: !3167)
!3380 = !DILocation(line: 508, column: 16, scope: !3167)
!3381 = !DILocation(line: 508, column: 22, scope: !3167)
!3382 = !DILocation(line: 508, column: 36, scope: !3167)
!3383 = !DILocation(line: 507, column: 69, scope: !3167)
!3384 = !DILocation(line: 506, column: 11, scope: !3167)
!3385 = !DILocation(line: 510, column: 2, scope: !3167)
!3386 = !DILocation(line: 510, column: 2, scope: !3180)
!3387 = !DILocalVariable(name: "__dummy", scope: !3388, file: !3, line: 510, type: !327)
!3388 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 510, column: 2)
!3389 = !DILocation(line: 510, column: 2, scope: !3388)
!3390 = !DILocalVariable(name: "__dummy2", scope: !3388, file: !3, line: 510, type: !327)
!3391 = !DILocation(line: 510, column: 2, scope: !3179)
!3392 = !DILocation(line: 510, column: 2, scope: !3178)
!3393 = !DILocation(line: 510, column: 2, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 510, column: 2)
!3395 = !DILocalVariable(name: "__dummy", scope: !3396, file: !3, line: 510, type: !327)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 510, column: 2)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 510, column: 2)
!3398 = !DILocation(line: 510, column: 2, scope: !3396)
!3399 = !DILocalVariable(name: "__dummy2", scope: !3396, file: !3, line: 510, type: !327)
!3400 = !DILocation(line: 510, column: 2, scope: !3397)
!3401 = !DILocation(line: 510, column: 2, scope: !3177)
!3402 = !{i32 -2143130583}
!3403 = !DILocation(line: 510, column: 2, scope: !3176)
!3404 = !DILocation(line: 329, column: 10, scope: !2708, inlinedAt: !3175)
!3405 = !DILocation(line: 329, column: 16, scope: !2708, inlinedAt: !3175)
!3406 = !DILocation(line: 512, column: 10, scope: !3167)
!3407 = !DILocation(line: 512, column: 21, scope: !3167)
!3408 = !DILocation(line: 512, column: 7, scope: !3167)
!3409 = !DILocation(line: 513, column: 2, scope: !3167)
!3410 = !DILocation(line: 513, column: 13, scope: !3167)
!3411 = !DILocation(line: 513, column: 20, scope: !3167)
!3412 = !DILocation(line: 513, column: 26, scope: !3167)
!3413 = !DILocation(line: 513, column: 37, scope: !3167)
!3414 = !DILocation(line: 513, column: 47, scope: !3167)
!3415 = !DILocation(line: 514, column: 2, scope: !3167)
!3416 = !DILocation(line: 514, column: 13, scope: !3167)
!3417 = !DILocation(line: 514, column: 20, scope: !3167)
!3418 = !DILocation(line: 514, column: 26, scope: !3167)
!3419 = !DILocation(line: 514, column: 37, scope: !3167)
!3420 = !DILocation(line: 514, column: 46, scope: !3167)
!3421 = !DILocation(line: 514, column: 57, scope: !3167)
!3422 = !DILocation(line: 515, column: 2, scope: !3167)
!3423 = !DILocation(line: 515, column: 13, scope: !3167)
!3424 = !DILocation(line: 515, column: 20, scope: !3167)
!3425 = !DILocation(line: 515, column: 26, scope: !3167)
!3426 = !DILocation(line: 515, column: 37, scope: !3167)
!3427 = !DILocation(line: 515, column: 47, scope: !3167)
!3428 = !DILocation(line: 515, column: 58, scope: !3167)
!3429 = !DILocation(line: 516, column: 2, scope: !3167)
!3430 = !DILocation(line: 516, column: 13, scope: !3167)
!3431 = !DILocation(line: 516, column: 20, scope: !3167)
!3432 = !DILocation(line: 516, column: 26, scope: !3167)
!3433 = !DILocation(line: 516, column: 38, scope: !3167)
!3434 = !DILocation(line: 516, column: 50, scope: !3167)
!3435 = !DILocation(line: 516, column: 61, scope: !3167)
!3436 = !DILocation(line: 517, column: 2, scope: !3167)
!3437 = !DILocation(line: 517, column: 13, scope: !3167)
!3438 = !DILocation(line: 517, column: 20, scope: !3167)
!3439 = !DILocation(line: 517, column: 26, scope: !3167)
!3440 = !DILocation(line: 517, column: 38, scope: !3167)
!3441 = !DILocation(line: 517, column: 50, scope: !3167)
!3442 = !DILocation(line: 517, column: 61, scope: !3167)
!3443 = !DILocation(line: 519, column: 6, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 519, column: 6)
!3445 = !DILocation(line: 519, column: 17, scope: !3444)
!3446 = !DILocation(line: 519, column: 6, scope: !3167)
!3447 = !DILocation(line: 520, column: 3, scope: !3444)
!3448 = !DILocation(line: 520, column: 14, scope: !3444)
!3449 = !DILocation(line: 520, column: 21, scope: !3444)
!3450 = !DILocation(line: 520, column: 27, scope: !3444)
!3451 = !DILocation(line: 520, column: 39, scope: !3444)
!3452 = !DILocation(line: 521, column: 6, scope: !3444)
!3453 = !DILocation(line: 521, column: 17, scope: !3444)
!3454 = !DILocation(line: 523, column: 12, scope: !3167)
!3455 = !DILocation(line: 523, column: 2, scope: !3167)
!3456 = !DILocation(line: 524, column: 2, scope: !3167)
!3457 = !DILocation(line: 524, column: 13, scope: !3167)
!3458 = !DILocation(line: 524, column: 20, scope: !3167)
!3459 = !DILocation(line: 524, column: 26, scope: !3167)
!3460 = !DILocation(line: 524, column: 37, scope: !3167)
!3461 = !DILocation(line: 525, column: 5, scope: !3167)
!3462 = !DILocation(line: 525, column: 13, scope: !3167)
!3463 = !DILocation(line: 525, column: 21, scope: !3167)
!3464 = !DILocation(line: 525, column: 26, scope: !3167)
!3465 = !DILocation(line: 525, column: 29, scope: !3167)
!3466 = !DILocation(line: 527, column: 26, scope: !3167)
!3467 = !DILocation(line: 527, column: 37, scope: !3167)
!3468 = !DILocation(line: 527, column: 43, scope: !3167)
!3469 = !DILocation(line: 409, column: 2, scope: !2769, inlinedAt: !3172)
!3470 = !DILocation(line: 409, column: 2, scope: !2774, inlinedAt: !3172)
!3471 = !DILocation(line: 409, column: 2, scope: !2775, inlinedAt: !3172)
!3472 = !DILocation(line: 409, column: 2, scope: !2782, inlinedAt: !3172)
!3473 = !DILocation(line: 409, column: 2, scope: !2785, inlinedAt: !3172)
!3474 = !DILocation(line: 529, column: 41, scope: !3167)
!3475 = !DILocation(line: 529, column: 52, scope: !3167)
!3476 = !DILocation(line: 529, column: 58, scope: !3167)
!3477 = !DILocation(line: 529, column: 69, scope: !3167)
!3478 = !DILocation(line: 529, column: 21, scope: !3167)
!3479 = !DILocation(line: 529, column: 2, scope: !3167)
!3480 = !DILocation(line: 529, column: 13, scope: !3167)
!3481 = !DILocation(line: 529, column: 19, scope: !3167)
!3482 = !DILocation(line: 530, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 530, column: 6)
!3484 = !DILocation(line: 530, column: 24, scope: !3483)
!3485 = !DILocation(line: 530, column: 6, scope: !3483)
!3486 = !DILocation(line: 530, column: 6, scope: !3167)
!3487 = !DILocation(line: 531, column: 18, scope: !3483)
!3488 = !DILocation(line: 531, column: 29, scope: !3483)
!3489 = !DILocation(line: 531, column: 10, scope: !3483)
!3490 = !DILocation(line: 531, column: 3, scope: !3483)
!3491 = !DILocation(line: 533, column: 41, scope: !3167)
!3492 = !DILocation(line: 533, column: 52, scope: !3167)
!3493 = !DILocation(line: 533, column: 25, scope: !3167)
!3494 = !DILocation(line: 533, column: 2, scope: !3167)
!3495 = !DILocation(line: 533, column: 13, scope: !3167)
!3496 = !DILocation(line: 533, column: 23, scope: !3167)
!3497 = !DILocation(line: 534, column: 27, scope: !3167)
!3498 = !DILocation(line: 534, column: 2, scope: !3167)
!3499 = !DILocation(line: 535, column: 2, scope: !3167)
!3500 = !DILocation(line: 536, column: 1, scope: !3167)
!3501 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2108, file: !2108, line: 1214, type: !3502, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!224, !3504, !324, !838}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!3506 = !DILocalVariable(name: "np", arg: 1, scope: !3501, file: !2108, line: 1214, type: !3504)
!3507 = !DILocation(line: 1214, column: 66, scope: !3501)
!3508 = !DILocalVariable(name: "propname", arg: 2, scope: !3501, file: !2108, line: 1215, type: !324)
!3509 = !DILocation(line: 1215, column: 24, scope: !3501)
!3510 = !DILocalVariable(name: "out_value", arg: 3, scope: !3501, file: !2108, line: 1216, type: !838)
!3511 = !DILocation(line: 1216, column: 17, scope: !3501)
!3512 = !DILocation(line: 1218, column: 36, scope: !3501)
!3513 = !DILocation(line: 1218, column: 40, scope: !3501)
!3514 = !DILocation(line: 1218, column: 50, scope: !3501)
!3515 = !DILocation(line: 1218, column: 9, scope: !3501)
!3516 = !DILocation(line: 1218, column: 2, scope: !3501)
!3517 = distinct !DISubprogram(name: "of_property_read_bool", scope: !2108, file: !2108, line: 1192, type: !3518, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!1200, !3504, !324}
!3520 = !DILocalVariable(name: "np", arg: 1, scope: !3517, file: !2108, line: 1192, type: !3504)
!3521 = !DILocation(line: 1192, column: 68, scope: !3517)
!3522 = !DILocalVariable(name: "propname", arg: 2, scope: !3517, file: !2108, line: 1193, type: !324)
!3523 = !DILocation(line: 1193, column: 19, scope: !3517)
!3524 = !DILocalVariable(name: "prop", scope: !3517, file: !2108, line: 1195, type: !2205)
!3525 = !DILocation(line: 1195, column: 19, scope: !3517)
!3526 = !DILocation(line: 1195, column: 43, scope: !3517)
!3527 = !DILocation(line: 1195, column: 47, scope: !3517)
!3528 = !DILocation(line: 1195, column: 26, scope: !3517)
!3529 = !DILocation(line: 1197, column: 9, scope: !3517)
!3530 = !DILocation(line: 1197, column: 2, scope: !3517)
!3531 = distinct !DISubprogram(name: "ptp_qoriq_auto_config", scope: !3, file: !3, line: 378, type: !3532, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!224, !136, !2106}
!3534 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3531, file: !3, line: 378, type: !136)
!3535 = !DILocation(line: 378, column: 52, scope: !3531)
!3536 = !DILocalVariable(name: "node", arg: 2, scope: !3531, file: !3, line: 379, type: !2106)
!3537 = !DILocation(line: 379, column: 26, scope: !3531)
!3538 = !DILocalVariable(name: "clk", scope: !3531, file: !3, line: 381, type: !3539)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !3541, line: 17, flags: DIFlagFwdDecl)
!3541 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!3542 = !DILocation(line: 381, column: 14, scope: !3531)
!3543 = !DILocalVariable(name: "freq_comp", scope: !3531, file: !3, line: 382, type: !131)
!3544 = !DILocation(line: 382, column: 6, scope: !3531)
!3545 = !DILocalVariable(name: "max_adj", scope: !3531, file: !3, line: 383, type: !131)
!3546 = !DILocation(line: 383, column: 6, scope: !3531)
!3547 = !DILocalVariable(name: "nominal_freq", scope: !3531, file: !3, line: 384, type: !149)
!3548 = !DILocation(line: 384, column: 6, scope: !3531)
!3549 = !DILocalVariable(name: "remainder", scope: !3531, file: !3, line: 385, type: !149)
!3550 = !DILocation(line: 385, column: 6, scope: !3531)
!3551 = !DILocalVariable(name: "clk_src", scope: !3531, file: !3, line: 386, type: !149)
!3552 = !DILocation(line: 386, column: 6, scope: !3531)
!3553 = !DILocation(line: 388, column: 2, scope: !3531)
!3554 = !DILocation(line: 388, column: 13, scope: !3531)
!3555 = !DILocation(line: 388, column: 19, scope: !3531)
!3556 = !DILocation(line: 390, column: 19, scope: !3531)
!3557 = !DILocation(line: 390, column: 8, scope: !3531)
!3558 = !DILocation(line: 390, column: 6, scope: !3531)
!3559 = !DILocation(line: 391, column: 14, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 391, column: 6)
!3561 = !DILocation(line: 391, column: 7, scope: !3560)
!3562 = !DILocation(line: 391, column: 6, scope: !3531)
!3563 = !DILocation(line: 392, column: 26, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 391, column: 20)
!3565 = !DILocation(line: 392, column: 13, scope: !3564)
!3566 = !DILocation(line: 392, column: 11, scope: !3564)
!3567 = !DILocation(line: 393, column: 11, scope: !3564)
!3568 = !DILocation(line: 393, column: 3, scope: !3564)
!3569 = !DILocation(line: 394, column: 2, scope: !3564)
!3570 = !DILocation(line: 396, column: 6, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 396, column: 6)
!3572 = !DILocation(line: 396, column: 14, scope: !3571)
!3573 = !DILocation(line: 396, column: 6, scope: !3531)
!3574 = !DILocation(line: 397, column: 3, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 396, column: 30)
!3576 = !DILocation(line: 398, column: 3, scope: !3575)
!3577 = !DILocation(line: 401, column: 40, scope: !3531)
!3578 = !DILocation(line: 401, column: 17, scope: !3531)
!3579 = !DILocation(line: 401, column: 15, scope: !3531)
!3580 = !DILocation(line: 402, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 402, column: 6)
!3582 = !DILocation(line: 402, column: 6, scope: !3531)
!3583 = !DILocation(line: 403, column: 3, scope: !3581)
!3584 = !DILocation(line: 405, column: 42, scope: !3531)
!3585 = !DILocation(line: 405, column: 40, scope: !3531)
!3586 = !DILocation(line: 405, column: 27, scope: !3531)
!3587 = !DILocation(line: 405, column: 2, scope: !3531)
!3588 = !DILocation(line: 405, column: 13, scope: !3531)
!3589 = !DILocation(line: 405, column: 25, scope: !3531)
!3590 = !DILocation(line: 406, column: 2, scope: !3531)
!3591 = !DILocation(line: 406, column: 13, scope: !3531)
!3592 = !DILocation(line: 406, column: 22, scope: !3531)
!3593 = !DILocation(line: 412, column: 31, scope: !3531)
!3594 = !DILocation(line: 412, column: 29, scope: !3531)
!3595 = !DILocation(line: 412, column: 12, scope: !3531)
!3596 = !DILocation(line: 413, column: 26, scope: !3531)
!3597 = !DILocation(line: 413, column: 37, scope: !3531)
!3598 = !DILocation(line: 413, column: 14, scope: !3531)
!3599 = !DILocation(line: 413, column: 12, scope: !3531)
!3600 = !DILocation(line: 414, column: 6, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 414, column: 6)
!3602 = !DILocation(line: 414, column: 6, scope: !3531)
!3603 = !DILocation(line: 415, column: 12, scope: !3601)
!3604 = !DILocation(line: 415, column: 3, scope: !3601)
!3605 = !DILocation(line: 417, column: 23, scope: !3531)
!3606 = !DILocation(line: 417, column: 2, scope: !3531)
!3607 = !DILocation(line: 417, column: 13, scope: !3531)
!3608 = !DILocation(line: 417, column: 21, scope: !3531)
!3609 = !DILocation(line: 418, column: 50, scope: !3531)
!3610 = !DILocation(line: 418, column: 61, scope: !3531)
!3611 = !DILocation(line: 418, column: 48, scope: !3531)
!3612 = !DILocation(line: 418, column: 2, scope: !3531)
!3613 = !DILocation(line: 418, column: 13, scope: !3531)
!3614 = !DILocation(line: 418, column: 24, scope: !3531)
!3615 = !DILocation(line: 419, column: 50, scope: !3531)
!3616 = !DILocation(line: 419, column: 61, scope: !3531)
!3617 = !DILocation(line: 419, column: 48, scope: !3531)
!3618 = !DILocation(line: 419, column: 2, scope: !3531)
!3619 = !DILocation(line: 419, column: 13, scope: !3531)
!3620 = !DILocation(line: 419, column: 24, scope: !3531)
!3621 = !DILocation(line: 420, column: 50, scope: !3531)
!3622 = !DILocation(line: 420, column: 61, scope: !3531)
!3623 = !DILocation(line: 420, column: 48, scope: !3531)
!3624 = !DILocation(line: 420, column: 2, scope: !3531)
!3625 = !DILocation(line: 420, column: 13, scope: !3531)
!3626 = !DILocation(line: 420, column: 24, scope: !3531)
!3627 = !DILocation(line: 425, column: 29, scope: !3531)
!3628 = !DILocation(line: 425, column: 39, scope: !3531)
!3629 = !DILocation(line: 425, column: 37, scope: !3531)
!3630 = !DILocation(line: 425, column: 28, scope: !3531)
!3631 = !DILocation(line: 425, column: 26, scope: !3531)
!3632 = !DILocation(line: 425, column: 10, scope: !3531)
!3633 = !DILocation(line: 426, column: 20, scope: !3531)
!3634 = !DILocation(line: 426, column: 29, scope: !3531)
!3635 = !DILocation(line: 426, column: 12, scope: !3531)
!3636 = !DILocation(line: 426, column: 43, scope: !3531)
!3637 = !DILocation(line: 426, column: 10, scope: !3531)
!3638 = !DILocation(line: 427, column: 28, scope: !3531)
!3639 = !DILocation(line: 427, column: 2, scope: !3531)
!3640 = !DILocation(line: 427, column: 13, scope: !3531)
!3641 = !DILocation(line: 427, column: 18, scope: !3531)
!3642 = !DILocation(line: 427, column: 26, scope: !3531)
!3643 = !DILocation(line: 429, column: 2, scope: !3531)
!3644 = !DILocation(line: 430, column: 1, scope: !3531)
!3645 = distinct !DISubprogram(name: "qoriq_read_le", scope: !138, file: !138, line: 175, type: !2284, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3646 = !DILocalVariable(name: "addr", arg: 1, scope: !3645, file: !138, line: 175, type: !2286)
!3647 = !DILocation(line: 175, column: 51, scope: !3645)
!3648 = !DILocation(line: 177, column: 18, scope: !3645)
!3649 = !DILocation(line: 177, column: 9, scope: !3645)
!3650 = !DILocation(line: 177, column: 2, scope: !3645)
!3651 = distinct !DISubprogram(name: "qoriq_write_le", scope: !138, file: !138, line: 180, type: !2289, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3652 = !DILocalVariable(name: "addr", arg: 1, scope: !3651, file: !138, line: 180, type: !2286)
!3653 = !DILocation(line: 180, column: 53, scope: !3651)
!3654 = !DILocalVariable(name: "val", arg: 2, scope: !3651, file: !138, line: 180, type: !149)
!3655 = !DILocation(line: 180, column: 63, scope: !3651)
!3656 = !DILocation(line: 182, column: 12, scope: !3651)
!3657 = !DILocation(line: 182, column: 17, scope: !3651)
!3658 = !DILocation(line: 182, column: 2, scope: !3651)
!3659 = !DILocation(line: 183, column: 1, scope: !3651)
!3660 = distinct !DISubprogram(name: "qoriq_read_be", scope: !138, file: !138, line: 165, type: !2284, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3661 = !DILocalVariable(name: "addr", arg: 1, scope: !3660, file: !138, line: 165, type: !2286)
!3662 = !DILocation(line: 165, column: 51, scope: !3660)
!3663 = !DILocation(line: 167, column: 20, scope: !3660)
!3664 = !DILocation(line: 167, column: 9, scope: !3660)
!3665 = !DILocation(line: 167, column: 2, scope: !3660)
!3666 = distinct !DISubprogram(name: "qoriq_write_be", scope: !138, file: !138, line: 170, type: !2289, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3667 = !DILocalVariable(name: "addr", arg: 1, scope: !3666, file: !138, line: 170, type: !2286)
!3668 = !DILocation(line: 170, column: 53, scope: !3666)
!3669 = !DILocalVariable(name: "val", arg: 2, scope: !3666, file: !138, line: 170, type: !149)
!3670 = !DILocation(line: 170, column: 63, scope: !3666)
!3671 = !DILocation(line: 172, column: 14, scope: !3666)
!3672 = !DILocation(line: 172, column: 19, scope: !3666)
!3673 = !DILocation(line: 172, column: 2, scope: !3666)
!3674 = !DILocation(line: 173, column: 1, scope: !3666)
!3675 = distinct !DISubprogram(name: "set_alarm", scope: !3, file: !3, line: 52, type: !2866, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3676 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3675, file: !3, line: 52, type: !136)
!3677 = !DILocation(line: 52, column: 41, scope: !3675)
!3678 = !DILocalVariable(name: "regs", scope: !3675, file: !3, line: 54, type: !2388)
!3679 = !DILocation(line: 54, column: 30, scope: !3675)
!3680 = !DILocation(line: 54, column: 38, scope: !3675)
!3681 = !DILocation(line: 54, column: 49, scope: !3675)
!3682 = !DILocalVariable(name: "ns", scope: !3675, file: !3, line: 55, type: !131)
!3683 = !DILocation(line: 55, column: 6, scope: !3675)
!3684 = !DILocalVariable(name: "lo", scope: !3675, file: !3, line: 56, type: !149)
!3685 = !DILocation(line: 56, column: 6, scope: !3675)
!3686 = !DILocalVariable(name: "hi", scope: !3675, file: !3, line: 56, type: !149)
!3687 = !DILocation(line: 56, column: 10, scope: !3675)
!3688 = !DILocation(line: 58, column: 20, scope: !3675)
!3689 = !DILocation(line: 58, column: 7, scope: !3675)
!3690 = !DILocation(line: 58, column: 31, scope: !3675)
!3691 = !DILocation(line: 58, column: 5, scope: !3675)
!3692 = !DILocation(line: 59, column: 15, scope: !3675)
!3693 = !DILocation(line: 59, column: 7, scope: !3675)
!3694 = !DILocation(line: 59, column: 33, scope: !3675)
!3695 = !DILocation(line: 59, column: 5, scope: !3675)
!3696 = !DILocation(line: 60, column: 8, scope: !3675)
!3697 = !DILocation(line: 60, column: 19, scope: !3675)
!3698 = !DILocation(line: 60, column: 5, scope: !3675)
!3699 = !DILocation(line: 61, column: 7, scope: !3675)
!3700 = !DILocation(line: 61, column: 10, scope: !3675)
!3701 = !DILocation(line: 61, column: 5, scope: !3675)
!3702 = !DILocation(line: 62, column: 7, scope: !3675)
!3703 = !DILocation(line: 62, column: 10, scope: !3675)
!3704 = !DILocation(line: 62, column: 5, scope: !3675)
!3705 = !DILocation(line: 63, column: 2, scope: !3675)
!3706 = !DILocation(line: 63, column: 13, scope: !3675)
!3707 = !DILocation(line: 63, column: 20, scope: !3675)
!3708 = !DILocation(line: 63, column: 26, scope: !3675)
!3709 = !DILocation(line: 63, column: 38, scope: !3675)
!3710 = !DILocation(line: 63, column: 52, scope: !3675)
!3711 = !DILocation(line: 64, column: 2, scope: !3675)
!3712 = !DILocation(line: 64, column: 13, scope: !3675)
!3713 = !DILocation(line: 64, column: 20, scope: !3675)
!3714 = !DILocation(line: 64, column: 26, scope: !3675)
!3715 = !DILocation(line: 64, column: 38, scope: !3675)
!3716 = !DILocation(line: 64, column: 52, scope: !3675)
!3717 = !DILocation(line: 65, column: 1, scope: !3675)
!3718 = distinct !DISubprogram(name: "IS_ERR", scope: !3719, file: !3719, line: 34, type: !3720, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3719 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!1200, !1330}
!3722 = !DILocalVariable(name: "ptr", arg: 1, scope: !3718, file: !3719, line: 34, type: !1330)
!3723 = !DILocation(line: 34, column: 60, scope: !3718)
!3724 = !DILocation(line: 36, column: 9, scope: !3718)
!3725 = !DILocation(line: 36, column: 2, scope: !3718)
!3726 = distinct !DISubprogram(name: "PTR_ERR", scope: !3719, file: !3719, line: 29, type: !3727, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!250, !1330}
!3729 = !DILocalVariable(name: "ptr", arg: 1, scope: !3726, file: !3719, line: 29, type: !1330)
!3730 = !DILocation(line: 29, column: 61, scope: !3726)
!3731 = !DILocation(line: 31, column: 16, scope: !3726)
!3732 = !DILocation(line: 31, column: 9, scope: !3726)
!3733 = !DILocation(line: 31, column: 2, scope: !3726)
!3734 = distinct !DISubprogram(name: "ptp_qoriq_create_debugfs", scope: !138, file: !138, line: 201, type: !2866, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3735 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3734, file: !138, line: 201, type: !136)
!3736 = !DILocation(line: 201, column: 63, scope: !3734)
!3737 = !DILocation(line: 202, column: 3, scope: !3734)
!3738 = distinct !DISubprogram(name: "ptp_qoriq_free", scope: !3, file: !3, line: 539, type: !2866, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3739 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3738, file: !3, line: 539, type: !136)
!3740 = !DILocation(line: 539, column: 39, scope: !3738)
!3741 = !DILocalVariable(name: "regs", scope: !3738, file: !3, line: 541, type: !2388)
!3742 = !DILocation(line: 541, column: 30, scope: !3738)
!3743 = !DILocation(line: 541, column: 38, scope: !3738)
!3744 = !DILocation(line: 541, column: 49, scope: !3738)
!3745 = !DILocation(line: 543, column: 2, scope: !3738)
!3746 = !DILocation(line: 543, column: 13, scope: !3738)
!3747 = !DILocation(line: 543, column: 20, scope: !3738)
!3748 = !DILocation(line: 543, column: 26, scope: !3738)
!3749 = !DILocation(line: 543, column: 37, scope: !3738)
!3750 = !DILocation(line: 544, column: 2, scope: !3738)
!3751 = !DILocation(line: 544, column: 13, scope: !3738)
!3752 = !DILocation(line: 544, column: 20, scope: !3738)
!3753 = !DILocation(line: 544, column: 26, scope: !3738)
!3754 = !DILocation(line: 544, column: 37, scope: !3738)
!3755 = !DILocation(line: 546, column: 27, scope: !3738)
!3756 = !DILocation(line: 546, column: 2, scope: !3738)
!3757 = !DILocation(line: 547, column: 23, scope: !3738)
!3758 = !DILocation(line: 547, column: 34, scope: !3738)
!3759 = !DILocation(line: 547, column: 2, scope: !3738)
!3760 = !DILocation(line: 548, column: 10, scope: !3738)
!3761 = !DILocation(line: 548, column: 21, scope: !3738)
!3762 = !DILocation(line: 548, column: 2, scope: !3738)
!3763 = !DILocation(line: 549, column: 11, scope: !3738)
!3764 = !DILocation(line: 549, column: 22, scope: !3738)
!3765 = !DILocation(line: 549, column: 27, scope: !3738)
!3766 = !DILocation(line: 549, column: 2, scope: !3738)
!3767 = !DILocation(line: 550, column: 1, scope: !3738)
!3768 = distinct !DISubprogram(name: "ptp_qoriq_remove_debugfs", scope: !138, file: !138, line: 203, type: !2866, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3769 = !DILocalVariable(name: "ptp_qoriq", arg: 1, scope: !3768, file: !138, line: 203, type: !136)
!3770 = !DILocation(line: 203, column: 63, scope: !3768)
!3771 = !DILocation(line: 204, column: 3, scope: !3768)
!3772 = distinct !DISubprogram(name: "ptp_qoriq_driver_init", scope: !3, file: !3, line: 640, type: !3773, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!224}
!3775 = !DILocation(line: 640, column: 1, scope: !3772)
!3776 = distinct !DISubprogram(name: "ptp_qoriq_driver_exit", scope: !3, file: !3, line: 640, type: !2297, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3777 = !DILocation(line: 640, column: 1, scope: !3776)
!3778 = distinct !DISubprogram(name: "div_u64_rem", scope: !2685, file: !2685, line: 25, type: !3779, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!131, !131, !149, !838}
!3781 = !DILocalVariable(name: "dividend", arg: 1, scope: !3778, file: !2685, line: 25, type: !131)
!3782 = !DILocation(line: 25, column: 35, scope: !3778)
!3783 = !DILocalVariable(name: "divisor", arg: 2, scope: !3778, file: !2685, line: 25, type: !149)
!3784 = !DILocation(line: 25, column: 49, scope: !3778)
!3785 = !DILocalVariable(name: "remainder", arg: 3, scope: !3778, file: !2685, line: 25, type: !838)
!3786 = !DILocation(line: 25, column: 63, scope: !3778)
!3787 = !DILocation(line: 27, column: 15, scope: !3778)
!3788 = !DILocation(line: 27, column: 26, scope: !3778)
!3789 = !DILocation(line: 27, column: 24, scope: !3778)
!3790 = !DILocation(line: 27, column: 3, scope: !3778)
!3791 = !DILocation(line: 27, column: 13, scope: !3778)
!3792 = !DILocation(line: 28, column: 9, scope: !3778)
!3793 = !DILocation(line: 28, column: 20, scope: !3778)
!3794 = !DILocation(line: 28, column: 18, scope: !3778)
!3795 = !DILocation(line: 28, column: 2, scope: !3778)
!3796 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2788, file: !2788, line: 646, type: !2789, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3797 = !DILocalVariable(name: "__ret", scope: !3798, file: !2788, line: 648, type: !327)
!3798 = distinct !DILexicalBlock(scope: !3796, file: !2788, line: 648, column: 9)
!3799 = !DILocation(line: 648, column: 9, scope: !3798)
!3800 = !DILocalVariable(name: "__edi", scope: !3798, file: !2788, line: 648, type: !327)
!3801 = !DILocalVariable(name: "__esi", scope: !3798, file: !2788, line: 648, type: !327)
!3802 = !DILocalVariable(name: "__edx", scope: !3798, file: !2788, line: 648, type: !327)
!3803 = !DILocalVariable(name: "__ecx", scope: !3798, file: !2788, line: 648, type: !327)
!3804 = !DILocalVariable(name: "__eax", scope: !3798, file: !2788, line: 648, type: !327)
!3805 = !DILocation(line: 648, column: 9, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !2788, line: 648, column: 9)
!3807 = distinct !DILexicalBlock(scope: !3798, file: !2788, line: 648, column: 9)
!3808 = !{i32 -2145759363, i32 -2145757048, i32 -2145756814, i32 -2145756763, i32 -2145756735, i32 -2145756710, i32 -2145757026, i32 -2145757013, i32 -2145756575, i32 -2145756456, i32 -2145756921, i32 -2145756894, i32 -2145756866, i32 -2145756836}
!3809 = !DILocalVariable(name: "__mask", scope: !3810, file: !2788, line: 648, type: !327)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !2788, line: 648, column: 9)
!3811 = !DILocation(line: 648, column: 9, scope: !3810)
!3812 = !DILocation(line: 648, column: 9, scope: !3807)
!3813 = !DILocation(line: 648, column: 2, scope: !3796)
!3814 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2788, file: !2788, line: 656, type: !2297, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3815 = !DILocalVariable(name: "__edi", scope: !3816, file: !2788, line: 658, type: !327)
!3816 = distinct !DILexicalBlock(scope: !3814, file: !2788, line: 658, column: 2)
!3817 = !DILocation(line: 658, column: 2, scope: !3816)
!3818 = !DILocalVariable(name: "__esi", scope: !3816, file: !2788, line: 658, type: !327)
!3819 = !DILocalVariable(name: "__edx", scope: !3816, file: !2788, line: 658, type: !327)
!3820 = !DILocalVariable(name: "__ecx", scope: !3816, file: !2788, line: 658, type: !327)
!3821 = !DILocalVariable(name: "__eax", scope: !3816, file: !2788, line: 658, type: !327)
!3822 = !{i32 -2145752269, i32 -2145751537, i32 -2145751303, i32 -2145751252, i32 -2145751224, i32 -2145751199, i32 -2145751515, i32 -2145751502, i32 -2145751064, i32 -2145750945, i32 -2145751410, i32 -2145751383, i32 -2145751355, i32 -2145751325}
!3823 = !DILocation(line: 659, column: 1, scope: !3814)
!3824 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2788, file: !2788, line: 651, type: !3825, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !327}
!3827 = !DILocalVariable(name: "f", arg: 1, scope: !3824, file: !2788, line: 651, type: !327)
!3828 = !DILocation(line: 651, column: 65, scope: !3824)
!3829 = !DILocalVariable(name: "__edi", scope: !3830, file: !2788, line: 653, type: !327)
!3830 = distinct !DILexicalBlock(scope: !3824, file: !2788, line: 653, column: 2)
!3831 = !DILocation(line: 653, column: 2, scope: !3830)
!3832 = !DILocalVariable(name: "__esi", scope: !3830, file: !2788, line: 653, type: !327)
!3833 = !DILocalVariable(name: "__edx", scope: !3830, file: !2788, line: 653, type: !327)
!3834 = !DILocalVariable(name: "__ecx", scope: !3830, file: !2788, line: 653, type: !327)
!3835 = !DILocalVariable(name: "__eax", scope: !3830, file: !2788, line: 653, type: !327)
!3836 = !{i32 -2145754896, i32 -2145754146, i32 -2145753912, i32 -2145753861, i32 -2145753833, i32 -2145753808, i32 -2145754124, i32 -2145754111, i32 -2145753673, i32 -2145753554, i32 -2145754019, i32 -2145753992, i32 -2145753964, i32 -2145753934}
!3837 = !DILocation(line: 654, column: 1, scope: !3824)
!3838 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2108, file: !2108, line: 494, type: !3839, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!224, !3504, !324, !838, !429}
!3841 = !DILocalVariable(name: "np", arg: 1, scope: !3838, file: !2108, line: 494, type: !3504)
!3842 = !DILocation(line: 494, column: 72, scope: !3838)
!3843 = !DILocalVariable(name: "propname", arg: 2, scope: !3838, file: !2108, line: 495, type: !324)
!3844 = !DILocation(line: 495, column: 23, scope: !3838)
!3845 = !DILocalVariable(name: "out_values", arg: 3, scope: !3838, file: !2108, line: 496, type: !838)
!3846 = !DILocation(line: 496, column: 16, scope: !3838)
!3847 = !DILocalVariable(name: "sz", arg: 4, scope: !3838, file: !2108, line: 496, type: !429)
!3848 = !DILocation(line: 496, column: 35, scope: !3838)
!3849 = !DILocalVariable(name: "ret", scope: !3838, file: !2108, line: 498, type: !224)
!3850 = !DILocation(line: 498, column: 6, scope: !3838)
!3851 = !DILocation(line: 498, column: 48, scope: !3838)
!3852 = !DILocation(line: 498, column: 52, scope: !3838)
!3853 = !DILocation(line: 498, column: 62, scope: !3838)
!3854 = !DILocation(line: 499, column: 13, scope: !3838)
!3855 = !DILocation(line: 498, column: 12, scope: !3838)
!3856 = !DILocation(line: 500, column: 6, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3838, file: !2108, line: 500, column: 6)
!3858 = !DILocation(line: 500, column: 10, scope: !3857)
!3859 = !DILocation(line: 500, column: 6, scope: !3838)
!3860 = !DILocation(line: 501, column: 3, scope: !3857)
!3861 = !DILocation(line: 503, column: 10, scope: !3857)
!3862 = !DILocation(line: 503, column: 3, scope: !3857)
!3863 = !DILocation(line: 504, column: 1, scope: !3838)
!3864 = distinct !DISubprogram(name: "ptp_qoriq_nominal_freq", scope: !3, file: !3, line: 341, type: !3865, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!149, !149}
!3867 = !DILocalVariable(name: "clk_src", arg: 1, scope: !3864, file: !3, line: 341, type: !149)
!3868 = !DILocation(line: 341, column: 39, scope: !3864)
!3869 = !DILocalVariable(name: "remainder", scope: !3864, file: !3, line: 343, type: !149)
!3870 = !DILocation(line: 343, column: 6, scope: !3864)
!3871 = !DILocation(line: 345, column: 10, scope: !3864)
!3872 = !DILocation(line: 346, column: 14, scope: !3864)
!3873 = !DILocation(line: 346, column: 22, scope: !3864)
!3874 = !DILocation(line: 346, column: 12, scope: !3864)
!3875 = !DILocation(line: 347, column: 6, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 347, column: 6)
!3877 = !DILocation(line: 347, column: 6, scope: !3864)
!3878 = !DILocation(line: 348, column: 14, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 347, column: 17)
!3880 = !DILocation(line: 348, column: 11, scope: !3879)
!3881 = !DILocation(line: 349, column: 11, scope: !3879)
!3882 = !DILocation(line: 350, column: 2, scope: !3879)
!3883 = !DILocation(line: 352, column: 2, scope: !3864)
!3884 = !DILocation(line: 353, column: 11, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 352, column: 5)
!3886 = !DILocation(line: 355, column: 2, scope: !3885)
!3887 = !DILocation(line: 355, column: 18, scope: !3864)
!3888 = !DILocation(line: 355, column: 16, scope: !3864)
!3889 = distinct !{!3889, !3883, !3890}
!3890 = !DILocation(line: 355, column: 25, scope: !3864)
!3891 = !DILocation(line: 357, column: 9, scope: !3864)
!3892 = !DILocation(line: 357, column: 17, scope: !3864)
!3893 = !DILocation(line: 357, column: 2, scope: !3864)
!3894 = distinct !DISubprogram(name: "ptp_qoriq_probe", scope: !3, file: !3, line: 553, type: !2326, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!3895 = !DILocalVariable(name: "dev", arg: 1, scope: !3894, file: !3, line: 553, type: !2328)
!3896 = !DILocation(line: 553, column: 52, scope: !3894)
!3897 = !DILocalVariable(name: "ptp_qoriq", scope: !3894, file: !3, line: 555, type: !136)
!3898 = !DILocation(line: 555, column: 20, scope: !3894)
!3899 = !DILocalVariable(name: "err", scope: !3894, file: !3, line: 556, type: !224)
!3900 = !DILocation(line: 556, column: 6, scope: !3894)
!3901 = !DILocalVariable(name: "base", scope: !3894, file: !3, line: 557, type: !135)
!3902 = !DILocation(line: 557, column: 16, scope: !3894)
!3903 = !DILocation(line: 559, column: 14, scope: !3894)
!3904 = !DILocation(line: 559, column: 12, scope: !3894)
!3905 = !DILocation(line: 560, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 560, column: 6)
!3907 = !DILocation(line: 560, column: 6, scope: !3894)
!3908 = !DILocation(line: 561, column: 3, scope: !3906)
!3909 = !DILocation(line: 563, column: 20, scope: !3894)
!3910 = !DILocation(line: 563, column: 25, scope: !3894)
!3911 = !DILocation(line: 563, column: 2, scope: !3894)
!3912 = !DILocation(line: 563, column: 13, scope: !3894)
!3913 = !DILocation(line: 563, column: 17, scope: !3894)
!3914 = !DILocation(line: 565, column: 6, scope: !3894)
!3915 = !DILocation(line: 567, column: 36, scope: !3894)
!3916 = !DILocation(line: 567, column: 19, scope: !3894)
!3917 = !DILocation(line: 567, column: 2, scope: !3894)
!3918 = !DILocation(line: 567, column: 13, scope: !3894)
!3919 = !DILocation(line: 567, column: 17, scope: !3894)
!3920 = !DILocation(line: 568, column: 6, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 568, column: 6)
!3922 = !DILocation(line: 568, column: 17, scope: !3921)
!3923 = !DILocation(line: 568, column: 21, scope: !3921)
!3924 = !DILocation(line: 568, column: 6, scope: !3894)
!3925 = !DILocation(line: 569, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 568, column: 26)
!3927 = !DILocation(line: 570, column: 3, scope: !3926)
!3928 = !DILocation(line: 572, column: 18, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 572, column: 6)
!3930 = !DILocation(line: 572, column: 29, scope: !3929)
!3931 = !DILocation(line: 573, column: 12, scope: !3929)
!3932 = !DILocation(line: 572, column: 6, scope: !3929)
!3933 = !DILocation(line: 572, column: 6, scope: !3894)
!3934 = !DILocation(line: 574, column: 3, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 573, column: 24)
!3936 = !DILocation(line: 575, column: 3, scope: !3935)
!3937 = !DILocation(line: 578, column: 42, scope: !3894)
!3938 = !DILocation(line: 578, column: 20, scope: !3894)
!3939 = !DILocation(line: 578, column: 2, scope: !3894)
!3940 = !DILocation(line: 578, column: 13, scope: !3894)
!3941 = !DILocation(line: 578, column: 18, scope: !3894)
!3942 = !DILocation(line: 579, column: 7, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 579, column: 6)
!3944 = !DILocation(line: 579, column: 18, scope: !3943)
!3945 = !DILocation(line: 579, column: 6, scope: !3894)
!3946 = !DILocation(line: 580, column: 3, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 579, column: 24)
!3948 = !DILocation(line: 581, column: 3, scope: !3947)
!3949 = !DILocation(line: 583, column: 40, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 583, column: 6)
!3951 = !DILocation(line: 583, column: 51, scope: !3950)
!3952 = !DILocation(line: 583, column: 6, scope: !3950)
!3953 = !DILocation(line: 583, column: 6, scope: !3894)
!3954 = !DILocation(line: 584, column: 3, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 583, column: 58)
!3956 = !DILocation(line: 585, column: 3, scope: !3955)
!3957 = !DILocation(line: 588, column: 17, scope: !3894)
!3958 = !DILocation(line: 588, column: 28, scope: !3894)
!3959 = !DILocation(line: 588, column: 34, scope: !3894)
!3960 = !DILocation(line: 589, column: 24, scope: !3894)
!3961 = !DILocation(line: 589, column: 35, scope: !3894)
!3962 = !DILocation(line: 589, column: 10, scope: !3894)
!3963 = !DILocation(line: 588, column: 9, scope: !3894)
!3964 = !DILocation(line: 588, column: 7, scope: !3894)
!3965 = !DILocation(line: 590, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 590, column: 6)
!3967 = !DILocation(line: 590, column: 6, scope: !3894)
!3968 = !DILocation(line: 591, column: 3, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 590, column: 13)
!3970 = !DILocation(line: 592, column: 3, scope: !3969)
!3971 = !DILocation(line: 595, column: 23, scope: !3894)
!3972 = !DILocation(line: 595, column: 34, scope: !3894)
!3973 = !DILocation(line: 595, column: 8, scope: !3894)
!3974 = !DILocation(line: 595, column: 6, scope: !3894)
!3975 = !DILocation(line: 596, column: 6, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 596, column: 6)
!3977 = !DILocation(line: 596, column: 6, scope: !3894)
!3978 = !DILocation(line: 597, column: 3, scope: !3976)
!3979 = !DILocation(line: 599, column: 23, scope: !3894)
!3980 = !DILocation(line: 599, column: 28, scope: !3894)
!3981 = !DILocation(line: 599, column: 2, scope: !3894)
!3982 = !DILocation(line: 600, column: 2, scope: !3894)
!3983 = !DILabel(scope: !3894, name: "no_clock", file: !3, line: 602)
!3984 = !DILocation(line: 602, column: 1, scope: !3894)
!3985 = !DILocation(line: 603, column: 10, scope: !3894)
!3986 = !DILocation(line: 603, column: 21, scope: !3894)
!3987 = !DILocation(line: 603, column: 2, scope: !3894)
!3988 = !DILabel(scope: !3894, name: "no_ioremap", file: !3, line: 604)
!3989 = !DILocation(line: 604, column: 1, scope: !3894)
!3990 = !DILocation(line: 605, column: 19, scope: !3894)
!3991 = !DILocation(line: 605, column: 30, scope: !3894)
!3992 = !DILocation(line: 605, column: 2, scope: !3894)
!3993 = !DILabel(scope: !3894, name: "no_resource", file: !3, line: 606)
!3994 = !DILocation(line: 606, column: 1, scope: !3894)
!3995 = !DILocation(line: 607, column: 11, scope: !3894)
!3996 = !DILocation(line: 607, column: 22, scope: !3894)
!3997 = !DILocation(line: 607, column: 27, scope: !3894)
!3998 = !DILocation(line: 607, column: 2, scope: !3894)
!3999 = !DILabel(scope: !3894, name: "no_node", file: !3, line: 608)
!4000 = !DILocation(line: 608, column: 1, scope: !3894)
!4001 = !DILocation(line: 609, column: 8, scope: !3894)
!4002 = !DILocation(line: 609, column: 2, scope: !3894)
!4003 = !DILabel(scope: !3894, name: "no_memory", file: !3, line: 610)
!4004 = !DILocation(line: 610, column: 1, scope: !3894)
!4005 = !DILocation(line: 611, column: 9, scope: !3894)
!4006 = !DILocation(line: 611, column: 2, scope: !3894)
!4007 = !DILocation(line: 612, column: 1, scope: !3894)
!4008 = distinct !DISubprogram(name: "ptp_qoriq_remove", scope: !3, file: !3, line: 614, type: !2326, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4009 = !DILocalVariable(name: "dev", arg: 1, scope: !4008, file: !3, line: 614, type: !2328)
!4010 = !DILocation(line: 614, column: 53, scope: !4008)
!4011 = !DILocalVariable(name: "ptp_qoriq", scope: !4008, file: !3, line: 616, type: !136)
!4012 = !DILocation(line: 616, column: 20, scope: !4008)
!4013 = !DILocation(line: 616, column: 53, scope: !4008)
!4014 = !DILocation(line: 616, column: 32, scope: !4008)
!4015 = !DILocation(line: 618, column: 17, scope: !4008)
!4016 = !DILocation(line: 618, column: 2, scope: !4008)
!4017 = !DILocation(line: 619, column: 19, scope: !4008)
!4018 = !DILocation(line: 619, column: 30, scope: !4008)
!4019 = !DILocation(line: 619, column: 2, scope: !4008)
!4020 = !DILocation(line: 620, column: 8, scope: !4008)
!4021 = !DILocation(line: 620, column: 2, scope: !4008)
!4022 = !DILocation(line: 621, column: 2, scope: !4008)
!4023 = distinct !DISubprogram(name: "kzalloc", scope: !124, file: !124, line: 662, type: !4024, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!135, !429, !1670}
!4026 = !DILocalVariable(name: "s", arg: 1, scope: !4027, file: !124, line: 445, type: !1250)
!4027 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !124, file: !124, line: 445, type: !4028, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!135, !1250, !1670, !429}
!4030 = !DILocation(line: 445, column: 72, scope: !4027, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 552, column: 10, scope: !4032, inlinedAt: !4035)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !124, line: 540, column: 34)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !124, line: 540, column: 6)
!4034 = distinct !DISubprogram(name: "kmalloc", scope: !124, file: !124, line: 538, type: !4024, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4035 = distinct !DILocation(line: 664, column: 9, scope: !4023)
!4036 = !DILocalVariable(name: "flags", arg: 2, scope: !4027, file: !124, line: 446, type: !1670)
!4037 = !DILocation(line: 446, column: 9, scope: !4027, inlinedAt: !4031)
!4038 = !DILocalVariable(name: "size", arg: 3, scope: !4027, file: !124, line: 446, type: !429)
!4039 = !DILocation(line: 446, column: 23, scope: !4027, inlinedAt: !4031)
!4040 = !DILocalVariable(name: "ret", scope: !4027, file: !124, line: 448, type: !135)
!4041 = !DILocation(line: 448, column: 8, scope: !4027, inlinedAt: !4031)
!4042 = !DILocalVariable(name: "flags", arg: 1, scope: !4043, file: !124, line: 318, type: !1670)
!4043 = distinct !DISubprogram(name: "kmalloc_type", scope: !124, file: !124, line: 318, type: !4044, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!123, !1670}
!4046 = !DILocation(line: 318, column: 67, scope: !4043, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 553, column: 20, scope: !4032, inlinedAt: !4035)
!4048 = !DILocalVariable(name: "size", arg: 1, scope: !4049, file: !124, line: 346, type: !429)
!4049 = distinct !DISubprogram(name: "kmalloc_index", scope: !124, file: !124, line: 346, type: !4050, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!18, !429}
!4052 = !DILocation(line: 346, column: 58, scope: !4049, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 547, column: 11, scope: !4032, inlinedAt: !4035)
!4054 = !DILocalVariable(name: "size", arg: 1, scope: !4055, file: !124, line: 472, type: !429)
!4055 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !124, file: !124, line: 472, type: !4056, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!135, !429, !1670, !18}
!4058 = !DILocation(line: 472, column: 28, scope: !4055, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 481, column: 9, scope: !4060, inlinedAt: !4061)
!4060 = distinct !DISubprogram(name: "kmalloc_large", scope: !124, file: !124, line: 478, type: !4024, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4061 = distinct !DILocation(line: 545, column: 11, scope: !4062, inlinedAt: !4035)
!4062 = distinct !DILexicalBlock(scope: !4032, file: !124, line: 544, column: 7)
!4063 = !DILocalVariable(name: "flags", arg: 2, scope: !4055, file: !124, line: 472, type: !1670)
!4064 = !DILocation(line: 472, column: 40, scope: !4055, inlinedAt: !4059)
!4065 = !DILocalVariable(name: "order", arg: 3, scope: !4055, file: !124, line: 472, type: !18)
!4066 = !DILocation(line: 472, column: 60, scope: !4055, inlinedAt: !4059)
!4067 = !DILocalVariable(name: "size", arg: 1, scope: !4060, file: !124, line: 478, type: !429)
!4068 = !DILocation(line: 478, column: 51, scope: !4060, inlinedAt: !4061)
!4069 = !DILocalVariable(name: "flags", arg: 2, scope: !4060, file: !124, line: 478, type: !1670)
!4070 = !DILocation(line: 478, column: 63, scope: !4060, inlinedAt: !4061)
!4071 = !DILocalVariable(name: "order", scope: !4060, file: !124, line: 480, type: !18)
!4072 = !DILocation(line: 480, column: 15, scope: !4060, inlinedAt: !4061)
!4073 = !DILocalVariable(name: "size", arg: 1, scope: !4034, file: !124, line: 538, type: !429)
!4074 = !DILocation(line: 538, column: 45, scope: !4034, inlinedAt: !4035)
!4075 = !DILocalVariable(name: "flags", arg: 2, scope: !4034, file: !124, line: 538, type: !1670)
!4076 = !DILocation(line: 538, column: 57, scope: !4034, inlinedAt: !4035)
!4077 = !DILocalVariable(name: "index", scope: !4032, file: !124, line: 542, type: !18)
!4078 = !DILocation(line: 542, column: 16, scope: !4032, inlinedAt: !4035)
!4079 = !DILocalVariable(name: "size", arg: 1, scope: !4023, file: !124, line: 662, type: !429)
!4080 = !DILocation(line: 662, column: 36, scope: !4023)
!4081 = !DILocalVariable(name: "flags", arg: 2, scope: !4023, file: !124, line: 662, type: !1670)
!4082 = !DILocation(line: 662, column: 48, scope: !4023)
!4083 = !DILocation(line: 664, column: 17, scope: !4023)
!4084 = !DILocation(line: 664, column: 23, scope: !4023)
!4085 = !DILocation(line: 664, column: 29, scope: !4023)
!4086 = !DILocation(line: 540, column: 27, scope: !4033, inlinedAt: !4035)
!4087 = !DILocation(line: 540, column: 6, scope: !4033, inlinedAt: !4035)
!4088 = !DILocation(line: 540, column: 6, scope: !4034, inlinedAt: !4035)
!4089 = !DILocation(line: 544, column: 7, scope: !4062, inlinedAt: !4035)
!4090 = !DILocation(line: 544, column: 12, scope: !4062, inlinedAt: !4035)
!4091 = !DILocation(line: 544, column: 7, scope: !4032, inlinedAt: !4035)
!4092 = !DILocation(line: 545, column: 25, scope: !4062, inlinedAt: !4035)
!4093 = !DILocation(line: 545, column: 31, scope: !4062, inlinedAt: !4035)
!4094 = !DILocation(line: 480, column: 33, scope: !4060, inlinedAt: !4061)
!4095 = !DILocation(line: 480, column: 23, scope: !4060, inlinedAt: !4061)
!4096 = !DILocation(line: 481, column: 29, scope: !4060, inlinedAt: !4061)
!4097 = !DILocation(line: 481, column: 35, scope: !4060, inlinedAt: !4061)
!4098 = !DILocation(line: 481, column: 42, scope: !4060, inlinedAt: !4061)
!4099 = !DILocation(line: 474, column: 23, scope: !4055, inlinedAt: !4059)
!4100 = !DILocation(line: 474, column: 29, scope: !4055, inlinedAt: !4059)
!4101 = !DILocation(line: 474, column: 36, scope: !4055, inlinedAt: !4059)
!4102 = !DILocation(line: 474, column: 9, scope: !4055, inlinedAt: !4059)
!4103 = !DILocation(line: 545, column: 4, scope: !4062, inlinedAt: !4035)
!4104 = !DILocation(line: 547, column: 25, scope: !4032, inlinedAt: !4035)
!4105 = !DILocation(line: 348, column: 7, scope: !4106, inlinedAt: !4053)
!4106 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 348, column: 6)
!4107 = !DILocation(line: 348, column: 6, scope: !4049, inlinedAt: !4053)
!4108 = !DILocation(line: 349, column: 3, scope: !4106, inlinedAt: !4053)
!4109 = !DILocation(line: 351, column: 6, scope: !4110, inlinedAt: !4053)
!4110 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 351, column: 6)
!4111 = !DILocation(line: 351, column: 11, scope: !4110, inlinedAt: !4053)
!4112 = !DILocation(line: 351, column: 6, scope: !4049, inlinedAt: !4053)
!4113 = !DILocation(line: 352, column: 3, scope: !4110, inlinedAt: !4053)
!4114 = !DILocation(line: 354, column: 32, scope: !4115, inlinedAt: !4053)
!4115 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 354, column: 6)
!4116 = !DILocation(line: 354, column: 37, scope: !4115, inlinedAt: !4053)
!4117 = !DILocation(line: 354, column: 42, scope: !4115, inlinedAt: !4053)
!4118 = !DILocation(line: 354, column: 45, scope: !4115, inlinedAt: !4053)
!4119 = !DILocation(line: 354, column: 50, scope: !4115, inlinedAt: !4053)
!4120 = !DILocation(line: 354, column: 6, scope: !4049, inlinedAt: !4053)
!4121 = !DILocation(line: 355, column: 3, scope: !4115, inlinedAt: !4053)
!4122 = !DILocation(line: 356, column: 32, scope: !4123, inlinedAt: !4053)
!4123 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 356, column: 6)
!4124 = !DILocation(line: 356, column: 37, scope: !4123, inlinedAt: !4053)
!4125 = !DILocation(line: 356, column: 43, scope: !4123, inlinedAt: !4053)
!4126 = !DILocation(line: 356, column: 46, scope: !4123, inlinedAt: !4053)
!4127 = !DILocation(line: 356, column: 51, scope: !4123, inlinedAt: !4053)
!4128 = !DILocation(line: 356, column: 6, scope: !4049, inlinedAt: !4053)
!4129 = !DILocation(line: 357, column: 3, scope: !4123, inlinedAt: !4053)
!4130 = !DILocation(line: 358, column: 6, scope: !4131, inlinedAt: !4053)
!4131 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 358, column: 6)
!4132 = !DILocation(line: 358, column: 11, scope: !4131, inlinedAt: !4053)
!4133 = !DILocation(line: 358, column: 6, scope: !4049, inlinedAt: !4053)
!4134 = !DILocation(line: 358, column: 26, scope: !4131, inlinedAt: !4053)
!4135 = !DILocation(line: 359, column: 6, scope: !4136, inlinedAt: !4053)
!4136 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 359, column: 6)
!4137 = !DILocation(line: 359, column: 11, scope: !4136, inlinedAt: !4053)
!4138 = !DILocation(line: 359, column: 6, scope: !4049, inlinedAt: !4053)
!4139 = !DILocation(line: 359, column: 26, scope: !4136, inlinedAt: !4053)
!4140 = !DILocation(line: 360, column: 6, scope: !4141, inlinedAt: !4053)
!4141 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 360, column: 6)
!4142 = !DILocation(line: 360, column: 11, scope: !4141, inlinedAt: !4053)
!4143 = !DILocation(line: 360, column: 6, scope: !4049, inlinedAt: !4053)
!4144 = !DILocation(line: 360, column: 26, scope: !4141, inlinedAt: !4053)
!4145 = !DILocation(line: 361, column: 6, scope: !4146, inlinedAt: !4053)
!4146 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 361, column: 6)
!4147 = !DILocation(line: 361, column: 11, scope: !4146, inlinedAt: !4053)
!4148 = !DILocation(line: 361, column: 6, scope: !4049, inlinedAt: !4053)
!4149 = !DILocation(line: 361, column: 26, scope: !4146, inlinedAt: !4053)
!4150 = !DILocation(line: 362, column: 6, scope: !4151, inlinedAt: !4053)
!4151 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 362, column: 6)
!4152 = !DILocation(line: 362, column: 11, scope: !4151, inlinedAt: !4053)
!4153 = !DILocation(line: 362, column: 6, scope: !4049, inlinedAt: !4053)
!4154 = !DILocation(line: 362, column: 26, scope: !4151, inlinedAt: !4053)
!4155 = !DILocation(line: 363, column: 6, scope: !4156, inlinedAt: !4053)
!4156 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 363, column: 6)
!4157 = !DILocation(line: 363, column: 11, scope: !4156, inlinedAt: !4053)
!4158 = !DILocation(line: 363, column: 6, scope: !4049, inlinedAt: !4053)
!4159 = !DILocation(line: 363, column: 26, scope: !4156, inlinedAt: !4053)
!4160 = !DILocation(line: 364, column: 6, scope: !4161, inlinedAt: !4053)
!4161 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 364, column: 6)
!4162 = !DILocation(line: 364, column: 11, scope: !4161, inlinedAt: !4053)
!4163 = !DILocation(line: 364, column: 6, scope: !4049, inlinedAt: !4053)
!4164 = !DILocation(line: 364, column: 26, scope: !4161, inlinedAt: !4053)
!4165 = !DILocation(line: 365, column: 6, scope: !4166, inlinedAt: !4053)
!4166 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 365, column: 6)
!4167 = !DILocation(line: 365, column: 11, scope: !4166, inlinedAt: !4053)
!4168 = !DILocation(line: 365, column: 6, scope: !4049, inlinedAt: !4053)
!4169 = !DILocation(line: 365, column: 26, scope: !4166, inlinedAt: !4053)
!4170 = !DILocation(line: 366, column: 6, scope: !4171, inlinedAt: !4053)
!4171 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 366, column: 6)
!4172 = !DILocation(line: 366, column: 11, scope: !4171, inlinedAt: !4053)
!4173 = !DILocation(line: 366, column: 6, scope: !4049, inlinedAt: !4053)
!4174 = !DILocation(line: 366, column: 26, scope: !4171, inlinedAt: !4053)
!4175 = !DILocation(line: 367, column: 6, scope: !4176, inlinedAt: !4053)
!4176 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 367, column: 6)
!4177 = !DILocation(line: 367, column: 11, scope: !4176, inlinedAt: !4053)
!4178 = !DILocation(line: 367, column: 6, scope: !4049, inlinedAt: !4053)
!4179 = !DILocation(line: 367, column: 26, scope: !4176, inlinedAt: !4053)
!4180 = !DILocation(line: 368, column: 6, scope: !4181, inlinedAt: !4053)
!4181 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 368, column: 6)
!4182 = !DILocation(line: 368, column: 11, scope: !4181, inlinedAt: !4053)
!4183 = !DILocation(line: 368, column: 6, scope: !4049, inlinedAt: !4053)
!4184 = !DILocation(line: 368, column: 26, scope: !4181, inlinedAt: !4053)
!4185 = !DILocation(line: 369, column: 6, scope: !4186, inlinedAt: !4053)
!4186 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 369, column: 6)
!4187 = !DILocation(line: 369, column: 11, scope: !4186, inlinedAt: !4053)
!4188 = !DILocation(line: 369, column: 6, scope: !4049, inlinedAt: !4053)
!4189 = !DILocation(line: 369, column: 26, scope: !4186, inlinedAt: !4053)
!4190 = !DILocation(line: 370, column: 6, scope: !4191, inlinedAt: !4053)
!4191 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 370, column: 6)
!4192 = !DILocation(line: 370, column: 11, scope: !4191, inlinedAt: !4053)
!4193 = !DILocation(line: 370, column: 6, scope: !4049, inlinedAt: !4053)
!4194 = !DILocation(line: 370, column: 26, scope: !4191, inlinedAt: !4053)
!4195 = !DILocation(line: 371, column: 6, scope: !4196, inlinedAt: !4053)
!4196 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 371, column: 6)
!4197 = !DILocation(line: 371, column: 11, scope: !4196, inlinedAt: !4053)
!4198 = !DILocation(line: 371, column: 6, scope: !4049, inlinedAt: !4053)
!4199 = !DILocation(line: 371, column: 26, scope: !4196, inlinedAt: !4053)
!4200 = !DILocation(line: 372, column: 6, scope: !4201, inlinedAt: !4053)
!4201 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 372, column: 6)
!4202 = !DILocation(line: 372, column: 11, scope: !4201, inlinedAt: !4053)
!4203 = !DILocation(line: 372, column: 6, scope: !4049, inlinedAt: !4053)
!4204 = !DILocation(line: 372, column: 26, scope: !4201, inlinedAt: !4053)
!4205 = !DILocation(line: 373, column: 6, scope: !4206, inlinedAt: !4053)
!4206 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 373, column: 6)
!4207 = !DILocation(line: 373, column: 11, scope: !4206, inlinedAt: !4053)
!4208 = !DILocation(line: 373, column: 6, scope: !4049, inlinedAt: !4053)
!4209 = !DILocation(line: 373, column: 26, scope: !4206, inlinedAt: !4053)
!4210 = !DILocation(line: 374, column: 6, scope: !4211, inlinedAt: !4053)
!4211 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 374, column: 6)
!4212 = !DILocation(line: 374, column: 11, scope: !4211, inlinedAt: !4053)
!4213 = !DILocation(line: 374, column: 6, scope: !4049, inlinedAt: !4053)
!4214 = !DILocation(line: 374, column: 26, scope: !4211, inlinedAt: !4053)
!4215 = !DILocation(line: 375, column: 6, scope: !4216, inlinedAt: !4053)
!4216 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 375, column: 6)
!4217 = !DILocation(line: 375, column: 11, scope: !4216, inlinedAt: !4053)
!4218 = !DILocation(line: 375, column: 6, scope: !4049, inlinedAt: !4053)
!4219 = !DILocation(line: 375, column: 27, scope: !4216, inlinedAt: !4053)
!4220 = !DILocation(line: 376, column: 6, scope: !4221, inlinedAt: !4053)
!4221 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 376, column: 6)
!4222 = !DILocation(line: 376, column: 11, scope: !4221, inlinedAt: !4053)
!4223 = !DILocation(line: 376, column: 6, scope: !4049, inlinedAt: !4053)
!4224 = !DILocation(line: 376, column: 32, scope: !4221, inlinedAt: !4053)
!4225 = !DILocation(line: 377, column: 6, scope: !4226, inlinedAt: !4053)
!4226 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 377, column: 6)
!4227 = !DILocation(line: 377, column: 11, scope: !4226, inlinedAt: !4053)
!4228 = !DILocation(line: 377, column: 6, scope: !4049, inlinedAt: !4053)
!4229 = !DILocation(line: 377, column: 32, scope: !4226, inlinedAt: !4053)
!4230 = !DILocation(line: 378, column: 6, scope: !4231, inlinedAt: !4053)
!4231 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 378, column: 6)
!4232 = !DILocation(line: 378, column: 11, scope: !4231, inlinedAt: !4053)
!4233 = !DILocation(line: 378, column: 6, scope: !4049, inlinedAt: !4053)
!4234 = !DILocation(line: 378, column: 32, scope: !4231, inlinedAt: !4053)
!4235 = !DILocation(line: 379, column: 6, scope: !4236, inlinedAt: !4053)
!4236 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 379, column: 6)
!4237 = !DILocation(line: 379, column: 11, scope: !4236, inlinedAt: !4053)
!4238 = !DILocation(line: 379, column: 6, scope: !4049, inlinedAt: !4053)
!4239 = !DILocation(line: 379, column: 33, scope: !4236, inlinedAt: !4053)
!4240 = !DILocation(line: 380, column: 6, scope: !4241, inlinedAt: !4053)
!4241 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 380, column: 6)
!4242 = !DILocation(line: 380, column: 11, scope: !4241, inlinedAt: !4053)
!4243 = !DILocation(line: 380, column: 6, scope: !4049, inlinedAt: !4053)
!4244 = !DILocation(line: 380, column: 33, scope: !4241, inlinedAt: !4053)
!4245 = !DILocation(line: 381, column: 6, scope: !4246, inlinedAt: !4053)
!4246 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 381, column: 6)
!4247 = !DILocation(line: 381, column: 11, scope: !4246, inlinedAt: !4053)
!4248 = !DILocation(line: 381, column: 6, scope: !4049, inlinedAt: !4053)
!4249 = !DILocation(line: 381, column: 33, scope: !4246, inlinedAt: !4053)
!4250 = !DILocation(line: 382, column: 2, scope: !4251, inlinedAt: !4053)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !124, line: 382, column: 2)
!4252 = distinct !DILexicalBlock(scope: !4049, file: !124, line: 382, column: 2)
!4253 = !{i32 -2143387466, i32 -2143387437, i32 -2143387391, i32 -2143387333, i32 -2143387279, i32 -2143387225, i32 -2143387170, i32 -2143387139}
!4254 = !DILocation(line: 382, column: 2, scope: !4255, inlinedAt: !4053)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !124, line: 382, column: 2)
!4256 = distinct !DILexicalBlock(scope: !4252, file: !124, line: 382, column: 2)
!4257 = !{i32 -2143386696, i32 -2143386689, i32 -2143386635, i32 -2143386604, i32 -2143386574}
!4258 = !DILocation(line: 382, column: 2, scope: !4256, inlinedAt: !4053)
!4259 = !DILocation(line: 386, column: 1, scope: !4049, inlinedAt: !4053)
!4260 = !DILocation(line: 547, column: 9, scope: !4032, inlinedAt: !4035)
!4261 = !DILocation(line: 549, column: 8, scope: !4262, inlinedAt: !4035)
!4262 = distinct !DILexicalBlock(scope: !4032, file: !124, line: 549, column: 7)
!4263 = !DILocation(line: 549, column: 7, scope: !4032, inlinedAt: !4035)
!4264 = !DILocation(line: 550, column: 4, scope: !4262, inlinedAt: !4035)
!4265 = !DILocation(line: 553, column: 33, scope: !4032, inlinedAt: !4035)
!4266 = !DILocation(line: 325, column: 6, scope: !4267, inlinedAt: !4047)
!4267 = distinct !DILexicalBlock(scope: !4043, file: !124, line: 325, column: 6)
!4268 = !DILocation(line: 325, column: 6, scope: !4043, inlinedAt: !4047)
!4269 = !DILocation(line: 326, column: 3, scope: !4267, inlinedAt: !4047)
!4270 = !DILocation(line: 332, column: 9, scope: !4043, inlinedAt: !4047)
!4271 = !DILocation(line: 332, column: 15, scope: !4043, inlinedAt: !4047)
!4272 = !DILocation(line: 332, column: 2, scope: !4043, inlinedAt: !4047)
!4273 = !DILocation(line: 336, column: 1, scope: !4043, inlinedAt: !4047)
!4274 = !DILocation(line: 553, column: 5, scope: !4032, inlinedAt: !4035)
!4275 = !DILocation(line: 553, column: 41, scope: !4032, inlinedAt: !4035)
!4276 = !DILocation(line: 554, column: 5, scope: !4032, inlinedAt: !4035)
!4277 = !DILocation(line: 554, column: 12, scope: !4032, inlinedAt: !4035)
!4278 = !DILocation(line: 448, column: 31, scope: !4027, inlinedAt: !4031)
!4279 = !DILocation(line: 448, column: 34, scope: !4027, inlinedAt: !4031)
!4280 = !DILocation(line: 448, column: 14, scope: !4027, inlinedAt: !4031)
!4281 = !DILocation(line: 450, column: 22, scope: !4027, inlinedAt: !4031)
!4282 = !DILocation(line: 450, column: 25, scope: !4027, inlinedAt: !4031)
!4283 = !DILocation(line: 450, column: 30, scope: !4027, inlinedAt: !4031)
!4284 = !DILocation(line: 450, column: 36, scope: !4027, inlinedAt: !4031)
!4285 = !DILocation(line: 450, column: 8, scope: !4027, inlinedAt: !4031)
!4286 = !DILocation(line: 450, column: 6, scope: !4027, inlinedAt: !4031)
!4287 = !DILocation(line: 451, column: 9, scope: !4027, inlinedAt: !4031)
!4288 = !DILocation(line: 552, column: 3, scope: !4032, inlinedAt: !4035)
!4289 = !DILocation(line: 557, column: 19, scope: !4034, inlinedAt: !4035)
!4290 = !DILocation(line: 557, column: 25, scope: !4034, inlinedAt: !4035)
!4291 = !DILocation(line: 557, column: 9, scope: !4034, inlinedAt: !4035)
!4292 = !DILocation(line: 557, column: 2, scope: !4034, inlinedAt: !4035)
!4293 = !DILocation(line: 558, column: 1, scope: !4034, inlinedAt: !4035)
!4294 = !DILocation(line: 664, column: 2, scope: !4023)
!4295 = distinct !DISubprogram(name: "request_irq", scope: !4296, file: !4296, line: 157, type: !4297, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4296 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!224, !18, !4299, !327, !324, !135}
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4296, line: 92, baseType: !4300)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!4301 = !DILocalVariable(name: "irq", arg: 1, scope: !4295, file: !4296, line: 157, type: !18)
!4302 = !DILocation(line: 157, column: 26, scope: !4295)
!4303 = !DILocalVariable(name: "handler", arg: 2, scope: !4295, file: !4296, line: 157, type: !4299)
!4304 = !DILocation(line: 157, column: 45, scope: !4295)
!4305 = !DILocalVariable(name: "flags", arg: 3, scope: !4295, file: !4296, line: 157, type: !327)
!4306 = !DILocation(line: 157, column: 68, scope: !4295)
!4307 = !DILocalVariable(name: "name", arg: 4, scope: !4295, file: !4296, line: 158, type: !324)
!4308 = !DILocation(line: 158, column: 18, scope: !4295)
!4309 = !DILocalVariable(name: "dev", arg: 5, scope: !4295, file: !4296, line: 158, type: !135)
!4310 = !DILocation(line: 158, column: 30, scope: !4295)
!4311 = !DILocation(line: 160, column: 30, scope: !4295)
!4312 = !DILocation(line: 160, column: 35, scope: !4295)
!4313 = !DILocation(line: 160, column: 50, scope: !4295)
!4314 = !DILocation(line: 160, column: 57, scope: !4295)
!4315 = !DILocation(line: 160, column: 63, scope: !4295)
!4316 = !DILocation(line: 160, column: 9, scope: !4295)
!4317 = !DILocation(line: 160, column: 2, scope: !4295)
!4318 = distinct !DISubprogram(name: "resource_size", scope: !316, file: !316, line: 210, type: !4319, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!319, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!4323 = !DILocalVariable(name: "res", arg: 1, scope: !4318, file: !316, line: 210, type: !4321)
!4324 = !DILocation(line: 210, column: 68, scope: !4318)
!4325 = !DILocation(line: 212, column: 9, scope: !4318)
!4326 = !DILocation(line: 212, column: 14, scope: !4318)
!4327 = !DILocation(line: 212, column: 20, scope: !4318)
!4328 = !DILocation(line: 212, column: 25, scope: !4318)
!4329 = !DILocation(line: 212, column: 18, scope: !4318)
!4330 = !DILocation(line: 212, column: 31, scope: !4318)
!4331 = !DILocation(line: 212, column: 2, scope: !4318)
!4332 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2322, file: !2322, line: 236, type: !4333, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !2328, !135}
!4335 = !DILocalVariable(name: "pdev", arg: 1, scope: !4332, file: !2322, line: 236, type: !2328)
!4336 = !DILocation(line: 236, column: 65, scope: !4332)
!4337 = !DILocalVariable(name: "data", arg: 2, scope: !4332, file: !2322, line: 237, type: !135)
!4338 = !DILocation(line: 237, column: 12, scope: !4332)
!4339 = !DILocation(line: 239, column: 19, scope: !4332)
!4340 = !DILocation(line: 239, column: 25, scope: !4332)
!4341 = !DILocation(line: 239, column: 30, scope: !4332)
!4342 = !DILocation(line: 239, column: 2, scope: !4332)
!4343 = !DILocation(line: 240, column: 1, scope: !4332)
!4344 = distinct !DISubprogram(name: "get_order", scope: !4345, file: !4345, line: 29, type: !4346, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4345 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!224, !327}
!4348 = !DILocalVariable(name: "x", arg: 1, scope: !4349, file: !4350, line: 366, type: !133)
!4349 = distinct !DISubprogram(name: "fls64", scope: !4350, file: !4350, line: 366, type: !4351, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4350 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!224, !133}
!4353 = !DILocation(line: 366, column: 40, scope: !4349, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 46, column: 9, scope: !4344)
!4355 = !DILocalVariable(name: "bitpos", scope: !4349, file: !4350, line: 368, type: !224)
!4356 = !DILocation(line: 368, column: 6, scope: !4349, inlinedAt: !4354)
!4357 = !DILocalVariable(name: "size", arg: 1, scope: !4344, file: !4345, line: 29, type: !327)
!4358 = !DILocation(line: 29, column: 63, scope: !4344)
!4359 = !DILocation(line: 31, column: 27, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4344, file: !4345, line: 31, column: 6)
!4361 = !DILocation(line: 31, column: 6, scope: !4360)
!4362 = !DILocation(line: 31, column: 6, scope: !4344)
!4363 = !DILocation(line: 32, column: 8, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !4345, line: 32, column: 7)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !4345, line: 31, column: 34)
!4366 = !DILocation(line: 32, column: 7, scope: !4365)
!4367 = !DILocation(line: 33, column: 4, scope: !4364)
!4368 = !DILocation(line: 35, column: 7, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !4345, line: 35, column: 7)
!4370 = !DILocation(line: 35, column: 12, scope: !4369)
!4371 = !DILocation(line: 35, column: 7, scope: !4365)
!4372 = !DILocation(line: 36, column: 4, scope: !4369)
!4373 = !DILocation(line: 38, column: 10, scope: !4365)
!4374 = !DILocation(line: 38, column: 28, scope: !4365)
!4375 = !DILocation(line: 38, column: 41, scope: !4365)
!4376 = !DILocation(line: 38, column: 3, scope: !4365)
!4377 = !DILocation(line: 41, column: 6, scope: !4344)
!4378 = !DILocation(line: 42, column: 7, scope: !4344)
!4379 = !DILocation(line: 46, column: 15, scope: !4344)
!4380 = !DILocation(line: 374, column: 2, scope: !4349, inlinedAt: !4354)
!4381 = !DILocation(line: 376, column: 14, scope: !4349, inlinedAt: !4354)
!4382 = !{i32 391085}
!4383 = !DILocation(line: 377, column: 9, scope: !4349, inlinedAt: !4354)
!4384 = !DILocation(line: 377, column: 16, scope: !4349, inlinedAt: !4354)
!4385 = !DILocation(line: 46, column: 2, scope: !4344)
!4386 = !DILocation(line: 48, column: 1, scope: !4344)
!4387 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4388, file: !4388, line: 30, type: !4389, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4388 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!224, !131}
!4391 = !DILocation(line: 366, column: 40, scope: !4349, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 32, column: 9, scope: !4387)
!4393 = !DILocation(line: 368, column: 6, scope: !4349, inlinedAt: !4392)
!4394 = !DILocalVariable(name: "n", arg: 1, scope: !4387, file: !4388, line: 30, type: !131)
!4395 = !DILocation(line: 30, column: 21, scope: !4387)
!4396 = !DILocation(line: 32, column: 15, scope: !4387)
!4397 = !DILocation(line: 374, column: 2, scope: !4349, inlinedAt: !4392)
!4398 = !DILocation(line: 376, column: 14, scope: !4349, inlinedAt: !4392)
!4399 = !DILocation(line: 377, column: 9, scope: !4349, inlinedAt: !4392)
!4400 = !DILocation(line: 377, column: 16, scope: !4349, inlinedAt: !4392)
!4401 = !DILocation(line: 32, column: 18, scope: !4387)
!4402 = !DILocation(line: 32, column: 2, scope: !4387)
!4403 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4404, file: !4404, line: 137, type: !4405, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4404 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!135, !1250, !1330, !429, !1670}
!4407 = !DILocalVariable(name: "s", arg: 1, scope: !4403, file: !4404, line: 137, type: !1250)
!4408 = !DILocation(line: 137, column: 54, scope: !4403)
!4409 = !DILocalVariable(name: "object", arg: 2, scope: !4403, file: !4404, line: 137, type: !1330)
!4410 = !DILocation(line: 137, column: 69, scope: !4403)
!4411 = !DILocalVariable(name: "size", arg: 3, scope: !4403, file: !4404, line: 138, type: !429)
!4412 = !DILocation(line: 138, column: 12, scope: !4403)
!4413 = !DILocalVariable(name: "flags", arg: 4, scope: !4403, file: !4404, line: 138, type: !1670)
!4414 = !DILocation(line: 138, column: 24, scope: !4403)
!4415 = !DILocation(line: 140, column: 17, scope: !4403)
!4416 = !DILocation(line: 140, column: 2, scope: !4403)
!4417 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !86, file: !86, line: 660, type: !4418, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !337, !135}
!4420 = !DILocalVariable(name: "dev", arg: 1, scope: !4417, file: !86, line: 660, type: !337)
!4421 = !DILocation(line: 660, column: 51, scope: !4417)
!4422 = !DILocalVariable(name: "data", arg: 2, scope: !4417, file: !86, line: 660, type: !135)
!4423 = !DILocation(line: 660, column: 62, scope: !4417)
!4424 = !DILocation(line: 662, column: 21, scope: !4417)
!4425 = !DILocation(line: 662, column: 2, scope: !4417)
!4426 = !DILocation(line: 662, column: 7, scope: !4417)
!4427 = !DILocation(line: 662, column: 19, scope: !4417)
!4428 = !DILocation(line: 663, column: 1, scope: !4417)
!4429 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2322, file: !2322, line: 231, type: !4430, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!135, !4432}
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!4434 = !DILocalVariable(name: "pdev", arg: 1, scope: !4429, file: !2322, line: 231, type: !4432)
!4435 = !DILocation(line: 231, column: 72, scope: !4429)
!4436 = !DILocation(line: 233, column: 26, scope: !4429)
!4437 = !DILocation(line: 233, column: 32, scope: !4429)
!4438 = !DILocation(line: 233, column: 9, scope: !4429)
!4439 = !DILocation(line: 233, column: 2, scope: !4429)
!4440 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !86, file: !86, line: 655, type: !4441, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !205)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!135, !2143}
!4443 = !DILocalVariable(name: "dev", arg: 1, scope: !4440, file: !86, line: 655, type: !2143)
!4444 = !DILocation(line: 655, column: 58, scope: !4440)
!4445 = !DILocation(line: 657, column: 9, scope: !4440)
!4446 = !DILocation(line: 657, column: 14, scope: !4440)
!4447 = !DILocation(line: 657, column: 2, scope: !4440)
