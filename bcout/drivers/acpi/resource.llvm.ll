; ModuleID = '../bcout/drivers/acpi/resource.llvm.bc'
source_filename = "drivers/acpi/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.acpi_resource_memory24 = type <{ i8, i16, i16, i16, i16 }>
%struct.acpi_resource_memory32 = type <{ i8, i32, i32, i32, i32 }>
%struct.acpi_resource_fixed_memory32 = type <{ i8, i32, i32 }>
%struct.acpi_resource_io = type <{ i8, i8, i8, i16, i16 }>
%struct.acpi_resource_fixed_io = type <{ i16, i8 }>
%struct.resource_win = type { %struct.resource, i64 }
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.acpi_resource_address = type { i8, i8, i8, i8, i8, %union.acpi_resource_attribute }
%struct.acpi_io_attribute = type { i8, i8, i8, i8 }
%struct.acpi_resource_extended_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, i8, %struct.acpi_address64_attribute, i64 }>
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, [1 x i32] }>
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.45, i32, i32, %struct.list_head }
%struct.anon.45 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.46, i8, i8, i32 }
%struct.anon.46 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.res_proc_context = type { %struct.list_head*, i32 (%struct.acpi_resource*, i8*)*, i8*, i32, i32 }
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }

@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DMA\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\014ACPI: IRQ %d override to %s, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"high\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_resource_memory(%struct.acpi_resource* %ares, %struct.resource* %res) #0 !dbg !2712 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %memory24 = alloca %struct.acpi_resource_memory24*, align 8
  %memory32 = alloca %struct.acpi_resource_memory32*, align 8
  %fixed_memory32 = alloca %struct.acpi_resource_fixed_memory32*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3051, metadata !DIExpression()), !dbg !3052
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_memory24** %memory24, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_memory32** %memory32, metadata !3058, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_fixed_memory32** %fixed_memory32, metadata !3061, metadata !DIExpression()), !dbg !3063
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3064
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %0, i32 0, i32 0, !dbg !3065
  %1 = load i32, i32* %type, align 1, !dbg !3065
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb6
    i32 10, label %sw.bb14
  ], !dbg !3066

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3067
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 2, !dbg !3069
  %memory241 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_memory24*, !dbg !3070
  store %struct.acpi_resource_memory24* %memory241, %struct.acpi_resource_memory24** %memory24, align 8, !dbg !3071
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3072
  %4 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %memory24, align 8, !dbg !3073
  %minimum = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %4, i32 0, i32 1, !dbg !3074
  %5 = load i16, i16* %minimum, align 1, !dbg !3074
  %conv = zext i16 %5 to i32, !dbg !3073
  %shl = shl i32 %conv, 8, !dbg !3075
  %conv2 = sext i32 %shl to i64, !dbg !3073
  %6 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %memory24, align 8, !dbg !3076
  %address_length = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %6, i32 0, i32 4, !dbg !3077
  %7 = load i16, i16* %address_length, align 1, !dbg !3077
  %conv3 = zext i16 %7 to i32, !dbg !3076
  %shl4 = shl i32 %conv3, 8, !dbg !3078
  %conv5 = sext i32 %shl4 to i64, !dbg !3076
  %8 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %memory24, align 8, !dbg !3079
  %write_protect = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %8, i32 0, i32 0, !dbg !3080
  %9 = load i8, i8* %write_protect, align 1, !dbg !3080
  call void @acpi_dev_get_memresource(%struct.resource* %3, i64 %conv2, i64 %conv5, i8 zeroext %9) #5, !dbg !3081
  br label %sw.epilog, !dbg !3082

sw.bb6:                                           ; preds = %entry
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3083
  %data7 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 2, !dbg !3084
  %memory328 = bitcast %union.acpi_resource_data* %data7 to %struct.acpi_resource_memory32*, !dbg !3085
  store %struct.acpi_resource_memory32* %memory328, %struct.acpi_resource_memory32** %memory32, align 8, !dbg !3086
  %11 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3087
  %12 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %memory32, align 8, !dbg !3088
  %minimum9 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %12, i32 0, i32 1, !dbg !3089
  %13 = load i32, i32* %minimum9, align 1, !dbg !3089
  %conv10 = zext i32 %13 to i64, !dbg !3088
  %14 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %memory32, align 8, !dbg !3090
  %address_length11 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %14, i32 0, i32 4, !dbg !3091
  %15 = load i32, i32* %address_length11, align 1, !dbg !3091
  %conv12 = zext i32 %15 to i64, !dbg !3090
  %16 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %memory32, align 8, !dbg !3092
  %write_protect13 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %16, i32 0, i32 0, !dbg !3093
  %17 = load i8, i8* %write_protect13, align 1, !dbg !3093
  call void @acpi_dev_get_memresource(%struct.resource* %11, i64 %conv10, i64 %conv12, i8 zeroext %17) #5, !dbg !3094
  br label %sw.epilog, !dbg !3095

sw.bb14:                                          ; preds = %entry
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3096
  %data15 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %18, i32 0, i32 2, !dbg !3097
  %fixed_memory3216 = bitcast %union.acpi_resource_data* %data15 to %struct.acpi_resource_fixed_memory32*, !dbg !3098
  store %struct.acpi_resource_fixed_memory32* %fixed_memory3216, %struct.acpi_resource_fixed_memory32** %fixed_memory32, align 8, !dbg !3099
  %19 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3100
  %20 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %fixed_memory32, align 8, !dbg !3101
  %address = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %20, i32 0, i32 1, !dbg !3102
  %21 = load i32, i32* %address, align 1, !dbg !3102
  %conv17 = zext i32 %21 to i64, !dbg !3101
  %22 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %fixed_memory32, align 8, !dbg !3103
  %address_length18 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %22, i32 0, i32 2, !dbg !3104
  %23 = load i32, i32* %address_length18, align 1, !dbg !3104
  %conv19 = zext i32 %23 to i64, !dbg !3103
  %24 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %fixed_memory32, align 8, !dbg !3105
  %write_protect20 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %24, i32 0, i32 0, !dbg !3106
  %25 = load i8, i8* %write_protect20, align 1, !dbg !3106
  call void @acpi_dev_get_memresource(%struct.resource* %19, i64 %conv17, i64 %conv19, i8 zeroext %25) #5, !dbg !3107
  br label %sw.epilog, !dbg !3108

sw.default:                                       ; preds = %entry
  %26 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3109
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 3, !dbg !3110
  store i64 0, i64* %flags, align 8, !dbg !3111
  store i1 false, i1* %retval, align 1, !dbg !3112
  br label %return, !dbg !3112

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb6, %sw.bb
  %27 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3113
  %flags21 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 3, !dbg !3114
  %28 = load i64, i64* %flags21, align 8, !dbg !3114
  %and = and i64 %28, 268435456, !dbg !3115
  %tobool = icmp ne i64 %and, 0, !dbg !3116
  %lnot = xor i1 %tobool, true, !dbg !3116
  store i1 %lnot, i1* %retval, align 1, !dbg !3117
  br label %return, !dbg !3117

return:                                           ; preds = %sw.epilog, %sw.default
  %29 = load i1, i1* %retval, align 1, !dbg !3118
  ret i1 %29, !dbg !3118
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_get_memresource(%struct.resource* %res, i64 %start, i64 %len, i8 zeroext %write_protect) #0 !dbg !3119 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %write_protect.addr = alloca i8, align 1
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !3124, metadata !DIExpression()), !dbg !3125
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i8 %write_protect, i8* %write_protect.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %write_protect.addr, metadata !3128, metadata !DIExpression()), !dbg !3129
  %0 = load i64, i64* %start.addr, align 8, !dbg !3130
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3131
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !3132
  store i64 %0, i64* %start1, align 8, !dbg !3133
  %2 = load i64, i64* %start.addr, align 8, !dbg !3134
  %3 = load i64, i64* %len.addr, align 8, !dbg !3135
  %add = add i64 %2, %3, !dbg !3136
  %sub = sub i64 %add, 1, !dbg !3137
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3138
  %end = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 1, !dbg !3139
  store i64 %sub, i64* %end, align 8, !dbg !3140
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3141
  %6 = load i64, i64* %len.addr, align 8, !dbg !3142
  %7 = load i8, i8* %write_protect.addr, align 1, !dbg !3143
  call void @acpi_dev_memresource_flags(%struct.resource* %5, i64 %6, i8 zeroext %7) #5, !dbg !3144
  ret void, !dbg !3145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_resource_io(%struct.acpi_resource* %ares, %struct.resource* %res) #0 !dbg !3146 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %io = alloca %struct.acpi_resource_io*, align 8
  %fixed_io = alloca %struct.acpi_resource_fixed_io*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3147, metadata !DIExpression()), !dbg !3148
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_io** %io, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_fixed_io** %fixed_io, metadata !3154, metadata !DIExpression()), !dbg !3156
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3157
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %0, i32 0, i32 0, !dbg !3158
  %1 = load i32, i32* %type, align 1, !dbg !3158
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb3
  ], !dbg !3159

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3160
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 2, !dbg !3162
  %io1 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_io*, !dbg !3163
  store %struct.acpi_resource_io* %io1, %struct.acpi_resource_io** %io, align 8, !dbg !3164
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3165
  %4 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %io, align 8, !dbg !3166
  %minimum = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %4, i32 0, i32 3, !dbg !3167
  %5 = load i16, i16* %minimum, align 1, !dbg !3167
  %conv = zext i16 %5 to i64, !dbg !3166
  %6 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %io, align 8, !dbg !3168
  %address_length = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %6, i32 0, i32 2, !dbg !3169
  %7 = load i8, i8* %address_length, align 1, !dbg !3169
  %conv2 = zext i8 %7 to i64, !dbg !3168
  %8 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %io, align 8, !dbg !3170
  %io_decode = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %8, i32 0, i32 0, !dbg !3171
  %9 = load i8, i8* %io_decode, align 1, !dbg !3171
  call void @acpi_dev_get_ioresource(%struct.resource* %3, i64 %conv, i64 %conv2, i8 zeroext %9) #5, !dbg !3172
  br label %sw.epilog, !dbg !3173

sw.bb3:                                           ; preds = %entry
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3174
  %data4 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 2, !dbg !3175
  %fixed_io5 = bitcast %union.acpi_resource_data* %data4 to %struct.acpi_resource_fixed_io*, !dbg !3176
  store %struct.acpi_resource_fixed_io* %fixed_io5, %struct.acpi_resource_fixed_io** %fixed_io, align 8, !dbg !3177
  %11 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3178
  %12 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %fixed_io, align 8, !dbg !3179
  %address = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %12, i32 0, i32 0, !dbg !3180
  %13 = load i16, i16* %address, align 1, !dbg !3180
  %conv6 = zext i16 %13 to i64, !dbg !3179
  %14 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %fixed_io, align 8, !dbg !3181
  %address_length7 = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %14, i32 0, i32 1, !dbg !3182
  %15 = load i8, i8* %address_length7, align 1, !dbg !3182
  %conv8 = zext i8 %15 to i64, !dbg !3181
  call void @acpi_dev_get_ioresource(%struct.resource* %11, i64 %conv6, i64 %conv8, i8 zeroext 0) #5, !dbg !3183
  br label %sw.epilog, !dbg !3184

sw.default:                                       ; preds = %entry
  %16 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3185
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3, !dbg !3186
  store i64 0, i64* %flags, align 8, !dbg !3187
  store i1 false, i1* %retval, align 1, !dbg !3188
  br label %return, !dbg !3188

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %17 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3189
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3, !dbg !3190
  %18 = load i64, i64* %flags9, align 8, !dbg !3190
  %and = and i64 %18, 268435456, !dbg !3191
  %tobool = icmp ne i64 %and, 0, !dbg !3192
  %lnot = xor i1 %tobool, true, !dbg !3192
  store i1 %lnot, i1* %retval, align 1, !dbg !3193
  br label %return, !dbg !3193

return:                                           ; preds = %sw.epilog, %sw.default
  %19 = load i1, i1* %retval, align 1, !dbg !3194
  ret i1 %19, !dbg !3194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_get_ioresource(%struct.resource* %res, i64 %start, i64 %len, i8 zeroext %io_decode) #0 !dbg !3195 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %io_decode.addr = alloca i8, align 1
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3200, metadata !DIExpression()), !dbg !3201
  store i8 %io_decode, i8* %io_decode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %io_decode.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  %0 = load i64, i64* %start.addr, align 8, !dbg !3204
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3205
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !3206
  store i64 %0, i64* %start1, align 8, !dbg !3207
  %2 = load i64, i64* %start.addr, align 8, !dbg !3208
  %3 = load i64, i64* %len.addr, align 8, !dbg !3209
  %add = add i64 %2, %3, !dbg !3210
  %sub = sub i64 %add, 1, !dbg !3211
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3212
  %end = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 1, !dbg !3213
  store i64 %sub, i64* %end, align 8, !dbg !3214
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3215
  %6 = load i64, i64* %len.addr, align 8, !dbg !3216
  %7 = load i8, i8* %io_decode.addr, align 1, !dbg !3217
  call void @acpi_dev_ioresource_flags(%struct.resource* %5, i64 %6, i8 zeroext %7, i8 zeroext 0) #5, !dbg !3218
  ret void, !dbg !3219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_resource_address_space(%struct.acpi_resource* %ares, %struct.resource_win* %win) #0 !dbg !3220 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %win.addr = alloca %struct.resource_win*, align 8
  %addr = alloca %struct.acpi_resource_address64, align 1
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3228, metadata !DIExpression()), !dbg !3229
  store %struct.resource_win* %win, %struct.resource_win** %win.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_win** %win.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_address64* %addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  %0 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3234
  %res = getelementptr inbounds %struct.resource_win, %struct.resource_win* %0, i32 0, i32 0, !dbg !3235
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !3236
  store i64 0, i64* %flags, align 8, !dbg !3237
  %1 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3238
  %call = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %1, %struct.acpi_resource_address64* %addr) #5, !dbg !3238
  %tobool = icmp ne i32 %call, 0, !dbg !3238
  br i1 %tobool, label %if.then, label %if.end, !dbg !3240

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !3241
  br label %return, !dbg !3241

if.end:                                           ; preds = %entry
  %2 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3242
  %3 = bitcast %struct.acpi_resource_address64* %addr to %struct.acpi_resource_address*, !dbg !3243
  %address = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %addr, i32 0, i32 6, !dbg !3244
  %call1 = call zeroext i1 @acpi_decode_space(%struct.resource_win* %2, %struct.acpi_resource_address* %3, %struct.acpi_address64_attribute* %address) #5, !dbg !3245
  store i1 %call1, i1* %retval, align 1, !dbg !3246
  br label %return, !dbg !3246

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !3247
  ret i1 %4, !dbg !3247
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_decode_space(%struct.resource_win* %win, %struct.acpi_resource_address* %addr, %struct.acpi_address64_attribute* %attr) #0 !dbg !3248 {
entry:
  %retval = alloca i1, align 1
  %win.addr = alloca %struct.resource_win*, align 8
  %addr.addr = alloca %struct.acpi_resource_address*, align 8
  %attr.addr = alloca %struct.acpi_address64_attribute*, align 8
  %iodec = alloca i8, align 1
  %wp = alloca i8, align 1
  %len = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %offset = alloca i64, align 8
  %res = alloca %struct.resource*, align 8
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store %struct.resource_win* %win, %struct.resource_win** %win.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_win** %win.addr, metadata !3252, metadata !DIExpression()), !dbg !3253
  store %struct.acpi_resource_address* %addr, %struct.acpi_resource_address** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_address** %addr.addr, metadata !3254, metadata !DIExpression()), !dbg !3255
  store %struct.acpi_address64_attribute* %attr, %struct.acpi_address64_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_address64_attribute** %attr.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata i8* %iodec, metadata !3258, metadata !DIExpression()), !dbg !3259
  %0 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3260
  %granularity = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %0, i32 0, i32 0, !dbg !3261
  %1 = load i64, i64* %granularity, align 1, !dbg !3261
  %cmp = icmp eq i64 %1, 4095, !dbg !3262
  %2 = zext i1 %cmp to i64, !dbg !3260
  %cond = select i1 %cmp, i32 0, i32 1, !dbg !3260
  %conv = trunc i32 %cond to i8, !dbg !3260
  store i8 %conv, i8* %iodec, align 1, !dbg !3259
  call void @llvm.dbg.declare(metadata i8* %wp, metadata !3263, metadata !DIExpression()), !dbg !3264
  %3 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3265
  %info = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %3, i32 0, i32 5, !dbg !3266
  %mem = bitcast %union.acpi_resource_attribute* %info to %struct.acpi_memory_attribute*, !dbg !3267
  %write_protect = getelementptr inbounds %struct.acpi_memory_attribute, %struct.acpi_memory_attribute* %mem, i32 0, i32 0, !dbg !3268
  %4 = load i8, i8* %write_protect, align 1, !dbg !3268
  %tobool = icmp ne i8 %4, 0, !dbg !3265
  %frombool = zext i1 %tobool to i8, !dbg !3264
  store i8 %frombool, i8* %wp, align 1, !dbg !3264
  call void @llvm.dbg.declare(metadata i64* %len, metadata !3269, metadata !DIExpression()), !dbg !3270
  %5 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3271
  %address_length = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %5, i32 0, i32 4, !dbg !3272
  %6 = load i64, i64* %address_length, align 1, !dbg !3272
  store i64 %6, i64* %len, align 8, !dbg !3270
  call void @llvm.dbg.declare(metadata i64* %start, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.declare(metadata i64* %end, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !3277, metadata !DIExpression()), !dbg !3278
  store i64 0, i64* %offset, align 8, !dbg !3278
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !3279, metadata !DIExpression()), !dbg !3280
  %7 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3281
  %res1 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %7, i32 0, i32 0, !dbg !3282
  store %struct.resource* %res1, %struct.resource** %res, align 8, !dbg !3280
  %8 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3283
  %min_address_fixed = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %8, i32 0, i32 3, !dbg !3285
  %9 = load i8, i8* %min_address_fixed, align 1, !dbg !3285
  %conv2 = zext i8 %9 to i32, !dbg !3283
  %10 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3286
  %max_address_fixed = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %10, i32 0, i32 4, !dbg !3287
  %11 = load i8, i8* %max_address_fixed, align 1, !dbg !3287
  %conv3 = zext i8 %11 to i32, !dbg !3286
  %cmp4 = icmp ne i32 %conv2, %conv3, !dbg !3288
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false, !dbg !3289

land.lhs.true:                                    ; preds = %entry
  %12 = load i64, i64* %len, align 8, !dbg !3290
  %tobool6 = icmp ne i64 %12, 0, !dbg !3290
  br i1 %tobool6, label %if.then, label %lor.lhs.false, !dbg !3291

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %13 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3292
  %min_address_fixed7 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %13, i32 0, i32 3, !dbg !3293
  %14 = load i8, i8* %min_address_fixed7, align 1, !dbg !3293
  %conv8 = zext i8 %14 to i32, !dbg !3292
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !3292
  br i1 %tobool9, label %land.lhs.true10, label %if.end, !dbg !3294

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %15 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3295
  %max_address_fixed11 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %15, i32 0, i32 4, !dbg !3296
  %16 = load i8, i8* %max_address_fixed11, align 1, !dbg !3296
  %conv12 = zext i8 %16 to i32, !dbg !3295
  %tobool13 = icmp ne i32 %conv12, 0, !dbg !3295
  br i1 %tobool13, label %land.lhs.true14, label %if.end, !dbg !3297

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %17 = load i64, i64* %len, align 8, !dbg !3298
  %tobool15 = icmp ne i64 %17, 0, !dbg !3298
  br i1 %tobool15, label %if.end, label %if.then, !dbg !3299

if.then:                                          ; preds = %land.lhs.true14, %land.lhs.true
  store i32 0, i32* %tmp, align 4, !dbg !3300
  %18 = load i32, i32* %tmp, align 4, !dbg !3303
  br label %if.end, !dbg !3304

if.end:                                           ; preds = %if.then, %land.lhs.true14, %land.lhs.true10, %lor.lhs.false
  %19 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3305
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %19, i32 0, i32 1, !dbg !3307
  %20 = load i8, i8* %producer_consumer, align 1, !dbg !3307
  %conv16 = zext i8 %20 to i32, !dbg !3305
  %cmp17 = icmp eq i32 %conv16, 0, !dbg !3308
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !3309

if.then19:                                        ; preds = %if.end
  %21 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3310
  %translation_offset = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %21, i32 0, i32 3, !dbg !3311
  %22 = load i64, i64* %translation_offset, align 1, !dbg !3311
  store i64 %22, i64* %offset, align 8, !dbg !3312
  br label %if.end25, !dbg !3313

if.else:                                          ; preds = %if.end
  %23 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3314
  %translation_offset20 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %23, i32 0, i32 3, !dbg !3316
  %24 = load i64, i64* %translation_offset20, align 1, !dbg !3316
  %tobool21 = icmp ne i64 %24, 0, !dbg !3314
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !3317

if.then22:                                        ; preds = %if.else
  store i32 0, i32* %tmp23, align 4, !dbg !3318
  %25 = load i32, i32* %tmp23, align 4, !dbg !3321
  br label %if.end24, !dbg !3322

if.end24:                                         ; preds = %if.then22, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %26 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3323
  %minimum = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %26, i32 0, i32 1, !dbg !3324
  %27 = load i64, i64* %minimum, align 1, !dbg !3324
  %28 = load i64, i64* %offset, align 8, !dbg !3325
  %add = add i64 %27, %28, !dbg !3326
  store i64 %add, i64* %start, align 8, !dbg !3327
  %29 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %attr.addr, align 8, !dbg !3328
  %maximum = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %29, i32 0, i32 2, !dbg !3329
  %30 = load i64, i64* %maximum, align 1, !dbg !3329
  %31 = load i64, i64* %offset, align 8, !dbg !3330
  %add26 = add i64 %30, %31, !dbg !3331
  store i64 %add26, i64* %end, align 8, !dbg !3332
  %32 = load i64, i64* %offset, align 8, !dbg !3333
  %33 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3334
  %offset27 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %33, i32 0, i32 1, !dbg !3335
  store i64 %32, i64* %offset27, align 8, !dbg !3336
  %34 = load i64, i64* %start, align 8, !dbg !3337
  %35 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3338
  %start28 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0, !dbg !3339
  store i64 %34, i64* %start28, align 8, !dbg !3340
  %36 = load i64, i64* %end, align 8, !dbg !3341
  %37 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3342
  %end29 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1, !dbg !3343
  store i64 %36, i64* %end29, align 8, !dbg !3344
  %38 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3345
  %resource_type = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %38, i32 0, i32 0, !dbg !3346
  %39 = load i8, i8* %resource_type, align 1, !dbg !3346
  %conv30 = zext i8 %39 to i32, !dbg !3345
  switch i32 %conv30, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb35
  ], !dbg !3347

sw.bb:                                            ; preds = %if.end25
  %40 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3348
  %41 = load i64, i64* %len, align 8, !dbg !3350
  %42 = load i8, i8* %wp, align 1, !dbg !3351
  %tobool31 = trunc i8 %42 to i1, !dbg !3351
  %conv32 = zext i1 %tobool31 to i8, !dbg !3351
  call void @acpi_dev_memresource_flags(%struct.resource* %40, i64 %41, i8 zeroext %conv32) #5, !dbg !3352
  br label %sw.epilog, !dbg !3353

sw.bb33:                                          ; preds = %if.end25
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3354
  %44 = load i64, i64* %len, align 8, !dbg !3355
  %45 = load i8, i8* %iodec, align 1, !dbg !3356
  %46 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3357
  %info34 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %46, i32 0, i32 5, !dbg !3358
  %io = bitcast %union.acpi_resource_attribute* %info34 to %struct.acpi_io_attribute*, !dbg !3359
  %translation_type = getelementptr inbounds %struct.acpi_io_attribute, %struct.acpi_io_attribute* %io, i32 0, i32 2, !dbg !3360
  %47 = load i8, i8* %translation_type, align 1, !dbg !3360
  call void @acpi_dev_ioresource_flags(%struct.resource* %43, i64 %44, i8 zeroext %45, i8 zeroext %47) #5, !dbg !3361
  br label %sw.epilog, !dbg !3362

sw.bb35:                                          ; preds = %if.end25
  %48 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3363
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 3, !dbg !3364
  store i64 4096, i64* %flags, align 8, !dbg !3365
  br label %sw.epilog, !dbg !3366

sw.default:                                       ; preds = %if.end25
  store i1 false, i1* %retval, align 1, !dbg !3367
  br label %return, !dbg !3367

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb33, %sw.bb
  %49 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3368
  %producer_consumer36 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %49, i32 0, i32 1, !dbg !3370
  %50 = load i8, i8* %producer_consumer36, align 1, !dbg !3370
  %conv37 = zext i8 %50 to i32, !dbg !3368
  %cmp38 = icmp eq i32 %conv37, 0, !dbg !3371
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !3372

if.then40:                                        ; preds = %sw.epilog
  %51 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3373
  %flags41 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 3, !dbg !3374
  %52 = load i64, i64* %flags41, align 8, !dbg !3375
  %or = or i64 %52, 2097152, !dbg !3375
  store i64 %or, i64* %flags41, align 8, !dbg !3375
  br label %if.end42, !dbg !3373

if.end42:                                         ; preds = %if.then40, %sw.epilog
  %53 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %addr.addr, align 8, !dbg !3376
  %info43 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %53, i32 0, i32 5, !dbg !3378
  %mem44 = bitcast %union.acpi_resource_attribute* %info43 to %struct.acpi_memory_attribute*, !dbg !3379
  %caching = getelementptr inbounds %struct.acpi_memory_attribute, %struct.acpi_memory_attribute* %mem44, i32 0, i32 1, !dbg !3380
  %54 = load i8, i8* %caching, align 1, !dbg !3380
  %conv45 = zext i8 %54 to i32, !dbg !3376
  %cmp46 = icmp eq i32 %conv45, 3, !dbg !3381
  br i1 %cmp46, label %if.then48, label %if.end51, !dbg !3382

if.then48:                                        ; preds = %if.end42
  %55 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3383
  %flags49 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 3, !dbg !3384
  %56 = load i64, i64* %flags49, align 8, !dbg !3385
  %or50 = or i64 %56, 8192, !dbg !3385
  store i64 %or50, i64* %flags49, align 8, !dbg !3385
  br label %if.end51, !dbg !3383

if.end51:                                         ; preds = %if.then48, %if.end42
  %57 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3386
  %flags52 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 3, !dbg !3387
  %58 = load i64, i64* %flags52, align 8, !dbg !3387
  %and = and i64 %58, 268435456, !dbg !3388
  %tobool53 = icmp ne i64 %and, 0, !dbg !3389
  %lnot = xor i1 %tobool53, true, !dbg !3389
  store i1 %lnot, i1* %retval, align 1, !dbg !3390
  br label %return, !dbg !3390

return:                                           ; preds = %if.end51, %sw.default
  %59 = load i1, i1* %retval, align 1, !dbg !3391
  ret i1 %59, !dbg !3391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %ares, %struct.resource_win* %win) #0 !dbg !3392 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %win.addr = alloca %struct.resource_win*, align 8
  %ext_addr = alloca %struct.acpi_resource_extended_address64*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  store %struct.resource_win* %win, %struct.resource_win** %win.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_win** %win.addr, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_address64** %ext_addr, metadata !3397, metadata !DIExpression()), !dbg !3399
  %0 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3400
  %res = getelementptr inbounds %struct.resource_win, %struct.resource_win* %0, i32 0, i32 0, !dbg !3401
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !3402
  store i64 0, i64* %flags, align 8, !dbg !3403
  %1 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3404
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %1, i32 0, i32 0, !dbg !3406
  %2 = load i32, i32* %type, align 1, !dbg !3406
  %cmp = icmp ne i32 %2, 14, !dbg !3407
  br i1 %cmp, label %if.then, label %if.end, !dbg !3408

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !3409
  br label %return, !dbg !3409

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3410
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %3, i32 0, i32 2, !dbg !3411
  %ext_address64 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_extended_address64*, !dbg !3412
  store %struct.acpi_resource_extended_address64* %ext_address64, %struct.acpi_resource_extended_address64** %ext_addr, align 8, !dbg !3413
  %4 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !3414
  %5 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %ext_addr, align 8, !dbg !3415
  %6 = bitcast %struct.acpi_resource_extended_address64* %5 to %struct.acpi_resource_address*, !dbg !3416
  %7 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %ext_addr, align 8, !dbg !3417
  %address = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %7, i32 0, i32 7, !dbg !3418
  %call = call zeroext i1 @acpi_decode_space(%struct.resource_win* %4, %struct.acpi_resource_address* %6, %struct.acpi_address64_attribute* %address) #5, !dbg !3419
  store i1 %call, i1* %retval, align 1, !dbg !3420
  br label %return, !dbg !3420

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !3421
  ret i1 %8, !dbg !3421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @acpi_dev_irq_flags(i8 zeroext %triggering, i8 zeroext %polarity, i8 zeroext %shareable) #0 !dbg !3422 {
entry:
  %triggering.addr = alloca i8, align 1
  %polarity.addr = alloca i8, align 1
  %shareable.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  store i8 %triggering, i8* %triggering.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %triggering.addr, metadata !3425, metadata !DIExpression()), !dbg !3426
  store i8 %polarity, i8* %polarity.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %polarity.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i8 %shareable, i8* %shareable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shareable.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3431, metadata !DIExpression()), !dbg !3432
  %0 = load i8, i8* %triggering.addr, align 1, !dbg !3433
  %conv = zext i8 %0 to i32, !dbg !3433
  %cmp = icmp eq i32 %conv, 0, !dbg !3435
  br i1 %cmp, label %if.then, label %if.else, !dbg !3436

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %polarity.addr, align 1, !dbg !3437
  %conv2 = zext i8 %1 to i32, !dbg !3437
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !3438
  %2 = zext i1 %cmp3 to i64, !dbg !3437
  %cond = select i1 %cmp3, i32 8, i32 4, !dbg !3437
  %conv5 = sext i32 %cond to i64, !dbg !3437
  store i64 %conv5, i64* %flags, align 8, !dbg !3439
  br label %if.end, !dbg !3440

if.else:                                          ; preds = %entry
  %3 = load i8, i8* %polarity.addr, align 1, !dbg !3441
  %conv6 = zext i8 %3 to i32, !dbg !3441
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !3442
  %4 = zext i1 %cmp7 to i64, !dbg !3441
  %cond9 = select i1 %cmp7, i32 2, i32 1, !dbg !3441
  %conv10 = sext i32 %cond9 to i64, !dbg !3441
  store i64 %conv10, i64* %flags, align 8, !dbg !3443
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %shareable.addr, align 1, !dbg !3444
  %conv11 = zext i8 %5 to i32, !dbg !3444
  %cmp12 = icmp eq i32 %conv11, 1, !dbg !3446
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !3447

if.then14:                                        ; preds = %if.end
  %6 = load i64, i64* %flags, align 8, !dbg !3448
  %or = or i64 %6, 16, !dbg !3448
  store i64 %or, i64* %flags, align 8, !dbg !3448
  br label %if.end15, !dbg !3449

if.end15:                                         ; preds = %if.then14, %if.end
  %7 = load i64, i64* %flags, align 8, !dbg !3450
  %or16 = or i64 %7, 1024, !dbg !3451
  ret i64 %or16, !dbg !3452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_get_irq_type(i32 %triggering, i32 %polarity) #0 !dbg !3453 {
entry:
  %retval = alloca i32, align 4
  %triggering.addr = alloca i32, align 4
  %polarity.addr = alloca i32, align 4
  store i32 %triggering, i32* %triggering.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %triggering.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  store i32 %polarity, i32* %polarity.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %polarity.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  %0 = load i32, i32* %polarity.addr, align 4, !dbg !3460
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !3461

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %triggering.addr, align 4, !dbg !3462
  %cmp = icmp eq i32 %1, 1, !dbg !3464
  %2 = zext i1 %cmp to i64, !dbg !3462
  %cond = select i1 %cmp, i32 2, i32 8, !dbg !3462
  store i32 %cond, i32* %retval, align 4, !dbg !3465
  br label %return, !dbg !3465

sw.bb1:                                           ; preds = %entry
  %3 = load i32, i32* %triggering.addr, align 4, !dbg !3466
  %cmp2 = icmp eq i32 %3, 1, !dbg !3467
  %4 = zext i1 %cmp2 to i64, !dbg !3466
  %cond3 = select i1 %cmp2, i32 1, i32 4, !dbg !3466
  store i32 %cond3, i32* %retval, align 4, !dbg !3468
  br label %return, !dbg !3468

sw.bb4:                                           ; preds = %entry
  %5 = load i32, i32* %triggering.addr, align 4, !dbg !3469
  %cmp5 = icmp eq i32 %5, 1, !dbg !3471
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3472

if.then:                                          ; preds = %sw.bb4
  store i32 3, i32* %retval, align 4, !dbg !3473
  br label %return, !dbg !3473

if.end:                                           ; preds = %sw.bb4
  br label %sw.default, !dbg !3474

sw.default:                                       ; preds = %entry, %if.end
  store i32 0, i32* %retval, align 4, !dbg !3475
  br label %return, !dbg !3475

return:                                           ; preds = %sw.default, %if.then, %sw.bb1, %sw.bb
  %6 = load i32, i32* %retval, align 4, !dbg !3476
  ret i32 %6, !dbg !3476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource* %ares, i32 %index, %struct.resource* %res) #0 !dbg !3477 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %index.addr = alloca i32, align 4
  %res.addr = alloca %struct.resource*, align 8
  %irq = alloca %struct.acpi_resource_irq*, align 8
  %ext_irq = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_irq** %irq, metadata !3486, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_irq** %ext_irq, metadata !3489, metadata !DIExpression()), !dbg !3491
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3492
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %0, i32 0, i32 0, !dbg !3493
  %1 = load i32, i32* %type, align 1, !dbg !3493
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 15, label %sw.bb4
  ], !dbg !3494

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3495
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 2, !dbg !3497
  %irq1 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !3498
  store %struct.acpi_resource_irq* %irq1, %struct.acpi_resource_irq** %irq, align 8, !dbg !3499
  %3 = load i32, i32* %index.addr, align 4, !dbg !3500
  %4 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %irq, align 8, !dbg !3502
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %4, i32 0, i32 5, !dbg !3503
  %5 = load i8, i8* %interrupt_count, align 1, !dbg !3503
  %conv = zext i8 %5 to i32, !dbg !3502
  %cmp = icmp sge i32 %3, %conv, !dbg !3504
  br i1 %cmp, label %if.then, label %if.end, !dbg !3505

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3506
  call void @acpi_dev_irqresource_disabled(%struct.resource* %6, i32 0) #5, !dbg !3508
  store i1 false, i1* %retval, align 1, !dbg !3509
  br label %return, !dbg !3509

if.end:                                           ; preds = %sw.bb
  %7 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3510
  %8 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %irq, align 8, !dbg !3511
  %interrupts = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %8, i32 0, i32 6, !dbg !3512
  %9 = load i32, i32* %index.addr, align 4, !dbg !3513
  %idxprom = sext i32 %9 to i64, !dbg !3511
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %interrupts, i64 0, i64 %idxprom, !dbg !3511
  %10 = load i8, i8* %arrayidx, align 1, !dbg !3511
  %conv3 = zext i8 %10 to i32, !dbg !3511
  %11 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %irq, align 8, !dbg !3514
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %11, i32 0, i32 1, !dbg !3515
  %12 = load i8, i8* %triggering, align 1, !dbg !3515
  %13 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %irq, align 8, !dbg !3516
  %polarity = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %13, i32 0, i32 2, !dbg !3517
  %14 = load i8, i8* %polarity, align 1, !dbg !3517
  %15 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %irq, align 8, !dbg !3518
  %shareable = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %15, i32 0, i32 3, !dbg !3519
  %16 = load i8, i8* %shareable, align 1, !dbg !3519
  call void @acpi_dev_get_irqresource(%struct.resource* %7, i32 %conv3, i8 zeroext %12, i8 zeroext %14, i8 zeroext %16, i1 zeroext true) #5, !dbg !3520
  br label %sw.epilog, !dbg !3521

sw.bb4:                                           ; preds = %entry
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3522
  %data5 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %17, i32 0, i32 2, !dbg !3523
  %extended_irq = bitcast %union.acpi_resource_data* %data5 to %struct.acpi_resource_extended_irq*, !dbg !3524
  store %struct.acpi_resource_extended_irq* %extended_irq, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3525
  %18 = load i32, i32* %index.addr, align 4, !dbg !3526
  %19 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3528
  %interrupt_count6 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %19, i32 0, i32 5, !dbg !3529
  %20 = load i8, i8* %interrupt_count6, align 1, !dbg !3529
  %conv7 = zext i8 %20 to i32, !dbg !3528
  %cmp8 = icmp sge i32 %18, %conv7, !dbg !3530
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !3531

if.then10:                                        ; preds = %sw.bb4
  %21 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3532
  call void @acpi_dev_irqresource_disabled(%struct.resource* %21, i32 0) #5, !dbg !3534
  store i1 false, i1* %retval, align 1, !dbg !3535
  br label %return, !dbg !3535

if.end11:                                         ; preds = %sw.bb4
  %22 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3536
  %call = call zeroext i1 @is_gsi(%struct.acpi_resource_extended_irq* %22) #5, !dbg !3538
  br i1 %call, label %if.then12, label %if.else, !dbg !3539

if.then12:                                        ; preds = %if.end11
  %23 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3540
  %24 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3541
  %interrupts13 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %24, i32 0, i32 7, !dbg !3542
  %25 = load i32, i32* %index.addr, align 4, !dbg !3543
  %idxprom14 = sext i32 %25 to i64, !dbg !3541
  %arrayidx15 = getelementptr [1 x i32], [1 x i32]* %interrupts13, i64 0, i64 %idxprom14, !dbg !3541
  %26 = load i32, i32* %arrayidx15, align 1, !dbg !3541
  %27 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3544
  %triggering16 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %27, i32 0, i32 1, !dbg !3545
  %28 = load i8, i8* %triggering16, align 1, !dbg !3545
  %29 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3546
  %polarity17 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %29, i32 0, i32 2, !dbg !3547
  %30 = load i8, i8* %polarity17, align 1, !dbg !3547
  %31 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %ext_irq, align 8, !dbg !3548
  %shareable18 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %31, i32 0, i32 3, !dbg !3549
  %32 = load i8, i8* %shareable18, align 1, !dbg !3549
  call void @acpi_dev_get_irqresource(%struct.resource* %23, i32 %26, i8 zeroext %28, i8 zeroext %30, i8 zeroext %32, i1 zeroext false) #5, !dbg !3550
  br label %if.end19, !dbg !3550

if.else:                                          ; preds = %if.end11
  %33 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3551
  call void @acpi_dev_irqresource_disabled(%struct.resource* %33, i32 0) #5, !dbg !3552
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  br label %sw.epilog, !dbg !3553

sw.default:                                       ; preds = %entry
  %34 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3554
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 3, !dbg !3555
  store i64 0, i64* %flags, align 8, !dbg !3556
  store i1 false, i1* %retval, align 1, !dbg !3557
  br label %return, !dbg !3557

sw.epilog:                                        ; preds = %if.end19, %if.end
  store i1 true, i1* %retval, align 1, !dbg !3558
  br label %return, !dbg !3558

return:                                           ; preds = %sw.epilog, %sw.default, %if.then10, %if.then
  %35 = load i1, i1* %retval, align 1, !dbg !3559
  ret i1 %35, !dbg !3559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_irqresource_disabled(%struct.resource* %res, i32 %gsi) #0 !dbg !3560 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %gsi.addr = alloca i32, align 4
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i32 %gsi, i32* %gsi.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi.addr, metadata !3565, metadata !DIExpression()), !dbg !3566
  %0 = load i32, i32* %gsi.addr, align 4, !dbg !3567
  %conv = zext i32 %0 to i64, !dbg !3567
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3568
  %start = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !3569
  store i64 %conv, i64* %start, align 8, !dbg !3570
  %2 = load i32, i32* %gsi.addr, align 4, !dbg !3571
  %conv1 = zext i32 %2 to i64, !dbg !3571
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3572
  %end = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 1, !dbg !3573
  store i64 %conv1, i64* %end, align 8, !dbg !3574
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3575
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !3576
  store i64 805307392, i64* %flags, align 8, !dbg !3577
  ret void, !dbg !3578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_get_irqresource(%struct.resource* %res, i32 %gsi, i8 zeroext %triggering, i8 zeroext %polarity, i8 zeroext %shareable, i1 zeroext %legacy) #0 !dbg !3579 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %gsi.addr = alloca i32, align 4
  %triggering.addr = alloca i8, align 1
  %polarity.addr = alloca i8, align 1
  %shareable.addr = alloca i8, align 1
  %legacy.addr = alloca i8, align 1
  %irq = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  %trig = alloca i8, align 1
  %pol = alloca i8, align 1
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  store i32 %gsi, i32* %gsi.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi.addr, metadata !3584, metadata !DIExpression()), !dbg !3585
  store i8 %triggering, i8* %triggering.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %triggering.addr, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i8 %polarity, i8* %polarity.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %polarity.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i8 %shareable, i8* %shareable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shareable.addr, metadata !3590, metadata !DIExpression()), !dbg !3591
  %frombool = zext i1 %legacy to i8
  store i8 %frombool, i8* %legacy.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %legacy.addr, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.declare(metadata i32* %p, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata i32* %t, metadata !3598, metadata !DIExpression()), !dbg !3599
  %0 = load i32, i32* %gsi.addr, align 4, !dbg !3600
  %cmp = icmp ne i32 %0, 0, !dbg !3600
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !3600

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %gsi.addr, align 4, !dbg !3600
  %cmp1 = icmp ne i32 %1, 2, !dbg !3600
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3602

if.then:                                          ; preds = %land.lhs.true, %entry
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3603
  %3 = load i32, i32* %gsi.addr, align 4, !dbg !3605
  call void @acpi_dev_irqresource_disabled(%struct.resource* %2, i32 %3) #5, !dbg !3606
  br label %if.end34, !dbg !3607

if.end:                                           ; preds = %land.lhs.true
  %4 = load i8, i8* %legacy.addr, align 1, !dbg !3608
  %tobool = trunc i8 %4 to i1, !dbg !3608
  br i1 %tobool, label %land.lhs.true2, label %if.end24, !dbg !3610

land.lhs.true2:                                   ; preds = %if.end
  %5 = load i32, i32* %gsi.addr, align 4, !dbg !3611
  %call = call i32 @acpi_get_override_irq(i32 %5, i32* %t, i32* %p) #5, !dbg !3612
  %tobool3 = icmp ne i32 %call, 0, !dbg !3612
  br i1 %tobool3, label %if.end24, label %if.then4, !dbg !3613

if.then4:                                         ; preds = %land.lhs.true2
  call void @llvm.dbg.declare(metadata i8* %trig, metadata !3614, metadata !DIExpression()), !dbg !3616
  %6 = load i32, i32* %t, align 4, !dbg !3617
  %tobool5 = icmp ne i32 %6, 0, !dbg !3617
  %7 = zext i1 %tobool5 to i64, !dbg !3617
  %cond = select i1 %tobool5, i32 0, i32 1, !dbg !3617
  %conv = trunc i32 %cond to i8, !dbg !3617
  store i8 %conv, i8* %trig, align 1, !dbg !3616
  call void @llvm.dbg.declare(metadata i8* %pol, metadata !3618, metadata !DIExpression()), !dbg !3619
  %8 = load i32, i32* %p, align 4, !dbg !3620
  %tobool6 = icmp ne i32 %8, 0, !dbg !3620
  %9 = zext i1 %tobool6 to i64, !dbg !3620
  %cond7 = select i1 %tobool6, i32 1, i32 0, !dbg !3620
  %conv8 = trunc i32 %cond7 to i8, !dbg !3620
  store i8 %conv8, i8* %pol, align 1, !dbg !3619
  %10 = load i8, i8* %triggering.addr, align 1, !dbg !3621
  %conv9 = zext i8 %10 to i32, !dbg !3621
  %11 = load i8, i8* %trig, align 1, !dbg !3623
  %conv10 = zext i8 %11 to i32, !dbg !3623
  %cmp11 = icmp ne i32 %conv9, %conv10, !dbg !3624
  br i1 %cmp11, label %if.then17, label %lor.lhs.false, !dbg !3625

lor.lhs.false:                                    ; preds = %if.then4
  %12 = load i8, i8* %polarity.addr, align 1, !dbg !3626
  %conv13 = zext i8 %12 to i32, !dbg !3626
  %13 = load i8, i8* %pol, align 1, !dbg !3627
  %conv14 = zext i8 %13 to i32, !dbg !3627
  %cmp15 = icmp ne i32 %conv13, %conv14, !dbg !3628
  br i1 %cmp15, label %if.then17, label %if.end23, !dbg !3629

if.then17:                                        ; preds = %lor.lhs.false, %if.then4
  %14 = load i32, i32* %gsi.addr, align 4, !dbg !3630
  %15 = load i32, i32* %t, align 4, !dbg !3630
  %tobool18 = icmp ne i32 %15, 0, !dbg !3630
  %16 = zext i1 %tobool18 to i64, !dbg !3630
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !3630
  %17 = load i32, i32* %p, align 4, !dbg !3630
  %tobool20 = icmp ne i32 %17, 0, !dbg !3630
  %18 = zext i1 %tobool20 to i64, !dbg !3630
  %cond21 = select i1 %tobool20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !3630
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* %cond19, i8* %cond21) #6, !dbg !3630
  %19 = load i8, i8* %trig, align 1, !dbg !3632
  store i8 %19, i8* %triggering.addr, align 1, !dbg !3633
  %20 = load i8, i8* %pol, align 1, !dbg !3634
  store i8 %20, i8* %polarity.addr, align 1, !dbg !3635
  br label %if.end23, !dbg !3636

if.end23:                                         ; preds = %if.then17, %lor.lhs.false
  br label %if.end24, !dbg !3637

if.end24:                                         ; preds = %if.end23, %land.lhs.true2, %if.end
  %21 = load i8, i8* %triggering.addr, align 1, !dbg !3638
  %22 = load i8, i8* %polarity.addr, align 1, !dbg !3639
  %23 = load i8, i8* %shareable.addr, align 1, !dbg !3640
  %call25 = call i64 @acpi_dev_irq_flags(i8 zeroext %21, i8 zeroext %22, i8 zeroext %23) #5, !dbg !3641
  %24 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3642
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 3, !dbg !3643
  store i64 %call25, i64* %flags, align 8, !dbg !3644
  %25 = load i32, i32* %gsi.addr, align 4, !dbg !3645
  %26 = load i8, i8* %triggering.addr, align 1, !dbg !3646
  %conv26 = zext i8 %26 to i32, !dbg !3646
  %27 = load i8, i8* %polarity.addr, align 1, !dbg !3647
  %conv27 = zext i8 %27 to i32, !dbg !3647
  %call28 = call i32 @acpi_register_gsi(%struct.device* null, i32 %25, i32 %conv26, i32 %conv27) #5, !dbg !3648
  store i32 %call28, i32* %irq, align 4, !dbg !3649
  %28 = load i32, i32* %irq, align 4, !dbg !3650
  %cmp29 = icmp sge i32 %28, 0, !dbg !3652
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !3653

if.then31:                                        ; preds = %if.end24
  %29 = load i32, i32* %irq, align 4, !dbg !3654
  %conv32 = sext i32 %29 to i64, !dbg !3654
  %30 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3656
  %start = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0, !dbg !3657
  store i64 %conv32, i64* %start, align 8, !dbg !3658
  %31 = load i32, i32* %irq, align 4, !dbg !3659
  %conv33 = sext i32 %31 to i64, !dbg !3659
  %32 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3660
  %end = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1, !dbg !3661
  store i64 %conv33, i64* %end, align 8, !dbg !3662
  br label %if.end34, !dbg !3663

if.else:                                          ; preds = %if.end24
  %33 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3664
  %34 = load i32, i32* %gsi.addr, align 4, !dbg !3666
  call void @acpi_dev_irqresource_disabled(%struct.resource* %33, i32 %34) #5, !dbg !3667
  br label %if.end34

if.end34:                                         ; preds = %if.then, %if.else, %if.then31
  ret void, !dbg !3668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_gsi(%struct.acpi_resource_extended_irq* %ext_irq) #0 !dbg !3669 {
entry:
  %ext_irq.addr = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource_extended_irq* %ext_irq, %struct.acpi_resource_extended_irq** %ext_irq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_irq** %ext_irq.addr, metadata !3672, metadata !DIExpression()), !dbg !3673
  ret i1 true, !dbg !3674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_dev_free_resource_list(%struct.list_head* %list) #0 !dbg !3675 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3680
  call void @resource_list_free(%struct.list_head* %0) #5, !dbg !3681
  ret void, !dbg !3682
}

; Function Attrs: noredzone
declare dso_local void @resource_list_free(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_get_resources(%struct.acpi_device* %adev, %struct.list_head* %list, i32 (%struct.acpi_resource*, i8*)* %preproc, i8* %preproc_data) #0 !dbg !3683 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %preproc.addr = alloca i32 (%struct.acpi_resource*, i8*)*, align 8
  %preproc_data.addr = alloca i8*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3689, metadata !DIExpression()), !dbg !3690
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3691, metadata !DIExpression()), !dbg !3692
  store i32 (%struct.acpi_resource*, i8*)* %preproc, i32 (%struct.acpi_resource*, i8*)** %preproc.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_resource*, i8*)** %preproc.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  store i8* %preproc_data, i8** %preproc_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %preproc_data.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3697
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3698
  %2 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %preproc.addr, align 8, !dbg !3699
  %3 = load i8*, i8** %preproc_data.addr, align 8, !dbg !3700
  %call = call i32 @__acpi_dev_get_resources(%struct.acpi_device* %0, %struct.list_head* %1, i32 (%struct.acpi_resource*, i8*)* %2, i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #5, !dbg !3701
  ret i32 %call, !dbg !3702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_dev_get_resources(%struct.acpi_device* %adev, %struct.list_head* %list, i32 (%struct.acpi_resource*, i8*)* %preproc, i8* %preproc_data, i8* %method) #0 !dbg !3703 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %preproc.addr = alloca i32 (%struct.acpi_resource*, i8*)*, align 8
  %preproc_data.addr = alloca i8*, align 8
  %method.addr = alloca i8*, align 8
  %c = alloca %struct.res_proc_context, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3706, metadata !DIExpression()), !dbg !3707
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3708, metadata !DIExpression()), !dbg !3709
  store i32 (%struct.acpi_resource*, i8*)* %preproc, i32 (%struct.acpi_resource*, i8*)** %preproc.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_resource*, i8*)** %preproc.addr, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i8* %preproc_data, i8** %preproc_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %preproc_data.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  store i8* %method, i8** %method.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %method.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.declare(metadata %struct.res_proc_context* %c, metadata !3716, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3725, metadata !DIExpression()), !dbg !3726
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3727
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3727
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3729

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3730
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !3731
  %2 = load i8*, i8** %handle, align 8, !dbg !3731
  %tobool1 = icmp ne i8* %2, null, !dbg !3730
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !3732

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3733
  %call = call i32 @list_empty(%struct.list_head* %3) #5, !dbg !3734
  %tobool3 = icmp ne i32 %call, 0, !dbg !3734
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3735

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3736
  br label %return, !dbg !3736

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3737
  %handle4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !3739
  %5 = load i8*, i8** %handle4, align 8, !dbg !3739
  %6 = load i8*, i8** %method.addr, align 8, !dbg !3740
  %call5 = call zeroext i1 @acpi_has_method(i8* %5, i8* %6) #5, !dbg !3741
  br i1 %call5, label %if.end7, label %if.then6, !dbg !3742

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3743
  br label %return, !dbg !3743

if.end7:                                          ; preds = %if.end
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3744
  %list8 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 0, !dbg !3745
  store %struct.list_head* %7, %struct.list_head** %list8, align 8, !dbg !3746
  %8 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %preproc.addr, align 8, !dbg !3747
  %preproc9 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 1, !dbg !3748
  store i32 (%struct.acpi_resource*, i8*)* %8, i32 (%struct.acpi_resource*, i8*)** %preproc9, align 8, !dbg !3749
  %9 = load i8*, i8** %preproc_data.addr, align 8, !dbg !3750
  %preproc_data10 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 2, !dbg !3751
  store i8* %9, i8** %preproc_data10, align 8, !dbg !3752
  %count = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 3, !dbg !3753
  store i32 0, i32* %count, align 8, !dbg !3754
  %error = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 4, !dbg !3755
  store i32 0, i32* %error, align 4, !dbg !3756
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3757
  %handle11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1, !dbg !3758
  %11 = load i8*, i8** %handle11, align 8, !dbg !3758
  %12 = load i8*, i8** %method.addr, align 8, !dbg !3759
  %13 = bitcast %struct.res_proc_context* %c to i8*, !dbg !3760
  %call12 = call i32 @acpi_walk_resources(i8* %11, i8* %12, i32 (%struct.acpi_resource*, i8*)* @acpi_dev_process_resource, i8* %13) #5, !dbg !3761
  store i32 %call12, i32* %status, align 4, !dbg !3762
  %14 = load i32, i32* %status, align 4, !dbg !3763
  %tobool13 = icmp ne i32 %14, 0, !dbg !3763
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !3765

if.then14:                                        ; preds = %if.end7
  %15 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3766
  call void @acpi_dev_free_resource_list(%struct.list_head* %15) #5, !dbg !3768
  %error15 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 4, !dbg !3769
  %16 = load i32, i32* %error15, align 4, !dbg !3769
  %tobool16 = icmp ne i32 %16, 0, !dbg !3770
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !3770

cond.true:                                        ; preds = %if.then14
  %error17 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 4, !dbg !3771
  %17 = load i32, i32* %error17, align 4, !dbg !3771
  br label %cond.end, !dbg !3770

cond.false:                                       ; preds = %if.then14
  br label %cond.end, !dbg !3770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ -5, %cond.false ], !dbg !3770
  store i32 %cond, i32* %retval, align 4, !dbg !3772
  br label %return, !dbg !3772

if.end18:                                         ; preds = %if.end7
  %count19 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %c, i32 0, i32 3, !dbg !3773
  %18 = load i32, i32* %count19, align 8, !dbg !3773
  store i32 %18, i32* %retval, align 4, !dbg !3774
  br label %return, !dbg !3774

return:                                           ; preds = %if.end18, %cond.end, %if.then6, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3775
  ret i32 %19, !dbg !3775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_get_dma_resources(%struct.acpi_device* %adev, %struct.list_head* %list) #0 !dbg !3776 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3783
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3784
  %call = call i32 @__acpi_dev_get_resources(%struct.acpi_device* %0, %struct.list_head* %1, i32 (%struct.acpi_resource*, i8*)* @is_memory, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3785
  ret i32 %call, !dbg !3786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_memory(%struct.acpi_resource* %ares, i8* %not_used) #0 !dbg !3787 {
entry:
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %not_used.addr = alloca i8*, align 8
  %win = alloca %struct.resource_win, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  store i8* %not_used, i8** %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %not_used.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.declare(metadata %struct.resource_win* %win, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !3794, metadata !DIExpression()), !dbg !3795
  %res1 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %win, i32 0, i32 0, !dbg !3796
  store %struct.resource* %res1, %struct.resource** %res, align 8, !dbg !3795
  %0 = bitcast %struct.resource_win* %win to i8*, !dbg !3797
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 72, i1 false), !dbg !3797
  %1 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3798
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3799
  %call = call zeroext i1 @acpi_dev_resource_memory(%struct.acpi_resource* %1, %struct.resource* %2) #5, !dbg !3800
  br i1 %call, label %lor.end, label %lor.lhs.false, !dbg !3801

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3802
  %call2 = call zeroext i1 @acpi_dev_resource_address_space(%struct.acpi_resource* %3, %struct.resource_win* %win) #5, !dbg !3803
  br i1 %call2, label %lor.end, label %lor.rhs, !dbg !3804

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3805
  %call3 = call zeroext i1 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %4, %struct.resource_win* %win) #5, !dbg !3806
  br label %lor.end, !dbg !3804

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call3, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !3807
  %lnot.ext = zext i1 %lnot to i32, !dbg !3807
  ret i32 %lnot.ext, !dbg !3808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_filter_resource_type(%struct.acpi_resource* %ares, i64 %types) #0 !dbg !3809 {
entry:
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %types.addr = alloca i64, align 8
  %type = alloca i64, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i64 %types, i64* %types.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %types.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata i64* %type, metadata !3816, metadata !DIExpression()), !dbg !3817
  store i64 0, i64* %type, align 8, !dbg !3817
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3818
  %type1 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %0, i32 0, i32 0, !dbg !3819
  %1 = load i32, i32* %type1, align 1, !dbg !3819
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
    i32 0, label %sw.bb3
    i32 15, label %sw.bb3
    i32 1, label %sw.bb4
    i32 18, label %sw.bb4
    i32 16, label %sw.bb5
    i32 11, label %sw.bb6
    i32 12, label %sw.bb6
    i32 13, label %sw.bb6
    i32 14, label %sw.bb6
  ], !dbg !3820

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i64 512, i64* %type, align 8, !dbg !3821
  br label %sw.epilog, !dbg !3823

sw.bb2:                                           ; preds = %entry, %entry
  store i64 256, i64* %type, align 8, !dbg !3824
  br label %sw.epilog, !dbg !3825

sw.bb3:                                           ; preds = %entry, %entry
  store i64 1024, i64* %type, align 8, !dbg !3826
  br label %sw.epilog, !dbg !3827

sw.bb4:                                           ; preds = %entry, %entry
  store i64 2048, i64* %type, align 8, !dbg !3828
  br label %sw.epilog, !dbg !3829

sw.bb5:                                           ; preds = %entry
  store i64 768, i64* %type, align 8, !dbg !3830
  br label %sw.epilog, !dbg !3831

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3832
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 2, !dbg !3834
  %address = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_address*, !dbg !3835
  %resource_type = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %address, i32 0, i32 0, !dbg !3836
  %3 = load i8, i8* %resource_type, align 1, !dbg !3836
  %conv = zext i8 %3 to i32, !dbg !3832
  %cmp = icmp eq i32 %conv, 0, !dbg !3837
  br i1 %cmp, label %if.then, label %if.else, !dbg !3838

if.then:                                          ; preds = %sw.bb6
  store i64 512, i64* %type, align 8, !dbg !3839
  br label %if.end24, !dbg !3840

if.else:                                          ; preds = %sw.bb6
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3841
  %data8 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !3843
  %address9 = bitcast %union.acpi_resource_data* %data8 to %struct.acpi_resource_address*, !dbg !3844
  %resource_type10 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %address9, i32 0, i32 0, !dbg !3845
  %5 = load i8, i8* %resource_type10, align 1, !dbg !3845
  %conv11 = zext i8 %5 to i32, !dbg !3841
  %cmp12 = icmp eq i32 %conv11, 1, !dbg !3846
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !3847

if.then14:                                        ; preds = %if.else
  store i64 256, i64* %type, align 8, !dbg !3848
  br label %if.end23, !dbg !3849

if.else15:                                        ; preds = %if.else
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3850
  %data16 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 2, !dbg !3852
  %address17 = bitcast %union.acpi_resource_data* %data16 to %struct.acpi_resource_address*, !dbg !3853
  %resource_type18 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %address17, i32 0, i32 0, !dbg !3854
  %7 = load i8, i8* %resource_type18, align 1, !dbg !3854
  %conv19 = zext i8 %7 to i32, !dbg !3850
  %cmp20 = icmp eq i32 %conv19, 2, !dbg !3855
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !3856

if.then22:                                        ; preds = %if.else15
  store i64 4096, i64* %type, align 8, !dbg !3857
  br label %if.end, !dbg !3858

if.end:                                           ; preds = %if.then22, %if.else15
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  br label %sw.epilog, !dbg !3859

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !3860

sw.epilog:                                        ; preds = %sw.default, %if.end24, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %8 = load i64, i64* %type, align 8, !dbg !3861
  %9 = load i64, i64* %types.addr, align 8, !dbg !3862
  %and = and i64 %8, %9, !dbg !3863
  %tobool = icmp ne i64 %and, 0, !dbg !3864
  %10 = zext i1 %tobool to i64, !dbg !3864
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !3864
  ret i32 %cond, !dbg !3865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device* @acpi_resource_consumer(%struct.resource* %res) #0 !dbg !3866 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %consumer = alloca %struct.acpi_device*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3869, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %consumer, metadata !3871, metadata !DIExpression()), !dbg !3872
  store %struct.acpi_device* null, %struct.acpi_device** %consumer, align 8, !dbg !3872
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3873
  %1 = bitcast %struct.resource* %0 to i8*, !dbg !3873
  %2 = bitcast %struct.acpi_device** %consumer to i8**, !dbg !3874
  %call = call i32 @acpi_get_devices(i8* null, i32 (i8*, i32, i8*, i8**)* @acpi_res_consumer_cb, i8* %1, i8** %2) #5, !dbg !3875
  %3 = load %struct.acpi_device*, %struct.acpi_device** %consumer, align 8, !dbg !3876
  ret %struct.acpi_device* %3, !dbg !3877
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_devices(i8*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_res_consumer_cb(i8* %handle, i32 %depth, i8* %context, i8** %ret) #0 !dbg !3878 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %ret.addr = alloca i8**, align 8
  %res = alloca %struct.resource*, align 8
  %consumer = alloca %struct.acpi_device**, align 8
  %adev = alloca %struct.acpi_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3881, metadata !DIExpression()), !dbg !3882
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !3883, metadata !DIExpression()), !dbg !3884
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3885, metadata !DIExpression()), !dbg !3886
  store i8** %ret, i8*** %ret.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %ret.addr, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !3889, metadata !DIExpression()), !dbg !3890
  %0 = load i8*, i8** %context.addr, align 8, !dbg !3891
  %1 = bitcast i8* %0 to %struct.resource*, !dbg !3891
  store %struct.resource* %1, %struct.resource** %res, align 8, !dbg !3890
  call void @llvm.dbg.declare(metadata %struct.acpi_device*** %consumer, metadata !3892, metadata !DIExpression()), !dbg !3893
  %2 = load i8**, i8*** %ret.addr, align 8, !dbg !3894
  %3 = bitcast i8** %2 to %struct.acpi_device**, !dbg !3895
  store %struct.acpi_device** %3, %struct.acpi_device*** %consumer, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3896, metadata !DIExpression()), !dbg !3897
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !3898
  %call = call i32 @acpi_bus_get_device(i8* %4, %struct.acpi_device** %adev) #5, !dbg !3900
  %tobool = icmp ne i32 %call, 0, !dbg !3900
  br i1 %tobool, label %if.then, label %if.end, !dbg !3901

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3902
  br label %return, !dbg !3902

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3903
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3905
  %call1 = call i32 @acpi_dev_consumes_res(%struct.acpi_device* %5, %struct.resource* %6) #5, !dbg !3906
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3906
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3907

if.then3:                                         ; preds = %if.end
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3908
  %8 = load %struct.acpi_device**, %struct.acpi_device*** %consumer, align 8, !dbg !3910
  store %struct.acpi_device* %7, %struct.acpi_device** %8, align 8, !dbg !3911
  store i32 16387, i32* %retval, align 4, !dbg !3912
  br label %return, !dbg !3912

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3913
  br label %return, !dbg !3913

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3914
  ret i32 %9, !dbg !3914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_memresource_flags(%struct.resource* %res, i64 %len, i8 zeroext %write_protect) #0 !dbg !3915 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %len.addr = alloca i64, align 8
  %write_protect.addr = alloca i8, align 1
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3918, metadata !DIExpression()), !dbg !3919
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  store i8 %write_protect, i8* %write_protect.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %write_protect.addr, metadata !3922, metadata !DIExpression()), !dbg !3923
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3924
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !3925
  store i64 512, i64* %flags, align 8, !dbg !3926
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3927
  %start = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !3929
  %2 = load i64, i64* %start, align 8, !dbg !3929
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3930
  %end = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 1, !dbg !3931
  %4 = load i64, i64* %end, align 8, !dbg !3931
  %5 = load i64, i64* %len.addr, align 8, !dbg !3932
  %call = call zeroext i1 @acpi_dev_resource_len_valid(i64 %2, i64 %4, i64 %5, i1 zeroext false) #5, !dbg !3933
  br i1 %call, label %if.end, label %if.then, !dbg !3934

if.then:                                          ; preds = %entry
  %6 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3935
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !3936
  %7 = load i64, i64* %flags1, align 8, !dbg !3937
  %or = or i64 %7, 805306368, !dbg !3937
  store i64 %or, i64* %flags1, align 8, !dbg !3937
  br label %if.end, !dbg !3935

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, i8* %write_protect.addr, align 1, !dbg !3938
  %conv = zext i8 %8 to i32, !dbg !3938
  %cmp = icmp eq i32 %conv, 1, !dbg !3940
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !3941

if.then3:                                         ; preds = %if.end
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3942
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 3, !dbg !3943
  %10 = load i64, i64* %flags4, align 8, !dbg !3944
  %or5 = or i64 %10, 1, !dbg !3944
  store i64 %or5, i64* %flags4, align 8, !dbg !3944
  br label %if.end6, !dbg !3942

if.end6:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !3945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_dev_resource_len_valid(i64 %start, i64 %end, i64 %len, i1 zeroext %io) #0 !dbg !3946 {
entry:
  %retval = alloca i1, align 1
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %io.addr = alloca i8, align 1
  %reslen = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  %frombool = zext i1 %io to i8
  store i8 %frombool, i8* %io.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %io.addr, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.declare(metadata i64* %reslen, metadata !3957, metadata !DIExpression()), !dbg !3958
  %0 = load i64, i64* %end.addr, align 8, !dbg !3959
  %1 = load i64, i64* %start.addr, align 8, !dbg !3960
  %sub = sub i64 %0, %1, !dbg !3961
  %add = add i64 %sub, 1, !dbg !3962
  store i64 %add, i64* %reslen, align 8, !dbg !3958
  %2 = load i64, i64* %len.addr, align 8, !dbg !3963
  %tobool = icmp ne i64 %2, 0, !dbg !3963
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3965

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %reslen, align 8, !dbg !3966
  %tobool1 = icmp ne i64 %3, 0, !dbg !3966
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !3967

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i64, i64* %start.addr, align 8, !dbg !3968
  %5 = load i64, i64* %end.addr, align 8, !dbg !3969
  %cmp = icmp ule i64 %4, %5, !dbg !3970
  br i1 %cmp, label %if.then, label %if.end, !dbg !3971

if.then:                                          ; preds = %land.lhs.true2
  store i1 true, i1* %retval, align 1, !dbg !3972
  br label %return, !dbg !3972

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, i32* %tmp, align 4, !dbg !3973
  %6 = load i32, i32* %tmp, align 4, !dbg !3976
  store i1 false, i1* %retval, align 1, !dbg !3977
  br label %return, !dbg !3977

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !3978
  ret i1 %7, !dbg !3978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_ioresource_flags(%struct.resource* %res, i64 %len, i8 zeroext %io_decode, i8 zeroext %translation_type) #0 !dbg !3979 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  %len.addr = alloca i64, align 8
  %io_decode.addr = alloca i8, align 1
  %translation_type.addr = alloca i8, align 1
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i8 %io_decode, i8* %io_decode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %io_decode.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  store i8 %translation_type, i8* %translation_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %translation_type.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3990
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !3991
  store i64 256, i64* %flags, align 8, !dbg !3992
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3993
  %start = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !3995
  %2 = load i64, i64* %start, align 8, !dbg !3995
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3996
  %end = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 1, !dbg !3997
  %4 = load i64, i64* %end, align 8, !dbg !3997
  %5 = load i64, i64* %len.addr, align 8, !dbg !3998
  %call = call zeroext i1 @acpi_dev_resource_len_valid(i64 %2, i64 %4, i64 %5, i1 zeroext true) #5, !dbg !3999
  br i1 %call, label %if.end, label %if.then, !dbg !4000

if.then:                                          ; preds = %entry
  %6 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4001
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !4002
  %7 = load i64, i64* %flags1, align 8, !dbg !4003
  %or = or i64 %7, 805306368, !dbg !4003
  store i64 %or, i64* %flags1, align 8, !dbg !4003
  br label %if.end, !dbg !4001

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4004
  %call2 = call zeroext i1 @acpi_iospace_resource_valid(%struct.resource* %8) #5, !dbg !4006
  br i1 %call2, label %if.end6, label %if.then3, !dbg !4007

if.then3:                                         ; preds = %if.end
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4008
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 3, !dbg !4009
  %10 = load i64, i64* %flags4, align 8, !dbg !4010
  %or5 = or i64 %10, 805306368, !dbg !4010
  store i64 %or5, i64* %flags4, align 8, !dbg !4010
  br label %if.end6, !dbg !4008

if.end6:                                          ; preds = %if.then3, %if.end
  %11 = load i8, i8* %io_decode.addr, align 1, !dbg !4011
  %conv = zext i8 %11 to i32, !dbg !4011
  %cmp = icmp eq i32 %conv, 1, !dbg !4013
  br i1 %cmp, label %if.then8, label %if.end11, !dbg !4014

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4015
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !4016
  %13 = load i64, i64* %flags9, align 8, !dbg !4017
  %or10 = or i64 %13, 1, !dbg !4017
  store i64 %or10, i64* %flags9, align 8, !dbg !4017
  br label %if.end11, !dbg !4015

if.end11:                                         ; preds = %if.then8, %if.end6
  %14 = load i8, i8* %translation_type.addr, align 1, !dbg !4018
  %conv12 = zext i8 %14 to i32, !dbg !4018
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !4020
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !4021

if.then15:                                        ; preds = %if.end11
  %15 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4022
  %flags16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 3, !dbg !4023
  %16 = load i64, i64* %flags16, align 8, !dbg !4024
  %or17 = or i64 %16, 4, !dbg !4024
  store i64 %or17, i64* %flags16, align 8, !dbg !4024
  br label %if.end18, !dbg !4022

if.end18:                                         ; preds = %if.then15, %if.end11
  ret void, !dbg !4025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_iospace_resource_valid(%struct.resource* %res) #0 !dbg !4026 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4029, metadata !DIExpression()), !dbg !4030
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4031
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !4032
  %1 = load i64, i64* %end, align 8, !dbg !4032
  %cmp = icmp ult i64 %1, 65539, !dbg !4033
  ret i1 %cmp, !dbg !4034
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_override_irq(i32, i32*, i32*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_register_gsi(%struct.device*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4035 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  br label %do.body, !dbg !4043

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4045

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4043
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4043
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4043
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4045
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4043
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4047
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4048
  %conv = zext i1 %cmp to i32, !dbg !4048
  ret i32 %conv, !dbg !4049
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_resources(i8*, i8*, i32 (%struct.acpi_resource*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_process_resource(%struct.acpi_resource* %ares, i8* %context) #0 !dbg !4050 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %context.addr = alloca i8*, align 8
  %c = alloca %struct.res_proc_context*, align 8
  %win = alloca %struct.resource_win, align 8
  %res = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.declare(metadata %struct.res_proc_context** %c, metadata !4057, metadata !DIExpression()), !dbg !4059
  %0 = load i8*, i8** %context.addr, align 8, !dbg !4060
  %1 = bitcast i8* %0 to %struct.res_proc_context*, !dbg !4060
  store %struct.res_proc_context* %1, %struct.res_proc_context** %c, align 8, !dbg !4059
  call void @llvm.dbg.declare(metadata %struct.resource_win* %win, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4063, metadata !DIExpression()), !dbg !4064
  %res1 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %win, i32 0, i32 0, !dbg !4065
  store %struct.resource* %res1, %struct.resource** %res, align 8, !dbg !4064
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4066, metadata !DIExpression()), !dbg !4067
  %2 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4068
  %preproc = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %2, i32 0, i32 1, !dbg !4070
  %3 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %preproc, align 8, !dbg !4070
  %tobool = icmp ne i32 (%struct.acpi_resource*, i8*)* %3, null, !dbg !4068
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4071

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4072, metadata !DIExpression()), !dbg !4074
  %4 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4075
  %preproc2 = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %4, i32 0, i32 1, !dbg !4076
  %5 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %preproc2, align 8, !dbg !4076
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4077
  %7 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4078
  %preproc_data = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %7, i32 0, i32 2, !dbg !4079
  %8 = load i8*, i8** %preproc_data, align 8, !dbg !4079
  %call = call i32 %5(%struct.acpi_resource* %6, i8* %8) #5, !dbg !4075
  store i32 %call, i32* %ret, align 4, !dbg !4080
  %9 = load i32, i32* %ret, align 4, !dbg !4081
  %cmp = icmp slt i32 %9, 0, !dbg !4083
  br i1 %cmp, label %if.then3, label %if.else, !dbg !4084

if.then3:                                         ; preds = %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !4085
  %11 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4087
  %error = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %11, i32 0, i32 4, !dbg !4088
  store i32 %10, i32* %error, align 4, !dbg !4089
  store i32 16387, i32* %retval, align 4, !dbg !4090
  br label %return, !dbg !4090

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %ret, align 4, !dbg !4091
  %cmp4 = icmp sgt i32 %12, 0, !dbg !4093
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !4094

if.then5:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !4095
  br label %return, !dbg !4095

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7, !dbg !4097

if.end7:                                          ; preds = %if.end6, %entry
  %13 = bitcast %struct.resource_win* %win to i8*, !dbg !4098
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 72, i1 false), !dbg !4098
  %14 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4099
  %15 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4101
  %call8 = call zeroext i1 @acpi_dev_resource_memory(%struct.acpi_resource* %14, %struct.resource* %15) #5, !dbg !4102
  br i1 %call8, label %if.then14, label %lor.lhs.false, !dbg !4103

lor.lhs.false:                                    ; preds = %if.end7
  %16 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4104
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4105
  %call9 = call zeroext i1 @acpi_dev_resource_io(%struct.acpi_resource* %16, %struct.resource* %17) #5, !dbg !4106
  br i1 %call9, label %if.then14, label %lor.lhs.false10, !dbg !4107

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4108
  %call11 = call zeroext i1 @acpi_dev_resource_address_space(%struct.acpi_resource* %18, %struct.resource_win* %win) #5, !dbg !4109
  br i1 %call11, label %if.then14, label %lor.lhs.false12, !dbg !4110

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %19 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4111
  %call13 = call zeroext i1 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %19, %struct.resource_win* %win) #5, !dbg !4112
  br i1 %call13, label %if.then14, label %if.end16, !dbg !4113

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false, %if.end7
  %20 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4114
  %call15 = call i32 @acpi_dev_new_resource_entry(%struct.resource_win* %win, %struct.res_proc_context* %20) #5, !dbg !4115
  store i32 %call15, i32* %retval, align 4, !dbg !4116
  br label %return, !dbg !4116

if.end16:                                         ; preds = %lor.lhs.false12
  store i32 0, i32* %i, align 4, !dbg !4117
  br label %for.cond, !dbg !4119

for.cond:                                         ; preds = %for.inc, %if.end16
  %21 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !4120
  %22 = load i32, i32* %i, align 4, !dbg !4122
  %23 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4123
  %call17 = call zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource* %21, i32 %22, %struct.resource* %23) #5, !dbg !4124
  br i1 %call17, label %for.body, label %for.end, !dbg !4125

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4126, metadata !DIExpression()), !dbg !4128
  %24 = load %struct.res_proc_context*, %struct.res_proc_context** %c, align 8, !dbg !4129
  %call18 = call i32 @acpi_dev_new_resource_entry(%struct.resource_win* %win, %struct.res_proc_context* %24) #5, !dbg !4130
  store i32 %call18, i32* %status, align 4, !dbg !4131
  %25 = load i32, i32* %status, align 4, !dbg !4132
  %tobool19 = icmp ne i32 %25, 0, !dbg !4132
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4134

if.then20:                                        ; preds = %for.body
  %26 = load i32, i32* %status, align 4, !dbg !4135
  store i32 %26, i32* %retval, align 4, !dbg !4136
  br label %return, !dbg !4136

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !4137

for.inc:                                          ; preds = %if.end21
  %27 = load i32, i32* %i, align 4, !dbg !4138
  %inc = add i32 %27, 1, !dbg !4138
  store i32 %inc, i32* %i, align 4, !dbg !4138
  br label %for.cond, !dbg !4139, !llvm.loop !4140

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4142
  br label %return, !dbg !4142

return:                                           ; preds = %for.end, %if.then20, %if.then14, %if.then5, %if.then3
  %28 = load i32, i32* %retval, align 4, !dbg !4143
  ret i32 %28, !dbg !4143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_new_resource_entry(%struct.resource_win* %win, %struct.res_proc_context* %c) #0 !dbg !4144 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca %struct.resource_win*, align 8
  %c.addr = alloca %struct.res_proc_context*, align 8
  %rentry = alloca %struct.resource_entry*, align 8
  store %struct.resource_win* %win, %struct.resource_win** %win.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_win** %win.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  store %struct.res_proc_context* %c, %struct.res_proc_context** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.res_proc_context** %c.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %rentry, metadata !4151, metadata !DIExpression()), !dbg !4152
  %call = call %struct.resource_entry* @resource_list_create_entry(%struct.resource* null, i64 0) #5, !dbg !4153
  store %struct.resource_entry* %call, %struct.resource_entry** %rentry, align 8, !dbg !4154
  %0 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4155
  %tobool = icmp ne %struct.resource_entry* %0, null, !dbg !4155
  br i1 %tobool, label %if.end, label %if.then, !dbg !4157

if.then:                                          ; preds = %entry
  %1 = load %struct.res_proc_context*, %struct.res_proc_context** %c.addr, align 8, !dbg !4158
  %error = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %1, i32 0, i32 4, !dbg !4160
  store i32 -12, i32* %error, align 4, !dbg !4161
  store i32 4, i32* %retval, align 4, !dbg !4162
  br label %return, !dbg !4162

if.end:                                           ; preds = %entry
  %2 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4163
  %res = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %2, i32 0, i32 1, !dbg !4164
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4164
  %4 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !4165
  %res1 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %4, i32 0, i32 0, !dbg !4166
  %5 = bitcast %struct.resource* %3 to i8*, !dbg !4166
  %6 = bitcast %struct.resource* %res1 to i8*, !dbg !4166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 64, i1 false), !dbg !4166
  %7 = load %struct.resource_win*, %struct.resource_win** %win.addr, align 8, !dbg !4167
  %offset = getelementptr inbounds %struct.resource_win, %struct.resource_win* %7, i32 0, i32 1, !dbg !4168
  %8 = load i64, i64* %offset, align 8, !dbg !4168
  %9 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4169
  %offset2 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %9, i32 0, i32 2, !dbg !4170
  store i64 %8, i64* %offset2, align 8, !dbg !4171
  %10 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4172
  %11 = load %struct.res_proc_context*, %struct.res_proc_context** %c.addr, align 8, !dbg !4173
  %list = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %11, i32 0, i32 0, !dbg !4174
  %12 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !4174
  call void @resource_list_add_tail(%struct.resource_entry* %10, %struct.list_head* %12) #5, !dbg !4175
  %13 = load %struct.res_proc_context*, %struct.res_proc_context** %c.addr, align 8, !dbg !4176
  %count = getelementptr inbounds %struct.res_proc_context, %struct.res_proc_context* %13, i32 0, i32 3, !dbg !4177
  %14 = load i32, i32* %count, align 8, !dbg !4178
  %inc = add i32 %14, 1, !dbg !4178
  store i32 %inc, i32* %count, align 8, !dbg !4178
  store i32 0, i32* %retval, align 4, !dbg !4179
  br label %return, !dbg !4179

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4180
  ret i32 %15, !dbg !4180
}

; Function Attrs: noredzone
declare dso_local %struct.resource_entry* @resource_list_create_entry(%struct.resource*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resource_list_add_tail(%struct.resource_entry* %entry1, %struct.list_head* %head) #0 !dbg !4181 {
entry:
  %entry.addr = alloca %struct.resource_entry*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.resource_entry* %entry1, %struct.resource_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  %0 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !4188
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %0, i32 0, i32 0, !dbg !4189
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4190
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %1) #5, !dbg !4191
  ret void, !dbg !4192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4193 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4196, metadata !DIExpression()), !dbg !4197
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4198, metadata !DIExpression()), !dbg !4199
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4200
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4201
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4202
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4202
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4203
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #5, !dbg !4204
  ret void, !dbg !4205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4206 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4209, metadata !DIExpression()), !dbg !4210
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4215
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4217
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4218
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #5, !dbg !4219
  br i1 %call, label %if.end, label %if.then, !dbg !4220

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4221

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4222
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4223
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4224
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4225
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4226
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4227
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4228
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4229
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4230
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4231
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4232
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4233
  br label %do.body, !dbg !4234

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4235

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4237

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4235

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4239
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4239
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4239
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4239
  br label %do.end7, !dbg !4239

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4235

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4242 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  ret i1 true, !dbg !4251
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_consumes_res(%struct.acpi_device* %adev, %struct.resource* %res) #0 !dbg !4252 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %rentry = alloca %struct.resource_entry*, align 8
  %ret = alloca i32, align 4
  %found = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp11 = alloca %struct.resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %rentry, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %found, metadata !4265, metadata !DIExpression()), !dbg !4266
  store i32 0, i32* %found, align 4, !dbg !4266
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #5, !dbg !4267
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4268
  %call = call i32 @acpi_dev_get_resources(%struct.acpi_device* %0, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* null, i8* null) #5, !dbg !4269
  store i32 %call, i32* %ret, align 4, !dbg !4270
  %1 = load i32, i32* %ret, align 4, !dbg !4271
  %cmp = icmp slt i32 %1, 0, !dbg !4273
  br i1 %cmp, label %if.then, label %if.end, !dbg !4274

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4275
  br label %return, !dbg !4275

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4276, metadata !DIExpression()), !dbg !4279
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resource_list, i32 0, i32 0, !dbg !4279
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4279
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4279
  store i8* %3, i8** %__mptr, align 8, !dbg !4279
  br label %do.body, !dbg !4279

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4280

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4279
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4279
  %5 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !4279
  store %struct.resource_entry* %5, %struct.resource_entry** %tmp, align 8, !dbg !4280
  %6 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !4279
  store %struct.resource_entry* %6, %struct.resource_entry** %rentry, align 8, !dbg !4282
  br label %for.cond, !dbg !4282

for.cond:                                         ; preds = %do.end10, %do.end
  %7 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4283
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %7, i32 0, i32 0, !dbg !4283
  %cmp1 = icmp eq %struct.list_head* %node, %resource_list, !dbg !4283
  %lnot = xor i1 %cmp1, true, !dbg !4283
  br i1 %lnot, label %for.body, label %for.end, !dbg !4282

for.body:                                         ; preds = %for.cond
  %8 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4285
  %res2 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %8, i32 0, i32 1, !dbg !4288
  %9 = load %struct.resource*, %struct.resource** %res2, align 8, !dbg !4288
  %10 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4289
  %call3 = call zeroext i1 @resource_contains(%struct.resource* %9, %struct.resource* %10) #5, !dbg !4290
  br i1 %call3, label %if.then4, label %if.end5, !dbg !4291

if.then4:                                         ; preds = %for.body
  store i32 1, i32* %found, align 4, !dbg !4292
  br label %for.end, !dbg !4294

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4295

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4296, metadata !DIExpression()), !dbg !4298
  %11 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4298
  %node7 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %11, i32 0, i32 0, !dbg !4298
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %node7, i32 0, i32 0, !dbg !4298
  %12 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !4298
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4298
  store i8* %13, i8** %__mptr6, align 8, !dbg !4298
  br label %do.body9, !dbg !4298

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !4299

do.end10:                                         ; preds = %do.body9
  %14 = load i8*, i8** %__mptr6, align 8, !dbg !4298
  %add.ptr12 = getelementptr i8, i8* %14, i64 0, !dbg !4298
  %15 = bitcast i8* %add.ptr12 to %struct.resource_entry*, !dbg !4298
  store %struct.resource_entry* %15, %struct.resource_entry** %tmp11, align 8, !dbg !4299
  %16 = load %struct.resource_entry*, %struct.resource_entry** %tmp11, align 8, !dbg !4298
  store %struct.resource_entry* %16, %struct.resource_entry** %rentry, align 8, !dbg !4283
  br label %for.cond, !dbg !4283, !llvm.loop !4301

for.end:                                          ; preds = %if.then4, %for.cond
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #5, !dbg !4303
  %17 = load i32, i32* %found, align 4, !dbg !4304
  store i32 %17, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4306
  ret i32 %18, !dbg !4306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4307 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  br label %do.body, !dbg !4310

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4311

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4313

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4311

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4315
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4315
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4315
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4315
  br label %do.end3, !dbg !4315

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4311

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4317
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4318
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4319
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4320
  ret void, !dbg !4321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @resource_contains(%struct.resource* %r1, %struct.resource* %r2) #0 !dbg !4322 {
entry:
  %retval = alloca i1, align 1
  %r1.addr = alloca %struct.resource*, align 8
  %r2.addr = alloca %struct.resource*, align 8
  store %struct.resource* %r1, %struct.resource** %r1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r1.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  store %struct.resource* %r2, %struct.resource** %r2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r2.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  %0 = load %struct.resource*, %struct.resource** %r1.addr, align 8, !dbg !4329
  %call = call i64 @resource_type(%struct.resource* %0) #5, !dbg !4331
  %1 = load %struct.resource*, %struct.resource** %r2.addr, align 8, !dbg !4332
  %call1 = call i64 @resource_type(%struct.resource* %1) #5, !dbg !4333
  %cmp = icmp ne i64 %call, %call1, !dbg !4334
  br i1 %cmp, label %if.then, label %if.end, !dbg !4335

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4336
  br label %return, !dbg !4336

if.end:                                           ; preds = %entry
  %2 = load %struct.resource*, %struct.resource** %r1.addr, align 8, !dbg !4337
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4339
  %3 = load i64, i64* %flags, align 8, !dbg !4339
  %and = and i64 %3, 536870912, !dbg !4340
  %tobool = icmp ne i64 %and, 0, !dbg !4340
  br i1 %tobool, label %if.then5, label %lor.lhs.false, !dbg !4341

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.resource*, %struct.resource** %r2.addr, align 8, !dbg !4342
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !4343
  %5 = load i64, i64* %flags2, align 8, !dbg !4343
  %and3 = and i64 %5, 536870912, !dbg !4344
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4344
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4345

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, i1* %retval, align 1, !dbg !4346
  br label %return, !dbg !4346

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load %struct.resource*, %struct.resource** %r1.addr, align 8, !dbg !4347
  %start = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0, !dbg !4348
  %7 = load i64, i64* %start, align 8, !dbg !4348
  %8 = load %struct.resource*, %struct.resource** %r2.addr, align 8, !dbg !4349
  %start7 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !4350
  %9 = load i64, i64* %start7, align 8, !dbg !4350
  %cmp8 = icmp ule i64 %7, %9, !dbg !4351
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !4352

land.rhs:                                         ; preds = %if.end6
  %10 = load %struct.resource*, %struct.resource** %r1.addr, align 8, !dbg !4353
  %end = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !4354
  %11 = load i64, i64* %end, align 8, !dbg !4354
  %12 = load %struct.resource*, %struct.resource** %r2.addr, align 8, !dbg !4355
  %end9 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 1, !dbg !4356
  %13 = load i64, i64* %end9, align 8, !dbg !4356
  %cmp10 = icmp uge i64 %11, %13, !dbg !4357
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end6
  %14 = phi i1 [ false, %if.end6 ], [ %cmp10, %land.rhs ], !dbg !4358
  store i1 %14, i1* %retval, align 1, !dbg !4359
  br label %return, !dbg !4359

return:                                           ; preds = %land.end, %if.then5, %if.then
  %15 = load i1, i1* %retval, align 1, !dbg !4360
  ret i1 %15, !dbg !4360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_type(%struct.resource* %res) #0 !dbg !4361 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4368
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !4369
  %1 = load i64, i64* %flags, align 8, !dbg !4369
  %and = and i64 %1, 7936, !dbg !4370
  ret i64 %and, !dbg !4371
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2707, !2708, !2709, !2710}
!llvm.ident = !{!2711}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !100, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/resource.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !35, !40, !46, !52, !58, !65, !73, !79, !93}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 76, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!12 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3, isUnsigned: true)
!16 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4, isUnsigned: true)
!17 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12, isUnsigned: true)
!19 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15, isUnsigned: true)
!20 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15, isUnsigned: true)
!21 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16, isUnsigned: true)
!22 = !DIEnumerator(name: "IRQ_LEVEL", value: 256, isUnsigned: true)
!23 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512, isUnsigned: true)
!24 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024, isUnsigned: true)
!25 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048, isUnsigned: true)
!26 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096, isUnsigned: true)
!27 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192, isUnsigned: true)
!28 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384, isUnsigned: true)
!29 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768, isUnsigned: true)
!30 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536, isUnsigned: true)
!31 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072, isUnsigned: true)
!32 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144, isUnsigned: true)
!33 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288, isUnsigned: true)
!34 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !41, line: 16, baseType: !5, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !47, line: 26, baseType: !5, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !53, line: 44, baseType: !5, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !59, line: 343, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !66, line: 524, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70, !71, !72}
!68 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !66, line: 502, baseType: !5, size: 32, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !80, line: 76, baseType: !5, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!82 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !10, line: 1084, baseType: !5, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!100 = !{!101, !106, !133, !134, !135, !144, !148, !149, !2686}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !102, line: 17, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 21, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !108, line: 303, size: 72, elements: !109)
!108 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !107, file: !108, line: 304, baseType: !101, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !107, file: !108, line: 304, baseType: !101, size: 8, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !107, file: !108, line: 304, baseType: !101, size: 8, offset: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !107, file: !108, line: 304, baseType: !101, size: 8, offset: 24)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !107, file: !108, line: 304, baseType: !101, size: 8, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !107, file: !108, line: 304, baseType: !116, size: 32, offset: 40)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !108, line: 249, size: 32, elements: !117)
!117 = !{!118, !125, !132}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !116, file: !108, line: 250, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !108, line: 235, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !119, file: !108, line: 236, baseType: !101, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !119, file: !108, line: 237, baseType: !101, size: 8, offset: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !119, file: !108, line: 238, baseType: !101, size: 8, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !119, file: !108, line: 239, baseType: !101, size: 8, offset: 24)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !116, file: !108, line: 251, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !108, line: 242, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !126, file: !108, line: 243, baseType: !101, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !126, file: !108, line: 244, baseType: !101, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !126, file: !108, line: 245, baseType: !101, size: 8, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !126, file: !108, line: 246, baseType: !101, size: 8, offset: 24)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !116, file: !108, line: 255, baseType: !101, size: 8)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !140, line: 178, size: 128, elements: !141)
!140 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 179, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !139, file: !140, line: 179, baseType: !138, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !145, line: 421, baseType: !146)
!145 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !102, line: 21, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 27, baseType: !5)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !152, line: 351, size: 10880, elements: !153)
!152 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !156, !158, !2415, !2416, !2417, !2418, !2419, !2420, !2429, !2446, !2520, !2549, !2573, !2594, !2598, !2607, !2639, !2653, !2675, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !151, file: !152, line: 352, baseType: !155, size: 32)
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !151, file: !152, line: 353, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !145, line: 424, baseType: !133)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !151, file: !152, line: 354, baseType: !159, size: 192, offset: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !160, line: 17, size: 192, elements: !161)
!160 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !164, !2414}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !159, file: !160, line: 18, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !159, file: !160, line: 19, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !160, line: 110, size: 1152, elements: !168)
!168 = !{!169, !173, !177, !185, !2356, !2360, !2364, !2369, !2373, !2374, !2378, !2382, !2386, !2397, !2398, !2399, !2400, !2410}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !167, file: !160, line: 111, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!163, !163}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !167, file: !160, line: 112, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !163}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !167, file: !160, line: 113, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !140, line: 30, baseType: !182)
!182 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !167, file: !160, line: 114, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !183, !191}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !59, line: 461, size: 5568, elements: !194)
!194 = !{!195, !1685, !1687, !1690, !1691, !1742, !1839, !1840, !1841, !1842, !1843, !1852, !1957, !1970, !2281, !2282, !2286, !2288, !2289, !2290, !2294, !2300, !2301, !2304, !2305, !2306, !2309, !2310, !2311, !2312, !2344, !2345, !2346, !2349, !2352, !2353, !2354, !2355}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !193, file: !59, line: 462, baseType: !196, size: 512)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !197, line: 64, size: 512, elements: !198)
!197 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !203, !204, !206, !266, !1521, !1675, !1680, !1681, !1682, !1683, !1684}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 65, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !196, file: !197, line: 66, baseType: !139, size: 128, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 67, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !196, file: !197, line: 68, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !197, line: 192, size: 704, elements: !209)
!209 = !{!210, !211, !227, !228}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !197, line: 193, baseType: !139, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !208, file: !197, line: 194, baseType: !212, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !213, line: 83, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !213, line: 71, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 72, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 72, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !217, file: !213, line: 73, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 20, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !220, file: !213, line: 21, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !224, line: 25, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 25, elements: !226)
!226 = !{}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !208, file: !197, line: 195, baseType: !196, size: 512, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !208, file: !197, line: 196, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !197, line: 156, size: 192, elements: !232)
!232 = !{!233, !238, !243}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !231, file: !197, line: 157, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!155, !207, !205}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !197, line: 158, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!200, !207, !205}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !231, file: !197, line: 159, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!155, !207, !205, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !197, line: 148, size: 20736, elements: !250)
!250 = !{!251, !256, !260, !261, !265}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !249, file: !197, line: 149, baseType: !252, size: 192)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 192, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!254 = !{!255}
!255 = !DISubrange(count: 3)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !249, file: !197, line: 150, baseType: !257, size: 4096, offset: 192)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4096, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !249, file: !197, line: 151, baseType: !155, size: 32, offset: 4288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !249, file: !197, line: 152, baseType: !262, size: 16384, offset: 4320)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16384, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 2048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !249, file: !197, line: 153, baseType: !155, size: 32, offset: 20704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !196, file: !197, line: 69, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !197, line: 138, size: 448, elements: !269)
!269 = !{!270, !274, !304, !306, !1468, !1499, !1503}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !268, file: !197, line: 139, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !205}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !268, file: !197, line: 140, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !278, line: 230, size: 128, elements: !279)
!278 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !296}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !277, file: !278, line: 231, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !205, !289, !253}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !140, line: 60, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !286, line: 73, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !286, line: 15, baseType: !288)
!288 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !278, line: 30, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !278, line: 31, baseType: !200, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !290, file: !278, line: 32, baseType: !294, size: 16, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !140, line: 19, baseType: !295)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !277, file: !278, line: 232, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!284, !205, !289, !200, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 55, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !286, line: 72, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !286, line: 16, baseType: !303)
!303 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !268, file: !197, line: 141, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !268, file: !197, line: 142, baseType: !307, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !278, line: 84, size: 320, elements: !311)
!311 = !{!312, !313, !317, !1465, !1466}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !278, line: 85, baseType: !200, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !310, file: !278, line: 86, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!294, !205, !289, !155}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !310, file: !278, line: 88, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!294, !205, !321, !155}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !278, line: 168, size: 448, elements: !323)
!323 = !{!324, !325, !326, !327, !337, !338}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !322, file: !278, line: 169, baseType: !290, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !278, line: 170, baseType: !300, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !322, file: !278, line: 171, baseType: !133, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !322, file: !278, line: 172, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!284, !331, !205, !321, !253, !334, !300}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !333, line: 526, flags: DIFlagFwdDecl)
!333 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !140, line: 46, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !286, line: 88, baseType: !336)
!336 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !322, file: !278, line: 174, baseType: !328, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !322, file: !278, line: 176, baseType: !339, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!155, !331, !205, !321, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !344, line: 305, size: 1472, elements: !345)
!344 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !347, !348, !349, !350, !358, !359, !1439, !1445, !1446, !1451, !1452, !1455, !1459, !1460, !1461, !1462, !1463}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !343, file: !344, line: 308, baseType: !303, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !343, file: !344, line: 309, baseType: !303, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !343, file: !344, line: 313, baseType: !342, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !343, file: !344, line: 313, baseType: !342, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !343, file: !344, line: 315, baseType: !351, size: 192, align: 64, offset: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !352, line: 24, size: 192, align: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !351, file: !352, line: 25, baseType: !303, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !351, file: !352, line: 26, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !351, file: !352, line: 27, baseType: !356, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !343, file: !344, line: 323, baseType: !303, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !343, file: !344, line: 327, baseType: !360, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !344, line: 388, size: 7296, elements: !362)
!362 = !{!363, !1435}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !344, line: 389, baseType: !364, size: 7296)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !344, line: 389, size: 7296, elements: !365)
!365 = !{!366, !367, !371, !375, !379, !380, !381, !382, !383, !391, !396, !397, !398, !399, !408, !409, !410, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !445, !453, !456, !504, !505, !1406, !1407, !1410, !1413, !1414, !1417, !1418, !1419, !1422, !1434}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !364, file: !344, line: 390, baseType: !342, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !364, file: !344, line: 391, baseType: !368, size: 64, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !352, line: 31, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !368, file: !352, line: 32, baseType: !356, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !364, file: !344, line: 392, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !102, line: 23, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 31, baseType: !374)
!374 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !364, file: !344, line: 394, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!303, !331, !303, !303, !303, !303}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !364, file: !344, line: 398, baseType: !303, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !364, file: !344, line: 399, baseType: !303, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !364, file: !344, line: 405, baseType: !303, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !364, file: !344, line: 406, baseType: !303, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !364, file: !344, line: 407, baseType: !384, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !333, line: 286, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 286, size: 64, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !386, file: !333, line: 286, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !390, line: 18, baseType: !303)
!390 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !364, file: !344, line: 416, baseType: !392, size: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !140, line: 168, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 166, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !393, file: !140, line: 167, baseType: !155, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !364, file: !344, line: 428, baseType: !392, size: 32, offset: 608)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !364, file: !344, line: 437, baseType: !392, size: 32, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !364, file: !344, line: 447, baseType: !392, size: 32, offset: 672)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !364, file: !344, line: 450, baseType: !400, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !401, line: 13, baseType: !402)
!401 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !140, line: 175, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 173, size: 64, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !403, file: !140, line: 174, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !102, line: 22, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !104, line: 30, baseType: !336)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !364, file: !344, line: 452, baseType: !155, size: 32, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !364, file: !344, line: 454, baseType: !212, offset: 800)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !364, file: !344, line: 457, baseType: !411, size: 256, offset: 832)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !412, line: 35, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415, !416, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !412, line: 36, baseType: !400, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !411, file: !412, line: 42, baseType: !400, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !411, file: !412, line: 46, baseType: !417, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 29, baseType: !220)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !411, file: !412, line: 47, baseType: !139, size: 128, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !364, file: !344, line: 459, baseType: !139, size: 128, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !364, file: !344, line: 466, baseType: !303, size: 64, offset: 1216)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !364, file: !344, line: 467, baseType: !303, size: 64, offset: 1280)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !364, file: !344, line: 469, baseType: !303, size: 64, offset: 1344)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !364, file: !344, line: 470, baseType: !303, size: 64, offset: 1408)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !364, file: !344, line: 471, baseType: !402, size: 64, offset: 1472)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !364, file: !344, line: 472, baseType: !303, size: 64, offset: 1536)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !364, file: !344, line: 473, baseType: !303, size: 64, offset: 1600)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !364, file: !344, line: 474, baseType: !303, size: 64, offset: 1664)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !364, file: !344, line: 475, baseType: !303, size: 64, offset: 1728)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !364, file: !344, line: 477, baseType: !212, offset: 1792)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !364, file: !344, line: 478, baseType: !303, size: 64, offset: 1792)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !364, file: !344, line: 478, baseType: !303, size: 64, offset: 1856)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !364, file: !344, line: 478, baseType: !303, size: 64, offset: 1920)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !364, file: !344, line: 478, baseType: !303, size: 64, offset: 1984)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !364, file: !344, line: 479, baseType: !303, size: 64, offset: 2048)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !364, file: !344, line: 479, baseType: !303, size: 64, offset: 2112)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !364, file: !344, line: 479, baseType: !303, size: 64, offset: 2176)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !364, file: !344, line: 480, baseType: !303, size: 64, offset: 2240)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !364, file: !344, line: 480, baseType: !303, size: 64, offset: 2304)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !364, file: !344, line: 480, baseType: !303, size: 64, offset: 2368)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !364, file: !344, line: 480, baseType: !303, size: 64, offset: 2432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !364, file: !344, line: 482, baseType: !442, size: 2816, offset: 2496)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 2816, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 44)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !364, file: !344, line: 488, baseType: !446, size: 256, offset: 5312)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !447, line: 60, size: 256, elements: !448)
!447 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !446, file: !447, line: 61, baseType: !450, size: 256)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 256, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 4)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !364, file: !344, line: 490, baseType: !454, size: 64, offset: 5568)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !344, line: 490, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !364, file: !344, line: 493, baseType: !457, size: 896, offset: 5632)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !458, line: 53, baseType: !459)
!458 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 13, size: 896, elements: !460)
!460 = !{!461, !462, !463, !464, !467, !468, !475, !476, !496, !497, !500}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !459, file: !458, line: 18, baseType: !372, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !459, file: !458, line: 28, baseType: !402, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !459, file: !458, line: 31, baseType: !411, size: 256, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !459, file: !458, line: 32, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !458, line: 32, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !459, file: !458, line: 37, baseType: !295, size: 16, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !458, line: 40, baseType: !469, size: 192, offset: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !470, line: 53, size: 192, elements: !471)
!470 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !469, file: !470, line: 54, baseType: !400, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !469, file: !470, line: 55, baseType: !212, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !469, file: !470, line: 59, baseType: !139, size: 128, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !459, file: !458, line: 41, baseType: !133, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !459, file: !458, line: 42, baseType: !477, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !480, line: 13, size: 896, elements: !481)
!480 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !479, file: !480, line: 14, baseType: !133, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !479, file: !480, line: 15, baseType: !303, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !479, file: !480, line: 17, baseType: !303, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !479, file: !480, line: 17, baseType: !303, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !479, file: !480, line: 19, baseType: !288, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !479, file: !480, line: 21, baseType: !288, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !479, file: !480, line: 22, baseType: !288, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !479, file: !480, line: 23, baseType: !288, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !479, file: !480, line: 24, baseType: !288, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !479, file: !480, line: 25, baseType: !288, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !479, file: !480, line: 26, baseType: !288, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !479, file: !480, line: 27, baseType: !288, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !479, file: !480, line: 28, baseType: !288, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !479, file: !480, line: 29, baseType: !288, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !459, file: !458, line: 44, baseType: !392, size: 32, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !459, file: !458, line: 50, baseType: !498, size: 16, offset: 864)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !102, line: 19, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 24, baseType: !295)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !459, file: !458, line: 51, baseType: !501, size: 16, offset: 880)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !102, line: 18, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !104, line: 23, baseType: !503)
!503 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !344, line: 495, baseType: !303, size: 64, offset: 6528)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !364, file: !344, line: 497, baseType: !506, size: 64, offset: 6592)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !344, line: 381, size: 384, elements: !508)
!508 = !{!509, !510, !1405}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !507, file: !344, line: 382, baseType: !392, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !507, file: !344, line: 383, baseType: !511, size: 128, offset: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !344, line: 376, size: 128, elements: !512)
!512 = !{!513, !1403}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !511, file: !344, line: 377, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !516, line: 640, size: 48640, elements: !517)
!516 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!517 = !{!518, !524, !526, !527, !533, !534, !535, !536, !537, !538, !539, !540, !544, !562, !573, !665, !666, !667, !678, !679, !681, !682, !683, !684, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !763, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !819, !821, !822, !823, !835, !837, !838, !839, !840, !841, !847, !848, !849, !850, !851, !852, !853, !865, !870, !874, !875, !876, !879, !883, !886, !889, !892, !895, !898, !901, !904, !910, !911, !912, !918, !919, !920, !921, !922, !931, !932, !933, !934, !935, !940, !941, !942, !945, !946, !949, !952, !955, !958, !961, !964, !965, !1045, !1048, !1051, !1052, !1055, !1056, !1057, !1063, !1064, !1065, !1078, !1079, !1080, !1090, !1095, !1098, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !515, file: !516, line: 646, baseType: !519, size: 128)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !520, line: 56, size: 128, elements: !521)
!520 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !520, line: 57, baseType: !303, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !519, file: !520, line: 58, baseType: !146, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !515, file: !516, line: 649, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !515, file: !516, line: 657, baseType: !133, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !515, file: !516, line: 658, baseType: !528, size: 32, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !529, line: 113, baseType: !530)
!529 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !529, line: 111, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !530, file: !529, line: 112, baseType: !392, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !516, line: 660, baseType: !5, size: 32, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !515, file: !516, line: 661, baseType: !5, size: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !515, file: !516, line: 684, baseType: !155, size: 32, offset: 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !515, file: !516, line: 686, baseType: !155, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !515, file: !516, line: 687, baseType: !155, size: 32, offset: 416)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !515, file: !516, line: 688, baseType: !155, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !515, file: !516, line: 689, baseType: !5, size: 32, offset: 480)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !515, file: !516, line: 691, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !516, line: 691, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !515, file: !516, line: 692, baseType: !545, size: 832, offset: 576)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !516, line: 451, size: 832, elements: !546)
!546 = !{!547, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !545, file: !516, line: 453, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !516, line: 325, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !548, file: !516, line: 326, baseType: !303, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !548, file: !516, line: 327, baseType: !146, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !545, file: !516, line: 454, baseType: !351, size: 192, align: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !545, file: !516, line: 455, baseType: !139, size: 128, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !545, file: !516, line: 456, baseType: !5, size: 32, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !545, file: !516, line: 458, baseType: !372, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !545, file: !516, line: 459, baseType: !372, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !545, file: !516, line: 460, baseType: !372, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !545, file: !516, line: 461, baseType: !372, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !545, file: !516, line: 463, baseType: !372, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !545, file: !516, line: 465, baseType: !561, offset: 832)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !516, line: 415, elements: !226)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !515, file: !516, line: 693, baseType: !563, size: 384, offset: 1408)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !516, line: 489, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !563, file: !516, line: 490, baseType: !139, size: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !563, file: !516, line: 491, baseType: !303, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !563, file: !516, line: 492, baseType: !303, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !563, file: !516, line: 493, baseType: !5, size: 32, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !563, file: !516, line: 494, baseType: !295, size: 16, offset: 288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !563, file: !516, line: 495, baseType: !295, size: 16, offset: 304)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !563, file: !516, line: 497, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !515, file: !516, line: 697, baseType: !574, size: 1792, offset: 1792)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !516, line: 507, size: 1792, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !662, !663}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !574, file: !516, line: 508, baseType: !351, size: 192, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !574, file: !516, line: 515, baseType: !372, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !574, file: !516, line: 516, baseType: !372, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !574, file: !516, line: 517, baseType: !372, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !574, file: !516, line: 518, baseType: !372, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !574, file: !516, line: 519, baseType: !372, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !574, file: !516, line: 526, baseType: !406, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !574, file: !516, line: 527, baseType: !372, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !516, line: 528, baseType: !5, size: 32, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !574, file: !516, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !574, file: !516, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !574, file: !516, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !574, file: !516, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !574, file: !516, line: 563, baseType: !590, size: 512, offset: 704)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !591)
!591 = !{!592, !600, !601, !606, !658, !659, !660, !661}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !590, file: !36, line: 119, baseType: !593, size: 256)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !594, line: 9, size: 256, elements: !595)
!594 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !593, file: !594, line: 10, baseType: !351, size: 192, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !593, file: !594, line: 11, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !599, line: 29, baseType: !406)
!599 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !590, file: !36, line: 120, baseType: !598, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !590, file: !36, line: 121, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!35, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !590, file: !36, line: 122, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !609)
!609 = !{!610, !630, !631, !634, !644, !645, !653, !657}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !608, file: !36, line: 160, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 214, size: 4608, align: 512, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !36, line: 215, baseType: !417)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !612, file: !36, line: 216, baseType: !5, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !612, file: !36, line: 217, baseType: !5, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !612, file: !36, line: 218, baseType: !5, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !612, file: !36, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !612, file: !36, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !612, file: !36, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !612, file: !36, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !612, file: !36, line: 233, baseType: !598, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !612, file: !36, line: 234, baseType: !605, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !612, file: !36, line: 235, baseType: !598, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !612, file: !36, line: 236, baseType: !605, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !612, file: !36, line: 237, baseType: !627, size: 4096, offset: 512)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 4096, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 8)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !608, file: !36, line: 161, baseType: !5, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !608, file: !36, line: 162, baseType: !632, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !140, line: 27, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !286, line: 96, baseType: !155)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !608, file: !36, line: 163, baseType: !635, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !636, line: 276, baseType: !637)
!636 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !636, line: 276, size: 32, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !637, file: !636, line: 276, baseType: !640, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !636, line: 70, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !636, line: 65, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !641, file: !636, line: 66, baseType: !5, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !608, file: !36, line: 164, baseType: !605, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !608, file: !36, line: 165, baseType: !646, size: 128, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !594, line: 14, size: 128, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !646, file: !594, line: 15, baseType: !649, size: 128)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !352, line: 125, size: 128, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !649, file: !352, line: 126, baseType: !368, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !649, file: !352, line: 127, baseType: !356, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !608, file: !36, line: 166, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!598}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !608, file: !36, line: 167, baseType: !598, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !590, file: !36, line: 123, baseType: !101, size: 8, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !590, file: !36, line: 124, baseType: !101, size: 8, offset: 456)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !590, file: !36, line: 125, baseType: !101, size: 8, offset: 464)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !590, file: !36, line: 126, baseType: !101, size: 8, offset: 472)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !574, file: !516, line: 572, baseType: !590, size: 512, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !574, file: !516, line: 580, baseType: !664, size: 64, offset: 1728)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !515, file: !516, line: 721, baseType: !5, size: 32, offset: 3584)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !515, file: !516, line: 722, baseType: !155, size: 32, offset: 3616)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !515, file: !516, line: 723, baseType: !668, size: 64, offset: 3648)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !671, line: 17, baseType: !672)
!671 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !671, line: 17, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !672, file: !671, line: 17, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 64, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 1)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !515, file: !516, line: 724, baseType: !670, size: 64, offset: 3712)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !515, file: !516, line: 749, baseType: !680, offset: 3776)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !516, line: 290, elements: !226)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !515, file: !516, line: 751, baseType: !139, size: 128, offset: 3776)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !515, file: !516, line: 757, baseType: !360, size: 64, offset: 3904)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !515, file: !516, line: 758, baseType: !360, size: 64, offset: 3968)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !515, file: !516, line: 761, baseType: !685, size: 320, offset: 4032)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !447, line: 34, size: 320, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !685, file: !447, line: 35, baseType: !372, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !685, file: !447, line: 36, baseType: !689, size: 256, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !451)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !515, file: !516, line: 766, baseType: !155, size: 32, offset: 4352)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !515, file: !516, line: 767, baseType: !155, size: 32, offset: 4384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !515, file: !516, line: 768, baseType: !155, size: 32, offset: 4416)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !515, file: !516, line: 770, baseType: !155, size: 32, offset: 4448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !515, file: !516, line: 772, baseType: !303, size: 64, offset: 4480)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !515, file: !516, line: 775, baseType: !5, size: 32, offset: 4544)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !515, file: !516, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !515, file: !516, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !515, file: !516, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !515, file: !516, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !515, file: !516, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !515, file: !516, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !515, file: !516, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !515, file: !516, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !515, file: !516, line: 831, baseType: !303, size: 64, offset: 4672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !515, file: !516, line: 833, baseType: !706, size: 384, offset: 4736)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !41, line: 25, size: 384, elements: !707)
!707 = !{!708, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !706, file: !41, line: 26, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!288, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !41, line: 27, baseType: !714, size: 320, offset: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !41, line: 27, size: 320, elements: !715)
!715 = !{!716, !726, !753}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !714, file: !41, line: 36, baseType: !717, size: 320)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !41, line: 29, size: 320, elements: !718)
!718 = !{!719, !721, !722, !723, !724, !725}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !717, file: !41, line: 30, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !717, file: !41, line: 31, baseType: !146, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !41, line: 32, baseType: !146, size: 32, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !717, file: !41, line: 33, baseType: !146, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !717, file: !41, line: 34, baseType: !372, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !717, file: !41, line: 35, baseType: !720, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !714, file: !41, line: 46, baseType: !727, size: 192)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !41, line: 38, size: 192, elements: !728)
!728 = !{!729, !730, !731, !752}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !727, file: !41, line: 39, baseType: !632, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !41, line: 40, baseType: !40, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !41, line: 41, baseType: !732, size: 64, offset: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !41, line: 41, size: 64, elements: !733)
!733 = !{!734, !742}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !732, file: !41, line: 42, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !737, line: 7, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !736, file: !737, line: 8, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !286, line: 93, baseType: !336)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !736, file: !737, line: 9, baseType: !336, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !732, file: !41, line: 43, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !745, line: 7, size: 64, elements: !746)
!745 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !744, file: !745, line: 8, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !745, line: 5, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !102, line: 20, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !104, line: 26, baseType: !155)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !744, file: !745, line: 9, baseType: !749, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !727, file: !41, line: 45, baseType: !372, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !714, file: !41, line: 54, baseType: !754, size: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !41, line: 48, size: 256, elements: !755)
!755 = !{!756, !759, !760, !761, !762}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !754, file: !41, line: 49, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !41, line: 14, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !754, file: !41, line: 50, baseType: !155, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !754, file: !41, line: 51, baseType: !155, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !754, file: !41, line: 52, baseType: !303, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !754, file: !41, line: 53, baseType: !303, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !515, file: !516, line: 835, baseType: !764, size: 32, offset: 5120)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !140, line: 22, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !286, line: 28, baseType: !155)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !515, file: !516, line: 836, baseType: !764, size: 32, offset: 5152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !515, file: !516, line: 840, baseType: !303, size: 64, offset: 5184)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !515, file: !516, line: 849, baseType: !514, size: 64, offset: 5248)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !515, file: !516, line: 852, baseType: !514, size: 64, offset: 5312)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !515, file: !516, line: 857, baseType: !139, size: 128, offset: 5376)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !515, file: !516, line: 858, baseType: !139, size: 128, offset: 5504)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !515, file: !516, line: 859, baseType: !514, size: 64, offset: 5632)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !515, file: !516, line: 867, baseType: !139, size: 128, offset: 5696)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !515, file: !516, line: 868, baseType: !139, size: 128, offset: 5824)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !515, file: !516, line: 871, baseType: !776, size: 64, offset: 5952)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !778, line: 59, size: 768, elements: !779)
!778 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !781, !782, !783, !794, !795, !802, !811}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !777, file: !778, line: 61, baseType: !528, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !777, file: !778, line: 62, baseType: !5, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !778, line: 63, baseType: !212, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !777, file: !778, line: 65, baseType: !784, size: 256, offset: 64)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 256, elements: !451)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !140, line: 182, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !785, file: !140, line: 183, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !140, line: 186, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !140, line: 187, baseType: !788, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !789, file: !140, line: 187, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !777, file: !778, line: 66, baseType: !785, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !777, file: !778, line: 68, baseType: !796, size: 128, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !797, line: 40, baseType: !798)
!797 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !797, line: 36, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !797, line: 37, baseType: !212)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !798, file: !797, line: 38, baseType: !139, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !777, file: !778, line: 69, baseType: !803, size: 128, align: 64, offset: 512)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !140, line: 216, size: 128, align: 64, elements: !804)
!804 = !{!805, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !140, line: 217, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !803, file: !140, line: 218, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !806}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !777, file: !778, line: 70, baseType: !812, size: 128, offset: 640)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 128, elements: !676)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !778, line: 54, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !813, file: !778, line: 55, baseType: !155, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !813, file: !778, line: 56, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !778, line: 56, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !515, file: !516, line: 872, baseType: !820, size: 512, offset: 6016)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 512, elements: !451)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !515, file: !516, line: 873, baseType: !139, size: 128, offset: 6528)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !515, file: !516, line: 874, baseType: !139, size: 128, offset: 6656)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !515, file: !516, line: 876, baseType: !824, size: 64, offset: 6784)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !826, line: 26, size: 192, elements: !827)
!826 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !825, file: !826, line: 27, baseType: !5, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !825, file: !826, line: 28, baseType: !830, size: 128, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !831, line: 43, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !830, file: !831, line: 44, baseType: !417)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !830, file: !831, line: 45, baseType: !139, size: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !515, file: !516, line: 879, baseType: !836, size: 64, offset: 6848)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !515, file: !516, line: 882, baseType: !836, size: 64, offset: 6912)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !515, file: !516, line: 884, baseType: !372, size: 64, offset: 6976)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !515, file: !516, line: 885, baseType: !372, size: 64, offset: 7040)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !515, file: !516, line: 890, baseType: !372, size: 64, offset: 7104)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !515, file: !516, line: 891, baseType: !842, size: 128, offset: 7168)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !516, line: 242, size: 128, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !842, file: !516, line: 244, baseType: !372, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !842, file: !516, line: 245, baseType: !372, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !842, file: !516, line: 246, baseType: !417, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !515, file: !516, line: 900, baseType: !303, size: 64, offset: 7296)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !515, file: !516, line: 901, baseType: !303, size: 64, offset: 7360)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !515, file: !516, line: 904, baseType: !372, size: 64, offset: 7424)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !515, file: !516, line: 907, baseType: !372, size: 64, offset: 7488)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !515, file: !516, line: 910, baseType: !303, size: 64, offset: 7552)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !515, file: !516, line: 911, baseType: !303, size: 64, offset: 7616)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !515, file: !516, line: 914, baseType: !854, size: 640, offset: 7680)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !855, line: 123, size: 640, elements: !856)
!855 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !863, !864}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !854, file: !855, line: 124, baseType: !858, size: 576)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 576, elements: !254)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !855, line: 108, size: 192, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !859, file: !855, line: 109, baseType: !372, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !859, file: !855, line: 110, baseType: !646, size: 128, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !854, file: !855, line: 125, baseType: !5, size: 32, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !854, file: !855, line: 126, baseType: !5, size: 32, offset: 608)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !515, file: !516, line: 917, baseType: !866, size: 192, offset: 8320)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !855, line: 134, size: 192, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !866, file: !855, line: 135, baseType: !803, size: 128, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !866, file: !855, line: 136, baseType: !5, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !515, file: !516, line: 923, baseType: !871, size: 64, offset: 8512)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !516, line: 923, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !515, file: !516, line: 926, baseType: !871, size: 64, offset: 8576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !515, file: !516, line: 929, baseType: !871, size: 64, offset: 8640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !515, file: !516, line: 933, baseType: !877, size: 64, offset: 8704)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !516, line: 933, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !515, file: !516, line: 943, baseType: !880, size: 128, offset: 8768)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !515, file: !516, line: 945, baseType: !884, size: 64, offset: 8896)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !516, line: 49, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !515, file: !516, line: 956, baseType: !887, size: 64, offset: 8960)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !516, line: 45, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !515, file: !516, line: 959, baseType: !890, size: 64, offset: 9024)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !516, line: 959, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !515, file: !516, line: 962, baseType: !893, size: 64, offset: 9088)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !516, line: 66, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !515, file: !516, line: 966, baseType: !896, size: 64, offset: 9152)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !516, line: 50, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !515, file: !516, line: 969, baseType: !899, size: 64, offset: 9216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !855, line: 223, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !515, file: !516, line: 970, baseType: !902, size: 64, offset: 9280)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !516, line: 62, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !515, file: !516, line: 971, baseType: !905, size: 64, offset: 9344)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !906, line: 25, baseType: !907)
!906 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !906, line: 23, size: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !907, file: !906, line: 24, baseType: !675, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !515, file: !516, line: 972, baseType: !905, size: 64, offset: 9408)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !515, file: !516, line: 974, baseType: !905, size: 64, offset: 9472)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !515, file: !516, line: 975, baseType: !913, size: 192, offset: 9536)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !914, line: 30, size: 192, elements: !915)
!914 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !913, file: !914, line: 31, baseType: !139, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !913, file: !914, line: 32, baseType: !905, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !515, file: !516, line: 976, baseType: !303, size: 64, offset: 9728)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !515, file: !516, line: 977, baseType: !300, size: 64, offset: 9792)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !515, file: !516, line: 978, baseType: !5, size: 32, offset: 9856)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !515, file: !516, line: 980, baseType: !806, size: 64, offset: 9920)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !515, file: !516, line: 989, baseType: !923, size: 128, offset: 9984)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !924, line: 35, size: 128, elements: !925)
!924 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !923, file: !924, line: 36, baseType: !155, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !923, file: !924, line: 37, baseType: !392, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !923, file: !924, line: 38, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !924, line: 23, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !515, file: !516, line: 992, baseType: !372, size: 64, offset: 10112)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !515, file: !516, line: 993, baseType: !372, size: 64, offset: 10176)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !515, file: !516, line: 996, baseType: !212, offset: 10240)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !515, file: !516, line: 999, baseType: !417, offset: 10240)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !515, file: !516, line: 1001, baseType: !936, size: 64, offset: 10240)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !516, line: 636, size: 64, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !516, line: 637, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !515, file: !516, line: 1005, baseType: !649, size: 128, offset: 10304)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !515, file: !516, line: 1007, baseType: !514, size: 64, offset: 10432)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !515, file: !516, line: 1009, baseType: !943, size: 64, offset: 10496)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !516, line: 1009, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !515, file: !516, line: 1043, baseType: !133, size: 64, offset: 10560)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !515, file: !516, line: 1046, baseType: !947, size: 64, offset: 10624)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !516, line: 41, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !515, file: !516, line: 1050, baseType: !950, size: 64, offset: 10688)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !516, line: 42, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !515, file: !516, line: 1054, baseType: !953, size: 64, offset: 10752)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !516, line: 55, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !515, file: !516, line: 1056, baseType: !956, size: 64, offset: 10816)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !516, line: 40, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !515, file: !516, line: 1058, baseType: !959, size: 64, offset: 10880)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !516, line: 47, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !515, file: !516, line: 1061, baseType: !962, size: 64, offset: 10944)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !516, line: 43, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !515, file: !516, line: 1064, baseType: !303, size: 64, offset: 11008)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !515, file: !516, line: 1065, baseType: !966, size: 64, offset: 11072)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !914, line: 14, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !914, line: 12, size: 384, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !914, line: 13, baseType: !971, size: 384)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !914, line: 13, size: 384, elements: !972)
!972 = !{!973, !974, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !971, file: !914, line: 13, baseType: !155, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !971, file: !914, line: 13, baseType: !155, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !971, file: !914, line: 13, baseType: !155, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !971, file: !914, line: 13, baseType: !977, size: 256, offset: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !978, line: 32, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !986, !999, !1005, !1014, !1034, !1039}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !977, file: !978, line: 37, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 34, size: 64, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !981, file: !978, line: 35, baseType: !765, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !981, file: !978, line: 36, baseType: !985, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !286, line: 49, baseType: !5)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !977, file: !978, line: 45, baseType: !987, size: 192)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 40, size: 192, elements: !988)
!988 = !{!989, !991, !992, !998}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !987, file: !978, line: 41, baseType: !990, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !286, line: 95, baseType: !155)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !987, file: !978, line: 42, baseType: !155, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !987, file: !978, line: 43, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !978, line: 11, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !978, line: 8, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !994, file: !978, line: 9, baseType: !155, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !994, file: !978, line: 10, baseType: !133, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !987, file: !978, line: 44, baseType: !155, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !977, file: !978, line: 52, baseType: !1000, size: 128)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 48, size: 128, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1000, file: !978, line: 49, baseType: !765, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1000, file: !978, line: 50, baseType: !985, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1000, file: !978, line: 51, baseType: !993, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !977, file: !978, line: 61, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 55, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1013}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1006, file: !978, line: 56, baseType: !765, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1006, file: !978, line: 57, baseType: !985, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1006, file: !978, line: 58, baseType: !155, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1006, file: !978, line: 59, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !286, line: 94, baseType: !287)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1006, file: !978, line: 60, baseType: !1012, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !977, file: !978, line: 95, baseType: !1015, size: 256)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 64, size: 256, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1015, file: !978, line: 65, baseType: !133, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !978, line: 77, baseType: !1019, size: 192, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !978, line: 77, size: 192, elements: !1020)
!1020 = !{!1021, !1022, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1019, file: !978, line: 82, baseType: !503, size: 16)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1019, file: !978, line: 88, baseType: !1023, size: 192)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !978, line: 84, size: 192, elements: !1024)
!1024 = !{!1025, !1027, !1028}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1023, file: !978, line: 85, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !628)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1023, file: !978, line: 86, baseType: !133, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1023, file: !978, line: 87, baseType: !133, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1019, file: !978, line: 93, baseType: !1030, size: 96)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !978, line: 90, size: 96, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1030, file: !978, line: 91, baseType: !1026, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1030, file: !978, line: 92, baseType: !147, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !977, file: !978, line: 101, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 98, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1035, file: !978, line: 99, baseType: !288, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1035, file: !978, line: 100, baseType: !155, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !977, file: !978, line: 108, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 104, size: 128, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1040, file: !978, line: 105, baseType: !133, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1040, file: !978, line: 106, baseType: !155, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1040, file: !978, line: 107, baseType: !5, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !515, file: !516, line: 1067, baseType: !1046, offset: 11136)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1047, line: 12, elements: !226)
!1047 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !515, file: !516, line: 1099, baseType: !1049, size: 64, offset: 11136)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !516, line: 56, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !515, file: !516, line: 1103, baseType: !139, size: 128, offset: 11200)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !515, file: !516, line: 1104, baseType: !1053, size: 64, offset: 11328)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !516, line: 46, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !515, file: !516, line: 1105, baseType: !469, size: 192, offset: 11392)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !515, file: !516, line: 1106, baseType: !5, size: 32, offset: 11584)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !515, file: !516, line: 1109, baseType: !1058, size: 128, offset: 11648)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 128, elements: !1061)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !516, line: 51, flags: DIFlagFwdDecl)
!1061 = !{!1062}
!1062 = !DISubrange(count: 2)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !515, file: !516, line: 1110, baseType: !469, size: 192, offset: 11776)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !515, file: !516, line: 1111, baseType: !139, size: 128, offset: 11968)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !515, file: !516, line: 1173, baseType: !1066, size: 64, offset: 12096)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1068, line: 62, size: 256, align: 256, elements: !1069)
!1068 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1069 = !{!1070, !1071, !1072, !1077}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1067, file: !1068, line: 75, baseType: !147, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1067, file: !1068, line: 90, baseType: !147, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1067, file: !1068, line: 124, baseType: !1073, size: 64, offset: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !1068, line: 109, size: 64, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1073, file: !1068, line: 110, baseType: !373, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1073, file: !1068, line: 112, baseType: !373, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !1068, line: 144, baseType: !147, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !515, file: !516, line: 1174, baseType: !146, size: 32, offset: 12160)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !515, file: !516, line: 1179, baseType: !303, size: 64, offset: 12224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !515, file: !516, line: 1182, baseType: !1081, size: 128, offset: 12288)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !447, line: 76, size: 128, elements: !1082)
!1082 = !{!1083, !1088, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1081, file: !447, line: 85, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1085, line: 7, size: 64, elements: !1086)
!1085 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1084, file: !1085, line: 12, baseType: !672, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1081, file: !447, line: 88, baseType: !181, size: 8, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1081, file: !447, line: 95, baseType: !181, size: 8, offset: 72)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !516, line: 1184, baseType: !1091, size: 128, offset: 12416)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 1184, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1091, file: !516, line: 1185, baseType: !528, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1091, file: !516, line: 1186, baseType: !803, size: 128, align: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !515, file: !516, line: 1190, baseType: !1096, size: 64, offset: 12544)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !516, line: 53, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !515, file: !516, line: 1192, baseType: !1099, size: 128, offset: 12608)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !447, line: 64, size: 128, elements: !1100)
!1100 = !{!1101, !1194, !1195}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1099, file: !447, line: 65, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !344, line: 68, size: 512, align: 128, elements: !1104)
!1104 = !{!1105, !1106, !1186, !1193}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !344, line: 69, baseType: !303, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !344, line: 77, baseType: !1107, size: 320, offset: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !344, line: 77, size: 320, elements: !1108)
!1108 = !{!1109, !1118, !1123, !1151, !1159, !1165, !1178, !1185}
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 78, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 78, size: 320, elements: !1111)
!1111 = !{!1112, !1113, !1116, !1117}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1110, file: !344, line: 84, baseType: !139, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1110, file: !344, line: 86, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !344, line: 26, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1110, file: !344, line: 87, baseType: !303, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1110, file: !344, line: 94, baseType: !303, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 96, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 96, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1119, file: !344, line: 101, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !140, line: 143, baseType: !372)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 103, baseType: !1124, size: 320)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 103, size: 320, elements: !1125)
!1125 = !{!1126, !1136, !1139, !1140}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !344, line: 104, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !344, line: 104, size: 128, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1127, file: !344, line: 105, baseType: !139, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !344, line: 106, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !344, line: 106, size: 128, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1131, file: !344, line: 107, baseType: !1102, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1131, file: !344, line: 109, baseType: !155, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1131, file: !344, line: 110, baseType: !155, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1124, file: !344, line: 117, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !344, line: 117, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1124, file: !344, line: 119, baseType: !133, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !344, line: 120, baseType: !1141, size: 64, offset: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !344, line: 120, size: 64, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1141, file: !344, line: 121, baseType: !133, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1141, file: !344, line: 122, baseType: !303, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !344, line: 123, baseType: !1146, size: 32)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !344, line: 123, size: 32, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1146, file: !344, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1146, file: !344, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1146, file: !344, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 130, baseType: !1152, size: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 130, size: 192, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1152, file: !344, line: 131, baseType: !303, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1152, file: !344, line: 134, baseType: !105, size: 8, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1152, file: !344, line: 135, baseType: !105, size: 8, offset: 72)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1152, file: !344, line: 136, baseType: !392, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1152, file: !344, line: 137, baseType: !5, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 139, baseType: !1160, size: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 139, size: 256, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1160, file: !344, line: 140, baseType: !303, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1160, file: !344, line: 141, baseType: !392, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1160, file: !344, line: 143, baseType: !139, size: 128, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 145, baseType: !1166, size: 256)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 145, size: 256, elements: !1167)
!1167 = !{!1168, !1169, !1171, !1172, !1177}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1166, file: !344, line: 146, baseType: !303, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1166, file: !344, line: 147, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !333, line: 509, baseType: !1102)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1166, file: !344, line: 148, baseType: !303, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !344, line: 149, baseType: !1173, size: 64, offset: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !344, line: 149, size: 64, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1173, file: !344, line: 150, baseType: !360, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1173, file: !344, line: 151, baseType: !392, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1166, file: !344, line: 156, baseType: !212, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !344, line: 159, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !344, line: 159, size: 128, elements: !1180)
!1180 = !{!1181, !1184}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1179, file: !344, line: 161, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !344, line: 161, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1179, file: !344, line: 162, baseType: !133, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1107, file: !344, line: 176, baseType: !803, size: 128, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !344, line: 179, baseType: !1187, size: 32, offset: 384)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !344, line: 179, size: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1187, file: !344, line: 184, baseType: !392, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1187, file: !344, line: 192, baseType: !5, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1187, file: !344, line: 194, baseType: !5, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1187, file: !344, line: 195, baseType: !155, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1103, file: !344, line: 199, baseType: !392, size: 32, offset: 416)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1099, file: !447, line: 67, baseType: !147, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !447, line: 68, baseType: !147, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !515, file: !516, line: 1206, baseType: !155, size: 32, offset: 12736)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !515, file: !516, line: 1207, baseType: !155, size: 32, offset: 12768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !515, file: !516, line: 1209, baseType: !303, size: 64, offset: 12800)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !515, file: !516, line: 1219, baseType: !372, size: 64, offset: 12864)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !515, file: !516, line: 1220, baseType: !372, size: 64, offset: 12928)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !515, file: !516, line: 1317, baseType: !155, size: 32, offset: 12992)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !515, file: !516, line: 1319, baseType: !514, size: 64, offset: 13056)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !515, file: !516, line: 1322, baseType: !1204, size: 64, offset: 13120)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1206, line: 56, size: 512, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1214, !1215, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1205, file: !1206, line: 57, baseType: !1204, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1205, file: !1206, line: 58, baseType: !133, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1205, file: !1206, line: 59, baseType: !303, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1206, line: 60, baseType: !303, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1205, file: !1206, line: 61, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1205, file: !1206, line: 62, baseType: !5, size: 32, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1205, file: !1206, line: 63, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !140, line: 153, baseType: !372)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1205, file: !1206, line: 64, baseType: !189, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !515, file: !516, line: 1326, baseType: !528, size: 32, offset: 13184)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !515, file: !516, line: 1342, baseType: !133, size: 64, offset: 13248)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !515, file: !516, line: 1343, baseType: !373, size: 64, offset: 13312)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !515, file: !516, line: 1344, baseType: !372, size: 64, offset: 13376)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !515, file: !516, line: 1345, baseType: !373, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !515, file: !516, line: 1346, baseType: !373, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !515, file: !516, line: 1347, baseType: !373, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !515, file: !516, line: 1348, baseType: !803, size: 128, align: 64, offset: 13504)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !515, file: !516, line: 1358, baseType: !1227, size: 34816, offset: 13824)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1228, line: 485, size: 34816, elements: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1259, !1260, !1261, !1262, !1263, !1264, !1267, !1268, !1269}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1227, file: !1228, line: 487, baseType: !1231, size: 192)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 192, elements: !254)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1233, line: 16, size: 64, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1232, file: !1233, line: 17, baseType: !498, size: 16)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1232, file: !1233, line: 18, baseType: !498, size: 16, offset: 16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1232, file: !1233, line: 19, baseType: !498, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1232, file: !1233, line: 19, baseType: !498, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1232, file: !1233, line: 19, baseType: !498, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1232, file: !1233, line: 19, baseType: !498, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1232, file: !1233, line: 19, baseType: !498, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1232, file: !1233, line: 20, baseType: !498, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1232, file: !1233, line: 20, baseType: !498, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1232, file: !1233, line: 20, baseType: !498, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1232, file: !1233, line: 20, baseType: !498, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1232, file: !1233, line: 20, baseType: !498, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1232, file: !1233, line: 20, baseType: !498, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1227, file: !1228, line: 491, baseType: !303, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1227, file: !1228, line: 495, baseType: !295, size: 16, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1227, file: !1228, line: 496, baseType: !295, size: 16, offset: 272)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1227, file: !1228, line: 497, baseType: !295, size: 16, offset: 288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1227, file: !1228, line: 498, baseType: !295, size: 16, offset: 304)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1227, file: !1228, line: 502, baseType: !303, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1227, file: !1228, line: 503, baseType: !303, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1227, file: !1228, line: 514, baseType: !1256, size: 256, offset: 448)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 256, elements: !451)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1228, line: 483, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1227, file: !1228, line: 516, baseType: !303, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1227, file: !1228, line: 518, baseType: !303, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1227, file: !1228, line: 520, baseType: !303, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1227, file: !1228, line: 521, baseType: !303, size: 64, offset: 896)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1227, file: !1228, line: 522, baseType: !303, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1227, file: !1228, line: 528, baseType: !1265, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1228, line: 10, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1227, file: !1228, line: 535, baseType: !303, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1227, file: !1228, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1227, file: !1228, line: 540, baseType: !1270, size: 33280, offset: 1536)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1271, line: 317, size: 33280, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1270, file: !1271, line: 330, baseType: !5, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1270, file: !1271, line: 337, baseType: !303, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !1271, line: 348, baseType: !1276, size: 32768, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1271, line: 304, size: 32768, elements: !1277)
!1277 = !{!1278, !1293, !1332, !1382, !1399}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1276, file: !1271, line: 305, baseType: !1279, size: 896)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1271, line: 12, size: 896, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1292}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1279, file: !1271, line: 13, baseType: !146, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1279, file: !1271, line: 14, baseType: !146, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1279, file: !1271, line: 15, baseType: !146, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1279, file: !1271, line: 16, baseType: !146, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1279, file: !1271, line: 17, baseType: !146, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1279, file: !1271, line: 18, baseType: !146, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1279, file: !1271, line: 19, baseType: !146, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1279, file: !1271, line: 22, baseType: !1289, size: 640, offset: 224)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 640, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 20)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1279, file: !1271, line: 25, baseType: !146, size: 32, offset: 864)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1276, file: !1271, line: 306, baseType: !1294, size: 4096, align: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1271, line: 34, size: 4096, align: 128, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1315, !1316, !1317, !1321, !1323, !1327}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1294, file: !1271, line: 35, baseType: !498, size: 16)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1294, file: !1271, line: 36, baseType: !498, size: 16, offset: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1294, file: !1271, line: 37, baseType: !498, size: 16, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1294, file: !1271, line: 38, baseType: !498, size: 16, offset: 48)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 39, baseType: !1301, size: 128, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 39, size: 128, elements: !1302)
!1302 = !{!1303, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 40, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 40, size: 128, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1304, file: !1271, line: 41, baseType: !372, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1304, file: !1271, line: 42, baseType: !372, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 44, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 44, size: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1309, file: !1271, line: 45, baseType: !146, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1309, file: !1271, line: 46, baseType: !146, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1309, file: !1271, line: 47, baseType: !146, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1309, file: !1271, line: 48, baseType: !146, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1294, file: !1271, line: 51, baseType: !146, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1294, file: !1271, line: 52, baseType: !146, size: 32, offset: 224)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1294, file: !1271, line: 55, baseType: !1318, size: 1024, offset: 256)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1294, file: !1271, line: 58, baseType: !1322, size: 2048, offset: 1280)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 2048, elements: !258)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1294, file: !1271, line: 60, baseType: !1324, size: 384, offset: 3328)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 12)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 62, baseType: !1328, size: 384, offset: 3712)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 62, size: 384, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1328, file: !1271, line: 63, baseType: !1324, size: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1328, file: !1271, line: 64, baseType: !1324, size: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1276, file: !1271, line: 307, baseType: !1333, size: 1088)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1271, line: 79, size: 1088, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1381}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1333, file: !1271, line: 80, baseType: !146, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1333, file: !1271, line: 81, baseType: !146, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1333, file: !1271, line: 82, baseType: !146, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1333, file: !1271, line: 83, baseType: !146, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1333, file: !1271, line: 84, baseType: !146, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1333, file: !1271, line: 85, baseType: !146, size: 32, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1333, file: !1271, line: 86, baseType: !146, size: 32, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1333, file: !1271, line: 88, baseType: !1289, size: 640, offset: 224)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1333, file: !1271, line: 89, baseType: !101, size: 8, offset: 864)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1333, file: !1271, line: 90, baseType: !101, size: 8, offset: 872)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1333, file: !1271, line: 91, baseType: !101, size: 8, offset: 880)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1333, file: !1271, line: 92, baseType: !101, size: 8, offset: 888)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1333, file: !1271, line: 93, baseType: !101, size: 8, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1333, file: !1271, line: 94, baseType: !101, size: 8, offset: 904)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1333, file: !1271, line: 95, baseType: !1350, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1352, line: 11, size: 128, elements: !1353)
!1352 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1351, file: !1352, line: 12, baseType: !288, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1351, file: !1352, line: 13, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1358, line: 56, size: 1344, elements: !1359)
!1358 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1357, file: !1358, line: 61, baseType: !303, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1357, file: !1358, line: 62, baseType: !303, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1357, file: !1358, line: 63, baseType: !303, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1357, file: !1358, line: 64, baseType: !303, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1357, file: !1358, line: 65, baseType: !303, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1357, file: !1358, line: 66, baseType: !303, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1357, file: !1358, line: 68, baseType: !303, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1357, file: !1358, line: 69, baseType: !303, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1357, file: !1358, line: 70, baseType: !303, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1357, file: !1358, line: 71, baseType: !303, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1357, file: !1358, line: 72, baseType: !303, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1357, file: !1358, line: 73, baseType: !303, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1357, file: !1358, line: 74, baseType: !303, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1357, file: !1358, line: 75, baseType: !303, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1357, file: !1358, line: 76, baseType: !303, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1357, file: !1358, line: 81, baseType: !303, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1357, file: !1358, line: 83, baseType: !303, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1357, file: !1358, line: 84, baseType: !303, size: 64, offset: 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 85, baseType: !303, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1357, file: !1358, line: 86, baseType: !303, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1357, file: !1358, line: 87, baseType: !303, size: 64, offset: 1280)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1333, file: !1271, line: 96, baseType: !146, size: 32, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1276, file: !1271, line: 308, baseType: !1383, size: 4608, align: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1271, line: 289, size: 4608, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1395}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1383, file: !1271, line: 290, baseType: !1294, size: 4096, align: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1383, file: !1271, line: 291, baseType: !1387, size: 512, offset: 4096)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1271, line: 268, size: 512, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1387, file: !1271, line: 269, baseType: !372, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1387, file: !1271, line: 270, baseType: !372, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1387, file: !1271, line: 271, baseType: !1392, size: 384, offset: 128)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 6)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1383, file: !1271, line: 292, baseType: !1396, offset: 4608)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 0)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1276, file: !1271, line: 309, baseType: !1400, size: 32768)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 32768, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 4096)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !344, line: 378, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !507, file: !344, line: 384, baseType: !825, size: 192, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !364, file: !344, line: 500, baseType: !212, offset: 6656)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !364, file: !344, line: 501, baseType: !1408, size: 64, offset: 6656)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !344, line: 387, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !364, file: !344, line: 516, baseType: !1411, size: 64, offset: 6720)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !344, line: 516, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !364, file: !344, line: 519, baseType: !331, size: 64, offset: 6784)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !364, file: !344, line: 521, baseType: !1415, size: 64, offset: 6848)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !344, line: 521, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !364, file: !344, line: 545, baseType: !392, size: 32, offset: 6912)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !364, file: !344, line: 548, baseType: !181, size: 8, offset: 6944)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !364, file: !344, line: 550, baseType: !1420, offset: 6952)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1421, line: 142, elements: !226)
!1421 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !364, file: !344, line: 554, baseType: !1423, size: 256, offset: 6976)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1424, line: 102, size: 256, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1423, file: !1424, line: 103, baseType: !400, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1423, file: !1424, line: 104, baseType: !139, size: 128, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1423, file: !1424, line: 105, baseType: !1429, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1424, line: 21, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !364, file: !344, line: 557, baseType: !146, size: 32, offset: 7232)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !361, file: !344, line: 565, baseType: !1436, offset: 7296)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: -1)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !343, file: !344, line: 333, baseType: !1440, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !333, line: 284, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !333, line: 284, size: 64, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1441, file: !333, line: 284, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !390, line: 19, baseType: !303)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !343, file: !344, line: 334, baseType: !303, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !343, file: !344, line: 343, baseType: !1447, size: 256, offset: 704)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !344, line: 340, size: 256, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1447, file: !344, line: 341, baseType: !351, size: 192, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1447, file: !344, line: 342, baseType: !303, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !343, file: !344, line: 351, baseType: !139, size: 128, offset: 960)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !343, file: !344, line: 353, baseType: !1453, size: 64, offset: 1088)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !344, line: 353, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !343, file: !344, line: 356, baseType: !1456, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !344, line: 356, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !343, file: !344, line: 359, baseType: !303, size: 64, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !343, file: !344, line: 361, baseType: !331, size: 64, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !343, file: !344, line: 362, baseType: !133, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !343, file: !344, line: 365, baseType: !400, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !343, file: !344, line: 373, baseType: !1464, offset: 1472)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !344, line: 296, elements: !226)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !310, file: !278, line: 90, baseType: !305, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !310, file: !278, line: 91, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !268, file: !197, line: 143, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1472, !205}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !47, line: 39, size: 384, elements: !1475)
!1475 = !{!1476, !1477, !1481, !1485, !1491, !1495}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1474, file: !47, line: 40, baseType: !46, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1474, file: !47, line: 41, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!181}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1474, file: !47, line: 42, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!133}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1474, file: !47, line: 43, baseType: !1486, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!189, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !47, line: 19, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1474, file: !47, line: 44, baseType: !1492, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!189}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1474, file: !47, line: 45, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !133}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !268, file: !197, line: 144, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!189, !205}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !268, file: !197, line: 145, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !205, !1507, !1514}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1509, line: 23, baseType: !1510)
!1509 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 21, size: 32, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1510, file: !1509, line: 22, baseType: !1513, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 32, baseType: !985)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1509, line: 28, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 26, size: 32, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1516, file: !1509, line: 27, baseType: !1519, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !140, line: 33, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !286, line: 50, baseType: !5)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !196, file: !197, line: 70, baseType: !1522, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1524, line: 123, size: 1024, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1668, !1669, !1670, !1671, !1672}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1523, file: !1524, line: 124, baseType: !392, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1523, file: !1524, line: 125, baseType: !392, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1523, file: !1524, line: 135, baseType: !1522, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !1524, line: 136, baseType: !200, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1523, file: !1524, line: 138, baseType: !351, size: 192, align: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !1524, line: 140, baseType: !189, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1523, file: !1524, line: 141, baseType: !5, size: 32, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1524, line: 142, baseType: !1534, size: 256, offset: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1524, line: 142, size: 256, elements: !1535)
!1535 = !{!1536, !1591, !1595}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1534, file: !1524, line: 143, baseType: !1537, size: 192)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1524, line: 91, size: 192, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1537, file: !1524, line: 92, baseType: !303, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1537, file: !1524, line: 94, baseType: !368, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1537, file: !1524, line: 100, baseType: !1542, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1524, line: 180, size: 704, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1561, !1562, !1563, !1589, !1590}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1543, file: !1524, line: 182, baseType: !1522, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1524, line: 183, baseType: !5, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1543, file: !1524, line: 186, baseType: !1548, size: 192, offset: 128)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1549, line: 19, size: 192, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1559, !1560}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1548, file: !1549, line: 20, baseType: !1552, size: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1553, line: 292, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1552, file: !1553, line: 293, baseType: !212)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1552, file: !1553, line: 295, baseType: !1557, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !140, line: 148, baseType: !5)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1552, file: !1553, line: 296, baseType: !133, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1548, file: !1549, line: 21, baseType: !5, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1548, file: !1549, line: 22, baseType: !5, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1543, file: !1524, line: 187, baseType: !146, size: 32, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1543, file: !1524, line: 188, baseType: !146, size: 32, offset: 352)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1543, file: !1524, line: 189, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1524, line: 168, size: 320, elements: !1566)
!1566 = !{!1567, !1573, !1577, !1581, !1585}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1565, file: !1524, line: 169, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!155, !1571, !1542}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !333, line: 539, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1565, file: !1524, line: 171, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!155, !1522, !200, !294}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1565, file: !1524, line: 173, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!155, !1522}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1565, file: !1524, line: 174, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!155, !1522, !1522, !200}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1565, file: !1524, line: 176, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!155, !1571, !1522, !1542}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1543, file: !1524, line: 192, baseType: !139, size: 128, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1543, file: !1524, line: 194, baseType: !796, size: 128, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1534, file: !1524, line: 144, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1524, line: 103, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1592, file: !1524, line: 104, baseType: !1522, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1534, file: !1524, line: 145, baseType: !1596, size: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1524, line: 107, size: 256, elements: !1597)
!1597 = !{!1598, !1663, !1666, !1667}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1596, file: !1524, line: 108, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1524, line: 217, size: 768, elements: !1602)
!1602 = !{!1603, !1623, !1627, !1631, !1636, !1640, !1644, !1648, !1649, !1650, !1651, !1659}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1601, file: !1524, line: 222, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!155, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1524, line: 197, size: 1088, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1608, file: !1524, line: 199, baseType: !1522, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1608, file: !1524, line: 200, baseType: !331, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1608, file: !1524, line: 201, baseType: !1571, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1608, file: !1524, line: 202, baseType: !133, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1608, file: !1524, line: 205, baseType: !469, size: 192, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1608, file: !1524, line: 206, baseType: !469, size: 192, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1608, file: !1524, line: 207, baseType: !155, size: 32, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1608, file: !1524, line: 208, baseType: !139, size: 128, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1608, file: !1524, line: 209, baseType: !253, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1608, file: !1524, line: 211, baseType: !300, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1608, file: !1524, line: 212, baseType: !181, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1608, file: !1524, line: 213, baseType: !181, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1608, file: !1524, line: 214, baseType: !1456, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1601, file: !1524, line: 223, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1607}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1601, file: !1524, line: 236, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!155, !1571, !133}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1601, file: !1524, line: 238, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!133, !1571, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1601, file: !1524, line: 239, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!133, !1571, !133, !1635}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1601, file: !1524, line: 240, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1571, !133}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1601, file: !1524, line: 242, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!284, !1607, !253, !300, !334}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1601, file: !1524, line: 252, baseType: !300, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1601, file: !1524, line: 259, baseType: !181, size: 8, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1601, file: !1524, line: 260, baseType: !1645, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1601, file: !1524, line: 263, baseType: !1652, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1655, !1607, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1656, line: 52, baseType: !5)
!1656 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1524, line: 27, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1601, file: !1524, line: 266, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!155, !1607, !342}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1596, file: !1524, line: 109, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1524, line: 31, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1596, file: !1524, line: 110, baseType: !334, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1596, file: !1524, line: 111, baseType: !1522, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1523, file: !1524, line: 148, baseType: !133, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1523, file: !1524, line: 154, baseType: !372, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !1524, line: 156, baseType: !295, size: 16, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1523, file: !1524, line: 157, baseType: !294, size: 16, offset: 912)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1523, file: !1524, line: 158, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1524, line: 32, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !196, file: !197, line: 71, baseType: !1676, size: 32, offset: 448)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1677, line: 19, size: 32, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1676, file: !1677, line: 20, baseType: !528, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !196, file: !197, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !196, file: !197, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !196, file: !197, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !196, file: !197, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !196, file: !197, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !59, line: 463, baseType: !1686, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !193, file: !59, line: 465, baseType: !1688, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !59, line: 36, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !193, file: !59, line: 467, baseType: !200, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !59, line: 468, baseType: !1692, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !59, line: 87, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1702, !1707, !1711}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1694, file: !59, line: 88, baseType: !200, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1694, file: !59, line: 89, baseType: !307, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1694, file: !59, line: 90, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!155, !1686, !248}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1694, file: !59, line: 91, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!253, !1686, !1706, !1507, !1514}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1694, file: !59, line: 93, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1686}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1694, file: !59, line: 95, baseType: !1712, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !66, line: 278, size: 1472, elements: !1715)
!1715 = !{!1716, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1714, file: !66, line: 279, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!155, !1686}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1714, file: !66, line: 280, baseType: !1708, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1714, file: !66, line: 281, baseType: !1717, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1714, file: !66, line: 282, baseType: !1717, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1714, file: !66, line: 283, baseType: !1717, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1714, file: !66, line: 284, baseType: !1717, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1714, file: !66, line: 285, baseType: !1717, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1714, file: !66, line: 286, baseType: !1717, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1714, file: !66, line: 287, baseType: !1717, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1714, file: !66, line: 288, baseType: !1717, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1714, file: !66, line: 289, baseType: !1717, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1714, file: !66, line: 290, baseType: !1717, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1714, file: !66, line: 291, baseType: !1717, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1714, file: !66, line: 292, baseType: !1717, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1714, file: !66, line: 293, baseType: !1717, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1714, file: !66, line: 294, baseType: !1717, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1714, file: !66, line: 295, baseType: !1717, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1714, file: !66, line: 296, baseType: !1717, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1714, file: !66, line: 297, baseType: !1717, size: 64, offset: 1152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1714, file: !66, line: 298, baseType: !1717, size: 64, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1714, file: !66, line: 299, baseType: !1717, size: 64, offset: 1280)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1714, file: !66, line: 300, baseType: !1717, size: 64, offset: 1344)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1714, file: !66, line: 301, baseType: !1717, size: 64, offset: 1408)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !193, file: !59, line: 470, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1745, line: 82, size: 1408, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1832, !1835, !1838}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1744, file: !1745, line: 83, baseType: !200, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1744, file: !1745, line: 84, baseType: !200, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1744, file: !1745, line: 85, baseType: !1686, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1744, file: !1745, line: 86, baseType: !307, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1744, file: !1745, line: 87, baseType: !307, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1744, file: !1745, line: 88, baseType: !307, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1744, file: !1745, line: 90, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!155, !1686, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !53, line: 95, size: 1152, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1766, !1767, !1768, !1769, !1783, !1796, !1797, !1798, !1799, !1800, !1808, !1809, !1810, !1811, !1812, !1813}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !53, line: 96, baseType: !200, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1758, file: !53, line: 97, baseType: !1743, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1758, file: !53, line: 99, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1765, line: 76, flags: DIFlagFwdDecl)
!1765 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1758, file: !53, line: 100, baseType: !200, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1758, file: !53, line: 102, baseType: !181, size: 8, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1758, file: !53, line: 103, baseType: !52, size: 32, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1758, file: !53, line: 105, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1773, line: 262, size: 1600, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1777, !1778, !1782}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !1773, line: 263, baseType: !1776, size: 256)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !1319)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1772, file: !1773, line: 264, baseType: !1776, size: 256, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1772, file: !1773, line: 265, baseType: !1779, size: 1024, offset: 512)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1772, file: !1773, line: 266, baseType: !189, size: 64, offset: 1536)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1758, file: !53, line: 106, baseType: !1784, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1773, line: 210, size: 256, elements: !1787)
!1787 = !{!1788, !1792, !1794, !1795}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1786, file: !1773, line: 211, baseType: !1789, size: 72)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 72, elements: !1790)
!1790 = !{!1791}
!1791 = !DISubrange(count: 9)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1786, file: !1773, line: 212, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1773, line: 14, baseType: !303)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1786, file: !1773, line: 213, baseType: !147, size: 32, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1786, file: !1773, line: 214, baseType: !147, size: 32, offset: 224)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1758, file: !53, line: 108, baseType: !1717, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1758, file: !53, line: 109, baseType: !1708, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1758, file: !53, line: 110, baseType: !1717, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1758, file: !53, line: 111, baseType: !1708, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1758, file: !53, line: 112, baseType: !1801, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!155, !1686, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !66, line: 52, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !66, line: 50, size: 32, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1805, file: !66, line: 51, baseType: !155, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1758, file: !53, line: 113, baseType: !1717, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1758, file: !53, line: 114, baseType: !307, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1758, file: !53, line: 115, baseType: !307, size: 64, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1758, file: !53, line: 117, baseType: !1712, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1758, file: !53, line: 118, baseType: !1708, size: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1758, file: !53, line: 120, baseType: !1814, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !53, line: 120, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1744, file: !1745, line: 91, baseType: !1699, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1744, file: !1745, line: 92, baseType: !1717, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1744, file: !1745, line: 93, baseType: !1708, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1744, file: !1745, line: 94, baseType: !1717, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1744, file: !1745, line: 95, baseType: !1708, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1744, file: !1745, line: 97, baseType: !1717, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1744, file: !1745, line: 98, baseType: !1717, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1744, file: !1745, line: 100, baseType: !1801, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1744, file: !1745, line: 101, baseType: !1717, size: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1744, file: !1745, line: 103, baseType: !1717, size: 64, offset: 1024)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1744, file: !1745, line: 105, baseType: !1717, size: 64, offset: 1088)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1744, file: !1745, line: 107, baseType: !1712, size: 64, offset: 1152)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1744, file: !1745, line: 109, baseType: !1829, size: 64, offset: 1216)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1745, line: 109, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1744, file: !1745, line: 111, baseType: !1833, size: 64, offset: 1280)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1745, line: 111, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1744, file: !1745, line: 112, baseType: !1836, offset: 1344)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1837, line: 187, elements: !226)
!1837 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1744, file: !1745, line: 114, baseType: !181, size: 8, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !193, file: !59, line: 471, baseType: !1757, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !193, file: !59, line: 473, baseType: !133, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !193, file: !59, line: 475, baseType: !133, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !193, file: !59, line: 480, baseType: !469, size: 192, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !193, file: !59, line: 484, baseType: !1844, size: 576, offset: 1216)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !59, line: 361, size: 576, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1844, file: !59, line: 362, baseType: !139, size: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1844, file: !59, line: 363, baseType: !139, size: 128, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1844, file: !59, line: 364, baseType: !139, size: 128, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1844, file: !59, line: 365, baseType: !139, size: 128, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1844, file: !59, line: 366, baseType: !181, size: 8, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1844, file: !59, line: 367, baseType: !58, size: 32, offset: 544)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !193, file: !59, line: 485, baseType: !1853, size: 2304, offset: 1792)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !66, line: 565, size: 2304, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1950, !1954}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1853, file: !66, line: 566, baseType: !1804, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1853, file: !66, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1853, file: !66, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1853, file: !66, line: 569, baseType: !181, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1853, file: !66, line: 570, baseType: !181, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1853, file: !66, line: 571, baseType: !181, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1853, file: !66, line: 572, baseType: !181, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1853, file: !66, line: 573, baseType: !181, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1853, file: !66, line: 574, baseType: !181, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1853, file: !66, line: 575, baseType: !181, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1853, file: !66, line: 576, baseType: !181, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1853, file: !66, line: 577, baseType: !146, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !66, line: 578, baseType: !212, offset: 96)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1853, file: !66, line: 580, baseType: !139, size: 128, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1853, file: !66, line: 581, baseType: !825, size: 192, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1853, file: !66, line: 582, baseType: !1871, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1873, line: 43, size: 1472, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1882, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !1873, line: 44, baseType: !200, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1872, file: !1873, line: 45, baseType: !155, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1872, file: !1873, line: 46, baseType: !139, size: 128, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1872, file: !1873, line: 47, baseType: !212, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1872, file: !1873, line: 48, baseType: !1880, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !66, line: 533, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1872, file: !1873, line: 49, baseType: !1883, size: 320, offset: 320)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1884, line: 11, size: 320, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1883, file: !1884, line: 16, baseType: !789, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1883, file: !1884, line: 17, baseType: !303, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1883, file: !1884, line: 18, baseType: !1889, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1884, line: 19, baseType: !146, size: 32, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1872, file: !1873, line: 50, baseType: !303, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1872, file: !1873, line: 51, baseType: !598, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1872, file: !1873, line: 52, baseType: !598, size: 64, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1872, file: !1873, line: 53, baseType: !598, size: 64, offset: 832)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1872, file: !1873, line: 54, baseType: !598, size: 64, offset: 896)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1872, file: !1873, line: 55, baseType: !598, size: 64, offset: 960)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1872, file: !1873, line: 56, baseType: !303, size: 64, offset: 1024)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1872, file: !1873, line: 57, baseType: !303, size: 64, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1872, file: !1873, line: 58, baseType: !303, size: 64, offset: 1152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1872, file: !1873, line: 59, baseType: !303, size: 64, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1872, file: !1873, line: 60, baseType: !303, size: 64, offset: 1280)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1872, file: !1873, line: 61, baseType: !1686, size: 64, offset: 1344)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1872, file: !1873, line: 62, baseType: !181, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1872, file: !1873, line: 63, baseType: !181, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1853, file: !66, line: 583, baseType: !181, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1853, file: !66, line: 584, baseType: !181, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1853, file: !66, line: 585, baseType: !181, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1853, file: !66, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1853, file: !66, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1853, file: !66, line: 592, baseType: !590, size: 512, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1853, file: !66, line: 593, baseType: !372, size: 64, offset: 1088)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1853, file: !66, line: 594, baseType: !1423, size: 256, offset: 1152)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1853, file: !66, line: 595, baseType: !796, size: 128, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1853, file: !66, line: 596, baseType: !1880, size: 64, offset: 1536)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1853, file: !66, line: 597, baseType: !392, size: 32, offset: 1600)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1853, file: !66, line: 598, baseType: !392, size: 32, offset: 1632)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1853, file: !66, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1853, file: !66, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1853, file: !66, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1853, file: !66, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1853, file: !66, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1853, file: !66, line: 604, baseType: !181, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1853, file: !66, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1853, file: !66, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1853, file: !66, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1853, file: !66, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1853, file: !66, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1853, file: !66, line: 610, baseType: !5, size: 32, offset: 1696)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1853, file: !66, line: 611, baseType: !65, size: 32, offset: 1728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1853, file: !66, line: 612, baseType: !73, size: 32, offset: 1760)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1853, file: !66, line: 613, baseType: !155, size: 32, offset: 1792)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1853, file: !66, line: 614, baseType: !155, size: 32, offset: 1824)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1853, file: !66, line: 615, baseType: !372, size: 64, offset: 1856)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1853, file: !66, line: 616, baseType: !372, size: 64, offset: 1920)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1853, file: !66, line: 617, baseType: !372, size: 64, offset: 1984)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1853, file: !66, line: 618, baseType: !372, size: 64, offset: 2048)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1853, file: !66, line: 620, baseType: !1941, size: 64, offset: 2112)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !66, line: 536, size: 256, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1942, file: !66, line: 537, baseType: !212)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1942, file: !66, line: 538, baseType: !5, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1942, file: !66, line: 540, baseType: !139, size: 128, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1942, file: !66, line: 543, baseType: !1948, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !66, line: 534, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1853, file: !66, line: 621, baseType: !1951, size: 64, offset: 2176)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1686, !749}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1853, file: !66, line: 622, baseType: !1955, size: 64, offset: 2240)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !66, line: 622, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !193, file: !59, line: 486, baseType: !1958, size: 64, offset: 4096)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !66, line: 642, size: 1792, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1967, !1968, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1959, file: !66, line: 643, baseType: !1714, size: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1959, file: !66, line: 644, baseType: !1717, size: 64, offset: 1472)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1959, file: !66, line: 645, baseType: !1964, size: 64, offset: 1536)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1686, !181}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1959, file: !66, line: 646, baseType: !1717, size: 64, offset: 1600)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1959, file: !66, line: 647, baseType: !1708, size: 64, offset: 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1959, file: !66, line: 648, baseType: !1708, size: 64, offset: 1728)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !193, file: !59, line: 493, baseType: !1971, size: 64, offset: 4160)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 162, size: 1088, elements: !1973)
!1973 = !{!1974, !1975, !1976, !2161, !2162, !2163, !2164, !2165, !2166, !2273, !2274, !2275, !2276, !2277, !2278, !2279}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1972, file: !80, line: 163, baseType: !139, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1972, file: !80, line: 164, baseType: !200, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !80, line: 165, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !80, line: 105, size: 640, elements: !1980)
!1980 = !{!1981, !2010, !2021, !2026, !2030, !2038, !2042, !2046, !2153, !2157}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1979, file: !80, line: 106, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!155, !1971, !1985, !79}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1987, line: 51, size: 1344, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1992, !1993, !1994, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1986, file: !1987, line: 52, baseType: !200, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1986, file: !1987, line: 53, baseType: !1991, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1987, line: 28, baseType: !146)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1986, file: !1987, line: 54, baseType: !200, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1986, file: !1987, line: 55, baseType: !159, size: 192, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1986, file: !1987, line: 57, baseType: !1995, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1987, line: 31, size: 704, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1996, file: !1987, line: 32, baseType: !253, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1996, file: !1987, line: 33, baseType: !155, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1996, file: !1987, line: 34, baseType: !133, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1996, file: !1987, line: 35, baseType: !1995, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1996, file: !1987, line: 43, baseType: !322, size: 448, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1986, file: !1987, line: 58, baseType: !1995, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1986, file: !1987, line: 59, baseType: !1985, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1986, file: !1987, line: 60, baseType: !1985, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1986, file: !1987, line: 61, baseType: !1985, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1986, file: !1987, line: 63, baseType: !196, size: 512, offset: 704)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1986, file: !1987, line: 65, baseType: !303, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1986, file: !1987, line: 66, baseType: !133, size: 64, offset: 1280)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1979, file: !80, line: 108, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!155, !1971, !2014, !79}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !80, line: 63, size: 640, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2015, file: !80, line: 64, baseType: !163, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2015, file: !80, line: 65, baseType: !155, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2015, file: !80, line: 66, baseType: !2020, size: 512, offset: 96)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 512, elements: !881)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1979, file: !80, line: 110, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!155, !1971, !5, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !140, line: 164, baseType: !303)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1979, file: !80, line: 111, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !1971, !5}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1979, file: !80, line: 112, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!155, !1971, !1985, !2034, !5, !2036, !2037}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1979, file: !80, line: 117, baseType: !2039, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!155, !1971, !5, !5, !133}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1979, file: !80, line: 119, baseType: !2043, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !1971, !5, !5}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1979, file: !80, line: 121, baseType: !2047, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!155, !1971, !2050, !181}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !10, line: 175, size: 448, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2068, !2150, !2151, !2152}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2051, file: !10, line: 176, baseType: !146, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2051, file: !10, line: 177, baseType: !5, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2051, file: !10, line: 178, baseType: !303, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2051, file: !10, line: 179, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !10, line: 145, size: 256, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2065}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2058, file: !10, line: 146, baseType: !5, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2058, file: !10, line: 150, baseType: !133, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2058, file: !10, line: 151, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !10, line: 127, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2058, file: !10, line: 152, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !671, line: 756, baseType: !2067)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 64, elements: !676)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2051, file: !10, line: 180, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !10, line: 503, size: 2304, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2078, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2095, !2099, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2116, !2117, !2118, !2124, !2125, !2131, !2135, !2139, !2143, !2147, !2148, !2149}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !2070, file: !10, line: 504, baseType: !1686, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2070, file: !10, line: 505, baseType: !200, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2070, file: !10, line: 506, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!5, !2050}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2070, file: !10, line: 507, baseType: !2079, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2050}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2070, file: !10, line: 508, baseType: !2079, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2070, file: !10, line: 509, baseType: !2079, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2070, file: !10, line: 511, baseType: !2079, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2070, file: !10, line: 512, baseType: !2079, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2070, file: !10, line: 513, baseType: !2079, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2070, file: !10, line: 514, baseType: !2079, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2070, file: !10, line: 515, baseType: !2079, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2070, file: !10, line: 517, baseType: !2090, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!155, !2050, !2093, !181}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2070, file: !10, line: 518, baseType: !2096, size: 64, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!155, !2050}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2070, file: !10, line: 519, baseType: !2100, size: 64, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!155, !2050, !5}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2070, file: !10, line: 520, baseType: !2100, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2070, file: !10, line: 522, baseType: !2079, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2070, file: !10, line: 523, baseType: !2079, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !2070, file: !10, line: 525, baseType: !2079, size: 64, offset: 1088)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !2070, file: !10, line: 526, baseType: !2079, size: 64, offset: 1152)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2070, file: !10, line: 528, baseType: !2079, size: 64, offset: 1216)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2070, file: !10, line: 529, baseType: !2079, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2070, file: !10, line: 530, baseType: !2079, size: 64, offset: 1344)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2070, file: !10, line: 532, baseType: !2079, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2070, file: !10, line: 534, baseType: !2113, size: 64, offset: 1472)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !2050, !1571}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2070, file: !10, line: 535, baseType: !2096, size: 64, offset: 1536)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2070, file: !10, line: 536, baseType: !2079, size: 64, offset: 1600)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2070, file: !10, line: 538, baseType: !2119, size: 64, offset: 1664)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2050, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !10, line: 29, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2070, file: !10, line: 539, baseType: !2119, size: 64, offset: 1728)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2070, file: !10, line: 541, baseType: !2126, size: 64, offset: 1792)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!155, !2050, !2129, !2130}
!2129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !10, line: 31, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2070, file: !10, line: 542, baseType: !2132, size: 64, offset: 1856)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!155, !2050, !2129, !181}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2070, file: !10, line: 544, baseType: !2136, size: 64, offset: 1920)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!155, !2050, !133}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2070, file: !10, line: 546, baseType: !2140, size: 64, offset: 1984)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !2050, !5}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2070, file: !10, line: 547, baseType: !2144, size: 64, offset: 2048)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !2050, !2093}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2070, file: !10, line: 549, baseType: !2096, size: 64, offset: 2112)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2070, file: !10, line: 550, baseType: !2079, size: 64, offset: 2176)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2070, file: !10, line: 552, baseType: !303, size: 64, offset: 2240)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2051, file: !10, line: 181, baseType: !1971, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2051, file: !10, line: 183, baseType: !2050, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2051, file: !10, line: 185, baseType: !133, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1979, file: !80, line: 122, baseType: !2154, size: 64, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null, !1971, !2050}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1979, file: !80, line: 123, baseType: !2158, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!155, !1971, !2014, !2036, !2037}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1972, file: !80, line: 166, baseType: !133, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !80, line: 167, baseType: !5, size: 32, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1972, file: !80, line: 168, baseType: !5, size: 32, offset: 352)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1972, file: !80, line: 171, baseType: !163, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1972, file: !80, line: 172, baseType: !79, size: 32, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1972, file: !80, line: 173, baseType: !2167, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !10, line: 1101, size: 192, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2168, file: !10, line: 1102, baseType: !5, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2168, file: !10, line: 1103, baseType: !5, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2168, file: !10, line: 1104, baseType: !5, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2168, file: !10, line: 1105, baseType: !5, size: 32, offset: 96)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2168, file: !10, line: 1106, baseType: !93, size: 32, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2168, file: !10, line: 1107, baseType: !2176, offset: 192)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2177, elements: !1437)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !10, line: 1051, size: 960, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2186, !2190, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2178, file: !10, line: 1052, baseType: !417)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2178, file: !10, line: 1053, baseType: !133, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2178, file: !10, line: 1054, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!146, !133}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2178, file: !10, line: 1055, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !146, !133}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2178, file: !10, line: 1056, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !2177}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2178, file: !10, line: 1057, baseType: !2191, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2178, file: !10, line: 1058, baseType: !5, size: 32, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2178, file: !10, line: 1059, baseType: !5, size: 32, offset: 352)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2178, file: !10, line: 1060, baseType: !146, size: 32, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2178, file: !10, line: 1061, baseType: !146, size: 32, offset: 416)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2178, file: !10, line: 1062, baseType: !146, size: 32, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2178, file: !10, line: 1063, baseType: !146, size: 32, offset: 480)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2178, file: !10, line: 1064, baseType: !146, size: 32, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2178, file: !10, line: 1065, baseType: !5, size: 32, offset: 544)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2178, file: !10, line: 1066, baseType: !133, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2178, file: !10, line: 1067, baseType: !303, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2178, file: !10, line: 1068, baseType: !303, size: 64, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2178, file: !10, line: 1069, baseType: !1971, size: 64, offset: 768)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2178, file: !10, line: 1070, baseType: !139, size: 128, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2178, file: !10, line: 1071, baseType: !2209, offset: 960)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, elements: !1437)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !10, line: 1009, size: 2944, elements: !2211)
!2211 = !{!2212, !2213, !2223, !2270, !2271, !2272}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2210, file: !10, line: 1010, baseType: !2070, size: 2304)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2210, file: !10, line: 1011, baseType: !2214, size: 448, offset: 2304)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !10, line: 986, size: 448, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2214, file: !10, line: 987, baseType: !303, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2214, file: !10, line: 988, baseType: !303, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2214, file: !10, line: 989, baseType: !303, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2214, file: !10, line: 990, baseType: !303, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2214, file: !10, line: 991, baseType: !303, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2214, file: !10, line: 992, baseType: !303, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2214, file: !10, line: 993, baseType: !303, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2210, file: !10, line: 1012, baseType: !2224, size: 64, offset: 2752)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2225, line: 12, baseType: !2226)
!2225 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2231, line: 55, size: 2880, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2264, !2265, !2266, !2267, !2268, !2269}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2230, file: !2231, line: 56, baseType: !2058, size: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2230, file: !2231, line: 57, baseType: !2051, size: 448, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2230, file: !2231, line: 58, baseType: !2037, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2230, file: !2231, line: 59, baseType: !2224, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2230, file: !2231, line: 60, baseType: !2238, size: 64, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !2231, line: 60, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2230, file: !2231, line: 61, baseType: !5, size: 32, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2230, file: !2231, line: 62, baseType: !5, size: 32, offset: 928)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2230, file: !2231, line: 63, baseType: !5, size: 32, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2230, file: !2231, line: 64, baseType: !5, size: 32, offset: 992)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2230, file: !2231, line: 65, baseType: !5, size: 32, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2230, file: !2231, line: 66, baseType: !5, size: 32, offset: 1056)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2230, file: !2231, line: 67, baseType: !303, size: 64, offset: 1088)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2230, file: !2231, line: 68, baseType: !5, size: 32, offset: 1152)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2230, file: !2231, line: 69, baseType: !392, size: 32, offset: 1184)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2230, file: !2231, line: 70, baseType: !155, size: 32, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2230, file: !2231, line: 71, baseType: !417, offset: 1248)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2230, file: !2231, line: 72, baseType: !2252, size: 64, offset: 1280)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2230, file: !2231, line: 73, baseType: !2093, size: 64, offset: 1344)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2230, file: !2231, line: 81, baseType: !303, size: 64, offset: 1408)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2230, file: !2231, line: 82, baseType: !392, size: 32, offset: 1472)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2230, file: !2231, line: 83, baseType: !796, size: 128, offset: 1536)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2230, file: !2231, line: 85, baseType: !5, size: 32, offset: 1664)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2230, file: !2231, line: 86, baseType: !5, size: 32, offset: 1696)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2230, file: !2231, line: 87, baseType: !5, size: 32, offset: 1728)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2230, file: !2231, line: 88, baseType: !5, size: 32, offset: 1760)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2230, file: !2231, line: 91, baseType: !2262, size: 64, offset: 1792)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !152, line: 84, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2230, file: !2231, line: 98, baseType: !803, size: 128, align: 64, offset: 1856)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2230, file: !2231, line: 99, baseType: !196, size: 512, offset: 1984)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2230, file: !2231, line: 101, baseType: !469, size: 192, offset: 2496)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2230, file: !2231, line: 102, baseType: !155, size: 32, offset: 2688)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2230, file: !2231, line: 103, baseType: !1763, size: 64, offset: 2752)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2230, file: !2231, line: 104, baseType: !200, size: 64, offset: 2816)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !10, line: 1013, baseType: !146, size: 32, offset: 2816)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2210, file: !10, line: 1014, baseType: !146, size: 32, offset: 2848)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2210, file: !10, line: 1015, baseType: !720, size: 64, offset: 2880)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1972, file: !80, line: 175, baseType: !1971, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1972, file: !80, line: 182, baseType: !2025, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1972, file: !80, line: 183, baseType: !5, size: 32, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1972, file: !80, line: 184, baseType: !5, size: 32, offset: 736)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1972, file: !80, line: 185, baseType: !1552, size: 128, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1972, file: !80, line: 186, baseType: !469, size: 192, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1972, file: !80, line: 187, baseType: !2280, offset: 1088)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !1437)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !193, file: !59, line: 499, baseType: !139, size: 128, offset: 4224)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !193, file: !59, line: 502, baseType: !2283, size: 64, offset: 4352)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2285)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !59, line: 502, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !193, file: !59, line: 504, baseType: !2287, size: 64, offset: 4416)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !193, file: !59, line: 505, baseType: !372, size: 64, offset: 4480)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !193, file: !59, line: 510, baseType: !372, size: 64, offset: 4544)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !193, file: !59, line: 511, baseType: !2291, size: 64, offset: 4608)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !59, line: 511, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !193, file: !59, line: 513, baseType: !2295, size: 64, offset: 4672)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !59, line: 288, size: 128, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2296, file: !59, line: 293, baseType: !5, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2296, file: !59, line: 294, baseType: !303, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !193, file: !59, line: 515, baseType: !139, size: 128, offset: 4736)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !193, file: !59, line: 526, baseType: !2302, offset: 4864)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2303, line: 5, elements: !226)
!2303 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !193, file: !59, line: 528, baseType: !1985, size: 64, offset: 4864)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !193, file: !59, line: 529, baseType: !163, size: 64, offset: 4928)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !193, file: !59, line: 534, baseType: !2307, size: 32, offset: 4992)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !140, line: 16, baseType: !2308)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !140, line: 13, baseType: !146)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !193, file: !59, line: 535, baseType: !146, size: 32, offset: 5024)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !193, file: !59, line: 537, baseType: !212, offset: 5056)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !193, file: !59, line: 538, baseType: !139, size: 128, offset: 5056)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !193, file: !59, line: 540, baseType: !2313, size: 64, offset: 5184)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2315, line: 54, size: 960, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2327, !2331, !2332, !2333, !2334, !2338, !2342, !2343}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2314, file: !2315, line: 55, baseType: !200, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2314, file: !2315, line: 56, baseType: !1763, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2314, file: !2315, line: 58, baseType: !307, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2314, file: !2315, line: 59, baseType: !307, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2314, file: !2315, line: 60, baseType: !205, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2314, file: !2315, line: 62, baseType: !1699, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2314, file: !2315, line: 63, baseType: !2324, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!253, !1686, !1706}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2314, file: !2315, line: 65, baseType: !2328, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !2313}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2314, file: !2315, line: 66, baseType: !1708, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2314, file: !2315, line: 68, baseType: !1717, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2314, file: !2315, line: 70, baseType: !1472, size: 64, offset: 640)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2314, file: !2315, line: 71, baseType: !2335, size: 64, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!189, !1686}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2314, file: !2315, line: 73, baseType: !2339, size: 64, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !1686, !1507, !1514}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2314, file: !2315, line: 75, baseType: !1712, size: 64, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2314, file: !2315, line: 77, baseType: !1833, size: 64, offset: 896)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !193, file: !59, line: 541, baseType: !307, size: 64, offset: 5248)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !193, file: !59, line: 543, baseType: !1708, size: 64, offset: 5312)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !193, file: !59, line: 544, baseType: !2347, size: 64, offset: 5376)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !59, line: 45, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !193, file: !59, line: 545, baseType: !2350, size: 64, offset: 5440)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !59, line: 47, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !193, file: !59, line: 547, baseType: !181, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !193, file: !59, line: 548, baseType: !181, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !193, file: !59, line: 549, baseType: !181, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !193, file: !59, line: 550, baseType: !181, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !167, file: !160, line: 116, baseType: !2357, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!181, !183, !200}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !167, file: !160, line: 118, baseType: !2361, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!155, !183, !200, !5, !133, !300}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !167, file: !160, line: 123, baseType: !2365, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!155, !183, !200, !2368, !300}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !167, file: !160, line: 126, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!200, !183}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !167, file: !160, line: 127, baseType: !2370, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !167, file: !160, line: 128, baseType: !2375, size: 64, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!163, !183}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !167, file: !160, line: 130, baseType: !2379, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!163, !183, !163}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !167, file: !160, line: 133, baseType: !2383, size: 64, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!163, !183, !200}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !167, file: !160, line: 135, baseType: !2387, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!155, !183, !200, !200, !5, !5, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !160, line: 43, size: 640, elements: !2392)
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2391, file: !160, line: 44, baseType: !163, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2391, file: !160, line: 45, baseType: !5, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2391, file: !160, line: 46, baseType: !2396, size: 512, offset: 128)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !628)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !167, file: !160, line: 140, baseType: !2379, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !167, file: !160, line: 143, baseType: !2375, size: 64, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !167, file: !160, line: 145, baseType: !170, size: 64, offset: 960)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !167, file: !160, line: 146, baseType: !2401, size: 64, offset: 1024)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!155, !183, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !160, line: 29, size: 128, elements: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2405, file: !160, line: 30, baseType: !5, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2405, file: !160, line: 31, baseType: !5, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2405, file: !160, line: 32, baseType: !183, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !167, file: !160, line: 148, baseType: !2411, size: 64, offset: 1088)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!155, !183, !1686}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !159, file: !160, line: 20, baseType: !1686, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !152, line: 355, baseType: !150, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !151, file: !152, line: 356, baseType: !139, size: 128, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !151, file: !152, line: 357, baseType: !139, size: 128, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !151, file: !152, line: 358, baseType: !139, size: 128, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !151, file: !152, line: 359, baseType: !139, size: 128, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !151, file: !152, line: 360, baseType: !2421, size: 32, offset: 896)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !152, line: 179, size: 32, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2421, file: !152, line: 180, baseType: !146, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2421, file: !152, line: 181, baseType: !146, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2421, file: !152, line: 182, baseType: !146, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2421, file: !152, line: 183, baseType: !146, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2421, file: !152, line: 184, baseType: !146, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2421, file: !152, line: 185, baseType: !146, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !152, line: 361, baseType: !2430, size: 32, offset: 928)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !152, line: 190, size: 32, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2430, file: !152, line: 191, baseType: !146, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2430, file: !152, line: 192, baseType: !146, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2430, file: !152, line: 193, baseType: !146, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2430, file: !152, line: 194, baseType: !146, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2430, file: !152, line: 195, baseType: !146, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2430, file: !152, line: 196, baseType: !146, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2430, file: !152, line: 197, baseType: !146, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2430, file: !152, line: 198, baseType: !146, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2430, file: !152, line: 199, baseType: !146, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2430, file: !152, line: 200, baseType: !146, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2430, file: !152, line: 201, baseType: !146, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2430, file: !152, line: 202, baseType: !146, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2430, file: !152, line: 203, baseType: !146, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2430, file: !152, line: 204, baseType: !146, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !151, file: !152, line: 362, baseType: !2447, size: 960, offset: 960)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !152, line: 234, size: 960, elements: !2448)
!2448 = !{!2449, !2451, !2458, !2460, !2461, !2462, !2467, !2470}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2447, file: !152, line: 235, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !152, line: 217, baseType: !1026)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2447, file: !152, line: 236, baseType: !2452, size: 32, offset: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !152, line: 227, size: 32, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2452, file: !152, line: 228, baseType: !146, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2452, file: !152, line: 229, baseType: !146, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2452, file: !152, line: 230, baseType: !146, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2452, file: !152, line: 231, baseType: !146, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2447, file: !152, line: 237, baseType: !2459, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !152, line: 218, baseType: !372)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2447, file: !152, line: 238, baseType: !253, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2447, file: !152, line: 239, baseType: !139, size: 128, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2447, file: !152, line: 240, baseType: !2463, size: 320, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !152, line: 219, baseType: !2464)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 320, elements: !2465)
!2465 = !{!2466}
!2466 = !DISubrange(count: 40)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2447, file: !152, line: 241, baseType: !2468, size: 160, offset: 704)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !152, line: 220, baseType: !2469)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 160, elements: !1290)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2447, file: !152, line: 242, baseType: !2471, size: 64, offset: 896)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !145, line: 899, size: 192, elements: !2473)
!2473 = !{!2474, !2476, !2481, !2487, !2494, !2500, !2506, !2514}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2472, file: !145, line: 900, baseType: !2475, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !145, line: 635, baseType: !146)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2472, file: !145, line: 904, baseType: !2477, size: 128)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 901, size: 128, elements: !2478)
!2478 = !{!2479, !2480}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2477, file: !145, line: 902, baseType: !2475, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2477, file: !145, line: 903, baseType: !372, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2472, file: !145, line: 910, baseType: !2482, size: 128)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 906, size: 128, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2482, file: !145, line: 907, baseType: !2475, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2482, file: !145, line: 908, baseType: !146, size: 32, offset: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2482, file: !145, line: 909, baseType: !253, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2472, file: !145, line: 916, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 912, size: 128, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2488, file: !145, line: 913, baseType: !2475, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2488, file: !145, line: 914, baseType: !146, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2488, file: !145, line: 915, baseType: !2493, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2472, file: !145, line: 922, baseType: !2495, size: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 918, size: 128, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2495, file: !145, line: 919, baseType: !2475, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2495, file: !145, line: 920, baseType: !146, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2495, file: !145, line: 921, baseType: !2471, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2472, file: !145, line: 928, baseType: !2501, size: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 924, size: 128, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2501, file: !145, line: 925, baseType: !2475, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2501, file: !145, line: 926, baseType: !2475, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2501, file: !145, line: 927, baseType: !157, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2472, file: !145, line: 935, baseType: !2507, size: 192)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 930, size: 192, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2513}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2507, file: !145, line: 931, baseType: !2475, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2507, file: !145, line: 932, baseType: !146, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2507, file: !145, line: 933, baseType: !2512, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !145, line: 128, baseType: !372)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2507, file: !145, line: 934, baseType: !146, size: 32, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2472, file: !145, line: 941, baseType: !2515, size: 96)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2472, file: !145, line: 937, size: 96, elements: !2516)
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2515, file: !145, line: 938, baseType: !2475, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2515, file: !145, line: 939, baseType: !146, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2515, file: !145, line: 940, baseType: !146, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !151, file: !152, line: 363, baseType: !2521, size: 1344, offset: 1920)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !152, line: 275, size: 1344, elements: !2522)
!2522 = !{!2523, !2524, !2534}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2521, file: !152, line: 276, baseType: !155, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2521, file: !152, line: 277, baseType: !2525, size: 32, offset: 32)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !152, line: 254, size: 32, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2525, file: !152, line: 255, baseType: !146, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2525, file: !152, line: 256, baseType: !146, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2525, file: !152, line: 257, baseType: !146, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2525, file: !152, line: 258, baseType: !146, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2525, file: !152, line: 259, baseType: !146, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2525, file: !152, line: 260, baseType: !146, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2525, file: !152, line: 261, baseType: !146, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2521, file: !152, line: 278, baseType: !2535, size: 1280, offset: 64)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2536, size: 1280, elements: !2547)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !152, line: 264, size: 256, elements: !2537)
!2537 = !{!2538, !2544, !2545, !2546}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !152, line: 269, baseType: !2539, size: 8)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !152, line: 265, size: 8, elements: !2540)
!2540 = !{!2541, !2542, !2543}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2539, file: !152, line: 266, baseType: !101, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2539, file: !152, line: 267, baseType: !101, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2539, file: !152, line: 268, baseType: !101, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2536, file: !152, line: 270, baseType: !155, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2536, file: !152, line: 271, baseType: !155, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2536, file: !152, line: 272, baseType: !139, size: 128, offset: 128)
!2547 = !{!2548}
!2548 = !DISubrange(count: 5)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !151, file: !152, line: 364, baseType: !2550, size: 640, offset: 3264)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !152, line: 315, size: 640, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2561, !2570, !2571, !2572}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2550, file: !152, line: 316, baseType: !157, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2550, file: !152, line: 317, baseType: !372, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2550, file: !152, line: 318, baseType: !372, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2550, file: !152, line: 319, baseType: !139, size: 128, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !152, line: 320, baseType: !2557, size: 8, offset: 320)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !152, line: 305, size: 8, elements: !2558)
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2557, file: !152, line: 306, baseType: !101, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2557, file: !152, line: 307, baseType: !101, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2550, file: !152, line: 321, baseType: !2562, size: 128, offset: 384)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !152, line: 310, size: 128, elements: !2563)
!2563 = !{!2564, !2569}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2562, file: !152, line: 311, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2562, file: !152, line: 312, baseType: !1686, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2550, file: !152, line: 322, baseType: !1871, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2550, file: !152, line: 323, baseType: !155, size: 32, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2550, file: !152, line: 324, baseType: !155, size: 32, offset: 608)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !151, file: !152, line: 365, baseType: !2574, size: 192, offset: 3904)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !152, line: 297, size: 192, elements: !2575)
!2575 = !{!2576, !2577, !2581, !2582}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2574, file: !152, line: 298, baseType: !155, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !152, line: 299, baseType: !2578, size: 8, offset: 32)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !152, line: 283, size: 8, elements: !2579)
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2578, file: !152, line: 284, baseType: !101, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2574, file: !152, line: 300, baseType: !155, size: 32, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2574, file: !152, line: 301, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !152, line: 287, size: 64, elements: !2585)
!2585 = !{!2586, !2591, !2592, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2584, file: !152, line: 291, baseType: !2587, size: 8)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !152, line: 288, size: 8, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2587, file: !152, line: 289, baseType: !101, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2587, file: !152, line: 290, baseType: !101, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2584, file: !152, line: 292, baseType: !101, size: 8, offset: 8)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2584, file: !152, line: 293, baseType: !101, size: 8, offset: 16)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2584, file: !152, line: 294, baseType: !155, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !151, file: !152, line: 366, baseType: !2595, size: 64, offset: 4096)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !152, line: 209, size: 64, elements: !2596)
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2595, file: !152, line: 210, baseType: !2262, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !152, line: 367, baseType: !2599, size: 384, offset: 4160)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !152, line: 341, size: 384, elements: !2600)
!2600 = !{!2601, !2604, !2605, !2606}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2599, file: !152, line: 342, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2599, file: !152, line: 343, baseType: !139, size: 128, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2599, file: !152, line: 344, baseType: !2602, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2599, file: !152, line: 345, baseType: !139, size: 128, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !151, file: !152, line: 368, baseType: !2608, size: 64, offset: 4544)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !152, line: 122, size: 1216, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2618, !2622, !2626, !2627, !2628}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2609, file: !152, line: 123, baseType: !1784, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2609, file: !152, line: 124, baseType: !139, size: 128, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2609, file: !152, line: 125, baseType: !2614, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!181, !200, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2609, file: !152, line: 126, baseType: !2619, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!155, !150, !1784}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2609, file: !152, line: 127, baseType: !2623, size: 64, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !150}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2609, file: !152, line: 128, baseType: !1708, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2609, file: !152, line: 129, baseType: !1708, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2609, file: !152, line: 130, baseType: !2629, size: 704, offset: 512)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !152, line: 108, size: 704, elements: !2630)
!2630 = !{!2631, !2632, !2636, !2637, !2638}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2629, file: !152, line: 109, baseType: !196, size: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2629, file: !152, line: 110, baseType: !2633, size: 64, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!155, !150}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2629, file: !152, line: 111, baseType: !2623, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2629, file: !152, line: 112, baseType: !181, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2629, file: !152, line: 113, baseType: !181, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !151, file: !152, line: 369, baseType: !2640, size: 64, offset: 4608)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !152, line: 138, size: 256, elements: !2642)
!2642 = !{!2643, !2644, !2648, !2652}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2641, file: !152, line: 139, baseType: !150, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2641, file: !152, line: 140, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!155, !150, !146}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2641, file: !152, line: 141, baseType: !2649, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !150, !146}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2641, file: !152, line: 142, baseType: !2623, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !151, file: !152, line: 370, baseType: !2654, size: 64, offset: 4672)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !152, line: 162, size: 2816, elements: !2656)
!2656 = !{!2657, !2661, !2662, !2663, !2664, !2673, !2674}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2655, file: !152, line: 163, baseType: !2658, size: 640)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 640, elements: !2659)
!2659 = !{!2660}
!2660 = !DISubrange(count: 80)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2655, file: !152, line: 164, baseType: !2658, size: 640, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2655, file: !152, line: 165, baseType: !1784, size: 64, offset: 1280)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !152, line: 166, baseType: !5, size: 32, offset: 1344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !152, line: 167, baseType: !2665, size: 192, offset: 1408)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !152, line: 154, size: 192, elements: !2666)
!2666 = !{!2667, !2669, !2671}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2665, file: !152, line: 155, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !152, line: 150, baseType: !2633)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2665, file: !152, line: 156, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !152, line: 151, baseType: !2633)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2665, file: !152, line: 157, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !152, line: 152, baseType: !2649)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2655, file: !152, line: 168, baseType: !1758, size: 1152, offset: 1600)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2655, file: !152, line: 169, baseType: !1763, size: 64, offset: 2752)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !151, file: !152, line: 371, baseType: !2676, size: 64, offset: 4736)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !152, line: 348, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !151, file: !152, line: 372, baseType: !133, size: 64, offset: 4800)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !151, file: !152, line: 373, baseType: !193, size: 5568, offset: 4864)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !151, file: !152, line: 374, baseType: !5, size: 32, offset: 10432)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !151, file: !152, line: 375, baseType: !5, size: 32, offset: 10464)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !151, file: !152, line: 376, baseType: !139, size: 128, offset: 10496)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !151, file: !152, line: 377, baseType: !469, size: 192, offset: 10624)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !151, file: !152, line: 378, baseType: !2623, size: 64, offset: 10816)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !2688, line: 23, size: 768, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !{!2690, !2691, !2705, !2706}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2687, file: !2688, line: 24, baseType: !139, size: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2687, file: !2688, line: 25, baseType: !2692, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2694, line: 20, size: 512, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2695 = !{!2696, !2698, !2699, !2700, !2701, !2702, !2703, !2704}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2693, file: !2694, line: 21, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !140, line: 158, baseType: !1216)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2693, file: !2694, line: 22, baseType: !2697, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2693, file: !2694, line: 23, baseType: !200, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2693, file: !2694, line: 24, baseType: !303, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2693, file: !2694, line: 25, baseType: !303, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2693, file: !2694, line: 26, baseType: !2692, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2693, file: !2694, line: 26, baseType: !2692, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2693, file: !2694, line: 26, baseType: !2692, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2687, file: !2688, line: 26, baseType: !2697, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !2687, file: !2688, line: 27, baseType: !2693, size: 512, offset: 256)
!2707 = !{i32 7, !"Dwarf Version", i32 4}
!2708 = !{i32 2, !"Debug Info Version", i32 3}
!2709 = !{i32 1, !"wchar_size", i32 2}
!2710 = !{i32 1, !"Code Model", i32 2}
!2711 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2712 = distinct !DISubprogram(name: "acpi_dev_resource_memory", scope: !1, file: !1, line: 105, type: !2713, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!181, !2715, !2692}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !108, line: 651, size: 544, elements: !2717)
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2716, file: !108, line: 652, baseType: !146, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2716, file: !108, line: 653, baseType: !146, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2716, file: !108, line: 654, baseType: !2721, size: 480, offset: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !108, line: 614, size: 480, elements: !2722)
!2722 = !{!2723, !2734, !2742, !2748, !2756, !2761, !2767, !2772, !2780, !2784, !2792, !2800, !2806, !2829, !2847, !2865, !2877, !2889, !2897, !2917, !2933, !2953, !2975, !2988, !3000, !3013, !3027, !3038, !3050}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2721, file: !108, line: 615, baseType: !2724, size: 56)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !108, line: 138, size: 56, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2724, file: !108, line: 139, baseType: !101, size: 8)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2724, file: !108, line: 140, baseType: !101, size: 8, offset: 8)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2724, file: !108, line: 141, baseType: !101, size: 8, offset: 16)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2724, file: !108, line: 142, baseType: !101, size: 8, offset: 24)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2724, file: !108, line: 143, baseType: !101, size: 8, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2724, file: !108, line: 144, baseType: !101, size: 8, offset: 40)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2724, file: !108, line: 145, baseType: !2733, size: 8, offset: 48)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8, elements: !676)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2721, file: !108, line: 616, baseType: !2735, size: 40)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !108, line: 148, size: 40, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2735, file: !108, line: 149, baseType: !101, size: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !2735, file: !108, line: 150, baseType: !101, size: 8, offset: 8)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !2735, file: !108, line: 151, baseType: !101, size: 8, offset: 16)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !2735, file: !108, line: 152, baseType: !101, size: 8, offset: 24)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2735, file: !108, line: 153, baseType: !2733, size: 8, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !2721, file: !108, line: 617, baseType: !2743, size: 24)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !108, line: 156, size: 24, elements: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2743, file: !108, line: 157, baseType: !101, size: 8)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !2743, file: !108, line: 158, baseType: !101, size: 8, offset: 8)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !2743, file: !108, line: 159, baseType: !101, size: 8, offset: 16)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2721, file: !108, line: 618, baseType: !2749, size: 56)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !108, line: 167, size: 56, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !2749, file: !108, line: 168, baseType: !101, size: 8)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2749, file: !108, line: 169, baseType: !101, size: 8, offset: 8)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2749, file: !108, line: 170, baseType: !101, size: 8, offset: 16)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2749, file: !108, line: 171, baseType: !498, size: 16, offset: 24)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2749, file: !108, line: 172, baseType: !498, size: 16, offset: 40)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !2721, file: !108, line: 619, baseType: !2757, size: 24)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !108, line: 175, size: 24, elements: !2758)
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2757, file: !108, line: 176, baseType: !498, size: 16)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2757, file: !108, line: 177, baseType: !101, size: 8, offset: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !2721, file: !108, line: 620, baseType: !2762, size: 40)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !108, line: 180, size: 40, elements: !2763)
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !2762, file: !108, line: 181, baseType: !498, size: 16)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2762, file: !108, line: 182, baseType: !498, size: 16, offset: 16)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2762, file: !108, line: 183, baseType: !101, size: 8, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2721, file: !108, line: 621, baseType: !2768, size: 24)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !108, line: 195, size: 24, elements: !2769)
!2769 = !{!2770, !2771}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2768, file: !108, line: 196, baseType: !498, size: 16)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2768, file: !108, line: 197, baseType: !2733, size: 8, offset: 16)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !2721, file: !108, line: 622, baseType: !2773, size: 160)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !108, line: 202, size: 160, elements: !2774)
!2774 = !{!2775, !2776, !2777, !2779}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2773, file: !108, line: 203, baseType: !498, size: 16)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !2773, file: !108, line: 204, baseType: !101, size: 8, offset: 16)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2773, file: !108, line: 205, baseType: !2778, size: 128, offset: 24)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !881)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2773, file: !108, line: 206, baseType: !2733, size: 8, offset: 152)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !2721, file: !108, line: 623, baseType: !2781, size: 8)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !108, line: 209, size: 8, elements: !2782)
!2782 = !{!2783}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2781, file: !108, line: 210, baseType: !101, size: 8)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !2721, file: !108, line: 624, baseType: !2785, size: 72)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !108, line: 213, size: 72, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2785, file: !108, line: 214, baseType: !101, size: 8)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2785, file: !108, line: 215, baseType: !498, size: 16, offset: 8)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2785, file: !108, line: 216, baseType: !498, size: 16, offset: 24)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2785, file: !108, line: 217, baseType: !498, size: 16, offset: 40)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2785, file: !108, line: 218, baseType: !498, size: 16, offset: 56)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !2721, file: !108, line: 625, baseType: !2793, size: 136)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !108, line: 221, size: 136, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2799}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2793, file: !108, line: 222, baseType: !101, size: 8)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2793, file: !108, line: 223, baseType: !146, size: 32, offset: 8)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2793, file: !108, line: 224, baseType: !146, size: 32, offset: 40)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2793, file: !108, line: 225, baseType: !146, size: 32, offset: 72)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2793, file: !108, line: 226, baseType: !146, size: 32, offset: 104)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !2721, file: !108, line: 626, baseType: !2801, size: 72)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !108, line: 229, size: 72, elements: !2802)
!2802 = !{!2803, !2804, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2801, file: !108, line: 230, baseType: !101, size: 8)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2801, file: !108, line: 231, baseType: !146, size: 32, offset: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2801, file: !108, line: 232, baseType: !146, size: 32, offset: 40)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !2721, file: !108, line: 627, baseType: !2807, size: 240)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !108, line: 306, size: 240, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2815, !2823}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2807, file: !108, line: 307, baseType: !101, size: 8)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2807, file: !108, line: 307, baseType: !101, size: 8, offset: 8)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2807, file: !108, line: 307, baseType: !101, size: 8, offset: 16)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2807, file: !108, line: 307, baseType: !101, size: 8, offset: 24)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2807, file: !108, line: 307, baseType: !101, size: 8, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2807, file: !108, line: 307, baseType: !116, size: 32, offset: 40)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2807, file: !108, line: 307, baseType: !2816, size: 80, offset: 72)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !108, line: 279, size: 80, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2822}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2816, file: !108, line: 280, baseType: !498, size: 16)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2816, file: !108, line: 281, baseType: !498, size: 16, offset: 16)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2816, file: !108, line: 282, baseType: !498, size: 16, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2816, file: !108, line: 283, baseType: !498, size: 16, offset: 48)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2816, file: !108, line: 284, baseType: !498, size: 16, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2807, file: !108, line: 308, baseType: !2824, size: 88, offset: 152)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !108, line: 263, size: 88, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2824, file: !108, line: 264, baseType: !101, size: 8)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2824, file: !108, line: 265, baseType: !498, size: 16, offset: 8)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2824, file: !108, line: 266, baseType: !253, size: 64, offset: 24)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !2721, file: !108, line: 628, baseType: !2830, size: 320)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !108, line: 311, size: 320, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2846}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2830, file: !108, line: 312, baseType: !101, size: 8)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2830, file: !108, line: 312, baseType: !101, size: 8, offset: 8)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2830, file: !108, line: 312, baseType: !101, size: 8, offset: 16)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2830, file: !108, line: 312, baseType: !101, size: 8, offset: 24)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2830, file: !108, line: 312, baseType: !101, size: 8, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2830, file: !108, line: 312, baseType: !116, size: 32, offset: 40)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2830, file: !108, line: 312, baseType: !2839, size: 160, offset: 72)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !108, line: 287, size: 160, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2839, file: !108, line: 288, baseType: !146, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2839, file: !108, line: 289, baseType: !146, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2839, file: !108, line: 290, baseType: !146, size: 32, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2839, file: !108, line: 291, baseType: !146, size: 32, offset: 96)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2839, file: !108, line: 292, baseType: !146, size: 32, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2830, file: !108, line: 313, baseType: !2824, size: 88, offset: 232)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !2721, file: !108, line: 629, baseType: !2848, size: 480)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !108, line: 316, size: 480, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2864}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2848, file: !108, line: 317, baseType: !101, size: 8)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2848, file: !108, line: 317, baseType: !101, size: 8, offset: 8)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2848, file: !108, line: 317, baseType: !101, size: 8, offset: 16)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2848, file: !108, line: 317, baseType: !101, size: 8, offset: 24)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2848, file: !108, line: 317, baseType: !101, size: 8, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2848, file: !108, line: 317, baseType: !116, size: 32, offset: 40)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2848, file: !108, line: 317, baseType: !2857, size: 320, offset: 72)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !108, line: 295, size: 320, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2857, file: !108, line: 296, baseType: !372, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2857, file: !108, line: 297, baseType: !372, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2857, file: !108, line: 298, baseType: !372, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2857, file: !108, line: 299, baseType: !372, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2857, file: !108, line: 300, baseType: !372, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2848, file: !108, line: 318, baseType: !2824, size: 88, offset: 392)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !2721, file: !108, line: 630, baseType: !2866, size: 464)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !108, line: 321, size: 464, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2866, file: !108, line: 322, baseType: !101, size: 8)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2866, file: !108, line: 322, baseType: !101, size: 8, offset: 8)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2866, file: !108, line: 322, baseType: !101, size: 8, offset: 16)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2866, file: !108, line: 322, baseType: !101, size: 8, offset: 24)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2866, file: !108, line: 322, baseType: !101, size: 8, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2866, file: !108, line: 322, baseType: !116, size: 32, offset: 40)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !2866, file: !108, line: 322, baseType: !101, size: 8, offset: 72)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2866, file: !108, line: 323, baseType: !2857, size: 320, offset: 80)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2866, file: !108, line: 324, baseType: !372, size: 64, offset: 400)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !2721, file: !108, line: 631, baseType: !2878, size: 168)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !108, line: 327, size: 168, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2878, file: !108, line: 328, baseType: !101, size: 8)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2878, file: !108, line: 329, baseType: !101, size: 8, offset: 8)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2878, file: !108, line: 330, baseType: !101, size: 8, offset: 16)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2878, file: !108, line: 331, baseType: !101, size: 8, offset: 24)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2878, file: !108, line: 332, baseType: !101, size: 8, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2878, file: !108, line: 333, baseType: !101, size: 8, offset: 40)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2878, file: !108, line: 334, baseType: !2824, size: 88, offset: 48)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2878, file: !108, line: 335, baseType: !2888, size: 32, offset: 136)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !676)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !2721, file: !108, line: 632, baseType: !2890, size: 96)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !108, line: 338, size: 96, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2896}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2890, file: !108, line: 339, baseType: !101, size: 8)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2890, file: !108, line: 340, baseType: !101, size: 8, offset: 8)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2890, file: !108, line: 341, baseType: !101, size: 8, offset: 16)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2890, file: !108, line: 342, baseType: !101, size: 8, offset: 24)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2890, file: !108, line: 343, baseType: !372, size: 64, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !2721, file: !108, line: 633, baseType: !2898, size: 352)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !108, line: 346, size: 352, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2916}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2898, file: !108, line: 347, baseType: !101, size: 8)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !2898, file: !108, line: 348, baseType: !101, size: 8, offset: 8)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2898, file: !108, line: 349, baseType: !101, size: 8, offset: 16)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2898, file: !108, line: 350, baseType: !101, size: 8, offset: 24)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2898, file: !108, line: 351, baseType: !101, size: 8, offset: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2898, file: !108, line: 352, baseType: !101, size: 8, offset: 40)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !2898, file: !108, line: 353, baseType: !101, size: 8, offset: 48)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2898, file: !108, line: 354, baseType: !101, size: 8, offset: 56)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2898, file: !108, line: 355, baseType: !101, size: 8, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2898, file: !108, line: 356, baseType: !498, size: 16, offset: 72)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !2898, file: !108, line: 357, baseType: !498, size: 16, offset: 88)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2898, file: !108, line: 358, baseType: !498, size: 16, offset: 104)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2898, file: !108, line: 359, baseType: !498, size: 16, offset: 120)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2898, file: !108, line: 360, baseType: !2824, size: 88, offset: 136)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2898, file: !108, line: 361, baseType: !2915, size: 64, offset: 224)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2898, file: !108, line: 362, baseType: !2493, size: 64, offset: 288)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !2721, file: !108, line: 634, baseType: !2918, size: 288)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !108, line: 412, size: 288, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2918, file: !108, line: 413, baseType: !101, size: 8)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 8)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 16)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 24)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 40)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2918, file: !108, line: 413, baseType: !498, size: 16, offset: 48)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2918, file: !108, line: 413, baseType: !498, size: 16, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2918, file: !108, line: 413, baseType: !2824, size: 88, offset: 80)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2918, file: !108, line: 413, baseType: !2493, size: 64, offset: 168)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !2918, file: !108, line: 413, baseType: !101, size: 8, offset: 232)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !2918, file: !108, line: 414, baseType: !498, size: 16, offset: 240)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2918, file: !108, line: 415, baseType: !146, size: 32, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !2721, file: !108, line: 635, baseType: !2934, size: 320)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !108, line: 423, size: 320, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2934, file: !108, line: 424, baseType: !101, size: 8)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 8)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 16)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 24)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 40)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2934, file: !108, line: 424, baseType: !498, size: 16, offset: 48)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2934, file: !108, line: 424, baseType: !498, size: 16, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2934, file: !108, line: 424, baseType: !2824, size: 88, offset: 80)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2934, file: !108, line: 424, baseType: !2493, size: 64, offset: 168)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !2934, file: !108, line: 424, baseType: !101, size: 8, offset: 232)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !2934, file: !108, line: 425, baseType: !101, size: 8, offset: 240)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !2934, file: !108, line: 426, baseType: !101, size: 8, offset: 248)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !2934, file: !108, line: 427, baseType: !101, size: 8, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !2934, file: !108, line: 428, baseType: !101, size: 8, offset: 264)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !2934, file: !108, line: 429, baseType: !498, size: 16, offset: 272)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2934, file: !108, line: 430, baseType: !146, size: 32, offset: 288)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !2721, file: !108, line: 636, baseType: !2954, size: 344)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !108, line: 453, size: 344, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2954, file: !108, line: 454, baseType: !101, size: 8)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 8)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 24)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 40)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2954, file: !108, line: 454, baseType: !498, size: 16, offset: 48)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2954, file: !108, line: 454, baseType: !498, size: 16, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2954, file: !108, line: 454, baseType: !2824, size: 88, offset: 80)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2954, file: !108, line: 454, baseType: !2493, size: 64, offset: 168)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2954, file: !108, line: 454, baseType: !101, size: 8, offset: 232)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !2954, file: !108, line: 455, baseType: !101, size: 8, offset: 240)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !2954, file: !108, line: 456, baseType: !101, size: 8, offset: 248)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !2954, file: !108, line: 457, baseType: !101, size: 8, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2954, file: !108, line: 458, baseType: !101, size: 8, offset: 264)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !2954, file: !108, line: 459, baseType: !101, size: 8, offset: 272)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !2954, file: !108, line: 460, baseType: !498, size: 16, offset: 280)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !2954, file: !108, line: 461, baseType: !498, size: 16, offset: 296)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !2954, file: !108, line: 462, baseType: !146, size: 32, offset: 312)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !2721, file: !108, line: 637, baseType: !2976, size: 232)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !108, line: 398, size: 232, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2976, file: !108, line: 399, baseType: !101, size: 8)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2976, file: !108, line: 399, baseType: !101, size: 8, offset: 8)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2976, file: !108, line: 399, baseType: !101, size: 8, offset: 16)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2976, file: !108, line: 399, baseType: !101, size: 8, offset: 24)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2976, file: !108, line: 399, baseType: !101, size: 8, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2976, file: !108, line: 399, baseType: !101, size: 8, offset: 40)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2976, file: !108, line: 399, baseType: !498, size: 16, offset: 48)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2976, file: !108, line: 399, baseType: !498, size: 16, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2976, file: !108, line: 399, baseType: !2824, size: 88, offset: 80)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2976, file: !108, line: 399, baseType: !2493, size: 64, offset: 168)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !2721, file: !108, line: 638, baseType: !2989, size: 288)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !108, line: 508, size: 288, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2989, file: !108, line: 509, baseType: !101, size: 8)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2989, file: !108, line: 510, baseType: !101, size: 8, offset: 8)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2989, file: !108, line: 511, baseType: !101, size: 8, offset: 16)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2989, file: !108, line: 512, baseType: !498, size: 16, offset: 24)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2989, file: !108, line: 513, baseType: !498, size: 16, offset: 40)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2989, file: !108, line: 514, baseType: !498, size: 16, offset: 56)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2989, file: !108, line: 515, baseType: !2824, size: 88, offset: 72)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2989, file: !108, line: 516, baseType: !2915, size: 64, offset: 160)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2989, file: !108, line: 517, baseType: !2493, size: 64, offset: 224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2721, file: !108, line: 639, baseType: !3001, size: 312)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !108, line: 520, size: 312, elements: !3002)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !3001, file: !108, line: 521, baseType: !101, size: 8)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3001, file: !108, line: 522, baseType: !101, size: 8, offset: 8)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !3001, file: !108, line: 523, baseType: !101, size: 8, offset: 16)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !3001, file: !108, line: 524, baseType: !101, size: 8, offset: 24)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !3001, file: !108, line: 525, baseType: !146, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !3001, file: !108, line: 526, baseType: !498, size: 16, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !3001, file: !108, line: 527, baseType: !498, size: 16, offset: 80)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !3001, file: !108, line: 528, baseType: !2824, size: 88, offset: 96)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !3001, file: !108, line: 529, baseType: !2915, size: 64, offset: 184)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !3001, file: !108, line: 530, baseType: !2493, size: 64, offset: 248)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !2721, file: !108, line: 640, baseType: !3014, size: 256)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !108, line: 550, size: 256, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3026}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !3014, file: !108, line: 551, baseType: !101, size: 8)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3014, file: !108, line: 552, baseType: !101, size: 8, offset: 8)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !3014, file: !108, line: 553, baseType: !498, size: 16, offset: 16)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !3014, file: !108, line: 554, baseType: !498, size: 16, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !3014, file: !108, line: 555, baseType: !2915, size: 64, offset: 48)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !3014, file: !108, line: 556, baseType: !3022, size: 80, offset: 112)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !108, line: 258, size: 80, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !3022, file: !108, line: 259, baseType: !498, size: 16)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !3022, file: !108, line: 260, baseType: !253, size: 64, offset: 16)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !3014, file: !108, line: 557, baseType: !2493, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !2721, file: !108, line: 641, baseType: !3028, size: 288)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !108, line: 560, size: 288, elements: !3029)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !3028, file: !108, line: 561, baseType: !101, size: 8)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3028, file: !108, line: 562, baseType: !101, size: 8, offset: 8)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !3028, file: !108, line: 563, baseType: !101, size: 8, offset: 16)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !3028, file: !108, line: 564, baseType: !498, size: 16, offset: 24)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !3028, file: !108, line: 565, baseType: !498, size: 16, offset: 40)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !3028, file: !108, line: 566, baseType: !2824, size: 88, offset: 56)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !3028, file: !108, line: 567, baseType: !3022, size: 80, offset: 144)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !3028, file: !108, line: 568, baseType: !2493, size: 64, offset: 224)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !2721, file: !108, line: 642, baseType: !3039, size: 312)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !108, line: 571, size: 312, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !3039, file: !108, line: 572, baseType: !101, size: 8)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3039, file: !108, line: 573, baseType: !101, size: 8, offset: 8)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !3039, file: !108, line: 574, baseType: !101, size: 8, offset: 16)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !3039, file: !108, line: 575, baseType: !101, size: 8, offset: 24)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !3039, file: !108, line: 576, baseType: !146, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !3039, file: !108, line: 577, baseType: !498, size: 16, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !3039, file: !108, line: 578, baseType: !2824, size: 88, offset: 80)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !3039, file: !108, line: 579, baseType: !3022, size: 80, offset: 168)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !3039, file: !108, line: 580, baseType: !2493, size: 64, offset: 248)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2721, file: !108, line: 646, baseType: !107, size: 72)
!3051 = !DILocalVariable(name: "ares", arg: 1, scope: !2712, file: !1, line: 105, type: !2715)
!3052 = !DILocation(line: 105, column: 53, scope: !2712)
!3053 = !DILocalVariable(name: "res", arg: 2, scope: !2712, file: !1, line: 105, type: !2692)
!3054 = !DILocation(line: 105, column: 76, scope: !2712)
!3055 = !DILocalVariable(name: "memory24", scope: !2712, file: !1, line: 107, type: !3056)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!3057 = !DILocation(line: 107, column: 33, scope: !2712)
!3058 = !DILocalVariable(name: "memory32", scope: !2712, file: !1, line: 108, type: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!3060 = !DILocation(line: 108, column: 33, scope: !2712)
!3061 = !DILocalVariable(name: "fixed_memory32", scope: !2712, file: !1, line: 109, type: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!3063 = !DILocation(line: 109, column: 39, scope: !2712)
!3064 = !DILocation(line: 111, column: 10, scope: !2712)
!3065 = !DILocation(line: 111, column: 16, scope: !2712)
!3066 = !DILocation(line: 111, column: 2, scope: !2712)
!3067 = !DILocation(line: 113, column: 15, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 111, column: 22)
!3069 = !DILocation(line: 113, column: 21, scope: !3068)
!3070 = !DILocation(line: 113, column: 26, scope: !3068)
!3071 = !DILocation(line: 113, column: 12, scope: !3068)
!3072 = !DILocation(line: 114, column: 28, scope: !3068)
!3073 = !DILocation(line: 114, column: 33, scope: !3068)
!3074 = !DILocation(line: 114, column: 43, scope: !3068)
!3075 = !DILocation(line: 114, column: 51, scope: !3068)
!3076 = !DILocation(line: 115, column: 7, scope: !3068)
!3077 = !DILocation(line: 115, column: 17, scope: !3068)
!3078 = !DILocation(line: 115, column: 32, scope: !3068)
!3079 = !DILocation(line: 116, column: 7, scope: !3068)
!3080 = !DILocation(line: 116, column: 17, scope: !3068)
!3081 = !DILocation(line: 114, column: 3, scope: !3068)
!3082 = !DILocation(line: 117, column: 3, scope: !3068)
!3083 = !DILocation(line: 119, column: 15, scope: !3068)
!3084 = !DILocation(line: 119, column: 21, scope: !3068)
!3085 = !DILocation(line: 119, column: 26, scope: !3068)
!3086 = !DILocation(line: 119, column: 12, scope: !3068)
!3087 = !DILocation(line: 120, column: 28, scope: !3068)
!3088 = !DILocation(line: 120, column: 33, scope: !3068)
!3089 = !DILocation(line: 120, column: 43, scope: !3068)
!3090 = !DILocation(line: 121, column: 7, scope: !3068)
!3091 = !DILocation(line: 121, column: 17, scope: !3068)
!3092 = !DILocation(line: 122, column: 7, scope: !3068)
!3093 = !DILocation(line: 122, column: 17, scope: !3068)
!3094 = !DILocation(line: 120, column: 3, scope: !3068)
!3095 = !DILocation(line: 123, column: 3, scope: !3068)
!3096 = !DILocation(line: 125, column: 21, scope: !3068)
!3097 = !DILocation(line: 125, column: 27, scope: !3068)
!3098 = !DILocation(line: 125, column: 32, scope: !3068)
!3099 = !DILocation(line: 125, column: 18, scope: !3068)
!3100 = !DILocation(line: 126, column: 28, scope: !3068)
!3101 = !DILocation(line: 126, column: 33, scope: !3068)
!3102 = !DILocation(line: 126, column: 49, scope: !3068)
!3103 = !DILocation(line: 127, column: 7, scope: !3068)
!3104 = !DILocation(line: 127, column: 23, scope: !3068)
!3105 = !DILocation(line: 128, column: 7, scope: !3068)
!3106 = !DILocation(line: 128, column: 23, scope: !3068)
!3107 = !DILocation(line: 126, column: 3, scope: !3068)
!3108 = !DILocation(line: 129, column: 3, scope: !3068)
!3109 = !DILocation(line: 131, column: 3, scope: !3068)
!3110 = !DILocation(line: 131, column: 8, scope: !3068)
!3111 = !DILocation(line: 131, column: 14, scope: !3068)
!3112 = !DILocation(line: 132, column: 3, scope: !3068)
!3113 = !DILocation(line: 135, column: 11, scope: !2712)
!3114 = !DILocation(line: 135, column: 16, scope: !2712)
!3115 = !DILocation(line: 135, column: 22, scope: !2712)
!3116 = !DILocation(line: 135, column: 9, scope: !2712)
!3117 = !DILocation(line: 135, column: 2, scope: !2712)
!3118 = !DILocation(line: 136, column: 1, scope: !2712)
!3119 = distinct !DISubprogram(name: "acpi_dev_get_memresource", scope: !1, file: !1, line: 83, type: !3120, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !2692, !372, !372, !101}
!3122 = !DILocalVariable(name: "res", arg: 1, scope: !3119, file: !1, line: 83, type: !2692)
!3123 = !DILocation(line: 83, column: 55, scope: !3119)
!3124 = !DILocalVariable(name: "start", arg: 2, scope: !3119, file: !1, line: 83, type: !372)
!3125 = !DILocation(line: 83, column: 64, scope: !3119)
!3126 = !DILocalVariable(name: "len", arg: 3, scope: !3119, file: !1, line: 83, type: !372)
!3127 = !DILocation(line: 83, column: 75, scope: !3119)
!3128 = !DILocalVariable(name: "write_protect", arg: 4, scope: !3119, file: !1, line: 84, type: !101)
!3129 = !DILocation(line: 84, column: 13, scope: !3119)
!3130 = !DILocation(line: 86, column: 15, scope: !3119)
!3131 = !DILocation(line: 86, column: 2, scope: !3119)
!3132 = !DILocation(line: 86, column: 7, scope: !3119)
!3133 = !DILocation(line: 86, column: 13, scope: !3119)
!3134 = !DILocation(line: 87, column: 13, scope: !3119)
!3135 = !DILocation(line: 87, column: 21, scope: !3119)
!3136 = !DILocation(line: 87, column: 19, scope: !3119)
!3137 = !DILocation(line: 87, column: 25, scope: !3119)
!3138 = !DILocation(line: 87, column: 2, scope: !3119)
!3139 = !DILocation(line: 87, column: 7, scope: !3119)
!3140 = !DILocation(line: 87, column: 11, scope: !3119)
!3141 = !DILocation(line: 88, column: 29, scope: !3119)
!3142 = !DILocation(line: 88, column: 34, scope: !3119)
!3143 = !DILocation(line: 88, column: 39, scope: !3119)
!3144 = !DILocation(line: 88, column: 2, scope: !3119)
!3145 = !DILocation(line: 89, column: 1, scope: !3119)
!3146 = distinct !DISubprogram(name: "acpi_dev_resource_io", scope: !1, file: !1, line: 178, type: !2713, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3147 = !DILocalVariable(name: "ares", arg: 1, scope: !3146, file: !1, line: 178, type: !2715)
!3148 = !DILocation(line: 178, column: 49, scope: !3146)
!3149 = !DILocalVariable(name: "res", arg: 2, scope: !3146, file: !1, line: 178, type: !2692)
!3150 = !DILocation(line: 178, column: 72, scope: !3146)
!3151 = !DILocalVariable(name: "io", scope: !3146, file: !1, line: 180, type: !3152)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!3153 = !DILocation(line: 180, column: 27, scope: !3146)
!3154 = !DILocalVariable(name: "fixed_io", scope: !3146, file: !1, line: 181, type: !3155)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!3156 = !DILocation(line: 181, column: 33, scope: !3146)
!3157 = !DILocation(line: 183, column: 10, scope: !3146)
!3158 = !DILocation(line: 183, column: 16, scope: !3146)
!3159 = !DILocation(line: 183, column: 2, scope: !3146)
!3160 = !DILocation(line: 185, column: 9, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3146, file: !1, line: 183, column: 22)
!3162 = !DILocation(line: 185, column: 15, scope: !3161)
!3163 = !DILocation(line: 185, column: 20, scope: !3161)
!3164 = !DILocation(line: 185, column: 6, scope: !3161)
!3165 = !DILocation(line: 186, column: 27, scope: !3161)
!3166 = !DILocation(line: 186, column: 32, scope: !3161)
!3167 = !DILocation(line: 186, column: 36, scope: !3161)
!3168 = !DILocation(line: 187, column: 6, scope: !3161)
!3169 = !DILocation(line: 187, column: 10, scope: !3161)
!3170 = !DILocation(line: 188, column: 6, scope: !3161)
!3171 = !DILocation(line: 188, column: 10, scope: !3161)
!3172 = !DILocation(line: 186, column: 3, scope: !3161)
!3173 = !DILocation(line: 189, column: 3, scope: !3161)
!3174 = !DILocation(line: 191, column: 15, scope: !3161)
!3175 = !DILocation(line: 191, column: 21, scope: !3161)
!3176 = !DILocation(line: 191, column: 26, scope: !3161)
!3177 = !DILocation(line: 191, column: 12, scope: !3161)
!3178 = !DILocation(line: 192, column: 27, scope: !3161)
!3179 = !DILocation(line: 192, column: 32, scope: !3161)
!3180 = !DILocation(line: 192, column: 42, scope: !3161)
!3181 = !DILocation(line: 193, column: 6, scope: !3161)
!3182 = !DILocation(line: 193, column: 16, scope: !3161)
!3183 = !DILocation(line: 192, column: 3, scope: !3161)
!3184 = !DILocation(line: 195, column: 3, scope: !3161)
!3185 = !DILocation(line: 197, column: 3, scope: !3161)
!3186 = !DILocation(line: 197, column: 8, scope: !3161)
!3187 = !DILocation(line: 197, column: 14, scope: !3161)
!3188 = !DILocation(line: 198, column: 3, scope: !3161)
!3189 = !DILocation(line: 201, column: 11, scope: !3146)
!3190 = !DILocation(line: 201, column: 16, scope: !3146)
!3191 = !DILocation(line: 201, column: 22, scope: !3146)
!3192 = !DILocation(line: 201, column: 9, scope: !3146)
!3193 = !DILocation(line: 201, column: 2, scope: !3146)
!3194 = !DILocation(line: 202, column: 1, scope: !3146)
!3195 = distinct !DISubprogram(name: "acpi_dev_get_ioresource", scope: !1, file: !1, line: 156, type: !3120, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3196 = !DILocalVariable(name: "res", arg: 1, scope: !3195, file: !1, line: 156, type: !2692)
!3197 = !DILocation(line: 156, column: 54, scope: !3195)
!3198 = !DILocalVariable(name: "start", arg: 2, scope: !3195, file: !1, line: 156, type: !372)
!3199 = !DILocation(line: 156, column: 63, scope: !3195)
!3200 = !DILocalVariable(name: "len", arg: 3, scope: !3195, file: !1, line: 156, type: !372)
!3201 = !DILocation(line: 156, column: 74, scope: !3195)
!3202 = !DILocalVariable(name: "io_decode", arg: 4, scope: !3195, file: !1, line: 157, type: !101)
!3203 = !DILocation(line: 157, column: 12, scope: !3195)
!3204 = !DILocation(line: 159, column: 15, scope: !3195)
!3205 = !DILocation(line: 159, column: 2, scope: !3195)
!3206 = !DILocation(line: 159, column: 7, scope: !3195)
!3207 = !DILocation(line: 159, column: 13, scope: !3195)
!3208 = !DILocation(line: 160, column: 13, scope: !3195)
!3209 = !DILocation(line: 160, column: 21, scope: !3195)
!3210 = !DILocation(line: 160, column: 19, scope: !3195)
!3211 = !DILocation(line: 160, column: 25, scope: !3195)
!3212 = !DILocation(line: 160, column: 2, scope: !3195)
!3213 = !DILocation(line: 160, column: 7, scope: !3195)
!3214 = !DILocation(line: 160, column: 11, scope: !3195)
!3215 = !DILocation(line: 161, column: 28, scope: !3195)
!3216 = !DILocation(line: 161, column: 33, scope: !3195)
!3217 = !DILocation(line: 161, column: 38, scope: !3195)
!3218 = !DILocation(line: 161, column: 2, scope: !3195)
!3219 = !DILocation(line: 162, column: 1, scope: !3195)
!3220 = distinct !DISubprogram(name: "acpi_dev_resource_address_space", scope: !1, file: !1, line: 288, type: !3221, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!181, !2715, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_win", file: !2688, line: 14, size: 576, elements: !3225)
!3225 = !{!3226, !3227}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !3224, file: !2688, line: 15, baseType: !2693, size: 512)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3224, file: !2688, line: 16, baseType: !2697, size: 64, offset: 512)
!3228 = !DILocalVariable(name: "ares", arg: 1, scope: !3220, file: !1, line: 288, type: !2715)
!3229 = !DILocation(line: 288, column: 60, scope: !3220)
!3230 = !DILocalVariable(name: "win", arg: 2, scope: !3220, file: !1, line: 289, type: !3223)
!3231 = !DILocation(line: 289, column: 31, scope: !3220)
!3232 = !DILocalVariable(name: "addr", scope: !3220, file: !1, line: 291, type: !2848)
!3233 = !DILocation(line: 291, column: 33, scope: !3220)
!3234 = !DILocation(line: 293, column: 2, scope: !3220)
!3235 = !DILocation(line: 293, column: 7, scope: !3220)
!3236 = !DILocation(line: 293, column: 11, scope: !3220)
!3237 = !DILocation(line: 293, column: 17, scope: !3220)
!3238 = !DILocation(line: 294, column: 6, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3220, file: !1, line: 294, column: 6)
!3240 = !DILocation(line: 294, column: 6, scope: !3220)
!3241 = !DILocation(line: 295, column: 3, scope: !3239)
!3242 = !DILocation(line: 297, column: 27, scope: !3220)
!3243 = !DILocation(line: 297, column: 32, scope: !3220)
!3244 = !DILocation(line: 298, column: 12, scope: !3220)
!3245 = !DILocation(line: 297, column: 9, scope: !3220)
!3246 = !DILocation(line: 297, column: 2, scope: !3220)
!3247 = !DILocation(line: 299, column: 1, scope: !3220)
!3248 = distinct !DISubprogram(name: "acpi_decode_space", scope: !1, file: !1, line: 205, type: !3249, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!181, !3223, !106, !3251}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!3252 = !DILocalVariable(name: "win", arg: 1, scope: !3248, file: !1, line: 205, type: !3223)
!3253 = !DILocation(line: 205, column: 52, scope: !3248)
!3254 = !DILocalVariable(name: "addr", arg: 2, scope: !3248, file: !1, line: 206, type: !106)
!3255 = !DILocation(line: 206, column: 40, scope: !3248)
!3256 = !DILocalVariable(name: "attr", arg: 3, scope: !3248, file: !1, line: 207, type: !3251)
!3257 = !DILocation(line: 207, column: 43, scope: !3248)
!3258 = !DILocalVariable(name: "iodec", scope: !3248, file: !1, line: 209, type: !101)
!3259 = !DILocation(line: 209, column: 5, scope: !3248)
!3260 = !DILocation(line: 209, column: 13, scope: !3248)
!3261 = !DILocation(line: 209, column: 19, scope: !3248)
!3262 = !DILocation(line: 209, column: 31, scope: !3248)
!3263 = !DILocalVariable(name: "wp", scope: !3248, file: !1, line: 210, type: !181)
!3264 = !DILocation(line: 210, column: 7, scope: !3248)
!3265 = !DILocation(line: 210, column: 12, scope: !3248)
!3266 = !DILocation(line: 210, column: 18, scope: !3248)
!3267 = !DILocation(line: 210, column: 23, scope: !3248)
!3268 = !DILocation(line: 210, column: 27, scope: !3248)
!3269 = !DILocalVariable(name: "len", scope: !3248, file: !1, line: 211, type: !372)
!3270 = !DILocation(line: 211, column: 6, scope: !3248)
!3271 = !DILocation(line: 211, column: 12, scope: !3248)
!3272 = !DILocation(line: 211, column: 18, scope: !3248)
!3273 = !DILocalVariable(name: "start", scope: !3248, file: !1, line: 212, type: !372)
!3274 = !DILocation(line: 212, column: 6, scope: !3248)
!3275 = !DILocalVariable(name: "end", scope: !3248, file: !1, line: 212, type: !372)
!3276 = !DILocation(line: 212, column: 13, scope: !3248)
!3277 = !DILocalVariable(name: "offset", scope: !3248, file: !1, line: 212, type: !372)
!3278 = !DILocation(line: 212, column: 18, scope: !3248)
!3279 = !DILocalVariable(name: "res", scope: !3248, file: !1, line: 213, type: !2692)
!3280 = !DILocation(line: 213, column: 19, scope: !3248)
!3281 = !DILocation(line: 213, column: 26, scope: !3248)
!3282 = !DILocation(line: 213, column: 31, scope: !3248)
!3283 = !DILocation(line: 219, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 219, column: 6)
!3285 = !DILocation(line: 219, column: 13, scope: !3284)
!3286 = !DILocation(line: 219, column: 34, scope: !3284)
!3287 = !DILocation(line: 219, column: 40, scope: !3284)
!3288 = !DILocation(line: 219, column: 31, scope: !3284)
!3289 = !DILocation(line: 219, column: 58, scope: !3284)
!3290 = !DILocation(line: 219, column: 61, scope: !3284)
!3291 = !DILocation(line: 219, column: 66, scope: !3284)
!3292 = !DILocation(line: 220, column: 7, scope: !3284)
!3293 = !DILocation(line: 220, column: 13, scope: !3284)
!3294 = !DILocation(line: 220, column: 31, scope: !3284)
!3295 = !DILocation(line: 220, column: 34, scope: !3284)
!3296 = !DILocation(line: 220, column: 40, scope: !3284)
!3297 = !DILocation(line: 220, column: 58, scope: !3284)
!3298 = !DILocation(line: 220, column: 62, scope: !3284)
!3299 = !DILocation(line: 219, column: 6, scope: !3248)
!3300 = !DILocation(line: 221, column: 3, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 221, column: 3)
!3302 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 221, column: 3)
!3303 = !DILocation(line: 221, column: 3, scope: !3302)
!3304 = !DILocation(line: 221, column: 3, scope: !3284)
!3305 = !DILocation(line: 231, column: 6, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 231, column: 6)
!3307 = !DILocation(line: 231, column: 12, scope: !3306)
!3308 = !DILocation(line: 231, column: 30, scope: !3306)
!3309 = !DILocation(line: 231, column: 6, scope: !3248)
!3310 = !DILocation(line: 232, column: 12, scope: !3306)
!3311 = !DILocation(line: 232, column: 18, scope: !3306)
!3312 = !DILocation(line: 232, column: 10, scope: !3306)
!3313 = !DILocation(line: 232, column: 3, scope: !3306)
!3314 = !DILocation(line: 233, column: 11, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3306, file: !1, line: 233, column: 11)
!3316 = !DILocation(line: 233, column: 17, scope: !3315)
!3317 = !DILocation(line: 233, column: 11, scope: !3306)
!3318 = !DILocation(line: 234, column: 3, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !1, line: 234, column: 3)
!3320 = distinct !DILexicalBlock(scope: !3315, file: !1, line: 234, column: 3)
!3321 = !DILocation(line: 234, column: 3, scope: !3320)
!3322 = !DILocation(line: 234, column: 3, scope: !3315)
!3323 = !DILocation(line: 236, column: 10, scope: !3248)
!3324 = !DILocation(line: 236, column: 16, scope: !3248)
!3325 = !DILocation(line: 236, column: 26, scope: !3248)
!3326 = !DILocation(line: 236, column: 24, scope: !3248)
!3327 = !DILocation(line: 236, column: 8, scope: !3248)
!3328 = !DILocation(line: 237, column: 8, scope: !3248)
!3329 = !DILocation(line: 237, column: 14, scope: !3248)
!3330 = !DILocation(line: 237, column: 24, scope: !3248)
!3331 = !DILocation(line: 237, column: 22, scope: !3248)
!3332 = !DILocation(line: 237, column: 6, scope: !3248)
!3333 = !DILocation(line: 239, column: 16, scope: !3248)
!3334 = !DILocation(line: 239, column: 2, scope: !3248)
!3335 = !DILocation(line: 239, column: 7, scope: !3248)
!3336 = !DILocation(line: 239, column: 14, scope: !3248)
!3337 = !DILocation(line: 240, column: 15, scope: !3248)
!3338 = !DILocation(line: 240, column: 2, scope: !3248)
!3339 = !DILocation(line: 240, column: 7, scope: !3248)
!3340 = !DILocation(line: 240, column: 13, scope: !3248)
!3341 = !DILocation(line: 241, column: 13, scope: !3248)
!3342 = !DILocation(line: 241, column: 2, scope: !3248)
!3343 = !DILocation(line: 241, column: 7, scope: !3248)
!3344 = !DILocation(line: 241, column: 11, scope: !3248)
!3345 = !DILocation(line: 249, column: 10, scope: !3248)
!3346 = !DILocation(line: 249, column: 16, scope: !3248)
!3347 = !DILocation(line: 249, column: 2, scope: !3248)
!3348 = !DILocation(line: 251, column: 30, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 249, column: 31)
!3350 = !DILocation(line: 251, column: 35, scope: !3349)
!3351 = !DILocation(line: 251, column: 40, scope: !3349)
!3352 = !DILocation(line: 251, column: 3, scope: !3349)
!3353 = !DILocation(line: 252, column: 3, scope: !3349)
!3354 = !DILocation(line: 254, column: 29, scope: !3349)
!3355 = !DILocation(line: 254, column: 34, scope: !3349)
!3356 = !DILocation(line: 254, column: 39, scope: !3349)
!3357 = !DILocation(line: 255, column: 8, scope: !3349)
!3358 = !DILocation(line: 255, column: 14, scope: !3349)
!3359 = !DILocation(line: 255, column: 19, scope: !3349)
!3360 = !DILocation(line: 255, column: 22, scope: !3349)
!3361 = !DILocation(line: 254, column: 3, scope: !3349)
!3362 = !DILocation(line: 256, column: 3, scope: !3349)
!3363 = !DILocation(line: 258, column: 3, scope: !3349)
!3364 = !DILocation(line: 258, column: 8, scope: !3349)
!3365 = !DILocation(line: 258, column: 14, scope: !3349)
!3366 = !DILocation(line: 259, column: 3, scope: !3349)
!3367 = !DILocation(line: 261, column: 3, scope: !3349)
!3368 = !DILocation(line: 264, column: 6, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 264, column: 6)
!3370 = !DILocation(line: 264, column: 12, scope: !3369)
!3371 = !DILocation(line: 264, column: 30, scope: !3369)
!3372 = !DILocation(line: 264, column: 6, scope: !3248)
!3373 = !DILocation(line: 265, column: 3, scope: !3369)
!3374 = !DILocation(line: 265, column: 8, scope: !3369)
!3375 = !DILocation(line: 265, column: 14, scope: !3369)
!3376 = !DILocation(line: 267, column: 6, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 267, column: 6)
!3378 = !DILocation(line: 267, column: 12, scope: !3377)
!3379 = !DILocation(line: 267, column: 17, scope: !3377)
!3380 = !DILocation(line: 267, column: 21, scope: !3377)
!3381 = !DILocation(line: 267, column: 29, scope: !3377)
!3382 = !DILocation(line: 267, column: 6, scope: !3248)
!3383 = !DILocation(line: 268, column: 3, scope: !3377)
!3384 = !DILocation(line: 268, column: 8, scope: !3377)
!3385 = !DILocation(line: 268, column: 14, scope: !3377)
!3386 = !DILocation(line: 270, column: 11, scope: !3248)
!3387 = !DILocation(line: 270, column: 16, scope: !3248)
!3388 = !DILocation(line: 270, column: 22, scope: !3248)
!3389 = !DILocation(line: 270, column: 9, scope: !3248)
!3390 = !DILocation(line: 270, column: 2, scope: !3248)
!3391 = !DILocation(line: 271, column: 1, scope: !3248)
!3392 = distinct !DISubprogram(name: "acpi_dev_resource_ext_address_space", scope: !1, file: !1, line: 317, type: !3221, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3393 = !DILocalVariable(name: "ares", arg: 1, scope: !3392, file: !1, line: 317, type: !2715)
!3394 = !DILocation(line: 317, column: 64, scope: !3392)
!3395 = !DILocalVariable(name: "win", arg: 2, scope: !3392, file: !1, line: 318, type: !3223)
!3396 = !DILocation(line: 318, column: 28, scope: !3392)
!3397 = !DILocalVariable(name: "ext_addr", scope: !3392, file: !1, line: 320, type: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!3399 = !DILocation(line: 320, column: 43, scope: !3392)
!3400 = !DILocation(line: 322, column: 2, scope: !3392)
!3401 = !DILocation(line: 322, column: 7, scope: !3392)
!3402 = !DILocation(line: 322, column: 11, scope: !3392)
!3403 = !DILocation(line: 322, column: 17, scope: !3392)
!3404 = !DILocation(line: 323, column: 6, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3392, file: !1, line: 323, column: 6)
!3406 = !DILocation(line: 323, column: 12, scope: !3405)
!3407 = !DILocation(line: 323, column: 17, scope: !3405)
!3408 = !DILocation(line: 323, column: 6, scope: !3392)
!3409 = !DILocation(line: 324, column: 3, scope: !3405)
!3410 = !DILocation(line: 326, column: 14, scope: !3392)
!3411 = !DILocation(line: 326, column: 20, scope: !3392)
!3412 = !DILocation(line: 326, column: 25, scope: !3392)
!3413 = !DILocation(line: 326, column: 11, scope: !3392)
!3414 = !DILocation(line: 328, column: 27, scope: !3392)
!3415 = !DILocation(line: 328, column: 64, scope: !3392)
!3416 = !DILocation(line: 328, column: 32, scope: !3392)
!3417 = !DILocation(line: 329, column: 7, scope: !3392)
!3418 = !DILocation(line: 329, column: 17, scope: !3392)
!3419 = !DILocation(line: 328, column: 9, scope: !3392)
!3420 = !DILocation(line: 328, column: 2, scope: !3392)
!3421 = !DILocation(line: 330, column: 1, scope: !3392)
!3422 = distinct !DISubprogram(name: "acpi_dev_irq_flags", scope: !1, file: !1, line: 339, type: !3423, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!303, !101, !101, !101}
!3425 = !DILocalVariable(name: "triggering", arg: 1, scope: !3422, file: !1, line: 339, type: !101)
!3426 = !DILocation(line: 339, column: 37, scope: !3422)
!3427 = !DILocalVariable(name: "polarity", arg: 2, scope: !3422, file: !1, line: 339, type: !101)
!3428 = !DILocation(line: 339, column: 52, scope: !3422)
!3429 = !DILocalVariable(name: "shareable", arg: 3, scope: !3422, file: !1, line: 339, type: !101)
!3430 = !DILocation(line: 339, column: 65, scope: !3422)
!3431 = !DILocalVariable(name: "flags", scope: !3422, file: !1, line: 341, type: !303)
!3432 = !DILocation(line: 341, column: 16, scope: !3422)
!3433 = !DILocation(line: 343, column: 6, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3422, file: !1, line: 343, column: 6)
!3435 = !DILocation(line: 343, column: 17, scope: !3434)
!3436 = !DILocation(line: 343, column: 6, scope: !3422)
!3437 = !DILocation(line: 344, column: 11, scope: !3434)
!3438 = !DILocation(line: 344, column: 20, scope: !3434)
!3439 = !DILocation(line: 344, column: 9, scope: !3434)
!3440 = !DILocation(line: 344, column: 3, scope: !3434)
!3441 = !DILocation(line: 347, column: 11, scope: !3434)
!3442 = !DILocation(line: 347, column: 20, scope: !3434)
!3443 = !DILocation(line: 347, column: 9, scope: !3434)
!3444 = !DILocation(line: 350, column: 6, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3422, file: !1, line: 350, column: 6)
!3446 = !DILocation(line: 350, column: 16, scope: !3445)
!3447 = !DILocation(line: 350, column: 6, scope: !3422)
!3448 = !DILocation(line: 351, column: 9, scope: !3445)
!3449 = !DILocation(line: 351, column: 3, scope: !3445)
!3450 = !DILocation(line: 353, column: 9, scope: !3422)
!3451 = !DILocation(line: 353, column: 15, scope: !3422)
!3452 = !DILocation(line: 353, column: 2, scope: !3422)
!3453 = distinct !DISubprogram(name: "acpi_dev_get_irq_type", scope: !1, file: !1, line: 362, type: !3454, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!5, !155, !155}
!3456 = !DILocalVariable(name: "triggering", arg: 1, scope: !3453, file: !1, line: 362, type: !155)
!3457 = !DILocation(line: 362, column: 40, scope: !3453)
!3458 = !DILocalVariable(name: "polarity", arg: 2, scope: !3453, file: !1, line: 362, type: !155)
!3459 = !DILocation(line: 362, column: 56, scope: !3453)
!3460 = !DILocation(line: 364, column: 10, scope: !3453)
!3461 = !DILocation(line: 364, column: 2, scope: !3453)
!3462 = !DILocation(line: 366, column: 10, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3453, file: !1, line: 364, column: 20)
!3464 = !DILocation(line: 366, column: 21, scope: !3463)
!3465 = !DILocation(line: 366, column: 3, scope: !3463)
!3466 = !DILocation(line: 370, column: 10, scope: !3463)
!3467 = !DILocation(line: 370, column: 21, scope: !3463)
!3468 = !DILocation(line: 370, column: 3, scope: !3463)
!3469 = !DILocation(line: 374, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3463, file: !1, line: 374, column: 7)
!3471 = !DILocation(line: 374, column: 18, scope: !3470)
!3472 = !DILocation(line: 374, column: 7, scope: !3463)
!3473 = !DILocation(line: 375, column: 4, scope: !3470)
!3474 = !DILocation(line: 374, column: 21, scope: !3470)
!3475 = !DILocation(line: 378, column: 3, scope: !3463)
!3476 = !DILocation(line: 380, column: 1, scope: !3453)
!3477 = distinct !DISubprogram(name: "acpi_dev_resource_interrupt", scope: !1, file: !1, line: 452, type: !3478, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!181, !2715, !155, !2692}
!3480 = !DILocalVariable(name: "ares", arg: 1, scope: !3477, file: !1, line: 452, type: !2715)
!3481 = !DILocation(line: 452, column: 56, scope: !3477)
!3482 = !DILocalVariable(name: "index", arg: 2, scope: !3477, file: !1, line: 452, type: !155)
!3483 = !DILocation(line: 452, column: 66, scope: !3477)
!3484 = !DILocalVariable(name: "res", arg: 3, scope: !3477, file: !1, line: 453, type: !2692)
!3485 = !DILocation(line: 453, column: 23, scope: !3477)
!3486 = !DILocalVariable(name: "irq", scope: !3477, file: !1, line: 455, type: !3487)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!3488 = !DILocation(line: 455, column: 28, scope: !3477)
!3489 = !DILocalVariable(name: "ext_irq", scope: !3477, file: !1, line: 456, type: !3490)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!3491 = !DILocation(line: 456, column: 37, scope: !3477)
!3492 = !DILocation(line: 458, column: 10, scope: !3477)
!3493 = !DILocation(line: 458, column: 16, scope: !3477)
!3494 = !DILocation(line: 458, column: 2, scope: !3477)
!3495 = !DILocation(line: 464, column: 10, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 458, column: 22)
!3497 = !DILocation(line: 464, column: 16, scope: !3496)
!3498 = !DILocation(line: 464, column: 21, scope: !3496)
!3499 = !DILocation(line: 464, column: 7, scope: !3496)
!3500 = !DILocation(line: 465, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 465, column: 7)
!3502 = !DILocation(line: 465, column: 16, scope: !3501)
!3503 = !DILocation(line: 465, column: 21, scope: !3501)
!3504 = !DILocation(line: 465, column: 13, scope: !3501)
!3505 = !DILocation(line: 465, column: 7, scope: !3496)
!3506 = !DILocation(line: 466, column: 34, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 465, column: 38)
!3508 = !DILocation(line: 466, column: 4, scope: !3507)
!3509 = !DILocation(line: 467, column: 4, scope: !3507)
!3510 = !DILocation(line: 469, column: 28, scope: !3496)
!3511 = !DILocation(line: 469, column: 33, scope: !3496)
!3512 = !DILocation(line: 469, column: 38, scope: !3496)
!3513 = !DILocation(line: 469, column: 49, scope: !3496)
!3514 = !DILocation(line: 470, column: 7, scope: !3496)
!3515 = !DILocation(line: 470, column: 12, scope: !3496)
!3516 = !DILocation(line: 470, column: 24, scope: !3496)
!3517 = !DILocation(line: 470, column: 29, scope: !3496)
!3518 = !DILocation(line: 471, column: 7, scope: !3496)
!3519 = !DILocation(line: 471, column: 12, scope: !3496)
!3520 = !DILocation(line: 469, column: 3, scope: !3496)
!3521 = !DILocation(line: 472, column: 3, scope: !3496)
!3522 = !DILocation(line: 474, column: 14, scope: !3496)
!3523 = !DILocation(line: 474, column: 20, scope: !3496)
!3524 = !DILocation(line: 474, column: 25, scope: !3496)
!3525 = !DILocation(line: 474, column: 11, scope: !3496)
!3526 = !DILocation(line: 475, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 475, column: 7)
!3528 = !DILocation(line: 475, column: 16, scope: !3527)
!3529 = !DILocation(line: 475, column: 25, scope: !3527)
!3530 = !DILocation(line: 475, column: 13, scope: !3527)
!3531 = !DILocation(line: 475, column: 7, scope: !3496)
!3532 = !DILocation(line: 476, column: 34, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3527, file: !1, line: 475, column: 42)
!3534 = !DILocation(line: 476, column: 4, scope: !3533)
!3535 = !DILocation(line: 477, column: 4, scope: !3533)
!3536 = !DILocation(line: 479, column: 14, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 479, column: 7)
!3538 = !DILocation(line: 479, column: 7, scope: !3537)
!3539 = !DILocation(line: 479, column: 7, scope: !3496)
!3540 = !DILocation(line: 480, column: 29, scope: !3537)
!3541 = !DILocation(line: 480, column: 34, scope: !3537)
!3542 = !DILocation(line: 480, column: 43, scope: !3537)
!3543 = !DILocation(line: 480, column: 54, scope: !3537)
!3544 = !DILocation(line: 481, column: 7, scope: !3537)
!3545 = !DILocation(line: 481, column: 16, scope: !3537)
!3546 = !DILocation(line: 481, column: 28, scope: !3537)
!3547 = !DILocation(line: 481, column: 37, scope: !3537)
!3548 = !DILocation(line: 482, column: 7, scope: !3537)
!3549 = !DILocation(line: 482, column: 16, scope: !3537)
!3550 = !DILocation(line: 480, column: 4, scope: !3537)
!3551 = !DILocation(line: 484, column: 34, scope: !3537)
!3552 = !DILocation(line: 484, column: 4, scope: !3537)
!3553 = !DILocation(line: 485, column: 3, scope: !3496)
!3554 = !DILocation(line: 487, column: 3, scope: !3496)
!3555 = !DILocation(line: 487, column: 8, scope: !3496)
!3556 = !DILocation(line: 487, column: 14, scope: !3496)
!3557 = !DILocation(line: 488, column: 3, scope: !3496)
!3558 = !DILocation(line: 491, column: 2, scope: !3477)
!3559 = !DILocation(line: 492, column: 1, scope: !3477)
!3560 = distinct !DISubprogram(name: "acpi_dev_irqresource_disabled", scope: !1, file: !1, line: 383, type: !3561, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !2692, !146}
!3563 = !DILocalVariable(name: "res", arg: 1, scope: !3560, file: !1, line: 383, type: !2692)
!3564 = !DILocation(line: 383, column: 60, scope: !3560)
!3565 = !DILocalVariable(name: "gsi", arg: 2, scope: !3560, file: !1, line: 383, type: !146)
!3566 = !DILocation(line: 383, column: 69, scope: !3560)
!3567 = !DILocation(line: 385, column: 15, scope: !3560)
!3568 = !DILocation(line: 385, column: 2, scope: !3560)
!3569 = !DILocation(line: 385, column: 7, scope: !3560)
!3570 = !DILocation(line: 385, column: 13, scope: !3560)
!3571 = !DILocation(line: 386, column: 13, scope: !3560)
!3572 = !DILocation(line: 386, column: 2, scope: !3560)
!3573 = !DILocation(line: 386, column: 7, scope: !3560)
!3574 = !DILocation(line: 386, column: 11, scope: !3560)
!3575 = !DILocation(line: 387, column: 2, scope: !3560)
!3576 = !DILocation(line: 387, column: 7, scope: !3560)
!3577 = !DILocation(line: 387, column: 13, scope: !3560)
!3578 = !DILocation(line: 388, column: 1, scope: !3560)
!3579 = distinct !DISubprogram(name: "acpi_dev_get_irqresource", scope: !1, file: !1, line: 390, type: !3580, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !2692, !146, !101, !101, !101, !181}
!3582 = !DILocalVariable(name: "res", arg: 1, scope: !3579, file: !1, line: 390, type: !2692)
!3583 = !DILocation(line: 390, column: 55, scope: !3579)
!3584 = !DILocalVariable(name: "gsi", arg: 2, scope: !3579, file: !1, line: 390, type: !146)
!3585 = !DILocation(line: 390, column: 64, scope: !3579)
!3586 = !DILocalVariable(name: "triggering", arg: 3, scope: !3579, file: !1, line: 391, type: !101)
!3587 = !DILocation(line: 391, column: 13, scope: !3579)
!3588 = !DILocalVariable(name: "polarity", arg: 4, scope: !3579, file: !1, line: 391, type: !101)
!3589 = !DILocation(line: 391, column: 28, scope: !3579)
!3590 = !DILocalVariable(name: "shareable", arg: 5, scope: !3579, file: !1, line: 391, type: !101)
!3591 = !DILocation(line: 391, column: 41, scope: !3579)
!3592 = !DILocalVariable(name: "legacy", arg: 6, scope: !3579, file: !1, line: 392, type: !181)
!3593 = !DILocation(line: 392, column: 15, scope: !3579)
!3594 = !DILocalVariable(name: "irq", scope: !3579, file: !1, line: 394, type: !155)
!3595 = !DILocation(line: 394, column: 6, scope: !3579)
!3596 = !DILocalVariable(name: "p", scope: !3579, file: !1, line: 394, type: !155)
!3597 = !DILocation(line: 394, column: 11, scope: !3579)
!3598 = !DILocalVariable(name: "t", scope: !3579, file: !1, line: 394, type: !155)
!3599 = !DILocation(line: 394, column: 14, scope: !3579)
!3600 = !DILocation(line: 396, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 396, column: 6)
!3602 = !DILocation(line: 396, column: 6, scope: !3579)
!3603 = !DILocation(line: 397, column: 33, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !1, line: 396, column: 23)
!3605 = !DILocation(line: 397, column: 38, scope: !3604)
!3606 = !DILocation(line: 397, column: 3, scope: !3604)
!3607 = !DILocation(line: 398, column: 3, scope: !3604)
!3608 = !DILocation(line: 411, column: 6, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 411, column: 6)
!3610 = !DILocation(line: 411, column: 13, scope: !3609)
!3611 = !DILocation(line: 411, column: 39, scope: !3609)
!3612 = !DILocation(line: 411, column: 17, scope: !3609)
!3613 = !DILocation(line: 411, column: 6, scope: !3579)
!3614 = !DILocalVariable(name: "trig", scope: !3615, file: !1, line: 412, type: !101)
!3615 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 411, column: 53)
!3616 = !DILocation(line: 412, column: 6, scope: !3615)
!3617 = !DILocation(line: 412, column: 13, scope: !3615)
!3618 = !DILocalVariable(name: "pol", scope: !3615, file: !1, line: 413, type: !101)
!3619 = !DILocation(line: 413, column: 6, scope: !3615)
!3620 = !DILocation(line: 413, column: 12, scope: !3615)
!3621 = !DILocation(line: 415, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3615, file: !1, line: 415, column: 7)
!3623 = !DILocation(line: 415, column: 21, scope: !3622)
!3624 = !DILocation(line: 415, column: 18, scope: !3622)
!3625 = !DILocation(line: 415, column: 26, scope: !3622)
!3626 = !DILocation(line: 415, column: 29, scope: !3622)
!3627 = !DILocation(line: 415, column: 41, scope: !3622)
!3628 = !DILocation(line: 415, column: 38, scope: !3622)
!3629 = !DILocation(line: 415, column: 7, scope: !3615)
!3630 = !DILocation(line: 416, column: 4, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3622, file: !1, line: 415, column: 46)
!3632 = !DILocation(line: 418, column: 17, scope: !3631)
!3633 = !DILocation(line: 418, column: 15, scope: !3631)
!3634 = !DILocation(line: 419, column: 15, scope: !3631)
!3635 = !DILocation(line: 419, column: 13, scope: !3631)
!3636 = !DILocation(line: 420, column: 3, scope: !3631)
!3637 = !DILocation(line: 421, column: 2, scope: !3615)
!3638 = !DILocation(line: 423, column: 34, scope: !3579)
!3639 = !DILocation(line: 423, column: 46, scope: !3579)
!3640 = !DILocation(line: 423, column: 56, scope: !3579)
!3641 = !DILocation(line: 423, column: 15, scope: !3579)
!3642 = !DILocation(line: 423, column: 2, scope: !3579)
!3643 = !DILocation(line: 423, column: 7, scope: !3579)
!3644 = !DILocation(line: 423, column: 13, scope: !3579)
!3645 = !DILocation(line: 424, column: 32, scope: !3579)
!3646 = !DILocation(line: 424, column: 37, scope: !3579)
!3647 = !DILocation(line: 424, column: 49, scope: !3579)
!3648 = !DILocation(line: 424, column: 8, scope: !3579)
!3649 = !DILocation(line: 424, column: 6, scope: !3579)
!3650 = !DILocation(line: 425, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 425, column: 6)
!3652 = !DILocation(line: 425, column: 10, scope: !3651)
!3653 = !DILocation(line: 425, column: 6, scope: !3579)
!3654 = !DILocation(line: 426, column: 16, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 425, column: 16)
!3656 = !DILocation(line: 426, column: 3, scope: !3655)
!3657 = !DILocation(line: 426, column: 8, scope: !3655)
!3658 = !DILocation(line: 426, column: 14, scope: !3655)
!3659 = !DILocation(line: 427, column: 14, scope: !3655)
!3660 = !DILocation(line: 427, column: 3, scope: !3655)
!3661 = !DILocation(line: 427, column: 8, scope: !3655)
!3662 = !DILocation(line: 427, column: 12, scope: !3655)
!3663 = !DILocation(line: 428, column: 2, scope: !3655)
!3664 = !DILocation(line: 429, column: 33, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 428, column: 9)
!3666 = !DILocation(line: 429, column: 38, scope: !3665)
!3667 = !DILocation(line: 429, column: 3, scope: !3665)
!3668 = !DILocation(line: 431, column: 1, scope: !3579)
!3669 = distinct !DISubprogram(name: "is_gsi", scope: !1, file: !1, line: 45, type: !3670, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!181, !3490}
!3672 = !DILocalVariable(name: "ext_irq", arg: 1, scope: !3669, file: !1, line: 45, type: !3490)
!3673 = !DILocation(line: 45, column: 62, scope: !3669)
!3674 = !DILocation(line: 47, column: 2, scope: !3669)
!3675 = distinct !DISubprogram(name: "acpi_dev_free_resource_list", scope: !1, file: !1, line: 499, type: !3676, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !138}
!3678 = !DILocalVariable(name: "list", arg: 1, scope: !3675, file: !1, line: 499, type: !138)
!3679 = !DILocation(line: 499, column: 52, scope: !3675)
!3680 = !DILocation(line: 501, column: 21, scope: !3675)
!3681 = !DILocation(line: 501, column: 2, scope: !3675)
!3682 = !DILocation(line: 502, column: 1, scope: !3675)
!3683 = distinct !DISubprogram(name: "acpi_dev_get_resources", scope: !1, file: !1, line: 622, type: !3684, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!155, !150, !138, !3686, !133}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!155, !2715, !133}
!3689 = !DILocalVariable(name: "adev", arg: 1, scope: !3683, file: !1, line: 622, type: !150)
!3690 = !DILocation(line: 622, column: 48, scope: !3683)
!3691 = !DILocalVariable(name: "list", arg: 2, scope: !3683, file: !1, line: 622, type: !138)
!3692 = !DILocation(line: 622, column: 72, scope: !3683)
!3693 = !DILocalVariable(name: "preproc", arg: 3, scope: !3683, file: !1, line: 623, type: !3686)
!3694 = !DILocation(line: 623, column: 13, scope: !3683)
!3695 = !DILocalVariable(name: "preproc_data", arg: 4, scope: !3683, file: !1, line: 624, type: !133)
!3696 = !DILocation(line: 624, column: 13, scope: !3683)
!3697 = !DILocation(line: 626, column: 34, scope: !3683)
!3698 = !DILocation(line: 626, column: 40, scope: !3683)
!3699 = !DILocation(line: 626, column: 46, scope: !3683)
!3700 = !DILocation(line: 626, column: 55, scope: !3683)
!3701 = !DILocation(line: 626, column: 9, scope: !3683)
!3702 = !DILocation(line: 626, column: 2, scope: !3683)
!3703 = distinct !DISubprogram(name: "__acpi_dev_get_resources", scope: !1, file: !1, line: 569, type: !3704, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!155, !150, !138, !3686, !133, !253}
!3706 = !DILocalVariable(name: "adev", arg: 1, scope: !3703, file: !1, line: 569, type: !150)
!3707 = !DILocation(line: 569, column: 57, scope: !3703)
!3708 = !DILocalVariable(name: "list", arg: 2, scope: !3703, file: !1, line: 570, type: !138)
!3709 = !DILocation(line: 570, column: 27, scope: !3703)
!3710 = !DILocalVariable(name: "preproc", arg: 3, scope: !3703, file: !1, line: 571, type: !3686)
!3711 = !DILocation(line: 571, column: 15, scope: !3703)
!3712 = !DILocalVariable(name: "preproc_data", arg: 4, scope: !3703, file: !1, line: 572, type: !133)
!3713 = !DILocation(line: 572, column: 15, scope: !3703)
!3714 = !DILocalVariable(name: "method", arg: 5, scope: !3703, file: !1, line: 572, type: !253)
!3715 = !DILocation(line: 572, column: 35, scope: !3703)
!3716 = !DILocalVariable(name: "c", scope: !3703, file: !1, line: 574, type: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "res_proc_context", file: !1, line: 505, size: 256, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722, !3723}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3717, file: !1, line: 506, baseType: !138, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "preproc", scope: !3717, file: !1, line: 507, baseType: !3686, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "preproc_data", scope: !3717, file: !1, line: 508, baseType: !133, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3717, file: !1, line: 509, baseType: !155, size: 32, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3717, file: !1, line: 510, baseType: !155, size: 32, offset: 224)
!3724 = !DILocation(line: 574, column: 26, scope: !3703)
!3725 = !DILocalVariable(name: "status", scope: !3703, file: !1, line: 575, type: !144)
!3726 = !DILocation(line: 575, column: 14, scope: !3703)
!3727 = !DILocation(line: 577, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3703, file: !1, line: 577, column: 6)
!3729 = !DILocation(line: 577, column: 12, scope: !3728)
!3730 = !DILocation(line: 577, column: 16, scope: !3728)
!3731 = !DILocation(line: 577, column: 22, scope: !3728)
!3732 = !DILocation(line: 577, column: 29, scope: !3728)
!3733 = !DILocation(line: 577, column: 44, scope: !3728)
!3734 = !DILocation(line: 577, column: 33, scope: !3728)
!3735 = !DILocation(line: 577, column: 6, scope: !3703)
!3736 = !DILocation(line: 578, column: 3, scope: !3728)
!3737 = !DILocation(line: 580, column: 23, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3703, file: !1, line: 580, column: 6)
!3739 = !DILocation(line: 580, column: 29, scope: !3738)
!3740 = !DILocation(line: 580, column: 37, scope: !3738)
!3741 = !DILocation(line: 580, column: 7, scope: !3738)
!3742 = !DILocation(line: 580, column: 6, scope: !3703)
!3743 = !DILocation(line: 581, column: 3, scope: !3738)
!3744 = !DILocation(line: 583, column: 11, scope: !3703)
!3745 = !DILocation(line: 583, column: 4, scope: !3703)
!3746 = !DILocation(line: 583, column: 9, scope: !3703)
!3747 = !DILocation(line: 584, column: 14, scope: !3703)
!3748 = !DILocation(line: 584, column: 4, scope: !3703)
!3749 = !DILocation(line: 584, column: 12, scope: !3703)
!3750 = !DILocation(line: 585, column: 19, scope: !3703)
!3751 = !DILocation(line: 585, column: 4, scope: !3703)
!3752 = !DILocation(line: 585, column: 17, scope: !3703)
!3753 = !DILocation(line: 586, column: 4, scope: !3703)
!3754 = !DILocation(line: 586, column: 10, scope: !3703)
!3755 = !DILocation(line: 587, column: 4, scope: !3703)
!3756 = !DILocation(line: 587, column: 10, scope: !3703)
!3757 = !DILocation(line: 588, column: 31, scope: !3703)
!3758 = !DILocation(line: 588, column: 37, scope: !3703)
!3759 = !DILocation(line: 588, column: 45, scope: !3703)
!3760 = !DILocation(line: 589, column: 37, scope: !3703)
!3761 = !DILocation(line: 588, column: 11, scope: !3703)
!3762 = !DILocation(line: 588, column: 9, scope: !3703)
!3763 = !DILocation(line: 590, column: 6, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3703, file: !1, line: 590, column: 6)
!3765 = !DILocation(line: 590, column: 6, scope: !3703)
!3766 = !DILocation(line: 591, column: 31, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 590, column: 28)
!3768 = !DILocation(line: 591, column: 3, scope: !3767)
!3769 = !DILocation(line: 592, column: 12, scope: !3767)
!3770 = !DILocation(line: 592, column: 10, scope: !3767)
!3771 = !DILocation(line: 592, column: 22, scope: !3767)
!3772 = !DILocation(line: 592, column: 3, scope: !3767)
!3773 = !DILocation(line: 595, column: 11, scope: !3703)
!3774 = !DILocation(line: 595, column: 2, scope: !3703)
!3775 = !DILocation(line: 596, column: 1, scope: !3703)
!3776 = distinct !DISubprogram(name: "acpi_dev_get_dma_resources", scope: !1, file: !1, line: 659, type: !3777, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!155, !150, !138}
!3779 = !DILocalVariable(name: "adev", arg: 1, scope: !3776, file: !1, line: 659, type: !150)
!3780 = !DILocation(line: 659, column: 52, scope: !3776)
!3781 = !DILocalVariable(name: "list", arg: 2, scope: !3776, file: !1, line: 659, type: !138)
!3782 = !DILocation(line: 659, column: 76, scope: !3776)
!3783 = !DILocation(line: 661, column: 34, scope: !3776)
!3784 = !DILocation(line: 661, column: 40, scope: !3776)
!3785 = !DILocation(line: 661, column: 9, scope: !3776)
!3786 = !DILocation(line: 661, column: 2, scope: !3776)
!3787 = distinct !DISubprogram(name: "is_memory", scope: !1, file: !1, line: 631, type: !3687, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3788 = !DILocalVariable(name: "ares", arg: 1, scope: !3787, file: !1, line: 631, type: !2715)
!3789 = !DILocation(line: 631, column: 44, scope: !3787)
!3790 = !DILocalVariable(name: "not_used", arg: 2, scope: !3787, file: !1, line: 631, type: !133)
!3791 = !DILocation(line: 631, column: 56, scope: !3787)
!3792 = !DILocalVariable(name: "win", scope: !3787, file: !1, line: 633, type: !3224)
!3793 = !DILocation(line: 633, column: 22, scope: !3787)
!3794 = !DILocalVariable(name: "res", scope: !3787, file: !1, line: 634, type: !2692)
!3795 = !DILocation(line: 634, column: 19, scope: !3787)
!3796 = !DILocation(line: 634, column: 30, scope: !3787)
!3797 = !DILocation(line: 636, column: 2, scope: !3787)
!3798 = !DILocation(line: 638, column: 36, scope: !3787)
!3799 = !DILocation(line: 638, column: 42, scope: !3787)
!3800 = !DILocation(line: 638, column: 11, scope: !3787)
!3801 = !DILocation(line: 639, column: 9, scope: !3787)
!3802 = !DILocation(line: 639, column: 44, scope: !3787)
!3803 = !DILocation(line: 639, column: 12, scope: !3787)
!3804 = !DILocation(line: 640, column: 9, scope: !3787)
!3805 = !DILocation(line: 640, column: 48, scope: !3787)
!3806 = !DILocation(line: 640, column: 12, scope: !3787)
!3807 = !DILocation(line: 638, column: 9, scope: !3787)
!3808 = !DILocation(line: 638, column: 2, scope: !3787)
!3809 = distinct !DISubprogram(name: "acpi_dev_filter_resource_type", scope: !1, file: !1, line: 675, type: !3810, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!155, !2715, !303}
!3812 = !DILocalVariable(name: "ares", arg: 1, scope: !3809, file: !1, line: 675, type: !2715)
!3813 = !DILocation(line: 675, column: 57, scope: !3809)
!3814 = !DILocalVariable(name: "types", arg: 2, scope: !3809, file: !1, line: 676, type: !303)
!3815 = !DILocation(line: 676, column: 21, scope: !3809)
!3816 = !DILocalVariable(name: "type", scope: !3809, file: !1, line: 678, type: !303)
!3817 = !DILocation(line: 678, column: 16, scope: !3809)
!3818 = !DILocation(line: 680, column: 10, scope: !3809)
!3819 = !DILocation(line: 680, column: 16, scope: !3809)
!3820 = !DILocation(line: 680, column: 2, scope: !3809)
!3821 = !DILocation(line: 684, column: 8, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3809, file: !1, line: 680, column: 22)
!3823 = !DILocation(line: 685, column: 3, scope: !3822)
!3824 = !DILocation(line: 688, column: 8, scope: !3822)
!3825 = !DILocation(line: 689, column: 3, scope: !3822)
!3826 = !DILocation(line: 692, column: 8, scope: !3822)
!3827 = !DILocation(line: 693, column: 3, scope: !3822)
!3828 = !DILocation(line: 696, column: 8, scope: !3822)
!3829 = !DILocation(line: 697, column: 3, scope: !3822)
!3830 = !DILocation(line: 699, column: 8, scope: !3822)
!3831 = !DILocation(line: 700, column: 3, scope: !3822)
!3832 = !DILocation(line: 705, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3822, file: !1, line: 705, column: 7)
!3834 = !DILocation(line: 705, column: 13, scope: !3833)
!3835 = !DILocation(line: 705, column: 18, scope: !3833)
!3836 = !DILocation(line: 705, column: 26, scope: !3833)
!3837 = !DILocation(line: 705, column: 40, scope: !3833)
!3838 = !DILocation(line: 705, column: 7, scope: !3822)
!3839 = !DILocation(line: 706, column: 9, scope: !3833)
!3840 = !DILocation(line: 706, column: 4, scope: !3833)
!3841 = !DILocation(line: 707, column: 12, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3833, file: !1, line: 707, column: 12)
!3843 = !DILocation(line: 707, column: 18, scope: !3842)
!3844 = !DILocation(line: 707, column: 23, scope: !3842)
!3845 = !DILocation(line: 707, column: 31, scope: !3842)
!3846 = !DILocation(line: 707, column: 45, scope: !3842)
!3847 = !DILocation(line: 707, column: 12, scope: !3833)
!3848 = !DILocation(line: 708, column: 9, scope: !3842)
!3849 = !DILocation(line: 708, column: 4, scope: !3842)
!3850 = !DILocation(line: 709, column: 12, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 709, column: 12)
!3852 = !DILocation(line: 709, column: 18, scope: !3851)
!3853 = !DILocation(line: 709, column: 23, scope: !3851)
!3854 = !DILocation(line: 709, column: 31, scope: !3851)
!3855 = !DILocation(line: 709, column: 45, scope: !3851)
!3856 = !DILocation(line: 709, column: 12, scope: !3842)
!3857 = !DILocation(line: 711, column: 9, scope: !3851)
!3858 = !DILocation(line: 711, column: 4, scope: !3851)
!3859 = !DILocation(line: 712, column: 3, scope: !3822)
!3860 = !DILocation(line: 714, column: 3, scope: !3822)
!3861 = !DILocation(line: 717, column: 10, scope: !3809)
!3862 = !DILocation(line: 717, column: 17, scope: !3809)
!3863 = !DILocation(line: 717, column: 15, scope: !3809)
!3864 = !DILocation(line: 717, column: 9, scope: !3809)
!3865 = !DILocation(line: 717, column: 2, scope: !3809)
!3866 = distinct !DISubprogram(name: "acpi_resource_consumer", scope: !1, file: !1, line: 770, type: !3867, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!150, !2692}
!3869 = !DILocalVariable(name: "res", arg: 1, scope: !3866, file: !1, line: 770, type: !2692)
!3870 = !DILocation(line: 770, column: 61, scope: !3866)
!3871 = !DILocalVariable(name: "consumer", scope: !3866, file: !1, line: 772, type: !150)
!3872 = !DILocation(line: 772, column: 22, scope: !3866)
!3873 = !DILocation(line: 774, column: 47, scope: !3866)
!3874 = !DILocation(line: 774, column: 52, scope: !3866)
!3875 = !DILocation(line: 774, column: 2, scope: !3866)
!3876 = !DILocation(line: 775, column: 9, scope: !3866)
!3877 = !DILocation(line: 775, column: 2, scope: !3866)
!3878 = distinct !DISubprogram(name: "acpi_res_consumer_cb", scope: !1, file: !1, line: 744, type: !3879, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!144, !157, !146, !133, !134}
!3881 = !DILocalVariable(name: "handle", arg: 1, scope: !3878, file: !1, line: 744, type: !157)
!3882 = !DILocation(line: 744, column: 53, scope: !3878)
!3883 = !DILocalVariable(name: "depth", arg: 2, scope: !3878, file: !1, line: 744, type: !146)
!3884 = !DILocation(line: 744, column: 65, scope: !3878)
!3885 = !DILocalVariable(name: "context", arg: 3, scope: !3878, file: !1, line: 745, type: !133)
!3886 = !DILocation(line: 745, column: 13, scope: !3878)
!3887 = !DILocalVariable(name: "ret", arg: 4, scope: !3878, file: !1, line: 745, type: !134)
!3888 = !DILocation(line: 745, column: 29, scope: !3878)
!3889 = !DILocalVariable(name: "res", scope: !3878, file: !1, line: 747, type: !2692)
!3890 = !DILocation(line: 747, column: 19, scope: !3878)
!3891 = !DILocation(line: 747, column: 25, scope: !3878)
!3892 = !DILocalVariable(name: "consumer", scope: !3878, file: !1, line: 748, type: !149)
!3893 = !DILocation(line: 748, column: 23, scope: !3878)
!3894 = !DILocation(line: 748, column: 58, scope: !3878)
!3895 = !DILocation(line: 748, column: 34, scope: !3878)
!3896 = !DILocalVariable(name: "adev", scope: !3878, file: !1, line: 749, type: !150)
!3897 = !DILocation(line: 749, column: 22, scope: !3878)
!3898 = !DILocation(line: 751, column: 26, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3878, file: !1, line: 751, column: 6)
!3900 = !DILocation(line: 751, column: 6, scope: !3899)
!3901 = !DILocation(line: 751, column: 6, scope: !3878)
!3902 = !DILocation(line: 752, column: 3, scope: !3899)
!3903 = !DILocation(line: 754, column: 28, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3878, file: !1, line: 754, column: 6)
!3905 = !DILocation(line: 754, column: 34, scope: !3904)
!3906 = !DILocation(line: 754, column: 6, scope: !3904)
!3907 = !DILocation(line: 754, column: 6, scope: !3878)
!3908 = !DILocation(line: 755, column: 15, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 754, column: 40)
!3910 = !DILocation(line: 755, column: 4, scope: !3909)
!3911 = !DILocation(line: 755, column: 13, scope: !3909)
!3912 = !DILocation(line: 756, column: 3, scope: !3909)
!3913 = !DILocation(line: 759, column: 2, scope: !3878)
!3914 = !DILocation(line: 760, column: 1, scope: !3878)
!3915 = distinct !DISubprogram(name: "acpi_dev_memresource_flags", scope: !1, file: !1, line: 71, type: !3916, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !2692, !372, !101}
!3918 = !DILocalVariable(name: "res", arg: 1, scope: !3915, file: !1, line: 71, type: !2692)
!3919 = !DILocation(line: 71, column: 57, scope: !3915)
!3920 = !DILocalVariable(name: "len", arg: 2, scope: !3915, file: !1, line: 71, type: !372)
!3921 = !DILocation(line: 71, column: 66, scope: !3915)
!3922 = !DILocalVariable(name: "write_protect", arg: 3, scope: !3915, file: !1, line: 72, type: !101)
!3923 = !DILocation(line: 72, column: 15, scope: !3915)
!3924 = !DILocation(line: 74, column: 2, scope: !3915)
!3925 = !DILocation(line: 74, column: 7, scope: !3915)
!3926 = !DILocation(line: 74, column: 13, scope: !3915)
!3927 = !DILocation(line: 76, column: 35, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3915, file: !1, line: 76, column: 6)
!3929 = !DILocation(line: 76, column: 40, scope: !3928)
!3930 = !DILocation(line: 76, column: 47, scope: !3928)
!3931 = !DILocation(line: 76, column: 52, scope: !3928)
!3932 = !DILocation(line: 76, column: 57, scope: !3928)
!3933 = !DILocation(line: 76, column: 7, scope: !3928)
!3934 = !DILocation(line: 76, column: 6, scope: !3915)
!3935 = !DILocation(line: 77, column: 3, scope: !3928)
!3936 = !DILocation(line: 77, column: 8, scope: !3928)
!3937 = !DILocation(line: 77, column: 14, scope: !3928)
!3938 = !DILocation(line: 79, column: 6, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3915, file: !1, line: 79, column: 6)
!3940 = !DILocation(line: 79, column: 20, scope: !3939)
!3941 = !DILocation(line: 79, column: 6, scope: !3915)
!3942 = !DILocation(line: 80, column: 3, scope: !3939)
!3943 = !DILocation(line: 80, column: 8, scope: !3939)
!3944 = !DILocation(line: 80, column: 14, scope: !3939)
!3945 = !DILocation(line: 81, column: 1, scope: !3915)
!3946 = distinct !DISubprogram(name: "acpi_dev_resource_len_valid", scope: !1, file: !1, line: 51, type: !3947, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!181, !372, !372, !372, !181}
!3949 = !DILocalVariable(name: "start", arg: 1, scope: !3946, file: !1, line: 51, type: !372)
!3950 = !DILocation(line: 51, column: 45, scope: !3946)
!3951 = !DILocalVariable(name: "end", arg: 2, scope: !3946, file: !1, line: 51, type: !372)
!3952 = !DILocation(line: 51, column: 56, scope: !3946)
!3953 = !DILocalVariable(name: "len", arg: 3, scope: !3946, file: !1, line: 51, type: !372)
!3954 = !DILocation(line: 51, column: 65, scope: !3946)
!3955 = !DILocalVariable(name: "io", arg: 4, scope: !3946, file: !1, line: 51, type: !181)
!3956 = !DILocation(line: 51, column: 75, scope: !3946)
!3957 = !DILocalVariable(name: "reslen", scope: !3946, file: !1, line: 53, type: !372)
!3958 = !DILocation(line: 53, column: 6, scope: !3946)
!3959 = !DILocation(line: 53, column: 15, scope: !3946)
!3960 = !DILocation(line: 53, column: 21, scope: !3946)
!3961 = !DILocation(line: 53, column: 19, scope: !3946)
!3962 = !DILocation(line: 53, column: 27, scope: !3946)
!3963 = !DILocation(line: 62, column: 6, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3946, file: !1, line: 62, column: 6)
!3965 = !DILocation(line: 62, column: 10, scope: !3964)
!3966 = !DILocation(line: 62, column: 13, scope: !3964)
!3967 = !DILocation(line: 62, column: 20, scope: !3964)
!3968 = !DILocation(line: 62, column: 23, scope: !3964)
!3969 = !DILocation(line: 62, column: 32, scope: !3964)
!3970 = !DILocation(line: 62, column: 29, scope: !3964)
!3971 = !DILocation(line: 62, column: 6, scope: !3946)
!3972 = !DILocation(line: 63, column: 3, scope: !3964)
!3973 = !DILocation(line: 65, column: 2, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !1, line: 65, column: 2)
!3975 = distinct !DILexicalBlock(scope: !3946, file: !1, line: 65, column: 2)
!3976 = !DILocation(line: 65, column: 2, scope: !3975)
!3977 = !DILocation(line: 68, column: 2, scope: !3946)
!3978 = !DILocation(line: 69, column: 1, scope: !3946)
!3979 = distinct !DISubprogram(name: "acpi_dev_ioresource_flags", scope: !1, file: !1, line: 139, type: !3980, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !2692, !372, !101, !101}
!3982 = !DILocalVariable(name: "res", arg: 1, scope: !3979, file: !1, line: 139, type: !2692)
!3983 = !DILocation(line: 139, column: 56, scope: !3979)
!3984 = !DILocalVariable(name: "len", arg: 2, scope: !3979, file: !1, line: 139, type: !372)
!3985 = !DILocation(line: 139, column: 65, scope: !3979)
!3986 = !DILocalVariable(name: "io_decode", arg: 3, scope: !3979, file: !1, line: 140, type: !101)
!3987 = !DILocation(line: 140, column: 14, scope: !3979)
!3988 = !DILocalVariable(name: "translation_type", arg: 4, scope: !3979, file: !1, line: 140, type: !101)
!3989 = !DILocation(line: 140, column: 28, scope: !3979)
!3990 = !DILocation(line: 142, column: 2, scope: !3979)
!3991 = !DILocation(line: 142, column: 7, scope: !3979)
!3992 = !DILocation(line: 142, column: 13, scope: !3979)
!3993 = !DILocation(line: 144, column: 35, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 144, column: 6)
!3995 = !DILocation(line: 144, column: 40, scope: !3994)
!3996 = !DILocation(line: 144, column: 47, scope: !3994)
!3997 = !DILocation(line: 144, column: 52, scope: !3994)
!3998 = !DILocation(line: 144, column: 57, scope: !3994)
!3999 = !DILocation(line: 144, column: 7, scope: !3994)
!4000 = !DILocation(line: 144, column: 6, scope: !3979)
!4001 = !DILocation(line: 145, column: 3, scope: !3994)
!4002 = !DILocation(line: 145, column: 8, scope: !3994)
!4003 = !DILocation(line: 145, column: 14, scope: !3994)
!4004 = !DILocation(line: 147, column: 35, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 147, column: 6)
!4006 = !DILocation(line: 147, column: 7, scope: !4005)
!4007 = !DILocation(line: 147, column: 6, scope: !3979)
!4008 = !DILocation(line: 148, column: 3, scope: !4005)
!4009 = !DILocation(line: 148, column: 8, scope: !4005)
!4010 = !DILocation(line: 148, column: 14, scope: !4005)
!4011 = !DILocation(line: 150, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 150, column: 6)
!4013 = !DILocation(line: 150, column: 16, scope: !4012)
!4014 = !DILocation(line: 150, column: 6, scope: !3979)
!4015 = !DILocation(line: 151, column: 3, scope: !4012)
!4016 = !DILocation(line: 151, column: 8, scope: !4012)
!4017 = !DILocation(line: 151, column: 14, scope: !4012)
!4018 = !DILocation(line: 152, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 152, column: 6)
!4020 = !DILocation(line: 152, column: 23, scope: !4019)
!4021 = !DILocation(line: 152, column: 6, scope: !3979)
!4022 = !DILocation(line: 153, column: 3, scope: !4019)
!4023 = !DILocation(line: 153, column: 8, scope: !4019)
!4024 = !DILocation(line: 153, column: 14, scope: !4019)
!4025 = !DILocation(line: 154, column: 1, scope: !3979)
!4026 = distinct !DISubprogram(name: "acpi_iospace_resource_valid", scope: !1, file: !1, line: 22, type: !4027, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!181, !2692}
!4029 = !DILocalVariable(name: "res", arg: 1, scope: !4026, file: !1, line: 22, type: !2692)
!4030 = !DILocation(line: 22, column: 65, scope: !4026)
!4031 = !DILocation(line: 25, column: 9, scope: !4026)
!4032 = !DILocation(line: 25, column: 14, scope: !4026)
!4033 = !DILocation(line: 25, column: 18, scope: !4026)
!4034 = !DILocation(line: 25, column: 2, scope: !4026)
!4035 = distinct !DISubprogram(name: "list_empty", scope: !4036, file: !4036, line: 280, type: !4037, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4036 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!155, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!4041 = !DILocalVariable(name: "head", arg: 1, scope: !4035, file: !4036, line: 280, type: !4039)
!4042 = !DILocation(line: 280, column: 54, scope: !4035)
!4043 = !DILocation(line: 282, column: 9, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4035, file: !4036, line: 282, column: 9)
!4045 = !DILocation(line: 282, column: 9, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4044, file: !4036, line: 282, column: 9)
!4047 = !DILocation(line: 282, column: 34, scope: !4035)
!4048 = !DILocation(line: 282, column: 31, scope: !4035)
!4049 = !DILocation(line: 282, column: 2, scope: !4035)
!4050 = distinct !DISubprogram(name: "acpi_dev_process_resource", scope: !1, file: !1, line: 530, type: !4051, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!144, !2715, !133}
!4053 = !DILocalVariable(name: "ares", arg: 1, scope: !4050, file: !1, line: 530, type: !2715)
!4054 = !DILocation(line: 530, column: 68, scope: !4050)
!4055 = !DILocalVariable(name: "context", arg: 2, scope: !4050, file: !1, line: 531, type: !133)
!4056 = !DILocation(line: 531, column: 17, scope: !4050)
!4057 = !DILocalVariable(name: "c", scope: !4050, file: !1, line: 533, type: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!4059 = !DILocation(line: 533, column: 27, scope: !4050)
!4060 = !DILocation(line: 533, column: 31, scope: !4050)
!4061 = !DILocalVariable(name: "win", scope: !4050, file: !1, line: 534, type: !3224)
!4062 = !DILocation(line: 534, column: 22, scope: !4050)
!4063 = !DILocalVariable(name: "res", scope: !4050, file: !1, line: 535, type: !2692)
!4064 = !DILocation(line: 535, column: 19, scope: !4050)
!4065 = !DILocation(line: 535, column: 30, scope: !4050)
!4066 = !DILocalVariable(name: "i", scope: !4050, file: !1, line: 536, type: !155)
!4067 = !DILocation(line: 536, column: 6, scope: !4050)
!4068 = !DILocation(line: 538, column: 6, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 538, column: 6)
!4070 = !DILocation(line: 538, column: 9, scope: !4069)
!4071 = !DILocation(line: 538, column: 6, scope: !4050)
!4072 = !DILocalVariable(name: "ret", scope: !4073, file: !1, line: 539, type: !155)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !1, line: 538, column: 18)
!4074 = !DILocation(line: 539, column: 7, scope: !4073)
!4075 = !DILocation(line: 541, column: 9, scope: !4073)
!4076 = !DILocation(line: 541, column: 12, scope: !4073)
!4077 = !DILocation(line: 541, column: 20, scope: !4073)
!4078 = !DILocation(line: 541, column: 26, scope: !4073)
!4079 = !DILocation(line: 541, column: 29, scope: !4073)
!4080 = !DILocation(line: 541, column: 7, scope: !4073)
!4081 = !DILocation(line: 542, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4073, file: !1, line: 542, column: 7)
!4083 = !DILocation(line: 542, column: 11, scope: !4082)
!4084 = !DILocation(line: 542, column: 7, scope: !4073)
!4085 = !DILocation(line: 543, column: 15, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !1, line: 542, column: 16)
!4087 = !DILocation(line: 543, column: 4, scope: !4086)
!4088 = !DILocation(line: 543, column: 7, scope: !4086)
!4089 = !DILocation(line: 543, column: 13, scope: !4086)
!4090 = !DILocation(line: 544, column: 4, scope: !4086)
!4091 = !DILocation(line: 545, column: 14, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4082, file: !1, line: 545, column: 14)
!4093 = !DILocation(line: 545, column: 18, scope: !4092)
!4094 = !DILocation(line: 545, column: 14, scope: !4082)
!4095 = !DILocation(line: 546, column: 4, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 545, column: 23)
!4097 = !DILocation(line: 548, column: 2, scope: !4073)
!4098 = !DILocation(line: 550, column: 2, scope: !4050)
!4099 = !DILocation(line: 552, column: 31, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 552, column: 6)
!4101 = !DILocation(line: 552, column: 37, scope: !4100)
!4102 = !DILocation(line: 552, column: 6, scope: !4100)
!4103 = !DILocation(line: 553, column: 6, scope: !4100)
!4104 = !DILocation(line: 553, column: 30, scope: !4100)
!4105 = !DILocation(line: 553, column: 36, scope: !4100)
!4106 = !DILocation(line: 553, column: 9, scope: !4100)
!4107 = !DILocation(line: 554, column: 6, scope: !4100)
!4108 = !DILocation(line: 554, column: 41, scope: !4100)
!4109 = !DILocation(line: 554, column: 9, scope: !4100)
!4110 = !DILocation(line: 555, column: 6, scope: !4100)
!4111 = !DILocation(line: 555, column: 45, scope: !4100)
!4112 = !DILocation(line: 555, column: 9, scope: !4100)
!4113 = !DILocation(line: 552, column: 6, scope: !4050)
!4114 = !DILocation(line: 556, column: 44, scope: !4100)
!4115 = !DILocation(line: 556, column: 10, scope: !4100)
!4116 = !DILocation(line: 556, column: 3, scope: !4100)
!4117 = !DILocation(line: 558, column: 9, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 558, column: 2)
!4119 = !DILocation(line: 558, column: 7, scope: !4118)
!4120 = !DILocation(line: 558, column: 42, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !1, line: 558, column: 2)
!4122 = !DILocation(line: 558, column: 48, scope: !4121)
!4123 = !DILocation(line: 558, column: 51, scope: !4121)
!4124 = !DILocation(line: 558, column: 14, scope: !4121)
!4125 = !DILocation(line: 558, column: 2, scope: !4118)
!4126 = !DILocalVariable(name: "status", scope: !4127, file: !1, line: 559, type: !144)
!4127 = distinct !DILexicalBlock(scope: !4121, file: !1, line: 558, column: 62)
!4128 = !DILocation(line: 559, column: 15, scope: !4127)
!4129 = !DILocation(line: 561, column: 46, scope: !4127)
!4130 = !DILocation(line: 561, column: 12, scope: !4127)
!4131 = !DILocation(line: 561, column: 10, scope: !4127)
!4132 = !DILocation(line: 562, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4127, file: !1, line: 562, column: 7)
!4134 = !DILocation(line: 562, column: 7, scope: !4127)
!4135 = !DILocation(line: 563, column: 11, scope: !4133)
!4136 = !DILocation(line: 563, column: 4, scope: !4133)
!4137 = !DILocation(line: 564, column: 2, scope: !4127)
!4138 = !DILocation(line: 558, column: 58, scope: !4121)
!4139 = !DILocation(line: 558, column: 2, scope: !4121)
!4140 = distinct !{!4140, !4125, !4141}
!4141 = !DILocation(line: 564, column: 2, scope: !4118)
!4142 = !DILocation(line: 566, column: 2, scope: !4050)
!4143 = !DILocation(line: 567, column: 1, scope: !4050)
!4144 = distinct !DISubprogram(name: "acpi_dev_new_resource_entry", scope: !1, file: !1, line: 513, type: !4145, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!144, !3223, !4058}
!4147 = !DILocalVariable(name: "win", arg: 1, scope: !4144, file: !1, line: 513, type: !3223)
!4148 = !DILocation(line: 513, column: 69, scope: !4144)
!4149 = !DILocalVariable(name: "c", arg: 2, scope: !4144, file: !1, line: 514, type: !4058)
!4150 = !DILocation(line: 514, column: 38, scope: !4144)
!4151 = !DILocalVariable(name: "rentry", scope: !4144, file: !1, line: 516, type: !2686)
!4152 = !DILocation(line: 516, column: 25, scope: !4144)
!4153 = !DILocation(line: 518, column: 11, scope: !4144)
!4154 = !DILocation(line: 518, column: 9, scope: !4144)
!4155 = !DILocation(line: 519, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4144, file: !1, line: 519, column: 6)
!4157 = !DILocation(line: 519, column: 6, scope: !4144)
!4158 = !DILocation(line: 520, column: 3, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4156, file: !1, line: 519, column: 15)
!4160 = !DILocation(line: 520, column: 6, scope: !4159)
!4161 = !DILocation(line: 520, column: 12, scope: !4159)
!4162 = !DILocation(line: 521, column: 3, scope: !4159)
!4163 = !DILocation(line: 523, column: 3, scope: !4144)
!4164 = !DILocation(line: 523, column: 11, scope: !4144)
!4165 = !DILocation(line: 523, column: 17, scope: !4144)
!4166 = !DILocation(line: 523, column: 22, scope: !4144)
!4167 = !DILocation(line: 524, column: 19, scope: !4144)
!4168 = !DILocation(line: 524, column: 24, scope: !4144)
!4169 = !DILocation(line: 524, column: 2, scope: !4144)
!4170 = !DILocation(line: 524, column: 10, scope: !4144)
!4171 = !DILocation(line: 524, column: 17, scope: !4144)
!4172 = !DILocation(line: 525, column: 25, scope: !4144)
!4173 = !DILocation(line: 525, column: 33, scope: !4144)
!4174 = !DILocation(line: 525, column: 36, scope: !4144)
!4175 = !DILocation(line: 525, column: 2, scope: !4144)
!4176 = !DILocation(line: 526, column: 2, scope: !4144)
!4177 = !DILocation(line: 526, column: 5, scope: !4144)
!4178 = !DILocation(line: 526, column: 10, scope: !4144)
!4179 = !DILocation(line: 527, column: 2, scope: !4144)
!4180 = !DILocation(line: 528, column: 1, scope: !4144)
!4181 = distinct !DISubprogram(name: "resource_list_add_tail", scope: !2688, file: !2688, line: 40, type: !4182, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !2686, !138}
!4184 = !DILocalVariable(name: "entry", arg: 1, scope: !4181, file: !2688, line: 40, type: !2686)
!4185 = !DILocation(line: 40, column: 66, scope: !4181)
!4186 = !DILocalVariable(name: "head", arg: 2, scope: !4181, file: !2688, line: 41, type: !138)
!4187 = !DILocation(line: 41, column: 26, scope: !4181)
!4188 = !DILocation(line: 43, column: 17, scope: !4181)
!4189 = !DILocation(line: 43, column: 24, scope: !4181)
!4190 = !DILocation(line: 43, column: 30, scope: !4181)
!4191 = !DILocation(line: 43, column: 2, scope: !4181)
!4192 = !DILocation(line: 44, column: 1, scope: !4181)
!4193 = distinct !DISubprogram(name: "list_add_tail", scope: !4036, file: !4036, line: 98, type: !4194, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !138, !138}
!4196 = !DILocalVariable(name: "new", arg: 1, scope: !4193, file: !4036, line: 98, type: !138)
!4197 = !DILocation(line: 98, column: 52, scope: !4193)
!4198 = !DILocalVariable(name: "head", arg: 2, scope: !4193, file: !4036, line: 98, type: !138)
!4199 = !DILocation(line: 98, column: 75, scope: !4193)
!4200 = !DILocation(line: 100, column: 13, scope: !4193)
!4201 = !DILocation(line: 100, column: 18, scope: !4193)
!4202 = !DILocation(line: 100, column: 24, scope: !4193)
!4203 = !DILocation(line: 100, column: 30, scope: !4193)
!4204 = !DILocation(line: 100, column: 2, scope: !4193)
!4205 = !DILocation(line: 101, column: 1, scope: !4193)
!4206 = distinct !DISubprogram(name: "__list_add", scope: !4036, file: !4036, line: 63, type: !4207, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !138, !138, !138}
!4209 = !DILocalVariable(name: "new", arg: 1, scope: !4206, file: !4036, line: 63, type: !138)
!4210 = !DILocation(line: 63, column: 49, scope: !4206)
!4211 = !DILocalVariable(name: "prev", arg: 2, scope: !4206, file: !4036, line: 64, type: !138)
!4212 = !DILocation(line: 64, column: 28, scope: !4206)
!4213 = !DILocalVariable(name: "next", arg: 3, scope: !4206, file: !4036, line: 65, type: !138)
!4214 = !DILocation(line: 65, column: 28, scope: !4206)
!4215 = !DILocation(line: 67, column: 24, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4206, file: !4036, line: 67, column: 6)
!4217 = !DILocation(line: 67, column: 29, scope: !4216)
!4218 = !DILocation(line: 67, column: 35, scope: !4216)
!4219 = !DILocation(line: 67, column: 7, scope: !4216)
!4220 = !DILocation(line: 67, column: 6, scope: !4206)
!4221 = !DILocation(line: 68, column: 3, scope: !4216)
!4222 = !DILocation(line: 70, column: 15, scope: !4206)
!4223 = !DILocation(line: 70, column: 2, scope: !4206)
!4224 = !DILocation(line: 70, column: 8, scope: !4206)
!4225 = !DILocation(line: 70, column: 13, scope: !4206)
!4226 = !DILocation(line: 71, column: 14, scope: !4206)
!4227 = !DILocation(line: 71, column: 2, scope: !4206)
!4228 = !DILocation(line: 71, column: 7, scope: !4206)
!4229 = !DILocation(line: 71, column: 12, scope: !4206)
!4230 = !DILocation(line: 72, column: 14, scope: !4206)
!4231 = !DILocation(line: 72, column: 2, scope: !4206)
!4232 = !DILocation(line: 72, column: 7, scope: !4206)
!4233 = !DILocation(line: 72, column: 12, scope: !4206)
!4234 = !DILocation(line: 73, column: 2, scope: !4206)
!4235 = !DILocation(line: 73, column: 2, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4206, file: !4036, line: 73, column: 2)
!4237 = !DILocation(line: 73, column: 2, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4236, file: !4036, line: 73, column: 2)
!4239 = !DILocation(line: 73, column: 2, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4236, file: !4036, line: 73, column: 2)
!4241 = !DILocation(line: 74, column: 1, scope: !4206)
!4242 = distinct !DISubprogram(name: "__list_add_valid", scope: !4036, file: !4036, line: 45, type: !4243, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!181, !138, !138, !138}
!4245 = !DILocalVariable(name: "new", arg: 1, scope: !4242, file: !4036, line: 45, type: !138)
!4246 = !DILocation(line: 45, column: 55, scope: !4242)
!4247 = !DILocalVariable(name: "prev", arg: 2, scope: !4242, file: !4036, line: 46, type: !138)
!4248 = !DILocation(line: 46, column: 23, scope: !4242)
!4249 = !DILocalVariable(name: "next", arg: 3, scope: !4242, file: !4036, line: 47, type: !138)
!4250 = !DILocation(line: 47, column: 23, scope: !4242)
!4251 = !DILocation(line: 49, column: 2, scope: !4242)
!4252 = distinct !DISubprogram(name: "acpi_dev_consumes_res", scope: !1, file: !1, line: 721, type: !4253, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!155, !150, !2692}
!4255 = !DILocalVariable(name: "adev", arg: 1, scope: !4252, file: !1, line: 721, type: !150)
!4256 = !DILocation(line: 721, column: 54, scope: !4252)
!4257 = !DILocalVariable(name: "res", arg: 2, scope: !4252, file: !1, line: 721, type: !2692)
!4258 = !DILocation(line: 721, column: 77, scope: !4252)
!4259 = !DILocalVariable(name: "resource_list", scope: !4252, file: !1, line: 723, type: !139)
!4260 = !DILocation(line: 723, column: 19, scope: !4252)
!4261 = !DILocalVariable(name: "rentry", scope: !4252, file: !1, line: 724, type: !2686)
!4262 = !DILocation(line: 724, column: 25, scope: !4252)
!4263 = !DILocalVariable(name: "ret", scope: !4252, file: !1, line: 725, type: !155)
!4264 = !DILocation(line: 725, column: 6, scope: !4252)
!4265 = !DILocalVariable(name: "found", scope: !4252, file: !1, line: 725, type: !155)
!4266 = !DILocation(line: 725, column: 11, scope: !4252)
!4267 = !DILocation(line: 727, column: 2, scope: !4252)
!4268 = !DILocation(line: 728, column: 31, scope: !4252)
!4269 = !DILocation(line: 728, column: 8, scope: !4252)
!4270 = !DILocation(line: 728, column: 6, scope: !4252)
!4271 = !DILocation(line: 729, column: 6, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4252, file: !1, line: 729, column: 6)
!4273 = !DILocation(line: 729, column: 10, scope: !4272)
!4274 = !DILocation(line: 729, column: 6, scope: !4252)
!4275 = !DILocation(line: 730, column: 3, scope: !4272)
!4276 = !DILocalVariable(name: "__mptr", scope: !4277, file: !1, line: 732, type: !133)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !1, line: 732, column: 2)
!4278 = distinct !DILexicalBlock(scope: !4252, file: !1, line: 732, column: 2)
!4279 = !DILocation(line: 732, column: 2, scope: !4277)
!4280 = !DILocation(line: 732, column: 2, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4277, file: !1, line: 732, column: 2)
!4282 = !DILocation(line: 732, column: 2, scope: !4278)
!4283 = !DILocation(line: 732, column: 2, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4278, file: !1, line: 732, column: 2)
!4285 = !DILocation(line: 733, column: 25, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !1, line: 733, column: 7)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !1, line: 732, column: 52)
!4288 = !DILocation(line: 733, column: 33, scope: !4286)
!4289 = !DILocation(line: 733, column: 38, scope: !4286)
!4290 = !DILocation(line: 733, column: 7, scope: !4286)
!4291 = !DILocation(line: 733, column: 7, scope: !4287)
!4292 = !DILocation(line: 734, column: 10, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4286, file: !1, line: 733, column: 44)
!4294 = !DILocation(line: 735, column: 4, scope: !4293)
!4295 = !DILocation(line: 738, column: 2, scope: !4287)
!4296 = !DILocalVariable(name: "__mptr", scope: !4297, file: !1, line: 732, type: !133)
!4297 = distinct !DILexicalBlock(scope: !4284, file: !1, line: 732, column: 2)
!4298 = !DILocation(line: 732, column: 2, scope: !4297)
!4299 = !DILocation(line: 732, column: 2, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !1, line: 732, column: 2)
!4301 = distinct !{!4301, !4282, !4302}
!4302 = !DILocation(line: 738, column: 2, scope: !4278)
!4303 = !DILocation(line: 740, column: 2, scope: !4252)
!4304 = !DILocation(line: 741, column: 9, scope: !4252)
!4305 = !DILocation(line: 741, column: 2, scope: !4252)
!4306 = !DILocation(line: 742, column: 1, scope: !4252)
!4307 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4036, file: !4036, line: 33, type: !3676, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4308 = !DILocalVariable(name: "list", arg: 1, scope: !4307, file: !4036, line: 33, type: !138)
!4309 = !DILocation(line: 33, column: 53, scope: !4307)
!4310 = !DILocation(line: 35, column: 2, scope: !4307)
!4311 = !DILocation(line: 35, column: 2, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4307, file: !4036, line: 35, column: 2)
!4313 = !DILocation(line: 35, column: 2, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4312, file: !4036, line: 35, column: 2)
!4315 = !DILocation(line: 35, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4312, file: !4036, line: 35, column: 2)
!4317 = !DILocation(line: 36, column: 15, scope: !4307)
!4318 = !DILocation(line: 36, column: 2, scope: !4307)
!4319 = !DILocation(line: 36, column: 8, scope: !4307)
!4320 = !DILocation(line: 36, column: 13, scope: !4307)
!4321 = !DILocation(line: 37, column: 1, scope: !4307)
!4322 = distinct !DISubprogram(name: "resource_contains", scope: !2694, file: !2694, line: 223, type: !4323, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!181, !2692, !2692}
!4325 = !DILocalVariable(name: "r1", arg: 1, scope: !4322, file: !2694, line: 223, type: !2692)
!4326 = !DILocation(line: 223, column: 55, scope: !4322)
!4327 = !DILocalVariable(name: "r2", arg: 2, scope: !4322, file: !2694, line: 223, type: !2692)
!4328 = !DILocation(line: 223, column: 76, scope: !4322)
!4329 = !DILocation(line: 225, column: 20, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4322, file: !2694, line: 225, column: 6)
!4331 = !DILocation(line: 225, column: 6, scope: !4330)
!4332 = !DILocation(line: 225, column: 41, scope: !4330)
!4333 = !DILocation(line: 225, column: 27, scope: !4330)
!4334 = !DILocation(line: 225, column: 24, scope: !4330)
!4335 = !DILocation(line: 225, column: 6, scope: !4322)
!4336 = !DILocation(line: 226, column: 3, scope: !4330)
!4337 = !DILocation(line: 227, column: 6, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4322, file: !2694, line: 227, column: 6)
!4339 = !DILocation(line: 227, column: 10, scope: !4338)
!4340 = !DILocation(line: 227, column: 16, scope: !4338)
!4341 = !DILocation(line: 227, column: 35, scope: !4338)
!4342 = !DILocation(line: 227, column: 38, scope: !4338)
!4343 = !DILocation(line: 227, column: 42, scope: !4338)
!4344 = !DILocation(line: 227, column: 48, scope: !4338)
!4345 = !DILocation(line: 227, column: 6, scope: !4322)
!4346 = !DILocation(line: 228, column: 3, scope: !4338)
!4347 = !DILocation(line: 229, column: 9, scope: !4322)
!4348 = !DILocation(line: 229, column: 13, scope: !4322)
!4349 = !DILocation(line: 229, column: 22, scope: !4322)
!4350 = !DILocation(line: 229, column: 26, scope: !4322)
!4351 = !DILocation(line: 229, column: 19, scope: !4322)
!4352 = !DILocation(line: 229, column: 32, scope: !4322)
!4353 = !DILocation(line: 229, column: 35, scope: !4322)
!4354 = !DILocation(line: 229, column: 39, scope: !4322)
!4355 = !DILocation(line: 229, column: 46, scope: !4322)
!4356 = !DILocation(line: 229, column: 50, scope: !4322)
!4357 = !DILocation(line: 229, column: 43, scope: !4322)
!4358 = !DILocation(line: 0, scope: !4322)
!4359 = !DILocation(line: 229, column: 2, scope: !4322)
!4360 = !DILocation(line: 230, column: 1, scope: !4322)
!4361 = distinct !DISubprogram(name: "resource_type", scope: !2694, file: !2694, line: 214, type: !4362, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !226)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!303, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!4366 = !DILocalVariable(name: "res", arg: 1, scope: !4361, file: !2694, line: 214, type: !4364)
!4367 = !DILocation(line: 214, column: 66, scope: !4361)
!4368 = !DILocation(line: 216, column: 9, scope: !4361)
!4369 = !DILocation(line: 216, column: 14, scope: !4361)
!4370 = !DILocation(line: 216, column: 20, scope: !4361)
!4371 = !DILocation(line: 216, column: 2, scope: !4361)
