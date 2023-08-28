; ModuleID = '../bcout/drivers/acpi/property.llvm.bc'
source_filename = "drivers/acpi/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.44, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.44 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.43, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.6, [0 x i64] }
%struct.anon.6 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.24, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.16 }
%struct.anon.16 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.23, i32, [12 x i8] }
%union.anon.23 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.24 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.25, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.38 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.39, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.42 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i64, i64 }
%union.anon.42 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.43 = type { %struct.rb_node, i64 }
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
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.kmem_cache = type opaque
%struct.guid_t = type { [16 x i8] }
%struct.acpi_device_properties = type { %struct.guid_t*, %union.acpi_object*, %struct.list_head }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, {}* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
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
%struct.proc_dir_entry = type opaque
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, {}*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, {}*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, {}* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_hardware_id = type { %struct.list_head, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.2 = type { i32, i32, %union.acpi_object* }
%struct.anon.1 = type { i32, i32, i8* }
%struct.acpi_data_node = type { i8*, i8*, %struct.fwnode_handle, %struct.fwnode_handle*, %struct.acpi_device_data, %struct.list_head, %struct.kobject, %struct.completion }
%struct.anon.0 = type { i32, i32, i8* }
%struct.anon.3 = type { i32, i32, i8* }
%struct.anon = type { i32, i64 }

@__const.acpi_init_properties.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"PRP0001\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DSD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"PRP0001 requires 'compatible' property\0A\00", align 1
@acpi_device_fwnode_ops = dso_local constant %struct.fwnode_operations { %struct.fwnode_handle* (%struct.fwnode_handle*)* null, void (%struct.fwnode_handle*)* null, i1 (%struct.fwnode_handle*)* @acpi_fwnode_device_is_available, i8* (%struct.fwnode_handle*, %struct.device*)* @acpi_fwnode_device_get_match_data, i1 (%struct.fwnode_handle*, i8*)* @acpi_fwnode_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @acpi_fwnode_property_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @acpi_fwnode_property_read_string_array, i8* (%struct.fwnode_handle*)* @acpi_fwnode_get_name, i8* (%struct.fwnode_handle*)* @acpi_fwnode_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_node_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @acpi_get_next_subnode, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @acpi_fwnode_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @acpi_fwnode_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @acpi_graph_get_next_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_graph_get_remote_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_fwnode_get_parent, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @acpi_fwnode_graph_parse_endpoint, i32 (%struct.fwnode_handle*, %struct.device*)* null }, align 8, !dbg !0
@acpi_data_fwnode_ops = dso_local constant %struct.fwnode_operations { %struct.fwnode_handle* (%struct.fwnode_handle*)* null, void (%struct.fwnode_handle*)* null, i1 (%struct.fwnode_handle*)* @acpi_fwnode_device_is_available, i8* (%struct.fwnode_handle*, %struct.device*)* @acpi_fwnode_device_get_match_data, i1 (%struct.fwnode_handle*, i8*)* @acpi_fwnode_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @acpi_fwnode_property_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @acpi_fwnode_property_read_string_array, i8* (%struct.fwnode_handle*)* @acpi_fwnode_get_name, i8* (%struct.fwnode_handle*)* @acpi_fwnode_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_node_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @acpi_get_next_subnode, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @acpi_fwnode_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @acpi_fwnode_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @acpi_graph_get_next_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_graph_get_remote_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @acpi_fwnode_get_parent, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @acpi_fwnode_graph_parse_endpoint, i32 (%struct.fwnode_handle*, %struct.device*)* null }, align 8, !dbg !2476
@acpi_static_fwnode_ops = dso_local constant %struct.fwnode_operations zeroinitializer, align 8, !dbg !2478
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@prp_guids = internal constant [6 x %struct.guid_t] [%struct.guid_t { [16 x i8] c"\14\D8\FF\DA\BAn\8CM\8A\91\BC\9B\BFJ\A3\01" }, %struct.guid_t { [16 x i8] c"\C0\E2\11b\A3X\F3J\90\E1\92zN\0CU\A4" }, %struct.guid_t { [16 x i8] c"\CC\06\CC\EF\ACs\C3K\BF\F0v\148\07\C3\89" }, %struct.guid_t { [16 x i8] c"/\00M\C4\F9i}N\A9\04\A7\BA\AB\DFC\F7" }, %struct.guid_t { [16 x i8] c"\03\11Pl\89\C1\96B\BAr\9B\F5\A2n\BE]" }, %struct.guid_t { [16 x i8] c"\0F\03%P/\84\B4J\A5a\99\A5\18\97b\D0" }], align 16, !dbg !2480
@.str.5 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@ads_guid = internal constant %struct.guid_t { [16 x i8] c"\E6\E3\B8\DB\86X\A6K\87\95\13\19\F5*\96k" }, align 1, !dbg !2483
@__const.acpi_nondev_subnode_data_ok.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"drivers/acpi/property.c\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device_properties* @acpi_data_add_props(%struct.acpi_device_data* %data, %struct.guid_t* %guid, %union.acpi_object* %properties) #0 !dbg !2490 {
entry:
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %guid.addr = alloca %struct.guid_t*, align 8
  %properties.addr = alloca %union.acpi_object*, align 8
  %props = alloca %struct.acpi_device_properties*, align 8
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !2494, metadata !DIExpression()), !dbg !2495
  store %struct.guid_t* %guid, %struct.guid_t** %guid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %guid.addr, metadata !2496, metadata !DIExpression()), !dbg !2497
  store %union.acpi_object* %properties, %union.acpi_object** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %properties.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.acpi_device_properties** %props, metadata !2500, metadata !DIExpression()), !dbg !2501
  %call = call i8* @kzalloc(i64 32, i32 3264) #7, !dbg !2502
  %0 = bitcast i8* %call to %struct.acpi_device_properties*, !dbg !2502
  store %struct.acpi_device_properties* %0, %struct.acpi_device_properties** %props, align 8, !dbg !2503
  %1 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2504
  %tobool = icmp ne %struct.acpi_device_properties* %1, null, !dbg !2504
  br i1 %tobool, label %if.then, label %if.end, !dbg !2506

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2507
  %list = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %2, i32 0, i32 2, !dbg !2509
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #7, !dbg !2510
  %3 = load %struct.guid_t*, %struct.guid_t** %guid.addr, align 8, !dbg !2511
  %4 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2512
  %guid1 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %4, i32 0, i32 0, !dbg !2513
  store %struct.guid_t* %3, %struct.guid_t** %guid1, align 8, !dbg !2514
  %5 = load %union.acpi_object*, %union.acpi_object** %properties.addr, align 8, !dbg !2515
  %6 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2516
  %properties2 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %6, i32 0, i32 1, !dbg !2517
  store %union.acpi_object* %5, %union.acpi_object** %properties2, align 8, !dbg !2518
  %7 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2519
  %list3 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %7, i32 0, i32 2, !dbg !2520
  %8 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !2521
  %properties4 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %8, i32 0, i32 1, !dbg !2522
  call void @list_add_tail(%struct.list_head* %list3, %struct.list_head* %properties4) #7, !dbg !2523
  br label %if.end, !dbg !2524

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !2525
  ret %struct.acpi_device_properties* %9, !dbg !2526
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2527 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2530, metadata !DIExpression()), !dbg !2534
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2540, metadata !DIExpression()), !dbg !2541
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2542, metadata !DIExpression()), !dbg !2543
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2544, metadata !DIExpression()), !dbg !2545
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2546, metadata !DIExpression()), !dbg !2550
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2552, metadata !DIExpression()), !dbg !2556
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2558, metadata !DIExpression()), !dbg !2562
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2567, metadata !DIExpression()), !dbg !2568
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2569, metadata !DIExpression()), !dbg !2570
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2571, metadata !DIExpression()), !dbg !2572
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2573, metadata !DIExpression()), !dbg !2574
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2575, metadata !DIExpression()), !dbg !2576
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2577, metadata !DIExpression()), !dbg !2578
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2579, metadata !DIExpression()), !dbg !2580
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2581, metadata !DIExpression()), !dbg !2582
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2585, metadata !DIExpression()), !dbg !2586
  %0 = load i64, i64* %size.addr, align 8, !dbg !2587
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2588
  %or = or i32 %1, 256, !dbg !2589
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2590
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2591
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2592

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2593
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2594
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2595

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2596
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2597
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2598
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2599
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2576
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2600
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2601
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2602
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2603
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2604
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2605
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2606
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2606
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2606
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2606
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2606
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2607
  br label %kmalloc.exit, !dbg !2607

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2608
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2609
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2609
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2611

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2612
  br label %kmalloc_index.exit.i, !dbg !2612

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2613
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2615
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2616

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2617
  br label %kmalloc_index.exit.i, !dbg !2617

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2618
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2620
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2621

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2622
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2623
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2624

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2625
  br label %kmalloc_index.exit.i, !dbg !2625

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2626
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2628
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2629

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2630
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2631
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2632

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2633
  br label %kmalloc_index.exit.i, !dbg !2633

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2634
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2636
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2637

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2638
  br label %kmalloc_index.exit.i, !dbg !2638

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2639
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2641
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2642

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2643
  br label %kmalloc_index.exit.i, !dbg !2643

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2644
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2646
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2647

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2648
  br label %kmalloc_index.exit.i, !dbg !2648

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2649
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2651
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2652

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2653
  br label %kmalloc_index.exit.i, !dbg !2653

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2654
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2656
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2657

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2658
  br label %kmalloc_index.exit.i, !dbg !2658

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2659
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2661
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2662

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2663
  br label %kmalloc_index.exit.i, !dbg !2663

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2664
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2666
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2667

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2668
  br label %kmalloc_index.exit.i, !dbg !2668

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2669
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2671
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2672

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2673
  br label %kmalloc_index.exit.i, !dbg !2673

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2674
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2676
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2677

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2678
  br label %kmalloc_index.exit.i, !dbg !2678

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2679
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2681
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2682

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2683
  br label %kmalloc_index.exit.i, !dbg !2683

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2684
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2686
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2687

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2688
  br label %kmalloc_index.exit.i, !dbg !2688

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2689
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2691
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2692

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2693
  br label %kmalloc_index.exit.i, !dbg !2693

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2694
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2696
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2697

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2698
  br label %kmalloc_index.exit.i, !dbg !2698

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2699
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2701
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2702

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2703
  br label %kmalloc_index.exit.i, !dbg !2703

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2704
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2706
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2707

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2708
  br label %kmalloc_index.exit.i, !dbg !2708

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2709
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2711
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2712

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2713
  br label %kmalloc_index.exit.i, !dbg !2713

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2714
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2716
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2717

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2718
  br label %kmalloc_index.exit.i, !dbg !2718

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2719
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2721
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2722

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2723
  br label %kmalloc_index.exit.i, !dbg !2723

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2724
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2726
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2727

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2728
  br label %kmalloc_index.exit.i, !dbg !2728

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2729
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2731
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2732

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2733
  br label %kmalloc_index.exit.i, !dbg !2733

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2734
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2736
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2737

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2738
  br label %kmalloc_index.exit.i, !dbg !2738

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2739
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2741
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2742

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2743
  br label %kmalloc_index.exit.i, !dbg !2743

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2744
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2746
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2747

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2748
  br label %kmalloc_index.exit.i, !dbg !2748

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2749
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2751
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2752

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2753
  br label %kmalloc_index.exit.i, !dbg !2753

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2754, !srcloc !2757
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !2758, !srcloc !2761
  unreachable, !dbg !2762

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2763
  store i32 %45, i32* %index.i, align 4, !dbg !2764
  %46 = load i32, i32* %index.i, align 4, !dbg !2765
  %tobool.i = icmp ne i32 %46, 0, !dbg !2765
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2767

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2768
  br label %kmalloc.exit, !dbg !2768

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2769
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2770
  %and.i.i = and i32 %48, 17, !dbg !2770
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2770
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2770
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2770
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2770
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2772

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2773
  br label %kmalloc_type.exit.i, !dbg !2773

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2774
  %and2.i.i = and i32 %49, 1, !dbg !2775
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2774
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2774
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2774
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2776
  br label %kmalloc_type.exit.i, !dbg !2776

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2777
  %idxprom.i = zext i32 %51 to i64, !dbg !2778
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2778
  %52 = load i32, i32* %index.i, align 4, !dbg !2779
  %idxprom6.i = zext i32 %52 to i64, !dbg !2778
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2778
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2778
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2780
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2781
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2782
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2783
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2784
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2784
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2784
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2784
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2784
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2545
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2785
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2786
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2787
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2788
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2789
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2790
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2791
  store i8* %62, i8** %retval.i, align 8, !dbg !2792
  br label %kmalloc.exit, !dbg !2792

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2793
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2794
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2795
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2795
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2795
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2795
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2795
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2796
  br label %kmalloc.exit, !dbg !2796

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2797
  ret i8* %65, !dbg !2798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2799 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2803, metadata !DIExpression()), !dbg !2804
  br label %do.body, !dbg !2805

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2806

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2808

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2806

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2810
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2810
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2810
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2810
  br label %do.end3, !dbg !2810

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2806

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2812
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2813
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2814
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2815
  ret void, !dbg !2816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2817 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2820, metadata !DIExpression()), !dbg !2821
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2824
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2825
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2826
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2826
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2827
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !2828
  ret void, !dbg !2829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_init_properties(%struct.acpi_device* %adev) #0 !dbg !2830 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %hwid = alloca %struct.acpi_hardware_id*, align 8
  %status = alloca i32, align 4
  %acpi_of = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hardware_id*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp12 = alloca %struct.acpi_hardware_id*, align 8
  %tmp43 = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !2833, metadata !DIExpression()), !dbg !2839
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_init_properties.buf to i8*), i64 16, i1 false), !dbg !2839
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %hwid, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.declare(metadata i8* %acpi_of, metadata !2845, metadata !DIExpression()), !dbg !2846
  store i8 0, i8* %acpi_of, align 1, !dbg !2846
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2847
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !2848
  %properties = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 1, !dbg !2849
  call void @INIT_LIST_HEAD(%struct.list_head* %properties) #7, !dbg !2850
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2851
  %data1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 15, !dbg !2852
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data1, i32 0, i32 3, !dbg !2853
  call void @INIT_LIST_HEAD(%struct.list_head* %subnodes) #7, !dbg !2854
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2855
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !2857
  %4 = load i8*, i8** %handle, align 8, !dbg !2857
  %tobool = icmp ne i8* %4, null, !dbg !2855
  br i1 %tobool, label %if.end, label %if.then, !dbg !2858

if.then:                                          ; preds = %entry
  br label %if.end55, !dbg !2859

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2860, metadata !DIExpression()), !dbg !2863
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2863
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 10, !dbg !2863
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !2863
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ids, i32 0, i32 0, !dbg !2863
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2863
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2863
  store i8* %7, i8** %__mptr, align 8, !dbg !2863
  br label %do.body, !dbg !2863

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2864

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2863
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2863
  %9 = bitcast i8* %add.ptr to %struct.acpi_hardware_id*, !dbg !2863
  store %struct.acpi_hardware_id* %9, %struct.acpi_hardware_id** %tmp, align 8, !dbg !2864
  %10 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp, align 8, !dbg !2863
  store %struct.acpi_hardware_id* %10, %struct.acpi_hardware_id** %hwid, align 8, !dbg !2866
  br label %for.cond, !dbg !2866

for.cond:                                         ; preds = %do.end11, %do.end
  %11 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !2867
  %list = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %11, i32 0, i32 0, !dbg !2867
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2867
  %pnp2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 10, !dbg !2867
  %ids3 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp2, i32 0, i32 4, !dbg !2867
  %cmp = icmp eq %struct.list_head* %list, %ids3, !dbg !2867
  %lnot = xor i1 %cmp, true, !dbg !2867
  br i1 %lnot, label %for.body, label %for.end, !dbg !2866

for.body:                                         ; preds = %for.cond
  %13 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !2869
  %id = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %13, i32 0, i32 1, !dbg !2872
  %14 = load i8*, i8** %id, align 8, !dbg !2872
  %call = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2873
  %tobool4 = icmp ne i32 %call, 0, !dbg !2873
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2874

if.then5:                                         ; preds = %for.body
  store i8 1, i8* %acpi_of, align 1, !dbg !2875
  br label %for.end, !dbg !2877

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2878

for.inc:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !2879, metadata !DIExpression()), !dbg !2881
  %15 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %hwid, align 8, !dbg !2881
  %list8 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %15, i32 0, i32 0, !dbg !2881
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %list8, i32 0, i32 0, !dbg !2881
  %16 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !2881
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !2881
  store i8* %17, i8** %__mptr7, align 8, !dbg !2881
  br label %do.body10, !dbg !2881

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !2882

do.end11:                                         ; preds = %do.body10
  %18 = load i8*, i8** %__mptr7, align 8, !dbg !2881
  %add.ptr13 = getelementptr i8, i8* %18, i64 0, !dbg !2881
  %19 = bitcast i8* %add.ptr13 to %struct.acpi_hardware_id*, !dbg !2881
  store %struct.acpi_hardware_id* %19, %struct.acpi_hardware_id** %tmp12, align 8, !dbg !2882
  %20 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp12, align 8, !dbg !2881
  store %struct.acpi_hardware_id* %20, %struct.acpi_hardware_id** %hwid, align 8, !dbg !2867
  br label %for.cond, !dbg !2867, !llvm.loop !2884

for.end:                                          ; preds = %if.then5, %for.cond
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2886
  %handle14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1, !dbg !2887
  %22 = load i8*, i8** %handle14, align 8, !dbg !2887
  %call15 = call i32 @acpi_evaluate_object_typed(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buf, i32 4) #7, !dbg !2888
  store i32 %call15, i32* %status, align 4, !dbg !2889
  %23 = load i32, i32* %status, align 4, !dbg !2890
  %tobool16 = icmp ne i32 %23, 0, !dbg !2890
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2892

if.then17:                                        ; preds = %for.end
  br label %out, !dbg !2893

if.end18:                                         ; preds = %for.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2894
  %24 = load i8*, i8** %pointer, align 8, !dbg !2894
  %25 = bitcast i8* %24 to %union.acpi_object*, !dbg !2896
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2897
  %data19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 15, !dbg !2898
  %call20 = call zeroext i1 @acpi_extract_properties(%union.acpi_object* %25, %struct.acpi_device_data* %data19) #7, !dbg !2899
  br i1 %call20, label %if.then21, label %if.end28, !dbg !2900

if.then21:                                        ; preds = %if.end18
  %pointer22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2901
  %27 = load i8*, i8** %pointer22, align 8, !dbg !2901
  %28 = bitcast i8* %27 to %union.acpi_object*, !dbg !2903
  %29 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2904
  %data23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 15, !dbg !2905
  %pointer24 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data23, i32 0, i32 0, !dbg !2906
  store %union.acpi_object* %28, %union.acpi_object** %pointer24, align 8, !dbg !2907
  %30 = load i8, i8* %acpi_of, align 1, !dbg !2908
  %tobool25 = trunc i8 %30 to i1, !dbg !2908
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2910

if.then26:                                        ; preds = %if.then21
  %31 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2911
  call void @acpi_init_of_compatible(%struct.acpi_device* %31) #7, !dbg !2912
  br label %if.end27, !dbg !2912

if.end27:                                         ; preds = %if.then26, %if.then21
  br label %if.end28, !dbg !2913

if.end28:                                         ; preds = %if.end27, %if.end18
  %32 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2914
  %handle29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 1, !dbg !2916
  %33 = load i8*, i8** %handle29, align 8, !dbg !2916
  %pointer30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2917
  %34 = load i8*, i8** %pointer30, align 8, !dbg !2917
  %35 = bitcast i8* %34 to %union.acpi_object*, !dbg !2918
  %36 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2919
  %data31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 15, !dbg !2920
  %37 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2921
  %call32 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %37) #7, !dbg !2922
  %call33 = call zeroext i1 @acpi_enumerate_nondev_subnodes(i8* %33, %union.acpi_object* %35, %struct.acpi_device_data* %data31, %struct.fwnode_handle* %call32) #7, !dbg !2923
  br i1 %call33, label %if.then34, label %if.end38, !dbg !2924

if.then34:                                        ; preds = %if.end28
  %pointer35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2925
  %38 = load i8*, i8** %pointer35, align 8, !dbg !2925
  %39 = bitcast i8* %38 to %union.acpi_object*, !dbg !2926
  %40 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2927
  %data36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 15, !dbg !2928
  %pointer37 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data36, i32 0, i32 0, !dbg !2929
  store %union.acpi_object* %39, %union.acpi_object** %pointer37, align 8, !dbg !2930
  br label %if.end38, !dbg !2927

if.end38:                                         ; preds = %if.then34, %if.end28
  %41 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2931
  %data39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 15, !dbg !2933
  %pointer40 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data39, i32 0, i32 0, !dbg !2934
  %42 = load %union.acpi_object*, %union.acpi_object** %pointer40, align 8, !dbg !2934
  %tobool41 = icmp ne %union.acpi_object* %42, null, !dbg !2931
  br i1 %tobool41, label %if.end45, label %if.then42, !dbg !2935

if.then42:                                        ; preds = %if.end38
  store i32 0, i32* %tmp43, align 4, !dbg !2936
  %43 = load i32, i32* %tmp43, align 4, !dbg !2940
  %pointer44 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2941
  %44 = load i8*, i8** %pointer44, align 8, !dbg !2941
  call void @acpi_os_free(i8* %44) #7, !dbg !2941
  br label %if.end45, !dbg !2942

if.end45:                                         ; preds = %if.then42, %if.end38
  br label %out, !dbg !2934

out:                                              ; preds = %if.end45, %if.then17
  call void @llvm.dbg.label(metadata !2943), !dbg !2944
  %45 = load i8, i8* %acpi_of, align 1, !dbg !2945
  %tobool46 = trunc i8 %45 to i1, !dbg !2945
  br i1 %tobool46, label %land.lhs.true, label %if.end50, !dbg !2947

land.lhs.true:                                    ; preds = %out
  %46 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2948
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 9, !dbg !2949
  %47 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !2950
  %bf.load = load i32, i32* %47, align 4, !dbg !2950
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !2950
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2950
  %tobool47 = icmp ne i32 %bf.clear, 0, !dbg !2948
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !2951

if.then48:                                        ; preds = %land.lhs.true
  %48 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2952
  %handle49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 1, !dbg !2952
  %49 = load i8*, i8** %handle49, align 8, !dbg !2952
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !2952
  br label %if.end50, !dbg !2952

if.end50:                                         ; preds = %if.then48, %land.lhs.true, %out
  %50 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2953
  %data51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 15, !dbg !2955
  %pointer52 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data51, i32 0, i32 0, !dbg !2956
  %51 = load %union.acpi_object*, %union.acpi_object** %pointer52, align 8, !dbg !2956
  %tobool53 = icmp ne %union.acpi_object* %51, null, !dbg !2953
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !2957

if.then54:                                        ; preds = %if.end50
  %52 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2958
  call void @acpi_extract_apple_properties(%struct.acpi_device* %52) #7, !dbg !2959
  br label %if.end55, !dbg !2959

if.end55:                                         ; preds = %if.then, %if.then54, %if.end50
  ret void, !dbg !2960
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object_typed(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_extract_properties(%union.acpi_object* %desc, %struct.acpi_device_data* %data) #0 !dbg !2961 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca %union.acpi_object*, align 8
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %i = alloca i32, align 4
  %guid = alloca %union.acpi_object*, align 8
  %properties = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %desc, %union.acpi_object** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %desc.addr, metadata !2964, metadata !DIExpression()), !dbg !2965
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2968, metadata !DIExpression()), !dbg !2969
  %0 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !2970
  %package = bitcast %union.acpi_object* %0 to %struct.anon.2*, !dbg !2972
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !2973
  %1 = load i32, i32* %count, align 4, !dbg !2973
  %rem = urem i32 %1, 2, !dbg !2974
  %tobool = icmp ne i32 %rem, 0, !dbg !2974
  br i1 %tobool, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !2976
  br label %return, !dbg !2976

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2977
  br label %for.cond, !dbg !2979

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !2980
  %3 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !2982
  %package1 = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !2983
  %count2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package1, i32 0, i32 1, !dbg !2984
  %4 = load i32, i32* %count2, align 4, !dbg !2984
  %cmp = icmp ult i32 %2, %4, !dbg !2985
  br i1 %cmp, label %for.body, label %for.end, !dbg !2986

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %guid, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.declare(metadata %union.acpi_object** %properties, metadata !2990, metadata !DIExpression()), !dbg !2991
  %5 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !2992
  %package3 = bitcast %union.acpi_object* %5 to %struct.anon.2*, !dbg !2993
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package3, i32 0, i32 2, !dbg !2994
  %6 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2994
  %7 = load i32, i32* %i, align 4, !dbg !2995
  %idxprom = sext i32 %7 to i64, !dbg !2992
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %6, i64 %idxprom, !dbg !2992
  store %union.acpi_object* %arrayidx, %union.acpi_object** %guid, align 8, !dbg !2996
  %8 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !2997
  %package4 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !2998
  %elements5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package4, i32 0, i32 2, !dbg !2999
  %9 = load %union.acpi_object*, %union.acpi_object** %elements5, align 8, !dbg !2999
  %10 = load i32, i32* %i, align 4, !dbg !3000
  %add = add i32 %10, 1, !dbg !3001
  %idxprom6 = sext i32 %add to i64, !dbg !2997
  %arrayidx7 = getelementptr %union.acpi_object, %union.acpi_object* %9, i64 %idxprom6, !dbg !2997
  store %union.acpi_object* %arrayidx7, %union.acpi_object** %properties, align 8, !dbg !3002
  %11 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3003
  %type = bitcast %union.acpi_object* %11 to i32*, !dbg !3005
  %12 = load i32, i32* %type, align 8, !dbg !3005
  %cmp8 = icmp ne i32 %12, 3, !dbg !3006
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !3007

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3008
  %buffer = bitcast %union.acpi_object* %13 to %struct.anon.1*, !dbg !3009
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !3010
  %14 = load i32, i32* %length, align 4, !dbg !3010
  %cmp9 = icmp ne i32 %14, 16, !dbg !3011
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10, !dbg !3012

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %15 = load %union.acpi_object*, %union.acpi_object** %properties, align 8, !dbg !3013
  %type11 = bitcast %union.acpi_object* %15 to i32*, !dbg !3014
  %16 = load i32, i32* %type11, align 8, !dbg !3014
  %cmp12 = icmp ne i32 %16, 4, !dbg !3015
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3016

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %for.body
  br label %for.end, !dbg !3017

if.end14:                                         ; preds = %lor.lhs.false10
  %17 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3018
  %buffer15 = bitcast %union.acpi_object* %17 to %struct.anon.1*, !dbg !3020
  %pointer = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer15, i32 0, i32 2, !dbg !3021
  %18 = load i8*, i8** %pointer, align 8, !dbg !3021
  %19 = bitcast i8* %18 to %struct.guid_t*, !dbg !3022
  %call = call zeroext i1 @acpi_is_property_guid(%struct.guid_t* %19) #7, !dbg !3023
  br i1 %call, label %if.end17, label %if.then16, !dbg !3024

if.then16:                                        ; preds = %if.end14
  br label %for.inc, !dbg !3025

if.end17:                                         ; preds = %if.end14
  %20 = load %union.acpi_object*, %union.acpi_object** %properties, align 8, !dbg !3026
  %call18 = call zeroext i1 @acpi_properties_format_valid(%union.acpi_object* %20) #7, !dbg !3028
  br i1 %call18, label %if.end20, label %if.then19, !dbg !3029

if.then19:                                        ; preds = %if.end17
  br label %for.inc, !dbg !3030

if.end20:                                         ; preds = %if.end17
  %21 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3031
  %22 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3032
  %buffer21 = bitcast %union.acpi_object* %22 to %struct.anon.1*, !dbg !3033
  %pointer22 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer21, i32 0, i32 2, !dbg !3034
  %23 = load i8*, i8** %pointer22, align 8, !dbg !3034
  %24 = bitcast i8* %23 to %struct.guid_t*, !dbg !3035
  %25 = load %union.acpi_object*, %union.acpi_object** %properties, align 8, !dbg !3036
  %call23 = call %struct.acpi_device_properties* @acpi_data_add_props(%struct.acpi_device_data* %21, %struct.guid_t* %24, %union.acpi_object* %25) #7, !dbg !3037
  br label %for.inc, !dbg !3038

for.inc:                                          ; preds = %if.end20, %if.then19, %if.then16
  %26 = load i32, i32* %i, align 4, !dbg !3039
  %add24 = add i32 %26, 2, !dbg !3039
  store i32 %add24, i32* %i, align 4, !dbg !3039
  br label %for.cond, !dbg !3040, !llvm.loop !3041

for.end:                                          ; preds = %if.then13, %for.cond
  %27 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3043
  %properties25 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %27, i32 0, i32 1, !dbg !3044
  %call26 = call i32 @list_empty(%struct.list_head* %properties25) #7, !dbg !3045
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3046
  %lnot = xor i1 %tobool27, true, !dbg !3046
  store i1 %lnot, i1* %retval, align 1, !dbg !3047
  br label %return, !dbg !3047

return:                                           ; preds = %for.end, %if.then
  %28 = load i1, i1* %retval, align 1, !dbg !3048
  ret i1 %28, !dbg !3048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_init_of_compatible(%struct.acpi_device* %adev) #0 !dbg !3049 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %of_compatible = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata %union.acpi_object** %of_compatible, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3054, metadata !DIExpression()), !dbg !3055
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3056
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 15, !dbg !3057
  %call = call i32 @acpi_data_get_property_array(%struct.acpi_device_data* %data, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 2, %union.acpi_object** %of_compatible) #7, !dbg !3058
  store i32 %call, i32* %ret, align 4, !dbg !3059
  %1 = load i32, i32* %ret, align 4, !dbg !3060
  %tobool = icmp ne i32 %1, 0, !dbg !3060
  br i1 %tobool, label %if.then, label %if.end9, !dbg !3062

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3063
  %call1 = call i32 @acpi_dev_get_property(%struct.acpi_device* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 2, %union.acpi_object** %of_compatible) #7, !dbg !3065
  store i32 %call1, i32* %ret, align 4, !dbg !3066
  %3 = load i32, i32* %ret, align 4, !dbg !3067
  %tobool2 = icmp ne i32 %3, 0, !dbg !3067
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !3069

if.then3:                                         ; preds = %if.then
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3070
  %parent = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 3, !dbg !3073
  %5 = load %struct.acpi_device*, %struct.acpi_device** %parent, align 8, !dbg !3073
  %tobool4 = icmp ne %struct.acpi_device* %5, null, !dbg !3070
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !3074

land.lhs.true:                                    ; preds = %if.then3
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3075
  %parent5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 3, !dbg !3076
  %7 = load %struct.acpi_device*, %struct.acpi_device** %parent5, align 8, !dbg !3076
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 9, !dbg !3077
  %8 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3078
  %bf.load = load i32, i32* %8, align 4, !dbg !3078
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !3078
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3078
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !3075
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !3079

if.then7:                                         ; preds = %land.lhs.true
  br label %out, !dbg !3080

if.end:                                           ; preds = %land.lhs.true, %if.then3
  br label %return, !dbg !3081

if.end8:                                          ; preds = %if.then
  br label %if.end9, !dbg !3082

if.end9:                                          ; preds = %if.end8, %entry
  %9 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !3083
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3084
  %data10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 15, !dbg !3085
  %of_compatible11 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data10, i32 0, i32 2, !dbg !3086
  store %union.acpi_object* %9, %union.acpi_object** %of_compatible11, align 8, !dbg !3087
  br label %out, !dbg !3084

out:                                              ; preds = %if.end9, %if.then7
  call void @llvm.dbg.label(metadata !3088), !dbg !3089
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3090
  %flags12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 9, !dbg !3091
  %12 = bitcast %struct.acpi_device_flags* %flags12 to i32*, !dbg !3092
  %bf.load13 = load i32, i32* %12, align 4, !dbg !3093
  %bf.clear14 = and i32 %bf.load13, -513, !dbg !3093
  %bf.set = or i32 %bf.clear14, 512, !dbg !3093
  store i32 %bf.set, i32* %12, align 4, !dbg !3093
  br label %return, !dbg !3094

return:                                           ; preds = %out, %if.end
  ret void, !dbg !3094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_enumerate_nondev_subnodes(i8* %scope, %union.acpi_object* %desc, %struct.acpi_device_data* %data, %struct.fwnode_handle* %parent) #0 !dbg !3095 {
entry:
  %retval = alloca i1, align 1
  %scope.addr = alloca i8*, align 8
  %desc.addr = alloca %union.acpi_object*, align 8
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %i = alloca i32, align 4
  %guid = alloca %union.acpi_object*, align 8
  %links = alloca %union.acpi_object*, align 8
  store i8* %scope, i8** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %scope.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  store %union.acpi_object* %desc, %union.acpi_object** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %desc.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i32 0, i32* %i, align 4, !dbg !3108
  br label %for.cond, !dbg !3110

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3111
  %1 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !3113
  %package = bitcast %union.acpi_object* %1 to %struct.anon.2*, !dbg !3114
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !3115
  %2 = load i32, i32* %count, align 4, !dbg !3115
  %cmp = icmp ult i32 %0, %2, !dbg !3116
  br i1 %cmp, label %for.body, label %for.end, !dbg !3117

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %guid, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.declare(metadata %union.acpi_object** %links, metadata !3121, metadata !DIExpression()), !dbg !3122
  %3 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !3123
  %package1 = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !3124
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package1, i32 0, i32 2, !dbg !3125
  %4 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3125
  %5 = load i32, i32* %i, align 4, !dbg !3126
  %idxprom = sext i32 %5 to i64, !dbg !3123
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %4, i64 %idxprom, !dbg !3123
  store %union.acpi_object* %arrayidx, %union.acpi_object** %guid, align 8, !dbg !3127
  %6 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !3128
  %package2 = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !3129
  %elements3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 2, !dbg !3130
  %7 = load %union.acpi_object*, %union.acpi_object** %elements3, align 8, !dbg !3130
  %8 = load i32, i32* %i, align 4, !dbg !3131
  %add = add i32 %8, 1, !dbg !3132
  %idxprom4 = sext i32 %add to i64, !dbg !3128
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %7, i64 %idxprom4, !dbg !3128
  store %union.acpi_object* %arrayidx5, %union.acpi_object** %links, align 8, !dbg !3133
  %9 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3134
  %type = bitcast %union.acpi_object* %9 to i32*, !dbg !3136
  %10 = load i32, i32* %type, align 8, !dbg !3136
  %cmp6 = icmp ne i32 %10, 3, !dbg !3137
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !3138

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3139
  %buffer = bitcast %union.acpi_object* %11 to %struct.anon.1*, !dbg !3140
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !3141
  %12 = load i32, i32* %length, align 4, !dbg !3141
  %cmp7 = icmp ne i32 %12, 16, !dbg !3142
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !3143

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %13 = load %union.acpi_object*, %union.acpi_object** %links, align 8, !dbg !3144
  %type9 = bitcast %union.acpi_object* %13 to i32*, !dbg !3145
  %14 = load i32, i32* %type9, align 8, !dbg !3145
  %cmp10 = icmp ne i32 %14, 4, !dbg !3146
  br i1 %cmp10, label %if.then, label %if.end, !dbg !3147

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false, %for.body
  br label %for.end, !dbg !3148

if.end:                                           ; preds = %lor.lhs.false8
  %15 = load %union.acpi_object*, %union.acpi_object** %guid, align 8, !dbg !3149
  %buffer11 = bitcast %union.acpi_object* %15 to %struct.anon.1*, !dbg !3151
  %pointer = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer11, i32 0, i32 2, !dbg !3152
  %16 = load i8*, i8** %pointer, align 8, !dbg !3152
  %17 = bitcast i8* %16 to %struct.guid_t*, !dbg !3153
  %call = call zeroext i1 @guid_equal(%struct.guid_t* %17, %struct.guid_t* @ads_guid) #7, !dbg !3154
  br i1 %call, label %if.end13, label %if.then12, !dbg !3155

if.then12:                                        ; preds = %if.end
  br label %for.inc, !dbg !3156

if.end13:                                         ; preds = %if.end
  %18 = load i8*, i8** %scope.addr, align 8, !dbg !3157
  %19 = load %union.acpi_object*, %union.acpi_object** %links, align 8, !dbg !3158
  %20 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3159
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %20, i32 0, i32 3, !dbg !3160
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3161
  %call14 = call i32 @acpi_add_nondev_subnodes(i8* %18, %union.acpi_object* %19, %struct.list_head* %subnodes, %struct.fwnode_handle* %21) #7, !dbg !3162
  %tobool = icmp ne i32 %call14, 0, !dbg !3162
  store i1 %tobool, i1* %retval, align 1, !dbg !3163
  br label %return, !dbg !3163

for.inc:                                          ; preds = %if.then12
  %22 = load i32, i32* %i, align 4, !dbg !3164
  %add15 = add i32 %22, 2, !dbg !3164
  store i32 %add15, i32* %i, align 4, !dbg !3164
  br label %for.cond, !dbg !3165, !llvm.loop !3166

for.end:                                          ; preds = %if.then, %for.cond
  store i1 false, i1* %retval, align 1, !dbg !3168
  br label %return, !dbg !3168

return:                                           ; preds = %for.end, %if.end13
  %23 = load i1, i1* %retval, align 1, !dbg !3169
  ret i1 %23, !dbg !3169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !3170 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3175
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !3176
  ret %struct.fwnode_handle* %fwnode, !dbg !3177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !3178 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !3182
  call void @kfree(i8* %0) #7, !dbg !3183
  ret void, !dbg !3184
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @acpi_extract_apple_properties(%struct.acpi_device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_free_properties(%struct.acpi_device* %adev) #0 !dbg !3185 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %props = alloca %struct.acpi_device_properties*, align 8
  %tmp = alloca %struct.acpi_device_properties*, align 8
  %__mptr = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_device_properties*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.acpi_device_properties*, align 8
  %__mptr17 = alloca i8*, align 8
  %tmp22 = alloca %struct.acpi_device_properties*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.acpi_device_properties** %props, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.declare(metadata %struct.acpi_device_properties** %tmp, metadata !3190, metadata !DIExpression()), !dbg !3191
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3192
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 15, !dbg !3193
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 3, !dbg !3194
  call void @acpi_destroy_nondev_subnodes(%struct.list_head* %subnodes) #7, !dbg !3195
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3196
  %data1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !3196
  %pointer = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data1, i32 0, i32 0, !dbg !3196
  %2 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !3196
  %3 = bitcast %union.acpi_object* %2 to i8*, !dbg !3196
  call void @acpi_os_free(i8* %3) #7, !dbg !3196
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3197
  %data2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 15, !dbg !3198
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data2, i32 0, i32 2, !dbg !3199
  store %union.acpi_object* null, %union.acpi_object** %of_compatible, align 8, !dbg !3200
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3201
  %data3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 15, !dbg !3202
  %pointer4 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data3, i32 0, i32 0, !dbg !3203
  store %union.acpi_object* null, %union.acpi_object** %pointer4, align 8, !dbg !3204
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3205, metadata !DIExpression()), !dbg !3208
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3208
  %data5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 15, !dbg !3208
  %properties = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data5, i32 0, i32 1, !dbg !3208
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %properties, i32 0, i32 0, !dbg !3208
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3208
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !3208
  store i8* %8, i8** %__mptr, align 8, !dbg !3208
  br label %do.body, !dbg !3208

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3209

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !3208
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !3208
  %10 = bitcast i8* %add.ptr to %struct.acpi_device_properties*, !dbg !3208
  store %struct.acpi_device_properties* %10, %struct.acpi_device_properties** %tmp6, align 8, !dbg !3209
  %11 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp6, align 8, !dbg !3208
  store %struct.acpi_device_properties* %11, %struct.acpi_device_properties** %props, align 8, !dbg !3211
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !3212, metadata !DIExpression()), !dbg !3214
  %12 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3214
  %list = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %12, i32 0, i32 2, !dbg !3214
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !3214
  %13 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !3214
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !3214
  store i8* %14, i8** %__mptr7, align 8, !dbg !3214
  br label %do.body9, !dbg !3214

do.body9:                                         ; preds = %do.end
  br label %do.end10, !dbg !3215

do.end10:                                         ; preds = %do.body9
  %15 = load i8*, i8** %__mptr7, align 8, !dbg !3214
  %add.ptr12 = getelementptr i8, i8* %15, i64 -16, !dbg !3214
  %16 = bitcast i8* %add.ptr12 to %struct.acpi_device_properties*, !dbg !3214
  store %struct.acpi_device_properties* %16, %struct.acpi_device_properties** %tmp11, align 8, !dbg !3215
  %17 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp11, align 8, !dbg !3214
  store %struct.acpi_device_properties* %17, %struct.acpi_device_properties** %tmp, align 8, !dbg !3211
  br label %for.cond, !dbg !3211

for.cond:                                         ; preds = %do.end21, %do.end10
  %18 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3217
  %list13 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %18, i32 0, i32 2, !dbg !3217
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3217
  %data14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 15, !dbg !3217
  %properties15 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data14, i32 0, i32 1, !dbg !3217
  %cmp = icmp eq %struct.list_head* %list13, %properties15, !dbg !3217
  %lnot = xor i1 %cmp, true, !dbg !3217
  br i1 %lnot, label %for.body, label %for.end, !dbg !3211

for.body:                                         ; preds = %for.cond
  %20 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3219
  %list16 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %20, i32 0, i32 2, !dbg !3221
  call void @list_del(%struct.list_head* %list16) #7, !dbg !3222
  %21 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3223
  %22 = bitcast %struct.acpi_device_properties* %21 to i8*, !dbg !3223
  call void @kfree(i8* %22) #7, !dbg !3224
  br label %for.inc, !dbg !3225

for.inc:                                          ; preds = %for.body
  %23 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp, align 8, !dbg !3217
  store %struct.acpi_device_properties* %23, %struct.acpi_device_properties** %props, align 8, !dbg !3217
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !3226, metadata !DIExpression()), !dbg !3228
  %24 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp, align 8, !dbg !3228
  %list18 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %24, i32 0, i32 2, !dbg !3228
  %next19 = getelementptr inbounds %struct.list_head, %struct.list_head* %list18, i32 0, i32 0, !dbg !3228
  %25 = load %struct.list_head*, %struct.list_head** %next19, align 8, !dbg !3228
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !3228
  store i8* %26, i8** %__mptr17, align 8, !dbg !3228
  br label %do.body20, !dbg !3228

do.body20:                                        ; preds = %for.inc
  br label %do.end21, !dbg !3229

do.end21:                                         ; preds = %do.body20
  %27 = load i8*, i8** %__mptr17, align 8, !dbg !3228
  %add.ptr23 = getelementptr i8, i8* %27, i64 -16, !dbg !3228
  %28 = bitcast i8* %add.ptr23 to %struct.acpi_device_properties*, !dbg !3228
  store %struct.acpi_device_properties* %28, %struct.acpi_device_properties** %tmp22, align 8, !dbg !3229
  %29 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp22, align 8, !dbg !3228
  store %struct.acpi_device_properties* %29, %struct.acpi_device_properties** %tmp, align 8, !dbg !3217
  br label %for.cond, !dbg !3217, !llvm.loop !3231

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_destroy_nondev_subnodes(%struct.list_head* %list) #0 !dbg !3234 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %next = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_data_node*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.acpi_data_node*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %next, metadata !3239, metadata !DIExpression()), !dbg !3240
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3241
  %call = call i32 @list_empty(%struct.list_head* %0) #7, !dbg !3243
  %tobool = icmp ne i32 %call, 0, !dbg !3243
  br i1 %tobool, label %if.then, label %if.end, !dbg !3244

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !3245

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3246, metadata !DIExpression()), !dbg !3249
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3249
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3249
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3249
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !3249
  store i8* %3, i8** %__mptr, align 8, !dbg !3249
  br label %do.body, !dbg !3249

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3250

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3249
  %add.ptr = getelementptr i8, i8* %4, i64 -96, !dbg !3249
  %5 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !3249
  store %struct.acpi_data_node* %5, %struct.acpi_data_node** %tmp, align 8, !dbg !3250
  %6 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !3249
  store %struct.acpi_data_node* %6, %struct.acpi_data_node** %dn, align 8, !dbg !3252
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3253, metadata !DIExpression()), !dbg !3255
  %7 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3255
  %sibling = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %7, i32 0, i32 5, !dbg !3255
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %sibling, i32 0, i32 1, !dbg !3255
  %8 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !3255
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !3255
  store i8* %9, i8** %__mptr1, align 8, !dbg !3255
  br label %do.body3, !dbg !3255

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3256

do.end4:                                          ; preds = %do.body3
  %10 = load i8*, i8** %__mptr1, align 8, !dbg !3255
  %add.ptr6 = getelementptr i8, i8* %10, i64 -96, !dbg !3255
  %11 = bitcast i8* %add.ptr6 to %struct.acpi_data_node*, !dbg !3255
  store %struct.acpi_data_node* %11, %struct.acpi_data_node** %tmp5, align 8, !dbg !3256
  %12 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp5, align 8, !dbg !3255
  store %struct.acpi_data_node* %12, %struct.acpi_data_node** %next, align 8, !dbg !3252
  br label %for.cond, !dbg !3252

for.cond:                                         ; preds = %do.end14, %do.end4
  %13 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3258
  %sibling7 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %13, i32 0, i32 5, !dbg !3258
  %14 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3258
  %cmp = icmp eq %struct.list_head* %sibling7, %14, !dbg !3258
  %lnot = xor i1 %cmp, true, !dbg !3258
  br i1 %lnot, label %for.body, label %for.end, !dbg !3252

for.body:                                         ; preds = %for.cond
  %15 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3260
  %data = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %15, i32 0, i32 4, !dbg !3262
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 3, !dbg !3263
  call void @acpi_destroy_nondev_subnodes(%struct.list_head* %subnodes) #7, !dbg !3264
  %16 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3265
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %16, i32 0, i32 7, !dbg !3266
  call void @wait_for_completion(%struct.completion* %kobj_done) #7, !dbg !3267
  %17 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3268
  %sibling8 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %17, i32 0, i32 5, !dbg !3269
  call void @list_del(%struct.list_head* %sibling8) #7, !dbg !3270
  %18 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3271
  %data9 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %18, i32 0, i32 4, !dbg !3271
  %pointer = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data9, i32 0, i32 0, !dbg !3271
  %19 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !3271
  %20 = bitcast %union.acpi_object* %19 to i8*, !dbg !3271
  call void @acpi_os_free(i8* %20) #7, !dbg !3271
  %21 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3272
  %22 = bitcast %struct.acpi_data_node* %21 to i8*, !dbg !3272
  call void @kfree(i8* %22) #7, !dbg !3273
  br label %for.inc, !dbg !3274

for.inc:                                          ; preds = %for.body
  %23 = load %struct.acpi_data_node*, %struct.acpi_data_node** %next, align 8, !dbg !3258
  store %struct.acpi_data_node* %23, %struct.acpi_data_node** %dn, align 8, !dbg !3258
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !3275, metadata !DIExpression()), !dbg !3277
  %24 = load %struct.acpi_data_node*, %struct.acpi_data_node** %next, align 8, !dbg !3277
  %sibling11 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %24, i32 0, i32 5, !dbg !3277
  %prev12 = getelementptr inbounds %struct.list_head, %struct.list_head* %sibling11, i32 0, i32 1, !dbg !3277
  %25 = load %struct.list_head*, %struct.list_head** %prev12, align 8, !dbg !3277
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !3277
  store i8* %26, i8** %__mptr10, align 8, !dbg !3277
  br label %do.body13, !dbg !3277

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !3278

do.end14:                                         ; preds = %do.body13
  %27 = load i8*, i8** %__mptr10, align 8, !dbg !3277
  %add.ptr16 = getelementptr i8, i8* %27, i64 -96, !dbg !3277
  %28 = bitcast i8* %add.ptr16 to %struct.acpi_data_node*, !dbg !3277
  store %struct.acpi_data_node* %28, %struct.acpi_data_node** %tmp15, align 8, !dbg !3278
  %29 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp15, align 8, !dbg !3277
  store %struct.acpi_data_node* %29, %struct.acpi_data_node** %next, align 8, !dbg !3258
  br label %for.cond, !dbg !3258, !llvm.loop !3280

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3283 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3286
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !3287
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3288
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3289
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3290
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3291
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3292
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3293
  ret void, !dbg !3294
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_get_property(%struct.acpi_device* %adev, i8* %name, i32 %type, %union.acpi_object** %obj) #0 !dbg !3295 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca %union.acpi_object**, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3300, metadata !DIExpression()), !dbg !3301
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3302, metadata !DIExpression()), !dbg !3303
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store %union.acpi_object** %obj, %union.acpi_object*** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object*** %obj.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3308
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3308
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3308

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3309
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !3310
  %2 = load i8*, i8** %name.addr, align 8, !dbg !3311
  %3 = load i32, i32* %type.addr, align 4, !dbg !3312
  %4 = load %union.acpi_object**, %union.acpi_object*** %obj.addr, align 8, !dbg !3313
  %call = call i32 @acpi_data_get_property(%struct.acpi_device_data* %data, i8* %2, i32 %3, %union.acpi_object** %4) #7, !dbg !3314
  br label %cond.end, !dbg !3308

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3308

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -22, %cond.false ], !dbg !3308
  ret i32 %cond, !dbg !3315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_data_get_property(%struct.acpi_device_data* %data, i8* %name, i32 %type, %union.acpi_object** %obj) #0 !dbg !3316 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca %union.acpi_object**, align 8
  %props = alloca %struct.acpi_device_properties*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device_properties*, align 8
  %properties9 = alloca %union.acpi_object*, align 8
  %i = alloca i32, align 4
  %propname = alloca %union.acpi_object*, align 8
  %propvalue = alloca %union.acpi_object*, align 8
  %property = alloca %union.acpi_object*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.acpi_device_properties*, align 8
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3323, metadata !DIExpression()), !dbg !3324
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3325, metadata !DIExpression()), !dbg !3326
  store %union.acpi_object** %obj, %union.acpi_object*** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object*** %obj.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.declare(metadata %struct.acpi_device_properties** %props, metadata !3329, metadata !DIExpression()), !dbg !3330
  %0 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3331
  %tobool = icmp ne %struct.acpi_device_data* %0, null, !dbg !3331
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3333

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8, !dbg !3334
  %tobool1 = icmp ne i8* %1, null, !dbg !3334
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3335

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3336
  br label %return, !dbg !3336

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3337
  %pointer = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %2, i32 0, i32 0, !dbg !3339
  %3 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !3339
  %tobool2 = icmp ne %union.acpi_object* %3, null, !dbg !3337
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !3340

lor.lhs.false3:                                   ; preds = %if.end
  %4 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3341
  %properties = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %4, i32 0, i32 1, !dbg !3342
  %call = call i32 @list_empty(%struct.list_head* %properties) #7, !dbg !3343
  %tobool4 = icmp ne i32 %call, 0, !dbg !3343
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3344

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3345
  br label %return, !dbg !3345

if.end6:                                          ; preds = %lor.lhs.false3
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3346, metadata !DIExpression()), !dbg !3349
  %5 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3349
  %properties7 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %5, i32 0, i32 1, !dbg !3349
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %properties7, i32 0, i32 0, !dbg !3349
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3349
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !3349
  store i8* %7, i8** %__mptr, align 8, !dbg !3349
  br label %do.body, !dbg !3349

do.body:                                          ; preds = %if.end6
  br label %do.end, !dbg !3350

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !3349
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !3349
  %9 = bitcast i8* %add.ptr to %struct.acpi_device_properties*, !dbg !3349
  store %struct.acpi_device_properties* %9, %struct.acpi_device_properties** %tmp, align 8, !dbg !3350
  %10 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp, align 8, !dbg !3349
  store %struct.acpi_device_properties* %10, %struct.acpi_device_properties** %props, align 8, !dbg !3352
  br label %for.cond, !dbg !3352

for.cond:                                         ; preds = %do.end39, %do.end
  %11 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3353
  %list = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %11, i32 0, i32 2, !dbg !3353
  %12 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3353
  %properties8 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %12, i32 0, i32 1, !dbg !3353
  %cmp = icmp eq %struct.list_head* %list, %properties8, !dbg !3353
  %lnot = xor i1 %cmp, true, !dbg !3353
  br i1 %lnot, label %for.body, label %for.end42, !dbg !3352

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %properties9, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3358, metadata !DIExpression()), !dbg !3359
  %13 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3360
  %properties10 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %13, i32 0, i32 1, !dbg !3361
  %14 = load %union.acpi_object*, %union.acpi_object** %properties10, align 8, !dbg !3361
  store %union.acpi_object* %14, %union.acpi_object** %properties9, align 8, !dbg !3362
  store i32 0, i32* %i, align 4, !dbg !3363
  br label %for.cond11, !dbg !3365

for.cond11:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %i, align 4, !dbg !3366
  %16 = load %union.acpi_object*, %union.acpi_object** %properties9, align 8, !dbg !3368
  %package = bitcast %union.acpi_object* %16 to %struct.anon.2*, !dbg !3369
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !3370
  %17 = load i32, i32* %count, align 4, !dbg !3370
  %cmp12 = icmp ult i32 %15, %17, !dbg !3371
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !3372

for.body13:                                       ; preds = %for.cond11
  call void @llvm.dbg.declare(metadata %union.acpi_object** %propname, metadata !3373, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.declare(metadata %union.acpi_object** %propvalue, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata %union.acpi_object** %property, metadata !3378, metadata !DIExpression()), !dbg !3379
  %18 = load %union.acpi_object*, %union.acpi_object** %properties9, align 8, !dbg !3380
  %package14 = bitcast %union.acpi_object* %18 to %struct.anon.2*, !dbg !3381
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package14, i32 0, i32 2, !dbg !3382
  %19 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3382
  %20 = load i32, i32* %i, align 4, !dbg !3383
  %idxprom = zext i32 %20 to i64, !dbg !3380
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %19, i64 %idxprom, !dbg !3380
  store %union.acpi_object* %arrayidx, %union.acpi_object** %property, align 8, !dbg !3384
  %21 = load %union.acpi_object*, %union.acpi_object** %property, align 8, !dbg !3385
  %package15 = bitcast %union.acpi_object* %21 to %struct.anon.2*, !dbg !3386
  %elements16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package15, i32 0, i32 2, !dbg !3387
  %22 = load %union.acpi_object*, %union.acpi_object** %elements16, align 8, !dbg !3387
  %arrayidx17 = getelementptr %union.acpi_object, %union.acpi_object* %22, i64 0, !dbg !3385
  store %union.acpi_object* %arrayidx17, %union.acpi_object** %propname, align 8, !dbg !3388
  %23 = load %union.acpi_object*, %union.acpi_object** %property, align 8, !dbg !3389
  %package18 = bitcast %union.acpi_object* %23 to %struct.anon.2*, !dbg !3390
  %elements19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package18, i32 0, i32 2, !dbg !3391
  %24 = load %union.acpi_object*, %union.acpi_object** %elements19, align 8, !dbg !3391
  %arrayidx20 = getelementptr %union.acpi_object, %union.acpi_object* %24, i64 1, !dbg !3389
  store %union.acpi_object* %arrayidx20, %union.acpi_object** %propvalue, align 8, !dbg !3392
  %25 = load i8*, i8** %name.addr, align 8, !dbg !3393
  %26 = load %union.acpi_object*, %union.acpi_object** %propname, align 8, !dbg !3395
  %string = bitcast %union.acpi_object* %26 to %struct.anon.0*, !dbg !3396
  %pointer21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !3397
  %27 = load i8*, i8** %pointer21, align 8, !dbg !3397
  %call22 = call i32 @strcmp(i8* %25, i8* %27) #7, !dbg !3398
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3398
  br i1 %tobool23, label %if.end33, label %if.then24, !dbg !3399

if.then24:                                        ; preds = %for.body13
  %28 = load i32, i32* %type.addr, align 4, !dbg !3400
  %cmp25 = icmp ne i32 %28, 0, !dbg !3403
  br i1 %cmp25, label %land.lhs.true, label %if.end29, !dbg !3404

land.lhs.true:                                    ; preds = %if.then24
  %29 = load %union.acpi_object*, %union.acpi_object** %propvalue, align 8, !dbg !3405
  %type26 = bitcast %union.acpi_object* %29 to i32*, !dbg !3406
  %30 = load i32, i32* %type26, align 8, !dbg !3406
  %31 = load i32, i32* %type.addr, align 4, !dbg !3407
  %cmp27 = icmp ne i32 %30, %31, !dbg !3408
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3409

if.then28:                                        ; preds = %land.lhs.true
  store i32 -71, i32* %retval, align 4, !dbg !3410
  br label %return, !dbg !3410

if.end29:                                         ; preds = %land.lhs.true, %if.then24
  %32 = load %union.acpi_object**, %union.acpi_object*** %obj.addr, align 8, !dbg !3411
  %tobool30 = icmp ne %union.acpi_object** %32, null, !dbg !3411
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3413

if.then31:                                        ; preds = %if.end29
  %33 = load %union.acpi_object*, %union.acpi_object** %propvalue, align 8, !dbg !3414
  %34 = load %union.acpi_object**, %union.acpi_object*** %obj.addr, align 8, !dbg !3415
  store %union.acpi_object* %33, %union.acpi_object** %34, align 8, !dbg !3416
  br label %if.end32, !dbg !3417

if.end32:                                         ; preds = %if.then31, %if.end29
  store i32 0, i32* %retval, align 4, !dbg !3418
  br label %return, !dbg !3418

if.end33:                                         ; preds = %for.body13
  br label %for.inc, !dbg !3419

for.inc:                                          ; preds = %if.end33
  %35 = load i32, i32* %i, align 4, !dbg !3420
  %inc = add i32 %35, 1, !dbg !3420
  store i32 %inc, i32* %i, align 4, !dbg !3420
  br label %for.cond11, !dbg !3421, !llvm.loop !3422

for.end:                                          ; preds = %for.cond11
  br label %for.inc34, !dbg !3424

for.inc34:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !3425, metadata !DIExpression()), !dbg !3427
  %36 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %props, align 8, !dbg !3427
  %list36 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %36, i32 0, i32 2, !dbg !3427
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %list36, i32 0, i32 0, !dbg !3427
  %37 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !3427
  %38 = bitcast %struct.list_head* %37 to i8*, !dbg !3427
  store i8* %38, i8** %__mptr35, align 8, !dbg !3427
  br label %do.body38, !dbg !3427

do.body38:                                        ; preds = %for.inc34
  br label %do.end39, !dbg !3428

do.end39:                                         ; preds = %do.body38
  %39 = load i8*, i8** %__mptr35, align 8, !dbg !3427
  %add.ptr41 = getelementptr i8, i8* %39, i64 -16, !dbg !3427
  %40 = bitcast i8* %add.ptr41 to %struct.acpi_device_properties*, !dbg !3427
  store %struct.acpi_device_properties* %40, %struct.acpi_device_properties** %tmp40, align 8, !dbg !3428
  %41 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %tmp40, align 8, !dbg !3427
  store %struct.acpi_device_properties* %41, %struct.acpi_device_properties** %props, align 8, !dbg !3353
  br label %for.cond, !dbg !3353, !llvm.loop !3430

for.end42:                                        ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !3432
  br label %return, !dbg !3432

return:                                           ; preds = %for.end42, %if.end32, %if.then28, %if.then5, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !3433
  ret i32 %42, !dbg !3433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_node_prop_get(%struct.fwnode_handle* %fwnode, i8* %propname, i8** %valptr) #0 !dbg !3434 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %valptr.addr = alloca i8**, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3438, metadata !DIExpression()), !dbg !3439
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3440, metadata !DIExpression()), !dbg !3441
  store i8** %valptr, i8*** %valptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %valptr.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3444
  %call = call %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %0) #7, !dbg !3445
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3446
  %2 = load i8**, i8*** %valptr.addr, align 8, !dbg !3447
  %3 = bitcast i8** %2 to %union.acpi_object**, !dbg !3448
  %call1 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %call, i8* %1, i32 0, %union.acpi_object** %3) #7, !dbg !3449
  ret i32 %call1, !dbg !3450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %fwnode) #0 !dbg !3451 {
entry:
  %retval = alloca %struct.acpi_device_data*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp5 = alloca %struct.acpi_data_node*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.acpi_data_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3454, metadata !DIExpression()), !dbg !3455
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3456
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %0) #7, !dbg !3458
  br i1 %call, label %if.then, label %if.else, !dbg !3459

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3463, metadata !DIExpression()), !dbg !3465
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3465
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3465
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3465
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !3465
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3465

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3466, metadata !DIExpression()), !dbg !3468
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3468
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3468
  store i8* %4, i8** %__mptr, align 8, !dbg !3468
  br label %do.body, !dbg !3468

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3469

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3468
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !3468
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3468
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !3469
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3468
  br label %cond.end, !dbg !3465

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !3465

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !3465
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3465
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3465
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !3462
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3471
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 15, !dbg !3472
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %retval, align 8, !dbg !3473
  br label %return, !dbg !3473

if.else:                                          ; preds = %entry
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3474
  %call3 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %10) #7, !dbg !3476
  br i1 %call3, label %if.then4, label %if.end, !dbg !3477

if.then4:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3478, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !3483, metadata !DIExpression()), !dbg !3485
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3485
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !3485
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !3485
  %call6 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %12) #7, !dbg !3485
  br i1 %call6, label %cond.true7, label %cond.false13, !dbg !3485

cond.true7:                                       ; preds = %if.then4
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !3486, metadata !DIExpression()), !dbg !3488
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !3488
  %14 = bitcast %struct.fwnode_handle* %13 to i8*, !dbg !3488
  store i8* %14, i8** %__mptr8, align 8, !dbg !3488
  br label %do.body9, !dbg !3488

do.body9:                                         ; preds = %cond.true7
  br label %do.end10, !dbg !3489

do.end10:                                         ; preds = %do.body9
  %15 = load i8*, i8** %__mptr8, align 8, !dbg !3488
  %add.ptr12 = getelementptr i8, i8* %15, i64 -16, !dbg !3488
  %16 = bitcast i8* %add.ptr12 to %struct.acpi_data_node*, !dbg !3488
  store %struct.acpi_data_node* %16, %struct.acpi_data_node** %tmp11, align 8, !dbg !3489
  %17 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp11, align 8, !dbg !3488
  br label %cond.end14, !dbg !3485

cond.false13:                                     ; preds = %if.then4
  br label %cond.end14, !dbg !3485

cond.end14:                                       ; preds = %cond.false13, %do.end10
  %cond15 = phi %struct.acpi_data_node* [ %17, %do.end10 ], [ null, %cond.false13 ], !dbg !3485
  store %struct.acpi_data_node* %cond15, %struct.acpi_data_node** %tmp5, align 8, !dbg !3485
  %18 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp5, align 8, !dbg !3485
  store %struct.acpi_data_node* %18, %struct.acpi_data_node** %dn, align 8, !dbg !3482
  %19 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3491
  %data16 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %19, i32 0, i32 4, !dbg !3492
  store %struct.acpi_device_data* %data16, %struct.acpi_device_data** %retval, align 8, !dbg !3493
  br label %return, !dbg !3493

if.end:                                           ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end
  store %struct.acpi_device_data* null, %struct.acpi_device_data** %retval, align 8, !dbg !3494
  br label %return, !dbg !3494

return:                                           ; preds = %if.end17, %cond.end14, %cond.end
  %20 = load %struct.acpi_device_data*, %struct.acpi_device_data** %retval, align 8, !dbg !3495
  ret %struct.acpi_device_data* %20, !dbg !3495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__acpi_node_get_property_reference(%struct.fwnode_handle* %fwnode, i8* %propname, i64 %index, i64 %num_args, %struct.fwnode_reference_args* %args) #0 !dbg !3496 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i64, align 8
  %num_args.addr = alloca i64, align 8
  %args.addr = alloca %struct.fwnode_reference_args*, align 8
  %element = alloca %union.acpi_object*, align 8
  %end = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %data = alloca %struct.acpi_device_data*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  %idx = alloca i32, align 4
  %nargs32 = alloca i32, align 4
  %i = alloca i32, align 4
  %ref_fwnode = alloca %struct.fwnode_handle*, align 8
  %type65 = alloca i32, align 4
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3501, metadata !DIExpression()), !dbg !3502
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  store i64 %num_args, i64* %num_args.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_args.addr, metadata !3505, metadata !DIExpression()), !dbg !3506
  store %struct.fwnode_reference_args* %args, %struct.fwnode_reference_args** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args** %args.addr, metadata !3507, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.declare(metadata %union.acpi_object** %end, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3521, metadata !DIExpression()), !dbg !3522
  store i32 0, i32* %idx, align 4, !dbg !3522
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3523
  %call = call %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %0) #7, !dbg !3524
  store %struct.acpi_device_data* %call, %struct.acpi_device_data** %data, align 8, !dbg !3525
  %1 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data, align 8, !dbg !3526
  %tobool = icmp ne %struct.acpi_device_data* %1, null, !dbg !3526
  br i1 %tobool, label %if.end, label %if.then, !dbg !3528

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !3529
  br label %return, !dbg !3529

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data, align 8, !dbg !3530
  %3 = load i8*, i8** %propname.addr, align 8, !dbg !3531
  %call1 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %2, i8* %3, i32 0, %union.acpi_object** %obj) #7, !dbg !3532
  store i32 %call1, i32* %ret, align 4, !dbg !3533
  %4 = load i32, i32* %ret, align 4, !dbg !3534
  %tobool2 = icmp ne i32 %4, 0, !dbg !3534
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3536

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !3537
  %cmp = icmp eq i32 %5, -22, !dbg !3538
  %6 = zext i1 %cmp to i64, !dbg !3537
  %cond = select i1 %cmp, i32 -2, i32 -22, !dbg !3537
  store i32 %cond, i32* %retval, align 4, !dbg !3539
  br label %return, !dbg !3539

if.end4:                                          ; preds = %if.end
  %7 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3540
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !3542
  %8 = load i32, i32* %type, align 8, !dbg !3542
  %cmp5 = icmp eq i32 %8, 20, !dbg !3543
  br i1 %cmp5, label %if.then6, label %if.end18, !dbg !3544

if.then6:                                         ; preds = %if.end4
  %9 = load i64, i64* %index.addr, align 8, !dbg !3545
  %tobool7 = icmp ne i64 %9, 0, !dbg !3545
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3548

if.then8:                                         ; preds = %if.then6
  store i32 -22, i32* %retval, align 4, !dbg !3549
  br label %return, !dbg !3549

if.end9:                                          ; preds = %if.then6
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3550
  %reference = bitcast %union.acpi_object* %10 to %struct.anon.3*, !dbg !3551
  %handle = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference, i32 0, i32 2, !dbg !3552
  %11 = load i8*, i8** %handle, align 8, !dbg !3552
  %call10 = call i32 @acpi_bus_get_device(i8* %11, %struct.acpi_device** %device) #7, !dbg !3553
  store i32 %call10, i32* %ret, align 4, !dbg !3554
  %12 = load i32, i32* %ret, align 4, !dbg !3555
  %tobool11 = icmp ne i32 %12, 0, !dbg !3555
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !3557

if.then12:                                        ; preds = %if.end9
  %13 = load i32, i32* %ret, align 4, !dbg !3558
  %cmp13 = icmp eq i32 %13, -19, !dbg !3559
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !3558

cond.true:                                        ; preds = %if.then12
  br label %cond.end, !dbg !3558

cond.false:                                       ; preds = %if.then12
  %14 = load i32, i32* %ret, align 4, !dbg !3560
  br label %cond.end, !dbg !3558

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ -22, %cond.true ], [ %14, %cond.false ], !dbg !3558
  store i32 %cond14, i32* %retval, align 4, !dbg !3561
  br label %return, !dbg !3561

if.end15:                                         ; preds = %if.end9
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3562
  %call16 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %15) #7, !dbg !3563
  %16 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3564
  %fwnode17 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %16, i32 0, i32 0, !dbg !3565
  store %struct.fwnode_handle* %call16, %struct.fwnode_handle** %fwnode17, align 8, !dbg !3566
  %17 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3567
  %nargs = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %17, i32 0, i32 1, !dbg !3568
  store i32 0, i32* %nargs, align 8, !dbg !3569
  store i32 0, i32* %retval, align 4, !dbg !3570
  br label %return, !dbg !3570

if.end18:                                         ; preds = %if.end4
  %18 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3571
  %type19 = bitcast %union.acpi_object* %18 to i32*, !dbg !3573
  %19 = load i32, i32* %type19, align 8, !dbg !3573
  %cmp20 = icmp ne i32 %19, 4, !dbg !3574
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3575

if.then21:                                        ; preds = %if.end18
  store i32 -22, i32* %retval, align 4, !dbg !3576
  br label %return, !dbg !3576

if.end22:                                         ; preds = %if.end18
  %20 = load i64, i64* %index.addr, align 8, !dbg !3577
  %21 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3579
  %package = bitcast %union.acpi_object* %21 to %struct.anon.2*, !dbg !3580
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !3581
  %22 = load i32, i32* %count, align 4, !dbg !3581
  %conv = zext i32 %22 to i64, !dbg !3579
  %cmp23 = icmp uge i64 %20, %conv, !dbg !3582
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3583

if.then25:                                        ; preds = %if.end22
  store i32 -2, i32* %retval, align 4, !dbg !3584
  br label %return, !dbg !3584

if.end26:                                         ; preds = %if.end22
  %23 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3585
  %package27 = bitcast %union.acpi_object* %23 to %struct.anon.2*, !dbg !3586
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package27, i32 0, i32 2, !dbg !3587
  %24 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3587
  store %union.acpi_object* %24, %union.acpi_object** %element, align 8, !dbg !3588
  %25 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3589
  %26 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3590
  %package28 = bitcast %union.acpi_object* %26 to %struct.anon.2*, !dbg !3591
  %count29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package28, i32 0, i32 1, !dbg !3592
  %27 = load i32, i32* %count29, align 4, !dbg !3592
  %idx.ext = zext i32 %27 to i64, !dbg !3593
  %add.ptr = getelementptr %union.acpi_object, %union.acpi_object* %25, i64 %idx.ext, !dbg !3593
  store %union.acpi_object* %add.ptr, %union.acpi_object** %end, align 8, !dbg !3594
  br label %while.cond, !dbg !3595

while.cond:                                       ; preds = %if.end116, %if.end26
  %28 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3596
  %29 = load %union.acpi_object*, %union.acpi_object** %end, align 8, !dbg !3597
  %cmp30 = icmp ult %union.acpi_object* %28, %29, !dbg !3598
  br i1 %cmp30, label %while.body, label %while.end, !dbg !3595

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %nargs32, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3602, metadata !DIExpression()), !dbg !3603
  %30 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3604
  %type33 = bitcast %union.acpi_object* %30 to i32*, !dbg !3606
  %31 = load i32, i32* %type33, align 8, !dbg !3606
  %cmp34 = icmp eq i32 %31, 20, !dbg !3607
  br i1 %cmp34, label %if.then36, label %if.else103, !dbg !3608

if.then36:                                        ; preds = %while.body
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %ref_fwnode, metadata !3609, metadata !DIExpression()), !dbg !3611
  %32 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3612
  %reference37 = bitcast %union.acpi_object* %32 to %struct.anon.3*, !dbg !3613
  %handle38 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference37, i32 0, i32 2, !dbg !3614
  %33 = load i8*, i8** %handle38, align 8, !dbg !3614
  %call39 = call i32 @acpi_bus_get_device(i8* %33, %struct.acpi_device** %device) #7, !dbg !3615
  store i32 %call39, i32* %ret, align 4, !dbg !3616
  %34 = load i32, i32* %ret, align 4, !dbg !3617
  %tobool40 = icmp ne i32 %34, 0, !dbg !3617
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !3619

if.then41:                                        ; preds = %if.then36
  store i32 -22, i32* %retval, align 4, !dbg !3620
  br label %return, !dbg !3620

if.end42:                                         ; preds = %if.then36
  store i32 0, i32* %nargs32, align 4, !dbg !3621
  %35 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3622
  %incdec.ptr = getelementptr %union.acpi_object, %union.acpi_object* %35, i32 1, !dbg !3622
  store %union.acpi_object* %incdec.ptr, %union.acpi_object** %element, align 8, !dbg !3622
  %36 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3623
  %call43 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %36) #7, !dbg !3625
  store %struct.fwnode_handle* %call43, %struct.fwnode_handle** %ref_fwnode, align 8, !dbg !3626
  br label %for.cond, !dbg !3627

for.cond:                                         ; preds = %for.inc, %if.end42
  %37 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3628
  %38 = load %union.acpi_object*, %union.acpi_object** %end, align 8, !dbg !3630
  %cmp44 = icmp ult %union.acpi_object* %37, %38, !dbg !3631
  br i1 %cmp44, label %land.rhs, label %land.end, !dbg !3632

land.rhs:                                         ; preds = %for.cond
  %39 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3633
  %type46 = bitcast %union.acpi_object* %39 to i32*, !dbg !3634
  %40 = load i32, i32* %type46, align 8, !dbg !3634
  %cmp47 = icmp eq i32 %40, 2, !dbg !3635
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %cmp47, %land.rhs ], !dbg !3636
  br i1 %41, label %for.body, label %for.end, !dbg !3637

for.body:                                         ; preds = %land.end
  %42 = load %struct.fwnode_handle*, %struct.fwnode_handle** %ref_fwnode, align 8, !dbg !3638
  %43 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3640
  %string = bitcast %union.acpi_object* %43 to %struct.anon.0*, !dbg !3641
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !3642
  %44 = load i8*, i8** %pointer, align 8, !dbg !3642
  %call49 = call %struct.fwnode_handle* @acpi_fwnode_get_named_child_node(%struct.fwnode_handle* %42, i8* %44) #7, !dbg !3643
  store %struct.fwnode_handle* %call49, %struct.fwnode_handle** %ref_fwnode, align 8, !dbg !3644
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %ref_fwnode, align 8, !dbg !3645
  %tobool50 = icmp ne %struct.fwnode_handle* %45, null, !dbg !3645
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !3647

if.then51:                                        ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !3648
  br label %return, !dbg !3648

if.end52:                                         ; preds = %for.body
  br label %for.inc, !dbg !3649

for.inc:                                          ; preds = %if.end52
  %46 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3650
  %incdec.ptr53 = getelementptr %union.acpi_object, %union.acpi_object* %46, i32 1, !dbg !3650
  store %union.acpi_object* %incdec.ptr53, %union.acpi_object** %element, align 8, !dbg !3650
  br label %for.cond, !dbg !3651, !llvm.loop !3652

for.end:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4, !dbg !3654
  br label %for.cond54, !dbg !3656

for.cond54:                                       ; preds = %for.inc75, %for.end
  %47 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3657
  %48 = load i32, i32* %i, align 4, !dbg !3659
  %idx.ext55 = zext i32 %48 to i64, !dbg !3660
  %add.ptr56 = getelementptr %union.acpi_object, %union.acpi_object* %47, i64 %idx.ext55, !dbg !3660
  %49 = load %union.acpi_object*, %union.acpi_object** %end, align 8, !dbg !3661
  %cmp57 = icmp ult %union.acpi_object* %add.ptr56, %49, !dbg !3662
  br i1 %cmp57, label %land.rhs59, label %land.end63, !dbg !3663

land.rhs59:                                       ; preds = %for.cond54
  %50 = load i32, i32* %i, align 4, !dbg !3664
  %conv60 = zext i32 %50 to i64, !dbg !3664
  %51 = load i64, i64* %num_args.addr, align 8, !dbg !3665
  %cmp61 = icmp ult i64 %conv60, %51, !dbg !3666
  br label %land.end63

land.end63:                                       ; preds = %land.rhs59, %for.cond54
  %52 = phi i1 [ false, %for.cond54 ], [ %cmp61, %land.rhs59 ], !dbg !3667
  br i1 %52, label %for.body64, label %for.end77, !dbg !3668

for.body64:                                       ; preds = %land.end63
  call void @llvm.dbg.declare(metadata i32* %type65, metadata !3669, metadata !DIExpression()), !dbg !3671
  %53 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3672
  %54 = load i32, i32* %i, align 4, !dbg !3673
  %idxprom = zext i32 %54 to i64, !dbg !3672
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %53, i64 %idxprom, !dbg !3672
  %type66 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3674
  %55 = load i32, i32* %type66, align 8, !dbg !3674
  store i32 %55, i32* %type65, align 4, !dbg !3671
  %56 = load i32, i32* %type65, align 4, !dbg !3675
  %cmp67 = icmp eq i32 %56, 1, !dbg !3677
  br i1 %cmp67, label %if.then69, label %if.else, !dbg !3678

if.then69:                                        ; preds = %for.body64
  %57 = load i32, i32* %nargs32, align 4, !dbg !3679
  %inc = add i32 %57, 1, !dbg !3679
  store i32 %inc, i32* %nargs32, align 4, !dbg !3679
  br label %if.end74, !dbg !3680

if.else:                                          ; preds = %for.body64
  %58 = load i32, i32* %type65, align 4, !dbg !3681
  %cmp70 = icmp eq i32 %58, 20, !dbg !3683
  br i1 %cmp70, label %if.then72, label %if.else73, !dbg !3684

if.then72:                                        ; preds = %if.else
  br label %for.end77, !dbg !3685

if.else73:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !3686
  br label %return, !dbg !3686

if.end74:                                         ; preds = %if.then69
  br label %for.inc75, !dbg !3687

for.inc75:                                        ; preds = %if.end74
  %59 = load i32, i32* %i, align 4, !dbg !3688
  %inc76 = add i32 %59, 1, !dbg !3688
  store i32 %inc76, i32* %i, align 4, !dbg !3688
  br label %for.cond54, !dbg !3689, !llvm.loop !3690

for.end77:                                        ; preds = %if.then72, %land.end63
  %60 = load i32, i32* %nargs32, align 4, !dbg !3692
  %cmp78 = icmp ugt i32 %60, 8, !dbg !3694
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !3695

if.then80:                                        ; preds = %for.end77
  store i32 -22, i32* %retval, align 4, !dbg !3696
  br label %return, !dbg !3696

if.end81:                                         ; preds = %for.end77
  %61 = load i32, i32* %idx, align 4, !dbg !3697
  %conv82 = sext i32 %61 to i64, !dbg !3697
  %62 = load i64, i64* %index.addr, align 8, !dbg !3699
  %cmp83 = icmp eq i64 %conv82, %62, !dbg !3700
  br i1 %cmp83, label %if.then85, label %if.end100, !dbg !3701

if.then85:                                        ; preds = %if.end81
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %ref_fwnode, align 8, !dbg !3702
  %64 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3704
  %fwnode86 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %64, i32 0, i32 0, !dbg !3705
  store %struct.fwnode_handle* %63, %struct.fwnode_handle** %fwnode86, align 8, !dbg !3706
  %65 = load i32, i32* %nargs32, align 4, !dbg !3707
  %66 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3708
  %nargs87 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %66, i32 0, i32 1, !dbg !3709
  store i32 %65, i32* %nargs87, align 8, !dbg !3710
  store i32 0, i32* %i, align 4, !dbg !3711
  br label %for.cond88, !dbg !3713

for.cond88:                                       ; preds = %for.inc97, %if.then85
  %67 = load i32, i32* %i, align 4, !dbg !3714
  %68 = load i32, i32* %nargs32, align 4, !dbg !3716
  %cmp89 = icmp ult i32 %67, %68, !dbg !3717
  br i1 %cmp89, label %for.body91, label %for.end99, !dbg !3718

for.body91:                                       ; preds = %for.cond88
  %69 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3719
  %70 = load i32, i32* %i, align 4, !dbg !3720
  %idxprom92 = zext i32 %70 to i64, !dbg !3719
  %arrayidx93 = getelementptr %union.acpi_object, %union.acpi_object* %69, i64 %idxprom92, !dbg !3719
  %integer = bitcast %union.acpi_object* %arrayidx93 to %struct.anon*, !dbg !3721
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3722
  %71 = load i64, i64* %value, align 8, !dbg !3722
  %72 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3723
  %args94 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %72, i32 0, i32 2, !dbg !3724
  %73 = load i32, i32* %i, align 4, !dbg !3725
  %idxprom95 = zext i32 %73 to i64, !dbg !3723
  %arrayidx96 = getelementptr [8 x i64], [8 x i64]* %args94, i64 0, i64 %idxprom95, !dbg !3723
  store i64 %71, i64* %arrayidx96, align 8, !dbg !3726
  br label %for.inc97, !dbg !3723

for.inc97:                                        ; preds = %for.body91
  %74 = load i32, i32* %i, align 4, !dbg !3727
  %inc98 = add i32 %74, 1, !dbg !3727
  store i32 %inc98, i32* %i, align 4, !dbg !3727
  br label %for.cond88, !dbg !3728, !llvm.loop !3729

for.end99:                                        ; preds = %for.cond88
  store i32 0, i32* %retval, align 4, !dbg !3731
  br label %return, !dbg !3731

if.end100:                                        ; preds = %if.end81
  %75 = load i32, i32* %nargs32, align 4, !dbg !3732
  %76 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3733
  %idx.ext101 = zext i32 %75 to i64, !dbg !3733
  %add.ptr102 = getelementptr %union.acpi_object, %union.acpi_object* %76, i64 %idx.ext101, !dbg !3733
  store %union.acpi_object* %add.ptr102, %union.acpi_object** %element, align 8, !dbg !3733
  br label %if.end116, !dbg !3734

if.else103:                                       ; preds = %while.body
  %77 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3735
  %type104 = bitcast %union.acpi_object* %77 to i32*, !dbg !3737
  %78 = load i32, i32* %type104, align 8, !dbg !3737
  %cmp105 = icmp eq i32 %78, 1, !dbg !3738
  br i1 %cmp105, label %if.then107, label %if.else114, !dbg !3739

if.then107:                                       ; preds = %if.else103
  %79 = load i32, i32* %idx, align 4, !dbg !3740
  %conv108 = sext i32 %79 to i64, !dbg !3740
  %80 = load i64, i64* %index.addr, align 8, !dbg !3743
  %cmp109 = icmp eq i64 %conv108, %80, !dbg !3744
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !3745

if.then111:                                       ; preds = %if.then107
  store i32 -2, i32* %retval, align 4, !dbg !3746
  br label %return, !dbg !3746

if.end112:                                        ; preds = %if.then107
  %81 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3747
  %incdec.ptr113 = getelementptr %union.acpi_object, %union.acpi_object* %81, i32 1, !dbg !3747
  store %union.acpi_object* %incdec.ptr113, %union.acpi_object** %element, align 8, !dbg !3747
  br label %if.end115, !dbg !3748

if.else114:                                       ; preds = %if.else103
  store i32 -22, i32* %retval, align 4, !dbg !3749
  br label %return, !dbg !3749

if.end115:                                        ; preds = %if.end112
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end100
  %82 = load i32, i32* %idx, align 4, !dbg !3751
  %inc117 = add i32 %82, 1, !dbg !3751
  store i32 %inc117, i32* %idx, align 4, !dbg !3751
  br label %while.cond, !dbg !3595, !llvm.loop !3752

while.end:                                        ; preds = %while.cond
  store i32 -2, i32* %retval, align 4, !dbg !3754
  br label %return, !dbg !3754

return:                                           ; preds = %while.end, %if.else114, %if.then111, %for.end99, %if.then80, %if.else73, %if.then51, %if.then41, %if.then25, %if.then21, %if.end15, %cond.end, %if.then8, %if.then3, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !3755
  ret i32 %83, !dbg !3755
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_get_named_child_node(%struct.fwnode_handle* %fwnode, i8* %childname) #0 !dbg !3756 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %childname.addr = alloca i8*, align 8
  %child = alloca %struct.fwnode_handle*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_device*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3757, metadata !DIExpression()), !dbg !3758
  store i8* %childname, i8** %childname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %childname.addr, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child, metadata !3761, metadata !DIExpression()), !dbg !3762
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3763
  %call = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %0, %struct.fwnode_handle* null) #7, !dbg !3763
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %child, align 8, !dbg !3763
  br label %for.cond, !dbg !3763

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3765
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !3763
  br i1 %tobool, label %for.body, label %for.end, !dbg !3763

for.body:                                         ; preds = %for.cond
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3767
  %call1 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %2) #7, !dbg !3770
  br i1 %call1, label %if.then, label %if.end4, !dbg !3771

if.then:                                          ; preds = %for.body
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3772
  %4 = load i8*, i8** %childname.addr, align 8, !dbg !3775
  %call2 = call zeroext i1 @acpi_data_node_match(%struct.fwnode_handle* %3, i8* %4) #7, !dbg !3776
  br i1 %call2, label %if.then3, label %if.end, !dbg !3777

if.then3:                                         ; preds = %if.then
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3778
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %retval, align 8, !dbg !3779
  br label %return, !dbg !3779

if.end:                                           ; preds = %if.then
  br label %for.inc, !dbg !3780

if.end4:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3781, metadata !DIExpression()), !dbg !3784
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3784
  store %struct.fwnode_handle* %6, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3784
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3784
  %call5 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %7) #7, !dbg !3784
  br i1 %call5, label %cond.true, label %cond.false, !dbg !3784

cond.true:                                        ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3785, metadata !DIExpression()), !dbg !3787
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3787
  %9 = bitcast %struct.fwnode_handle* %8 to i8*, !dbg !3787
  store i8* %9, i8** %__mptr, align 8, !dbg !3787
  br label %do.body, !dbg !3787

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3788

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %__mptr, align 8, !dbg !3787
  %add.ptr = getelementptr i8, i8* %10, i64 -16, !dbg !3787
  %11 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3787
  store %struct.acpi_device* %11, %struct.acpi_device** %tmp6, align 8, !dbg !3788
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp6, align 8, !dbg !3787
  br label %cond.end, !dbg !3784

cond.false:                                       ; preds = %if.end4
  br label %cond.end, !dbg !3784

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %12, %do.end ], [ null, %cond.false ], !dbg !3784
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3784
  %13 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3784
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 10, !dbg !3790
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !3790
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !3790
  %14 = load i8*, i8** %childname.addr, align 8, !dbg !3791
  %call7 = call i32 @strncmp(i8* %arraydecay, i8* %14, i64 4) #7, !dbg !3792
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3792
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3793

if.then9:                                         ; preds = %cond.end
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3794
  store %struct.fwnode_handle* %15, %struct.fwnode_handle** %retval, align 8, !dbg !3795
  br label %return, !dbg !3795

if.end10:                                         ; preds = %cond.end
  br label %for.inc, !dbg !3796

for.inc:                                          ; preds = %if.end10, %if.end
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3765
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !3765
  %call11 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %16, %struct.fwnode_handle* %17) #7, !dbg !3765
  store %struct.fwnode_handle* %call11, %struct.fwnode_handle** %child, align 8, !dbg !3765
  br label %for.cond, !dbg !3765, !llvm.loop !3797

for.end:                                          ; preds = %for.cond
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !3799
  br label %return, !dbg !3799

return:                                           ; preds = %for.end, %if.then9, %if.then3
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !3800
  ret %struct.fwnode_handle* %18, !dbg !3800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_prop_read_single(%struct.acpi_device* %adev, i8* %propname, i32 %proptype, i8* %val) #0 !dbg !3801 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %propname.addr = alloca i8*, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3806, metadata !DIExpression()), !dbg !3807
  store i32 %proptype, i32* %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proptype.addr, metadata !3808, metadata !DIExpression()), !dbg !3809
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3812, metadata !DIExpression()), !dbg !3813
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3814
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3814
  br i1 %tobool, label %if.end, label %if.then, !dbg !3816

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3817
  br label %return, !dbg !3817

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3818
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !3819
  %2 = load i8*, i8** %propname.addr, align 8, !dbg !3820
  %3 = load i32, i32* %proptype.addr, align 4, !dbg !3821
  %4 = load i8*, i8** %val.addr, align 8, !dbg !3822
  %call = call i32 @acpi_data_prop_read_single(%struct.acpi_device_data* %data, i8* %2, i32 %3, i8* %4) #7, !dbg !3823
  store i32 %call, i32* %ret, align 4, !dbg !3824
  %5 = load i32, i32* %ret, align 4, !dbg !3825
  %cmp = icmp slt i32 %5, 0, !dbg !3827
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !3828

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %proptype.addr, align 4, !dbg !3829
  %cmp1 = icmp ne i32 %6, 2, !dbg !3830
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3831

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !3832
  store i32 %7, i32* %retval, align 4, !dbg !3833
  br label %return, !dbg !3833

if.end3:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !3834
  br label %return, !dbg !3834

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3835
  ret i32 %8, !dbg !3835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_data_prop_read_single(%struct.acpi_device_data* %data, i8* %propname, i32 %proptype, i8* %val) #0 !dbg !3836 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %propname.addr = alloca i8*, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  store i32 %proptype, i32* %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proptype.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3849, metadata !DIExpression()), !dbg !3850
  %0 = load i8*, i8** %val.addr, align 8, !dbg !3851
  %tobool = icmp ne i8* %0, null, !dbg !3851
  br i1 %tobool, label %if.end, label %if.then, !dbg !3853

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3854
  br label %return, !dbg !3854

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %proptype.addr, align 4, !dbg !3855
  %cmp = icmp uge i32 %1, 0, !dbg !3857
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !3858

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %proptype.addr, align 4, !dbg !3859
  %cmp1 = icmp ule i32 %2, 3, !dbg !3860
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3861

if.then2:                                         ; preds = %land.lhs.true
  %3 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3862
  %4 = load i8*, i8** %propname.addr, align 8, !dbg !3864
  %call = call i32 @acpi_data_get_property(%struct.acpi_device_data* %3, i8* %4, i32 1, %union.acpi_object** %obj) #7, !dbg !3865
  store i32 %call, i32* %ret, align 4, !dbg !3866
  %5 = load i32, i32* %ret, align 4, !dbg !3867
  %tobool3 = icmp ne i32 %5, 0, !dbg !3867
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3869

if.then4:                                         ; preds = %if.then2
  %6 = load i32, i32* %ret, align 4, !dbg !3870
  store i32 %6, i32* %retval, align 4, !dbg !3871
  br label %return, !dbg !3871

if.end5:                                          ; preds = %if.then2
  %7 = load i32, i32* %proptype.addr, align 4, !dbg !3872
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb21
  ], !dbg !3873

sw.bb:                                            ; preds = %if.end5
  %8 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3874
  %integer = bitcast %union.acpi_object* %8 to %struct.anon*, !dbg !3877
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3878
  %9 = load i64, i64* %value, align 8, !dbg !3878
  %cmp6 = icmp ugt i64 %9, 255, !dbg !3879
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3880

if.then7:                                         ; preds = %sw.bb
  store i32 -75, i32* %retval, align 4, !dbg !3881
  br label %return, !dbg !3881

if.end8:                                          ; preds = %sw.bb
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3882
  %integer9 = bitcast %union.acpi_object* %10 to %struct.anon*, !dbg !3883
  %value10 = getelementptr inbounds %struct.anon, %struct.anon* %integer9, i32 0, i32 1, !dbg !3884
  %11 = load i64, i64* %value10, align 8, !dbg !3884
  %conv = trunc i64 %11 to i8, !dbg !3882
  %12 = load i8*, i8** %val.addr, align 8, !dbg !3885
  store i8 %conv, i8* %12, align 1, !dbg !3886
  br label %sw.epilog, !dbg !3887

sw.bb11:                                          ; preds = %if.end5
  %13 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3888
  %integer12 = bitcast %union.acpi_object* %13 to %struct.anon*, !dbg !3890
  %value13 = getelementptr inbounds %struct.anon, %struct.anon* %integer12, i32 0, i32 1, !dbg !3891
  %14 = load i64, i64* %value13, align 8, !dbg !3891
  %cmp14 = icmp ugt i64 %14, 65535, !dbg !3892
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !3893

if.then16:                                        ; preds = %sw.bb11
  store i32 -75, i32* %retval, align 4, !dbg !3894
  br label %return, !dbg !3894

if.end17:                                         ; preds = %sw.bb11
  %15 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3895
  %integer18 = bitcast %union.acpi_object* %15 to %struct.anon*, !dbg !3896
  %value19 = getelementptr inbounds %struct.anon, %struct.anon* %integer18, i32 0, i32 1, !dbg !3897
  %16 = load i64, i64* %value19, align 8, !dbg !3897
  %conv20 = trunc i64 %16 to i16, !dbg !3895
  %17 = load i8*, i8** %val.addr, align 8, !dbg !3898
  %18 = bitcast i8* %17 to i16*, !dbg !3899
  store i16 %conv20, i16* %18, align 2, !dbg !3900
  br label %sw.epilog, !dbg !3901

sw.bb21:                                          ; preds = %if.end5
  %19 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3902
  %integer22 = bitcast %union.acpi_object* %19 to %struct.anon*, !dbg !3904
  %value23 = getelementptr inbounds %struct.anon, %struct.anon* %integer22, i32 0, i32 1, !dbg !3905
  %20 = load i64, i64* %value23, align 8, !dbg !3905
  %cmp24 = icmp ugt i64 %20, 4294967295, !dbg !3906
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !3907

if.then26:                                        ; preds = %sw.bb21
  store i32 -75, i32* %retval, align 4, !dbg !3908
  br label %return, !dbg !3908

if.end27:                                         ; preds = %sw.bb21
  %21 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3909
  %integer28 = bitcast %union.acpi_object* %21 to %struct.anon*, !dbg !3910
  %value29 = getelementptr inbounds %struct.anon, %struct.anon* %integer28, i32 0, i32 1, !dbg !3911
  %22 = load i64, i64* %value29, align 8, !dbg !3911
  %conv30 = trunc i64 %22 to i32, !dbg !3909
  %23 = load i8*, i8** %val.addr, align 8, !dbg !3912
  %24 = bitcast i8* %23 to i32*, !dbg !3913
  store i32 %conv30, i32* %24, align 4, !dbg !3914
  br label %sw.epilog, !dbg !3915

sw.default:                                       ; preds = %if.end5
  %25 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3916
  %integer31 = bitcast %union.acpi_object* %25 to %struct.anon*, !dbg !3917
  %value32 = getelementptr inbounds %struct.anon, %struct.anon* %integer31, i32 0, i32 1, !dbg !3918
  %26 = load i64, i64* %value32, align 8, !dbg !3918
  %27 = load i8*, i8** %val.addr, align 8, !dbg !3919
  %28 = bitcast i8* %27 to i64*, !dbg !3920
  store i64 %26, i64* %28, align 8, !dbg !3921
  br label %sw.epilog, !dbg !3922

sw.epilog:                                        ; preds = %sw.default, %if.end27, %if.end17, %if.end8
  br label %if.end42, !dbg !3923

if.else:                                          ; preds = %land.lhs.true, %if.end
  %29 = load i32, i32* %proptype.addr, align 4, !dbg !3924
  %cmp33 = icmp eq i32 %29, 4, !dbg !3926
  br i1 %cmp33, label %if.then35, label %if.else40, !dbg !3927

if.then35:                                        ; preds = %if.else
  %30 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3928
  %31 = load i8*, i8** %propname.addr, align 8, !dbg !3930
  %call36 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %30, i8* %31, i32 2, %union.acpi_object** %obj) #7, !dbg !3931
  store i32 %call36, i32* %ret, align 4, !dbg !3932
  %32 = load i32, i32* %ret, align 4, !dbg !3933
  %tobool37 = icmp ne i32 %32, 0, !dbg !3933
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !3935

if.then38:                                        ; preds = %if.then35
  %33 = load i32, i32* %ret, align 4, !dbg !3936
  store i32 %33, i32* %retval, align 4, !dbg !3937
  br label %return, !dbg !3937

if.end39:                                         ; preds = %if.then35
  %34 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3938
  %string = bitcast %union.acpi_object* %34 to %struct.anon.0*, !dbg !3939
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !3940
  %35 = load i8*, i8** %pointer, align 8, !dbg !3940
  %36 = load i8*, i8** %val.addr, align 8, !dbg !3941
  %37 = bitcast i8* %36 to i8**, !dbg !3942
  store i8* %35, i8** %37, align 8, !dbg !3943
  store i32 1, i32* %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

if.else40:                                        ; preds = %if.else
  store i32 -22, i32* %ret, align 4, !dbg !3945
  br label %if.end41

if.end41:                                         ; preds = %if.else40
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %sw.epilog
  %38 = load i32, i32* %ret, align 4, !dbg !3947
  store i32 %38, i32* %retval, align 4, !dbg !3948
  br label %return, !dbg !3948

return:                                           ; preds = %if.end42, %if.end39, %if.then38, %if.then26, %if.then16, %if.then7, %if.then4, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !3949
  ret i32 %39, !dbg !3949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_prop_read(%struct.acpi_device* %adev, i8* %propname, i32 %proptype, i8* %val, i64 %nval) #0 !dbg !3950 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %propname.addr = alloca i8*, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i32 %proptype, i32* %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proptype.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !3961, metadata !DIExpression()), !dbg !3962
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3963
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3963
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3963

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3964
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 15, !dbg !3965
  %2 = load i8*, i8** %propname.addr, align 8, !dbg !3966
  %3 = load i32, i32* %proptype.addr, align 4, !dbg !3967
  %4 = load i8*, i8** %val.addr, align 8, !dbg !3968
  %5 = load i64, i64* %nval.addr, align 8, !dbg !3969
  %call = call i32 @acpi_data_prop_read(%struct.acpi_device_data* %data, i8* %2, i32 %3, i8* %4, i64 %5) #7, !dbg !3970
  br label %cond.end, !dbg !3963

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -22, %cond.false ], !dbg !3963
  ret i32 %cond, !dbg !3971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_data_prop_read(%struct.acpi_device_data* %data, i8* %propname, i32 %proptype, i8* %val, i64 %nval) #0 !dbg !3972 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %propname.addr = alloca i8*, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %obj = alloca %union.acpi_object*, align 8
  %items = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x182 = alloca i32, align 4
  %__UNIQUE_ID___y183 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3977, metadata !DIExpression()), !dbg !3978
  store i32 %proptype, i32* %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proptype.addr, metadata !3979, metadata !DIExpression()), !dbg !3980
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3985, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items, metadata !3987, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3989, metadata !DIExpression()), !dbg !3990
  %0 = load i8*, i8** %val.addr, align 8, !dbg !3991
  %tobool = icmp ne i8* %0, null, !dbg !3991
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !3993

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %nval.addr, align 8, !dbg !3994
  %cmp = icmp eq i64 %1, 1, !dbg !3995
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3996

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3997
  %3 = load i8*, i8** %propname.addr, align 8, !dbg !3999
  %4 = load i32, i32* %proptype.addr, align 4, !dbg !4000
  %5 = load i8*, i8** %val.addr, align 8, !dbg !4001
  %call = call i32 @acpi_data_prop_read_single(%struct.acpi_device_data* %2, i8* %3, i32 %4, i8* %5) #7, !dbg !4002
  store i32 %call, i32* %ret, align 4, !dbg !4003
  %6 = load i32, i32* %ret, align 4, !dbg !4004
  %cmp1 = icmp sge i32 %6, 0, !dbg !4006
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4007

if.then2:                                         ; preds = %if.then
  %7 = load i32, i32* %ret, align 4, !dbg !4008
  store i32 %7, i32* %retval, align 4, !dbg !4009
  br label %return, !dbg !4009

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !4010

if.end3:                                          ; preds = %if.end, %land.lhs.true, %entry
  %8 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !4011
  %9 = load i8*, i8** %propname.addr, align 8, !dbg !4012
  %call4 = call i32 @acpi_data_get_property_array(%struct.acpi_device_data* %8, i8* %9, i32 0, %union.acpi_object** %obj) #7, !dbg !4013
  store i32 %call4, i32* %ret, align 4, !dbg !4014
  %10 = load i32, i32* %ret, align 4, !dbg !4015
  %tobool5 = icmp ne i32 %10, 0, !dbg !4015
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4017

if.then6:                                         ; preds = %if.end3
  %11 = load i32, i32* %ret, align 4, !dbg !4018
  store i32 %11, i32* %retval, align 4, !dbg !4019
  br label %return, !dbg !4019

if.end7:                                          ; preds = %if.end3
  %12 = load i8*, i8** %val.addr, align 8, !dbg !4020
  %tobool8 = icmp ne i8* %12, null, !dbg !4020
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4022

if.then9:                                         ; preds = %if.end7
  %13 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4023
  %package = bitcast %union.acpi_object* %13 to %struct.anon.2*, !dbg !4024
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !4025
  %14 = load i32, i32* %count, align 4, !dbg !4025
  store i32 %14, i32* %retval, align 4, !dbg !4026
  br label %return, !dbg !4026

if.end10:                                         ; preds = %if.end7
  %15 = load i32, i32* %proptype.addr, align 4, !dbg !4027
  %cmp11 = icmp ne i32 %15, 4, !dbg !4029
  br i1 %cmp11, label %land.lhs.true12, label %if.else, !dbg !4030

land.lhs.true12:                                  ; preds = %if.end10
  %16 = load i64, i64* %nval.addr, align 8, !dbg !4031
  %17 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4032
  %package13 = bitcast %union.acpi_object* %17 to %struct.anon.2*, !dbg !4033
  %count14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package13, i32 0, i32 1, !dbg !4034
  %18 = load i32, i32* %count14, align 4, !dbg !4034
  %conv = zext i32 %18 to i64, !dbg !4032
  %cmp15 = icmp ugt i64 %16, %conv, !dbg !4035
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !4036

if.then17:                                        ; preds = %land.lhs.true12
  store i32 -75, i32* %retval, align 4, !dbg !4037
  br label %return, !dbg !4037

if.else:                                          ; preds = %land.lhs.true12, %if.end10
  %19 = load i64, i64* %nval.addr, align 8, !dbg !4038
  %cmp18 = icmp ule i64 %19, 0, !dbg !4040
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !4041

if.then20:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !4042
  br label %return, !dbg !4042

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  %20 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4043
  %package23 = bitcast %union.acpi_object* %20 to %struct.anon.2*, !dbg !4044
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package23, i32 0, i32 2, !dbg !4045
  %21 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4045
  store %union.acpi_object* %21, %union.acpi_object** %items, align 8, !dbg !4046
  %22 = load i32, i32* %proptype.addr, align 4, !dbg !4047
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb27
    i32 3, label %sw.bb29
    i32 4, label %sw.bb31
  ], !dbg !4048

sw.bb:                                            ; preds = %if.end22
  %23 = load %union.acpi_object*, %union.acpi_object** %items, align 8, !dbg !4049
  %24 = load i8*, i8** %val.addr, align 8, !dbg !4051
  %25 = load i64, i64* %nval.addr, align 8, !dbg !4052
  %call24 = call i32 @acpi_copy_property_array_u8(%union.acpi_object* %23, i8* %24, i64 %25) #7, !dbg !4053
  store i32 %call24, i32* %ret, align 4, !dbg !4054
  br label %sw.epilog, !dbg !4055

sw.bb25:                                          ; preds = %if.end22
  %26 = load %union.acpi_object*, %union.acpi_object** %items, align 8, !dbg !4056
  %27 = load i8*, i8** %val.addr, align 8, !dbg !4057
  %28 = bitcast i8* %27 to i16*, !dbg !4058
  %29 = load i64, i64* %nval.addr, align 8, !dbg !4059
  %call26 = call i32 @acpi_copy_property_array_u16(%union.acpi_object* %26, i16* %28, i64 %29) #7, !dbg !4060
  store i32 %call26, i32* %ret, align 4, !dbg !4061
  br label %sw.epilog, !dbg !4062

sw.bb27:                                          ; preds = %if.end22
  %30 = load %union.acpi_object*, %union.acpi_object** %items, align 8, !dbg !4063
  %31 = load i8*, i8** %val.addr, align 8, !dbg !4064
  %32 = bitcast i8* %31 to i32*, !dbg !4065
  %33 = load i64, i64* %nval.addr, align 8, !dbg !4066
  %call28 = call i32 @acpi_copy_property_array_u32(%union.acpi_object* %30, i32* %32, i64 %33) #7, !dbg !4067
  store i32 %call28, i32* %ret, align 4, !dbg !4068
  br label %sw.epilog, !dbg !4069

sw.bb29:                                          ; preds = %if.end22
  %34 = load %union.acpi_object*, %union.acpi_object** %items, align 8, !dbg !4070
  %35 = load i8*, i8** %val.addr, align 8, !dbg !4071
  %36 = bitcast i8* %35 to i64*, !dbg !4072
  %37 = load i64, i64* %nval.addr, align 8, !dbg !4073
  %call30 = call i32 @acpi_copy_property_array_u64(%union.acpi_object* %34, i64* %36, i64 %37) #7, !dbg !4074
  store i32 %call30, i32* %ret, align 4, !dbg !4075
  br label %sw.epilog, !dbg !4076

sw.bb31:                                          ; preds = %if.end22
  %38 = load %union.acpi_object*, %union.acpi_object** %items, align 8, !dbg !4077
  %39 = load i8*, i8** %val.addr, align 8, !dbg !4078
  %40 = bitcast i8* %39 to i8**, !dbg !4079
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x182, metadata !4080, metadata !DIExpression()), !dbg !4082
  %41 = load i64, i64* %nval.addr, align 8, !dbg !4082
  %conv32 = trunc i64 %41 to i32, !dbg !4082
  store i32 %conv32, i32* %__UNIQUE_ID___x182, align 4, !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y183, metadata !4083, metadata !DIExpression()), !dbg !4082
  %42 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4082
  %package33 = bitcast %union.acpi_object* %42 to %struct.anon.2*, !dbg !4082
  %count34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package33, i32 0, i32 1, !dbg !4082
  %43 = load i32, i32* %count34, align 4, !dbg !4082
  store i32 %43, i32* %__UNIQUE_ID___y183, align 4, !dbg !4082
  %44 = load i32, i32* %__UNIQUE_ID___x182, align 4, !dbg !4082
  %45 = load i32, i32* %__UNIQUE_ID___y183, align 4, !dbg !4082
  %cmp35 = icmp ult i32 %44, %45, !dbg !4082
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !4082

cond.true:                                        ; preds = %sw.bb31
  %46 = load i32, i32* %__UNIQUE_ID___x182, align 4, !dbg !4082
  br label %cond.end, !dbg !4082

cond.false:                                       ; preds = %sw.bb31
  %47 = load i32, i32* %__UNIQUE_ID___y183, align 4, !dbg !4082
  br label %cond.end, !dbg !4082

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %47, %cond.false ], !dbg !4082
  store i32 %cond, i32* %tmp, align 4, !dbg !4082
  %48 = load i32, i32* %tmp, align 4, !dbg !4082
  %conv37 = zext i32 %48 to i64, !dbg !4084
  %call38 = call i32 @acpi_copy_property_array_string(%union.acpi_object* %38, i8** %40, i64 %conv37) #7, !dbg !4085
  store i32 %call38, i32* %ret, align 4, !dbg !4086
  br label %sw.epilog, !dbg !4087

sw.default:                                       ; preds = %if.end22
  store i32 -22, i32* %ret, align 4, !dbg !4088
  br label %sw.epilog, !dbg !4089

sw.epilog:                                        ; preds = %sw.default, %cond.end, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb
  %49 = load i32, i32* %ret, align 4, !dbg !4090
  store i32 %49, i32* %retval, align 4, !dbg !4091
  br label %return, !dbg !4091

return:                                           ; preds = %sw.epilog, %if.then20, %if.then17, %if.then9, %if.then6, %if.then2
  %50 = load i32, i32* %retval, align 4, !dbg !4092
  ret i32 %50, !dbg !4092
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_node_prop_read(%struct.fwnode_handle* %fwnode, i8* %propname, i32 %proptype, i8* %val, i64 %nval) #0 !dbg !4093 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4096, metadata !DIExpression()), !dbg !4097
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i32 %proptype, i32* %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proptype.addr, metadata !4100, metadata !DIExpression()), !dbg !4101
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4106
  %call = call %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %0) #7, !dbg !4107
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4108
  %2 = load i32, i32* %proptype.addr, align 4, !dbg !4109
  %3 = load i8*, i8** %val.addr, align 8, !dbg !4110
  %4 = load i64, i64* %nval.addr, align 8, !dbg !4111
  %call1 = call i32 @acpi_data_prop_read(%struct.acpi_device_data* %call, i8* %1, i32 %2, i8* %3, i64 %4) #7, !dbg !4112
  ret i32 %call1, !dbg !4113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fwnode_handle* @acpi_get_next_subnode(%struct.fwnode_handle* %fwnode, %struct.fwnode_handle* %child) #0 !dbg !4114 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %child.addr = alloca %struct.fwnode_handle*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %head = alloca %struct.list_head*, align 8
  %next = alloca %struct.list_head*, align 8
  %child_adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode11 = alloca %struct.fwnode_handle*, align 8
  %tmp12 = alloca %struct.acpi_device*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp18 = alloca %struct.acpi_device*, align 8
  %__mptr26 = alloca i8*, align 8
  %tmp29 = alloca %struct.acpi_device*, align 8
  %__mptr32 = alloca i8*, align 8
  %tmp36 = alloca %struct.acpi_device*, align 8
  %data = alloca %struct.acpi_data_node*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp45 = alloca %struct.acpi_data_node*, align 8
  %__mptr48 = alloca i8*, align 8
  %tmp51 = alloca %struct.acpi_data_node*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__to_acpi_device_node_fwnode56 = alloca %struct.fwnode_handle*, align 8
  %tmp57 = alloca %struct.acpi_device*, align 8
  %__mptr60 = alloca i8*, align 8
  %tmp63 = alloca %struct.acpi_device*, align 8
  %__to_acpi_data_node_fwnode85 = alloca %struct.fwnode_handle*, align 8
  %tmp86 = alloca %struct.acpi_data_node*, align 8
  %__mptr89 = alloca i8*, align 8
  %tmp92 = alloca %struct.acpi_data_node*, align 8
  %__mptr101 = alloca i8*, align 8
  %tmp104 = alloca %struct.acpi_data_node*, align 8
  %__mptr107 = alloca i8*, align 8
  %tmp111 = alloca %struct.acpi_data_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4115, metadata !DIExpression()), !dbg !4116
  store %struct.fwnode_handle* %child, %struct.fwnode_handle** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child.addr, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4119, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4121, metadata !DIExpression()), !dbg !4123
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4123
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4123
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4123
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %1) #7, !dbg !4123
  br i1 %call, label %cond.true, label %cond.false, !dbg !4123

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4124, metadata !DIExpression()), !dbg !4126
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4126
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4126
  store i8* %3, i8** %__mptr, align 8, !dbg !4126
  br label %do.body, !dbg !4126

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4127

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4126
  %add.ptr = getelementptr i8, i8* %4, i64 -16, !dbg !4126
  %5 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4126
  store %struct.acpi_device* %5, %struct.acpi_device** %tmp1, align 8, !dbg !4127
  %6 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !4126
  br label %cond.end, !dbg !4123

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4123

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %6, %do.end ], [ null, %cond.false ], !dbg !4123
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4123
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4123
  store %struct.acpi_device* %7, %struct.acpi_device** %adev, align 8, !dbg !4120
  call void @llvm.dbg.declare(metadata %struct.list_head** %head, metadata !4129, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.declare(metadata %struct.list_head** %next, metadata !4133, metadata !DIExpression()), !dbg !4134
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4135
  %tobool = icmp ne %struct.fwnode_handle* %8, null, !dbg !4135
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4137

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4138
  %call2 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %9) #7, !dbg !4139
  br i1 %call2, label %if.then, label %if.end40, !dbg !4140

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %child_adev, metadata !4141, metadata !DIExpression()), !dbg !4143
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4144
  %tobool3 = icmp ne %struct.acpi_device* %10, null, !dbg !4144
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4146

if.then4:                                         ; preds = %if.then
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4147
  %children = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 4, !dbg !4148
  store %struct.list_head* %children, %struct.list_head** %head, align 8, !dbg !4149
  br label %if.end, !dbg !4150

if.else:                                          ; preds = %if.then
  br label %nondev, !dbg !4151

if.end:                                           ; preds = %if.then4
  %12 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4152
  %call5 = call i32 @list_empty(%struct.list_head* %12) #7, !dbg !4154
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4154
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4155

if.then7:                                         ; preds = %if.end
  br label %nondev, !dbg !4156

if.end8:                                          ; preds = %if.end
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4157
  %tobool9 = icmp ne %struct.fwnode_handle* %13, null, !dbg !4157
  br i1 %tobool9, label %if.then10, label %if.else31, !dbg !4159

if.then10:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode11, metadata !4160, metadata !DIExpression()), !dbg !4163
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4163
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %__to_acpi_device_node_fwnode11, align 8, !dbg !4163
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode11, align 8, !dbg !4163
  %call13 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %15) #7, !dbg !4163
  br i1 %call13, label %cond.true14, label %cond.false20, !dbg !4163

cond.true14:                                      ; preds = %if.then10
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !4164, metadata !DIExpression()), !dbg !4166
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode11, align 8, !dbg !4166
  %17 = bitcast %struct.fwnode_handle* %16 to i8*, !dbg !4166
  store i8* %17, i8** %__mptr15, align 8, !dbg !4166
  br label %do.body16, !dbg !4166

do.body16:                                        ; preds = %cond.true14
  br label %do.end17, !dbg !4167

do.end17:                                         ; preds = %do.body16
  %18 = load i8*, i8** %__mptr15, align 8, !dbg !4166
  %add.ptr19 = getelementptr i8, i8* %18, i64 -16, !dbg !4166
  %19 = bitcast i8* %add.ptr19 to %struct.acpi_device*, !dbg !4166
  store %struct.acpi_device* %19, %struct.acpi_device** %tmp18, align 8, !dbg !4167
  %20 = load %struct.acpi_device*, %struct.acpi_device** %tmp18, align 8, !dbg !4166
  br label %cond.end21, !dbg !4163

cond.false20:                                     ; preds = %if.then10
  br label %cond.end21, !dbg !4163

cond.end21:                                       ; preds = %cond.false20, %do.end17
  %cond22 = phi %struct.acpi_device* [ %20, %do.end17 ], [ null, %cond.false20 ], !dbg !4163
  store %struct.acpi_device* %cond22, %struct.acpi_device** %tmp12, align 8, !dbg !4163
  %21 = load %struct.acpi_device*, %struct.acpi_device** %tmp12, align 8, !dbg !4163
  store %struct.acpi_device* %21, %struct.acpi_device** %adev, align 8, !dbg !4169
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4170
  %node = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 5, !dbg !4171
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !4172
  %23 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !4172
  store %struct.list_head* %23, %struct.list_head** %next, align 8, !dbg !4173
  %24 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4174
  %25 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4176
  %cmp = icmp eq %struct.list_head* %24, %25, !dbg !4177
  br i1 %cmp, label %if.then24, label %if.end25, !dbg !4178

if.then24:                                        ; preds = %cond.end21
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %child.addr, align 8, !dbg !4179
  br label %nondev, !dbg !4181

if.end25:                                         ; preds = %cond.end21
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !4182, metadata !DIExpression()), !dbg !4184
  %26 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4184
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !4184
  store i8* %27, i8** %__mptr26, align 8, !dbg !4184
  br label %do.body27, !dbg !4184

do.body27:                                        ; preds = %if.end25
  br label %do.end28, !dbg !4185

do.end28:                                         ; preds = %do.body27
  %28 = load i8*, i8** %__mptr26, align 8, !dbg !4184
  %add.ptr30 = getelementptr i8, i8* %28, i64 -64, !dbg !4184
  %29 = bitcast i8* %add.ptr30 to %struct.acpi_device*, !dbg !4184
  store %struct.acpi_device* %29, %struct.acpi_device** %tmp29, align 8, !dbg !4185
  %30 = load %struct.acpi_device*, %struct.acpi_device** %tmp29, align 8, !dbg !4184
  store %struct.acpi_device* %30, %struct.acpi_device** %child_adev, align 8, !dbg !4187
  br label %if.end38, !dbg !4188

if.else31:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !4189, metadata !DIExpression()), !dbg !4192
  %31 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4192
  %next33 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0, !dbg !4192
  %32 = load %struct.list_head*, %struct.list_head** %next33, align 8, !dbg !4192
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !4192
  store i8* %33, i8** %__mptr32, align 8, !dbg !4192
  br label %do.body34, !dbg !4192

do.body34:                                        ; preds = %if.else31
  br label %do.end35, !dbg !4193

do.end35:                                         ; preds = %do.body34
  %34 = load i8*, i8** %__mptr32, align 8, !dbg !4192
  %add.ptr37 = getelementptr i8, i8* %34, i64 -64, !dbg !4192
  %35 = bitcast i8* %add.ptr37 to %struct.acpi_device*, !dbg !4192
  store %struct.acpi_device* %35, %struct.acpi_device** %tmp36, align 8, !dbg !4193
  %36 = load %struct.acpi_device*, %struct.acpi_device** %tmp36, align 8, !dbg !4192
  store %struct.acpi_device* %36, %struct.acpi_device** %child_adev, align 8, !dbg !4195
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %do.end28
  %37 = load %struct.acpi_device*, %struct.acpi_device** %child_adev, align 8, !dbg !4196
  %call39 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %37) #7, !dbg !4197
  store %struct.fwnode_handle* %call39, %struct.fwnode_handle** %retval, align 8, !dbg !4198
  br label %return, !dbg !4198

if.end40:                                         ; preds = %lor.lhs.false
  br label %nondev, !dbg !4199

nondev:                                           ; preds = %if.end40, %if.then24, %if.then7, %if.else
  call void @llvm.dbg.label(metadata !4200), !dbg !4201
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4202
  %tobool41 = icmp ne %struct.fwnode_handle* %38, null, !dbg !4202
  br i1 %tobool41, label %lor.lhs.false42, label %if.then44, !dbg !4204

lor.lhs.false42:                                  ; preds = %nondev
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4205
  %call43 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %39) #7, !dbg !4206
  br i1 %call43, label %if.then44, label %if.end115, !dbg !4207

if.then44:                                        ; preds = %lor.lhs.false42, %nondev
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %data, metadata !4208, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !4211, metadata !DIExpression()), !dbg !4213
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4213
  store %struct.fwnode_handle* %40, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4213
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4213
  %call46 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %41) #7, !dbg !4213
  br i1 %call46, label %cond.true47, label %cond.false53, !dbg !4213

cond.true47:                                      ; preds = %if.then44
  call void @llvm.dbg.declare(metadata i8** %__mptr48, metadata !4214, metadata !DIExpression()), !dbg !4216
  %42 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4216
  %43 = bitcast %struct.fwnode_handle* %42 to i8*, !dbg !4216
  store i8* %43, i8** %__mptr48, align 8, !dbg !4216
  br label %do.body49, !dbg !4216

do.body49:                                        ; preds = %cond.true47
  br label %do.end50, !dbg !4217

do.end50:                                         ; preds = %do.body49
  %44 = load i8*, i8** %__mptr48, align 8, !dbg !4216
  %add.ptr52 = getelementptr i8, i8* %44, i64 -16, !dbg !4216
  %45 = bitcast i8* %add.ptr52 to %struct.acpi_data_node*, !dbg !4216
  store %struct.acpi_data_node* %45, %struct.acpi_data_node** %tmp51, align 8, !dbg !4217
  %46 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp51, align 8, !dbg !4216
  br label %cond.end54, !dbg !4213

cond.false53:                                     ; preds = %if.then44
  br label %cond.end54, !dbg !4213

cond.end54:                                       ; preds = %cond.false53, %do.end50
  %cond55 = phi %struct.acpi_data_node* [ %46, %do.end50 ], [ null, %cond.false53 ], !dbg !4213
  store %struct.acpi_data_node* %cond55, %struct.acpi_data_node** %tmp45, align 8, !dbg !4213
  %47 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp45, align 8, !dbg !4213
  store %struct.acpi_data_node* %47, %struct.acpi_data_node** %data, align 8, !dbg !4210
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode56, metadata !4221, metadata !DIExpression()), !dbg !4223
  %48 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4223
  store %struct.fwnode_handle* %48, %struct.fwnode_handle** %__to_acpi_device_node_fwnode56, align 8, !dbg !4223
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode56, align 8, !dbg !4223
  %call58 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %49) #7, !dbg !4223
  br i1 %call58, label %cond.true59, label %cond.false65, !dbg !4223

cond.true59:                                      ; preds = %cond.end54
  call void @llvm.dbg.declare(metadata i8** %__mptr60, metadata !4224, metadata !DIExpression()), !dbg !4226
  %50 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode56, align 8, !dbg !4226
  %51 = bitcast %struct.fwnode_handle* %50 to i8*, !dbg !4226
  store i8* %51, i8** %__mptr60, align 8, !dbg !4226
  br label %do.body61, !dbg !4226

do.body61:                                        ; preds = %cond.true59
  br label %do.end62, !dbg !4227

do.end62:                                         ; preds = %do.body61
  %52 = load i8*, i8** %__mptr60, align 8, !dbg !4226
  %add.ptr64 = getelementptr i8, i8* %52, i64 -16, !dbg !4226
  %53 = bitcast i8* %add.ptr64 to %struct.acpi_device*, !dbg !4226
  store %struct.acpi_device* %53, %struct.acpi_device** %tmp63, align 8, !dbg !4227
  %54 = load %struct.acpi_device*, %struct.acpi_device** %tmp63, align 8, !dbg !4226
  br label %cond.end66, !dbg !4223

cond.false65:                                     ; preds = %cond.end54
  br label %cond.end66, !dbg !4223

cond.end66:                                       ; preds = %cond.false65, %do.end62
  %cond67 = phi %struct.acpi_device* [ %54, %do.end62 ], [ null, %cond.false65 ], !dbg !4223
  store %struct.acpi_device* %cond67, %struct.acpi_device** %tmp57, align 8, !dbg !4223
  %55 = load %struct.acpi_device*, %struct.acpi_device** %tmp57, align 8, !dbg !4223
  store %struct.acpi_device* %55, %struct.acpi_device** %adev, align 8, !dbg !4229
  %56 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4230
  %tobool68 = icmp ne %struct.acpi_device* %56, null, !dbg !4230
  br i1 %tobool68, label %if.then69, label %if.else71, !dbg !4232

if.then69:                                        ; preds = %cond.end66
  %57 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4233
  %data70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 15, !dbg !4234
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data70, i32 0, i32 3, !dbg !4235
  store %struct.list_head* %subnodes, %struct.list_head** %head, align 8, !dbg !4236
  br label %if.end78, !dbg !4237

if.else71:                                        ; preds = %cond.end66
  %58 = load %struct.acpi_data_node*, %struct.acpi_data_node** %data, align 8, !dbg !4238
  %tobool72 = icmp ne %struct.acpi_data_node* %58, null, !dbg !4238
  br i1 %tobool72, label %if.then73, label %if.else76, !dbg !4240

if.then73:                                        ; preds = %if.else71
  %59 = load %struct.acpi_data_node*, %struct.acpi_data_node** %data, align 8, !dbg !4241
  %data74 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %59, i32 0, i32 4, !dbg !4242
  %subnodes75 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data74, i32 0, i32 3, !dbg !4243
  store %struct.list_head* %subnodes75, %struct.list_head** %head, align 8, !dbg !4244
  br label %if.end77, !dbg !4245

if.else76:                                        ; preds = %if.else71
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4246
  br label %return, !dbg !4246

if.end77:                                         ; preds = %if.then73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then69
  %60 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4247
  %call79 = call i32 @list_empty(%struct.list_head* %60) #7, !dbg !4249
  %tobool80 = icmp ne i32 %call79, 0, !dbg !4249
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !4250

if.then81:                                        ; preds = %if.end78
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4251
  br label %return, !dbg !4251

if.end82:                                         ; preds = %if.end78
  %61 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4252
  %tobool83 = icmp ne %struct.fwnode_handle* %61, null, !dbg !4252
  br i1 %tobool83, label %if.then84, label %if.else106, !dbg !4254

if.then84:                                        ; preds = %if.end82
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode85, metadata !4255, metadata !DIExpression()), !dbg !4258
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4258
  store %struct.fwnode_handle* %62, %struct.fwnode_handle** %__to_acpi_data_node_fwnode85, align 8, !dbg !4258
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode85, align 8, !dbg !4258
  %call87 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %63) #7, !dbg !4258
  br i1 %call87, label %cond.true88, label %cond.false94, !dbg !4258

cond.true88:                                      ; preds = %if.then84
  call void @llvm.dbg.declare(metadata i8** %__mptr89, metadata !4259, metadata !DIExpression()), !dbg !4261
  %64 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode85, align 8, !dbg !4261
  %65 = bitcast %struct.fwnode_handle* %64 to i8*, !dbg !4261
  store i8* %65, i8** %__mptr89, align 8, !dbg !4261
  br label %do.body90, !dbg !4261

do.body90:                                        ; preds = %cond.true88
  br label %do.end91, !dbg !4262

do.end91:                                         ; preds = %do.body90
  %66 = load i8*, i8** %__mptr89, align 8, !dbg !4261
  %add.ptr93 = getelementptr i8, i8* %66, i64 -16, !dbg !4261
  %67 = bitcast i8* %add.ptr93 to %struct.acpi_data_node*, !dbg !4261
  store %struct.acpi_data_node* %67, %struct.acpi_data_node** %tmp92, align 8, !dbg !4262
  %68 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp92, align 8, !dbg !4261
  br label %cond.end95, !dbg !4258

cond.false94:                                     ; preds = %if.then84
  br label %cond.end95, !dbg !4258

cond.end95:                                       ; preds = %cond.false94, %do.end91
  %cond96 = phi %struct.acpi_data_node* [ %68, %do.end91 ], [ null, %cond.false94 ], !dbg !4258
  store %struct.acpi_data_node* %cond96, %struct.acpi_data_node** %tmp86, align 8, !dbg !4258
  %69 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp86, align 8, !dbg !4258
  store %struct.acpi_data_node* %69, %struct.acpi_data_node** %dn, align 8, !dbg !4264
  %70 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !4265
  %sibling = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %70, i32 0, i32 5, !dbg !4266
  %next97 = getelementptr inbounds %struct.list_head, %struct.list_head* %sibling, i32 0, i32 0, !dbg !4267
  %71 = load %struct.list_head*, %struct.list_head** %next97, align 8, !dbg !4267
  store %struct.list_head* %71, %struct.list_head** %next, align 8, !dbg !4268
  %72 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4269
  %73 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4271
  %cmp98 = icmp eq %struct.list_head* %72, %73, !dbg !4272
  br i1 %cmp98, label %if.then99, label %if.end100, !dbg !4273

if.then99:                                        ; preds = %cond.end95
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4274
  br label %return, !dbg !4274

if.end100:                                        ; preds = %cond.end95
  call void @llvm.dbg.declare(metadata i8** %__mptr101, metadata !4275, metadata !DIExpression()), !dbg !4277
  %74 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4277
  %75 = bitcast %struct.list_head* %74 to i8*, !dbg !4277
  store i8* %75, i8** %__mptr101, align 8, !dbg !4277
  br label %do.body102, !dbg !4277

do.body102:                                       ; preds = %if.end100
  br label %do.end103, !dbg !4278

do.end103:                                        ; preds = %do.body102
  %76 = load i8*, i8** %__mptr101, align 8, !dbg !4277
  %add.ptr105 = getelementptr i8, i8* %76, i64 -96, !dbg !4277
  %77 = bitcast i8* %add.ptr105 to %struct.acpi_data_node*, !dbg !4277
  store %struct.acpi_data_node* %77, %struct.acpi_data_node** %tmp104, align 8, !dbg !4278
  %78 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp104, align 8, !dbg !4277
  store %struct.acpi_data_node* %78, %struct.acpi_data_node** %dn, align 8, !dbg !4280
  br label %if.end113, !dbg !4281

if.else106:                                       ; preds = %if.end82
  call void @llvm.dbg.declare(metadata i8** %__mptr107, metadata !4282, metadata !DIExpression()), !dbg !4285
  %79 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !4285
  %next108 = getelementptr inbounds %struct.list_head, %struct.list_head* %79, i32 0, i32 0, !dbg !4285
  %80 = load %struct.list_head*, %struct.list_head** %next108, align 8, !dbg !4285
  %81 = bitcast %struct.list_head* %80 to i8*, !dbg !4285
  store i8* %81, i8** %__mptr107, align 8, !dbg !4285
  br label %do.body109, !dbg !4285

do.body109:                                       ; preds = %if.else106
  br label %do.end110, !dbg !4286

do.end110:                                        ; preds = %do.body109
  %82 = load i8*, i8** %__mptr107, align 8, !dbg !4285
  %add.ptr112 = getelementptr i8, i8* %82, i64 -96, !dbg !4285
  %83 = bitcast i8* %add.ptr112 to %struct.acpi_data_node*, !dbg !4285
  store %struct.acpi_data_node* %83, %struct.acpi_data_node** %tmp111, align 8, !dbg !4286
  %84 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp111, align 8, !dbg !4285
  store %struct.acpi_data_node* %84, %struct.acpi_data_node** %dn, align 8, !dbg !4288
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %do.end103
  %85 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !4289
  %fwnode114 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %85, i32 0, i32 2, !dbg !4290
  store %struct.fwnode_handle* %fwnode114, %struct.fwnode_handle** %retval, align 8, !dbg !4291
  br label %return, !dbg !4291

if.end115:                                        ; preds = %lor.lhs.false42
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4292
  br label %return, !dbg !4292

return:                                           ; preds = %if.end115, %if.end113, %if.then99, %if.then81, %if.else76, %if.end38
  %86 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4293
  ret %struct.fwnode_handle* %86, !dbg !4293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %fwnode) #0 !dbg !4294 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4295, metadata !DIExpression()), !dbg !4296
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4297
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !4297
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !4298
  br i1 %call, label %land.end, label %land.rhs, !dbg !4299

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4300
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !4301
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !4301
  %cmp = icmp eq %struct.fwnode_operations* %3, @acpi_device_fwnode_ops, !dbg !4302
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !4303
  ret i1 %4, !dbg !4304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4305 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  br label %do.body, !dbg !4310

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4312

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4310
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4310
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4310
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4312
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4310
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4314
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4315
  %conv = zext i1 %cmp to i32, !dbg !4315
  ret i32 %conv, !dbg !4316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %fwnode) #0 !dbg !4317 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4320
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !4320
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !4321
  br i1 %call, label %land.end, label %land.rhs, !dbg !4322

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4323
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !4324
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !4324
  %cmp = icmp eq %struct.fwnode_operations* %3, @acpi_data_fwnode_ops, !dbg !4325
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !4326
  ret i1 %4, !dbg !4327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fwnode_handle* @acpi_node_get_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !4328 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_data_node*, align 8
  %handle = alloca i8*, align 8
  %parent_handle = alloca i8*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.acpi_device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4331
  %call = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %0) #7, !dbg !4333
  br i1 %call, label %if.then, label %if.else, !dbg !4334

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !4335, metadata !DIExpression()), !dbg !4338
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4338
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4338
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4338
  %call1 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %2) #7, !dbg !4338
  br i1 %call1, label %cond.true, label %cond.false, !dbg !4338

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4339, metadata !DIExpression()), !dbg !4341
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4341
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !4341
  store i8* %4, i8** %__mptr, align 8, !dbg !4341
  br label %do.body, !dbg !4341

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4342

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4341
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !4341
  %6 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !4341
  store %struct.acpi_data_node* %6, %struct.acpi_data_node** %tmp2, align 8, !dbg !4342
  %7 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp2, align 8, !dbg !4341
  br label %cond.end, !dbg !4338

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4338

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_data_node* [ %7, %do.end ], [ null, %cond.false ], !dbg !4338
  store %struct.acpi_data_node* %cond, %struct.acpi_data_node** %tmp, align 8, !dbg !4338
  %8 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !4338
  %parent = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %8, i32 0, i32 3, !dbg !4344
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4344
  store %struct.fwnode_handle* %9, %struct.fwnode_handle** %retval, align 8, !dbg !4345
  br label %return, !dbg !4345

if.else:                                          ; preds = %entry
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4346
  %call3 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %10) #7, !dbg !4348
  br i1 %call3, label %if.then4, label %if.end24, !dbg !4349

if.then4:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !4350, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.declare(metadata i8** %parent_handle, metadata !4353, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4355, metadata !DIExpression()), !dbg !4357
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4357
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4357
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4357
  %call6 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %12) #7, !dbg !4357
  br i1 %call6, label %cond.true7, label %cond.false13, !dbg !4357

cond.true7:                                       ; preds = %if.then4
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !4358, metadata !DIExpression()), !dbg !4360
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4360
  %14 = bitcast %struct.fwnode_handle* %13 to i8*, !dbg !4360
  store i8* %14, i8** %__mptr8, align 8, !dbg !4360
  br label %do.body9, !dbg !4360

do.body9:                                         ; preds = %cond.true7
  br label %do.end10, !dbg !4361

do.end10:                                         ; preds = %do.body9
  %15 = load i8*, i8** %__mptr8, align 8, !dbg !4360
  %add.ptr12 = getelementptr i8, i8* %15, i64 -16, !dbg !4360
  %16 = bitcast i8* %add.ptr12 to %struct.acpi_device*, !dbg !4360
  store %struct.acpi_device* %16, %struct.acpi_device** %tmp11, align 8, !dbg !4361
  %17 = load %struct.acpi_device*, %struct.acpi_device** %tmp11, align 8, !dbg !4360
  br label %cond.end14, !dbg !4357

cond.false13:                                     ; preds = %if.then4
  br label %cond.end14, !dbg !4357

cond.end14:                                       ; preds = %cond.false13, %do.end10
  %cond15 = phi %struct.acpi_device* [ %17, %do.end10 ], [ null, %cond.false13 ], !dbg !4357
  store %struct.acpi_device* %cond15, %struct.acpi_device** %tmp5, align 8, !dbg !4357
  %18 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !4357
  %handle16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1, !dbg !4363
  %19 = load i8*, i8** %handle16, align 8, !dbg !4363
  store i8* %19, i8** %handle, align 8, !dbg !4364
  %20 = load i8*, i8** %handle, align 8, !dbg !4365
  %call17 = call i32 @acpi_get_parent(i8* %20, i8** %parent_handle) #7, !dbg !4365
  %tobool = icmp ne i32 %call17, 0, !dbg !4365
  br i1 %tobool, label %if.end23, label %if.then18, !dbg !4367

if.then18:                                        ; preds = %cond.end14
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4368, metadata !DIExpression()), !dbg !4370
  %21 = load i8*, i8** %parent_handle, align 8, !dbg !4371
  %call19 = call i32 @acpi_bus_get_device(i8* %21, %struct.acpi_device** %adev) #7, !dbg !4373
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4373
  br i1 %tobool20, label %if.end, label %if.then21, !dbg !4374

if.then21:                                        ; preds = %if.then18
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4375
  %call22 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %22) #7, !dbg !4376
  store %struct.fwnode_handle* %call22, %struct.fwnode_handle** %retval, align 8, !dbg !4377
  br label %return, !dbg !4377

if.end:                                           ; preds = %if.then18
  br label %if.end23, !dbg !4378

if.end23:                                         ; preds = %if.end, %cond.end14
  br label %if.end24, !dbg !4379

if.end24:                                         ; preds = %if.end23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4380
  br label %return, !dbg !4380

return:                                           ; preds = %if.end25, %if.then21, %cond.end
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4381
  ret %struct.fwnode_handle* %23, !dbg !4381
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_parent(i8*, i8**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_fwnode_device_is_available(%struct.fwnode_handle* %fwnode) #0 !dbg !4382 {
entry:
  %retval = alloca i1, align 1
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4383, metadata !DIExpression()), !dbg !4384
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4385
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %0) #7, !dbg !4387
  br i1 %call, label %if.end, label %if.then, !dbg !4388

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4389
  br label %return, !dbg !4389

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4390, metadata !DIExpression()), !dbg !4392
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4392
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4392
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4392
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !4392
  br i1 %call1, label %cond.true, label %cond.false, !dbg !4392

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4393, metadata !DIExpression()), !dbg !4395
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4395
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !4395
  store i8* %4, i8** %__mptr, align 8, !dbg !4395
  br label %do.body, !dbg !4395

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4396

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4395
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !4395
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4395
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !4396
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !4395
  br label %cond.end, !dbg !4392

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4392

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !4392
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4392
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4392
  %call3 = call zeroext i1 @acpi_device_is_present(%struct.acpi_device* %8) #7, !dbg !4398
  store i1 %call3, i1* %retval, align 1, !dbg !4399
  br label %return, !dbg !4399

return:                                           ; preds = %cond.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !4400
  ret i1 %9, !dbg !4400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_fwnode_device_get_match_data(%struct.fwnode_handle* %fwnode, %struct.device* %dev) #0 !dbg !4401 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4406
  %call = call i8* @acpi_device_get_match_data(%struct.device* %0) #7, !dbg !4407
  ret i8* %call, !dbg !4408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_fwnode_property_present(%struct.fwnode_handle* %fwnode, i8* %propname) #0 !dbg !4409 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4414
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4415
  %call = call i32 @acpi_node_prop_get(%struct.fwnode_handle* %0, i8* %1, i8** null) #7, !dbg !4416
  %tobool = icmp ne i32 %call, 0, !dbg !4417
  %lnot = xor i1 %tobool, true, !dbg !4417
  ret i1 %lnot, !dbg !4418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fwnode_property_read_int_array(%struct.fwnode_handle* %fwnode, i8* %propname, i32 %elem_size, i8* %val, i64 %nval) #0 !dbg !4419 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %type = alloca i32, align 4
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata i32* %type, metadata !4430, metadata !DIExpression()), !dbg !4431
  %0 = load i32, i32* %elem_size.addr, align 4, !dbg !4432
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
  ], !dbg !4433

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %type, align 4, !dbg !4434
  br label %sw.epilog, !dbg !4436

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %type, align 4, !dbg !4437
  br label %sw.epilog, !dbg !4438

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %type, align 4, !dbg !4439
  br label %sw.epilog, !dbg !4440

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %type, align 4, !dbg !4441
  br label %sw.epilog, !dbg !4442

sw.default:                                       ; preds = %entry
  store i32 -6, i32* %retval, align 4, !dbg !4443
  br label %return, !dbg !4443

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4444
  %2 = load i8*, i8** %propname.addr, align 8, !dbg !4445
  %3 = load i32, i32* %type, align 4, !dbg !4446
  %4 = load i8*, i8** %val.addr, align 8, !dbg !4447
  %5 = load i64, i64* %nval.addr, align 8, !dbg !4448
  %call = call i32 @acpi_node_prop_read(%struct.fwnode_handle* %1, i8* %2, i32 %3, i8* %4, i64 %5) #7, !dbg !4449
  store i32 %call, i32* %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

return:                                           ; preds = %sw.epilog, %sw.default
  %6 = load i32, i32* %retval, align 4, !dbg !4451
  ret i32 %6, !dbg !4451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fwnode_property_read_string_array(%struct.fwnode_handle* %fwnode, i8* %propname, i8** %val, i64 %nval) #0 !dbg !4452 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  store i8** %val, i8*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %val.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4461
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4462
  %2 = load i8**, i8*** %val.addr, align 8, !dbg !4463
  %3 = bitcast i8** %2 to i8*, !dbg !4463
  %4 = load i64, i64* %nval.addr, align 8, !dbg !4464
  %call = call i32 @acpi_node_prop_read(%struct.fwnode_handle* %0, i8* %1, i32 4, i8* %3, i64 %4) #7, !dbg !4465
  ret i32 %call, !dbg !4466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_fwnode_get_name(%struct.fwnode_handle* %fwnode) #0 !dbg !4467 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %parent = alloca %struct.fwnode_handle*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_data_node*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp6 = alloca %struct.acpi_device*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp12 = alloca %struct.acpi_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp36 = alloca i64, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent, metadata !4472, metadata !DIExpression()), !dbg !4473
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4474
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %0) #7, !dbg !4475
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %parent, align 8, !dbg !4476
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4477
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !4477
  br i1 %tobool, label %if.end, label %if.then, !dbg !4479

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8, !dbg !4480
  br label %return, !dbg !4480

if.end:                                           ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4481
  call void @fwnode_handle_put(%struct.fwnode_handle* %2) #7, !dbg !4482
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4483
  %call1 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %3) #7, !dbg !4485
  br i1 %call1, label %if.then2, label %if.end5, !dbg !4486

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !4487, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !4490, metadata !DIExpression()), !dbg !4492
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4492
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4492
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4492
  %call3 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %5) #7, !dbg !4492
  br i1 %call3, label %cond.true, label %cond.false, !dbg !4492

cond.true:                                        ; preds = %if.then2
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4493, metadata !DIExpression()), !dbg !4495
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !4495
  %7 = bitcast %struct.fwnode_handle* %6 to i8*, !dbg !4495
  store i8* %7, i8** %__mptr, align 8, !dbg !4495
  br label %do.body, !dbg !4495

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4496

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4495
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !4495
  %9 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !4495
  store %struct.acpi_data_node* %9, %struct.acpi_data_node** %tmp4, align 8, !dbg !4496
  %10 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp4, align 8, !dbg !4495
  br label %cond.end, !dbg !4492

cond.false:                                       ; preds = %if.then2
  br label %cond.end, !dbg !4492

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_data_node* [ %10, %do.end ], [ null, %cond.false ], !dbg !4492
  store %struct.acpi_data_node* %cond, %struct.acpi_data_node** %tmp, align 8, !dbg !4492
  %11 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !4492
  store %struct.acpi_data_node* %11, %struct.acpi_data_node** %dn, align 8, !dbg !4489
  %12 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !4498
  %name = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %12, i32 0, i32 0, !dbg !4499
  %13 = load i8*, i8** %name, align 8, !dbg !4499
  store i8* %13, i8** %retval, align 8, !dbg !4500
  br label %return, !dbg !4500

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4501, metadata !DIExpression()), !dbg !4503
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4503
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4503
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4503
  %call7 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %15) #7, !dbg !4503
  br i1 %call7, label %cond.true8, label %cond.false14, !dbg !4503

cond.true8:                                       ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4504, metadata !DIExpression()), !dbg !4506
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4506
  %17 = bitcast %struct.fwnode_handle* %16 to i8*, !dbg !4506
  store i8* %17, i8** %__mptr9, align 8, !dbg !4506
  br label %do.body10, !dbg !4506

do.body10:                                        ; preds = %cond.true8
  br label %do.end11, !dbg !4507

do.end11:                                         ; preds = %do.body10
  %18 = load i8*, i8** %__mptr9, align 8, !dbg !4506
  %add.ptr13 = getelementptr i8, i8* %18, i64 -16, !dbg !4506
  %19 = bitcast i8* %add.ptr13 to %struct.acpi_device*, !dbg !4506
  store %struct.acpi_device* %19, %struct.acpi_device** %tmp12, align 8, !dbg !4507
  %20 = load %struct.acpi_device*, %struct.acpi_device** %tmp12, align 8, !dbg !4506
  br label %cond.end15, !dbg !4503

cond.false14:                                     ; preds = %if.end5
  br label %cond.end15, !dbg !4503

cond.end15:                                       ; preds = %cond.false14, %do.end11
  %cond16 = phi %struct.acpi_device* [ %20, %do.end11 ], [ null, %cond.false14 ], !dbg !4503
  store %struct.acpi_device* %cond16, %struct.acpi_device** %tmp6, align 8, !dbg !4503
  %21 = load %struct.acpi_device*, %struct.acpi_device** %tmp6, align 8, !dbg !4503
  store %struct.acpi_device* %21, %struct.acpi_device** %adev, align 8, !dbg !4509
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4510, metadata !DIExpression()), !dbg !4513
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4513
  %tobool17 = icmp ne %struct.acpi_device* %22, null, !dbg !4513
  %lnot = xor i1 %tobool17, true, !dbg !4513
  %lnot18 = xor i1 %lnot, true, !dbg !4513
  %lnot19 = xor i1 %lnot18, true, !dbg !4513
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !4513
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4513
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !4514
  %tobool20 = icmp ne i32 %23, 0, !dbg !4514
  %lnot21 = xor i1 %tobool20, true, !dbg !4514
  %lnot23 = xor i1 %lnot21, true, !dbg !4514
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4514
  %conv = sext i32 %lnot.ext24 to i64, !dbg !4514
  %tobool25 = icmp ne i64 %conv, 0, !dbg !4514
  br i1 %tobool25, label %if.then26, label %if.end35, !dbg !4513

if.then26:                                        ; preds = %cond.end15
  br label %do.body27, !dbg !4514

do.body27:                                        ; preds = %if.then26
  br label %do.body28, !dbg !4516

do.body28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4518

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !4516

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 1332, i32 2305, i64 12) #8, !dbg !4520, !srcloc !4522
  br label %do.end31, !dbg !4520

do.end31:                                         ; preds = %do.body30
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 199) #8, !dbg !4523, !srcloc !4525
  br label %do.body32, !dbg !4516

do.body32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4526

do.end33:                                         ; preds = %do.body32
  br label %do.end34, !dbg !4516

do.end34:                                         ; preds = %do.end33
  br label %if.end35, !dbg !4516

if.end35:                                         ; preds = %do.end34, %cond.end15
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !4513
  %tobool37 = icmp ne i32 %24, 0, !dbg !4513
  %lnot38 = xor i1 %tobool37, true, !dbg !4513
  %lnot40 = xor i1 %lnot38, true, !dbg !4513
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !4513
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !4513
  store i64 %conv42, i64* %tmp36, align 8, !dbg !4514
  %25 = load i64, i64* %tmp36, align 8, !dbg !4513
  %tobool43 = icmp ne i64 %25, 0, !dbg !4528
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !4529

if.then44:                                        ; preds = %if.end35
  store i8* null, i8** %retval, align 8, !dbg !4530
  br label %return, !dbg !4530

if.end45:                                         ; preds = %if.end35
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4531
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 10, !dbg !4531
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !4531
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !4531
  store i8* %arraydecay, i8** %retval, align 8, !dbg !4532
  br label %return, !dbg !4532

return:                                           ; preds = %if.end45, %if.then44, %cond.end, %if.then
  %27 = load i8*, i8** %retval, align 8, !dbg !4533
  ret i8* %27, !dbg !4533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_fwnode_get_name_prefix(%struct.fwnode_handle* %fwnode) #0 !dbg !4534 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %parent = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent, metadata !4537, metadata !DIExpression()), !dbg !4538
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4539
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %0) #7, !dbg !4540
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %parent, align 8, !dbg !4541
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4542
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !4542
  br i1 %tobool, label %if.end, label %if.then, !dbg !4544

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8, !dbg !4545
  br label %return, !dbg !4545

if.end:                                           ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4546
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %2) #7, !dbg !4547
  store %struct.fwnode_handle* %call1, %struct.fwnode_handle** %parent, align 8, !dbg !4548
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4549
  %tobool2 = icmp ne %struct.fwnode_handle* %3, null, !dbg !4549
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4551

if.then3:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8, !dbg !4552
  br label %return, !dbg !4552

if.end4:                                          ; preds = %if.end
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4553
  call void @fwnode_handle_put(%struct.fwnode_handle* %4) #7, !dbg !4554
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8, !dbg !4555
  br label %return, !dbg !4555

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4556
  ret i8* %5, !dbg !4556
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fwnode_get_reference_args(%struct.fwnode_handle* %fwnode, i8* %prop, i8* %nargs_prop, i32 %args_count, i32 %index, %struct.fwnode_reference_args* %args) #0 !dbg !4557 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %prop.addr = alloca i8*, align 8
  %nargs_prop.addr = alloca i8*, align 8
  %args_count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %args.addr = alloca %struct.fwnode_reference_args*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4558, metadata !DIExpression()), !dbg !4559
  store i8* %prop, i8** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store i8* %nargs_prop, i8** %nargs_prop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nargs_prop.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store i32 %args_count, i32* %args_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %args_count.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  store %struct.fwnode_reference_args* %args, %struct.fwnode_reference_args** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args** %args.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4570
  %1 = load i8*, i8** %prop.addr, align 8, !dbg !4571
  %2 = load i32, i32* %index.addr, align 4, !dbg !4572
  %conv = zext i32 %2 to i64, !dbg !4572
  %3 = load i32, i32* %args_count.addr, align 4, !dbg !4573
  %conv1 = zext i32 %3 to i64, !dbg !4573
  %4 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !4574
  %call = call i32 @__acpi_node_get_property_reference(%struct.fwnode_handle* %0, i8* %1, i64 %conv, i64 %conv1, %struct.fwnode_reference_args* %4) #7, !dbg !4575
  ret i32 %call, !dbg !4576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_graph_get_next_endpoint(%struct.fwnode_handle* %fwnode, %struct.fwnode_handle* %prev) #0 !dbg !4577 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %prev.addr = alloca %struct.fwnode_handle*, align 8
  %port = alloca %struct.fwnode_handle*, align 8
  %endpoint = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  store %struct.fwnode_handle* %prev, %struct.fwnode_handle** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %prev.addr, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %port, metadata !4582, metadata !DIExpression()), !dbg !4583
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %port, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %endpoint, metadata !4584, metadata !DIExpression()), !dbg !4585
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %prev.addr, align 8, !dbg !4586
  %tobool = icmp ne %struct.fwnode_handle* %0, null, !dbg !4586
  br i1 %tobool, label %if.else, label %if.then, !dbg !4588

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4589

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4591
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4593
  %call = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %1, %struct.fwnode_handle* %2) #7, !dbg !4594
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %port, align 8, !dbg !4595
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4596
  %call1 = call zeroext i1 @is_acpi_graph_node(%struct.fwnode_handle* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !4598
  br i1 %call1, label %if.then2, label %if.end, !dbg !4599

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !4600

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !4601

do.cond:                                          ; preds = %if.end
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4602
  %tobool3 = icmp ne %struct.fwnode_handle* %4, null, !dbg !4601
  br i1 %tobool3, label %do.body, label %do.end, !dbg !4601, !llvm.loop !4603

do.end:                                           ; preds = %do.cond, %if.then2
  br label %if.end5, !dbg !4605

if.else:                                          ; preds = %entry
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %prev.addr, align 8, !dbg !4606
  %call4 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %5) #7, !dbg !4608
  store %struct.fwnode_handle* %call4, %struct.fwnode_handle** %port, align 8, !dbg !4609
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4610
  %tobool6 = icmp ne %struct.fwnode_handle* %6, null, !dbg !4610
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4612

if.then7:                                         ; preds = %if.end5
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4613
  br label %return, !dbg !4613

if.end8:                                          ; preds = %if.end5
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4614
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %prev.addr, align 8, !dbg !4615
  %call9 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %7, %struct.fwnode_handle* %8) #7, !dbg !4616
  store %struct.fwnode_handle* %call9, %struct.fwnode_handle** %endpoint, align 8, !dbg !4617
  br label %while.cond, !dbg !4618

while.cond:                                       ; preds = %if.end18, %if.end8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %endpoint, align 8, !dbg !4619
  %tobool10 = icmp ne %struct.fwnode_handle* %9, null, !dbg !4620
  %lnot = xor i1 %tobool10, true, !dbg !4620
  br i1 %lnot, label %while.body, label %while.end, !dbg !4618

while.body:                                       ; preds = %while.cond
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4621
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4623
  %call11 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %10, %struct.fwnode_handle* %11) #7, !dbg !4624
  store %struct.fwnode_handle* %call11, %struct.fwnode_handle** %port, align 8, !dbg !4625
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4626
  %tobool12 = icmp ne %struct.fwnode_handle* %12, null, !dbg !4626
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4628

if.then13:                                        ; preds = %while.body
  br label %while.end, !dbg !4629

if.end14:                                         ; preds = %while.body
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4630
  %call15 = call zeroext i1 @is_acpi_graph_node(%struct.fwnode_handle* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !4632
  br i1 %call15, label %if.then16, label %if.end18, !dbg !4633

if.then16:                                        ; preds = %if.end14
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port, align 8, !dbg !4634
  %call17 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %14, %struct.fwnode_handle* null) #7, !dbg !4635
  store %struct.fwnode_handle* %call17, %struct.fwnode_handle** %endpoint, align 8, !dbg !4636
  br label %if.end18, !dbg !4637

if.end18:                                         ; preds = %if.then16, %if.end14
  br label %while.cond, !dbg !4618, !llvm.loop !4638

while.end:                                        ; preds = %if.then13, %while.cond
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %endpoint, align 8, !dbg !4640
  %call19 = call zeroext i1 @is_acpi_graph_node(%struct.fwnode_handle* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !4642
  br i1 %call19, label %if.end21, label %if.then20, !dbg !4643

if.then20:                                        ; preds = %while.end
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4644
  br label %return, !dbg !4644

if.end21:                                         ; preds = %while.end
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %endpoint, align 8, !dbg !4645
  store %struct.fwnode_handle* %16, %struct.fwnode_handle** %retval, align 8, !dbg !4646
  br label %return, !dbg !4646

return:                                           ; preds = %if.end21, %if.then20, %if.then7
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4647
  ret %struct.fwnode_handle* %17, !dbg !4647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_graph_get_remote_endpoint(%struct.fwnode_handle* %__fwnode) #0 !dbg !4648 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %__fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %fwnode = alloca %struct.fwnode_handle*, align 8
  %port_nr = alloca i32, align 4
  %endpoint_nr = alloca i32, align 4
  %args = alloca %struct.fwnode_reference_args, align 8
  %ret = alloca i32, align 4
  store %struct.fwnode_handle* %__fwnode, %struct.fwnode_handle** %__fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__fwnode.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.declare(metadata i32* %port_nr, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.declare(metadata i32* %endpoint_nr, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args* %args, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4659, metadata !DIExpression()), !dbg !4660
  %0 = bitcast %struct.fwnode_reference_args* %args to i8*, !dbg !4661
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !4661
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__fwnode.addr, align 8, !dbg !4662
  %call = call i32 @acpi_node_get_property_reference(%struct.fwnode_handle* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 0, %struct.fwnode_reference_args* %args) #7, !dbg !4663
  store i32 %call, i32* %ret, align 4, !dbg !4664
  %2 = load i32, i32* %ret, align 4, !dbg !4665
  %tobool = icmp ne i32 %2, 0, !dbg !4665
  br i1 %tobool, label %if.then, label %if.end, !dbg !4667

if.then:                                          ; preds = %entry
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4668
  br label %return, !dbg !4668

if.end:                                           ; preds = %entry
  %fwnode1 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 0, !dbg !4669
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8, !dbg !4669
  %call2 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %3) #7, !dbg !4671
  br i1 %call2, label %if.end6, label %if.then3, !dbg !4672

if.then3:                                         ; preds = %if.end
  %nargs = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 1, !dbg !4673
  %4 = load i32, i32* %nargs, align 8, !dbg !4673
  %tobool4 = icmp ne i32 %4, 0, !dbg !4674
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !4674

cond.true:                                        ; preds = %if.then3
  br label %cond.end, !dbg !4674

cond.false:                                       ; preds = %if.then3
  %fwnode5 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 0, !dbg !4675
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode5, align 8, !dbg !4675
  br label %cond.end, !dbg !4674

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ null, %cond.true ], [ %5, %cond.false ], !dbg !4674
  store %struct.fwnode_handle* %cond, %struct.fwnode_handle** %retval, align 8, !dbg !4676
  br label %return, !dbg !4676

if.end6:                                          ; preds = %if.end
  %nargs7 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 1, !dbg !4677
  %6 = load i32, i32* %nargs7, align 8, !dbg !4677
  %cmp = icmp ne i32 %6, 2, !dbg !4679
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4680

if.then8:                                         ; preds = %if.end6
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4681
  br label %return, !dbg !4681

if.end9:                                          ; preds = %if.end6
  %fwnode10 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 0, !dbg !4682
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode10, align 8, !dbg !4682
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %fwnode, align 8, !dbg !4683
  %args11 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 2, !dbg !4684
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %args11, i64 0, i64 0, !dbg !4685
  %8 = load i64, i64* %arrayidx, align 8, !dbg !4685
  %conv = trunc i64 %8 to i32, !dbg !4685
  store i32 %conv, i32* %port_nr, align 4, !dbg !4686
  %args12 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %args, i32 0, i32 2, !dbg !4687
  %arrayidx13 = getelementptr [8 x i64], [8 x i64]* %args12, i64 0, i64 1, !dbg !4688
  %9 = load i64, i64* %arrayidx13, align 8, !dbg !4688
  %conv14 = trunc i64 %9 to i32, !dbg !4688
  store i32 %conv14, i32* %endpoint_nr, align 4, !dbg !4689
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4690
  %11 = load i32, i32* %port_nr, align 4, !dbg !4691
  %call15 = call %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %11) #7, !dbg !4692
  store %struct.fwnode_handle* %call15, %struct.fwnode_handle** %fwnode, align 8, !dbg !4693
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4694
  %13 = load i32, i32* %endpoint_nr, align 4, !dbg !4695
  %call16 = call %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %13) #7, !dbg !4696
  store %struct.fwnode_handle* %call16, %struct.fwnode_handle** %retval, align 8, !dbg !4697
  br label %return, !dbg !4697

return:                                           ; preds = %if.end9, %if.then8, %cond.end, %if.then
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4698
  ret %struct.fwnode_handle* %14, !dbg !4698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_get_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !4699 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4700, metadata !DIExpression()), !dbg !4701
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4702
  %call = call %struct.fwnode_handle* @acpi_node_get_parent(%struct.fwnode_handle* %0) #7, !dbg !4703
  ret %struct.fwnode_handle* %call, !dbg !4704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fwnode_graph_parse_endpoint(%struct.fwnode_handle* %fwnode, %struct.fwnode_endpoint* %endpoint) #0 !dbg !4705 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %endpoint.addr = alloca %struct.fwnode_endpoint*, align 8
  %port_fwnode = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  store %struct.fwnode_endpoint* %endpoint, %struct.fwnode_endpoint** %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_endpoint** %endpoint.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %port_fwnode, metadata !4710, metadata !DIExpression()), !dbg !4711
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4712
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %0) #7, !dbg !4713
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %port_fwnode, align 8, !dbg !4711
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4714
  %2 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !4715
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %2, i32 0, i32 2, !dbg !4716
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %local_fwnode, align 8, !dbg !4717
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port_fwnode, align 8, !dbg !4718
  %4 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !4720
  %port = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %4, i32 0, i32 0, !dbg !4721
  %call1 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* %port) #7, !dbg !4722
  %tobool = icmp ne i32 %call1, 0, !dbg !4722
  br i1 %tobool, label %if.then, label %if.end, !dbg !4723

if.then:                                          ; preds = %entry
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %port_fwnode, align 8, !dbg !4724
  %6 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !4725
  %port2 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %6, i32 0, i32 0, !dbg !4726
  %call3 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %port2) #7, !dbg !4727
  br label %if.end, !dbg !4727

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4728
  %8 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !4730
  %id = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %8, i32 0, i32 1, !dbg !4731
  %call4 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* %id) #7, !dbg !4732
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4732
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !4733

if.then6:                                         ; preds = %if.end
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4734
  %10 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !4735
  %id7 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %10, i32 0, i32 1, !dbg !4736
  %call8 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %id7) #7, !dbg !4737
  br label %if.end9, !dbg !4737

if.end9:                                          ; preds = %if.then6, %if.end
  ret i32 0, !dbg !4738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !4739 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4745
  %tobool = icmp ne i8* %0, null, !dbg !4745
  %lnot = xor i1 %tobool, true, !dbg !4745
  %lnot1 = xor i1 %lnot, true, !dbg !4745
  %lnot2 = xor i1 %lnot1, true, !dbg !4745
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4745
  %conv = sext i32 %lnot.ext to i64, !dbg !4745
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4745
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4746

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4747
  %2 = ptrtoint i8* %1 to i64, !dbg !4747
  %3 = inttoptr i64 %2 to i8*, !dbg !4747
  %4 = ptrtoint i8* %3 to i64, !dbg !4747
  %cmp = icmp uge i64 %4, -4095, !dbg !4747
  %lnot5 = xor i1 %cmp, true, !dbg !4747
  %lnot7 = xor i1 %lnot5, true, !dbg !4747
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4747
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4747
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !4746
  br label %lor.end, !dbg !4746

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !4748
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4749 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4753, metadata !DIExpression()), !dbg !4758
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4760, metadata !DIExpression()), !dbg !4761
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  %0 = load i64, i64* %size.addr, align 8, !dbg !4764
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4766
  br i1 %1, label %if.then, label %if.end447, !dbg !4767

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4768
  %tobool = icmp ne i64 %2, 0, !dbg !4768
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4771

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4773
  %cmp = icmp ult i64 %3, 4096, !dbg !4775
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4776

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4777
  br label %return, !dbg !4777

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub = sub i64 %4, 1, !dbg !4778
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4778
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4778

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub4 = sub i64 %6, 1, !dbg !4778
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4778
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4778

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub6 = sub i64 %8, 1, !dbg !4778
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4778
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4778

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4778

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub9 = sub i64 %9, 1, !dbg !4778
  %and = and i64 %sub9, -9223372036854775808, !dbg !4778
  %tobool10 = icmp ne i64 %and, 0, !dbg !4778
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4778

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4778

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub13 = sub i64 %10, 1, !dbg !4778
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4778
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4778
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4778

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4778

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub18 = sub i64 %11, 1, !dbg !4778
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4778
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4778
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4778

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4778

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub23 = sub i64 %12, 1, !dbg !4778
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4778
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4778
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4778

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4778

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub28 = sub i64 %13, 1, !dbg !4778
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4778
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4778
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4778

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4778

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub33 = sub i64 %14, 1, !dbg !4778
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4778
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4778
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4778

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4778

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub38 = sub i64 %15, 1, !dbg !4778
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4778
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4778
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4778

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4778

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub43 = sub i64 %16, 1, !dbg !4778
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4778
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4778
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4778

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4778

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub48 = sub i64 %17, 1, !dbg !4778
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4778
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4778
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4778

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4778

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub53 = sub i64 %18, 1, !dbg !4778
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4778
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4778
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4778

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4778

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub58 = sub i64 %19, 1, !dbg !4778
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4778
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4778
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4778

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4778

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub63 = sub i64 %20, 1, !dbg !4778
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4778
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4778
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4778

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4778

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub68 = sub i64 %21, 1, !dbg !4778
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4778
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4778
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4778

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4778

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub73 = sub i64 %22, 1, !dbg !4778
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4778
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4778
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4778

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4778

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub78 = sub i64 %23, 1, !dbg !4778
  %and79 = and i64 %sub78, 562949953421312, !dbg !4778
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4778
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4778

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4778

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub83 = sub i64 %24, 1, !dbg !4778
  %and84 = and i64 %sub83, 281474976710656, !dbg !4778
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4778
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4778

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4778

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub88 = sub i64 %25, 1, !dbg !4778
  %and89 = and i64 %sub88, 140737488355328, !dbg !4778
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4778
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4778

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4778

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub93 = sub i64 %26, 1, !dbg !4778
  %and94 = and i64 %sub93, 70368744177664, !dbg !4778
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4778
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4778

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4778

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub98 = sub i64 %27, 1, !dbg !4778
  %and99 = and i64 %sub98, 35184372088832, !dbg !4778
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4778
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4778

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4778

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub103 = sub i64 %28, 1, !dbg !4778
  %and104 = and i64 %sub103, 17592186044416, !dbg !4778
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4778
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4778

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4778

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub108 = sub i64 %29, 1, !dbg !4778
  %and109 = and i64 %sub108, 8796093022208, !dbg !4778
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4778
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4778

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4778

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub113 = sub i64 %30, 1, !dbg !4778
  %and114 = and i64 %sub113, 4398046511104, !dbg !4778
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4778
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4778

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4778

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub118 = sub i64 %31, 1, !dbg !4778
  %and119 = and i64 %sub118, 2199023255552, !dbg !4778
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4778
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4778

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4778

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub123 = sub i64 %32, 1, !dbg !4778
  %and124 = and i64 %sub123, 1099511627776, !dbg !4778
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4778
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4778

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4778

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub128 = sub i64 %33, 1, !dbg !4778
  %and129 = and i64 %sub128, 549755813888, !dbg !4778
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4778
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4778

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4778

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub133 = sub i64 %34, 1, !dbg !4778
  %and134 = and i64 %sub133, 274877906944, !dbg !4778
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4778
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4778

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4778

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub138 = sub i64 %35, 1, !dbg !4778
  %and139 = and i64 %sub138, 137438953472, !dbg !4778
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4778
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4778

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4778

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub143 = sub i64 %36, 1, !dbg !4778
  %and144 = and i64 %sub143, 68719476736, !dbg !4778
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4778
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4778

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4778

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub148 = sub i64 %37, 1, !dbg !4778
  %and149 = and i64 %sub148, 34359738368, !dbg !4778
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4778
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4778

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4778

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub153 = sub i64 %38, 1, !dbg !4778
  %and154 = and i64 %sub153, 17179869184, !dbg !4778
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4778
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4778

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4778

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub158 = sub i64 %39, 1, !dbg !4778
  %and159 = and i64 %sub158, 8589934592, !dbg !4778
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4778
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4778

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4778

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub163 = sub i64 %40, 1, !dbg !4778
  %and164 = and i64 %sub163, 4294967296, !dbg !4778
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4778
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4778

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4778

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub168 = sub i64 %41, 1, !dbg !4778
  %and169 = and i64 %sub168, 2147483648, !dbg !4778
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4778
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4778

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4778

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub173 = sub i64 %42, 1, !dbg !4778
  %and174 = and i64 %sub173, 1073741824, !dbg !4778
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4778
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4778

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4778

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub178 = sub i64 %43, 1, !dbg !4778
  %and179 = and i64 %sub178, 536870912, !dbg !4778
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4778
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4778

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4778

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub183 = sub i64 %44, 1, !dbg !4778
  %and184 = and i64 %sub183, 268435456, !dbg !4778
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4778
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4778

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4778

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub188 = sub i64 %45, 1, !dbg !4778
  %and189 = and i64 %sub188, 134217728, !dbg !4778
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4778
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4778

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4778

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub193 = sub i64 %46, 1, !dbg !4778
  %and194 = and i64 %sub193, 67108864, !dbg !4778
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4778
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4778

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4778

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub198 = sub i64 %47, 1, !dbg !4778
  %and199 = and i64 %sub198, 33554432, !dbg !4778
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4778
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4778

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4778

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub203 = sub i64 %48, 1, !dbg !4778
  %and204 = and i64 %sub203, 16777216, !dbg !4778
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4778
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4778

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4778

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub208 = sub i64 %49, 1, !dbg !4778
  %and209 = and i64 %sub208, 8388608, !dbg !4778
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4778
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4778

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4778

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub213 = sub i64 %50, 1, !dbg !4778
  %and214 = and i64 %sub213, 4194304, !dbg !4778
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4778
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4778

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4778

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub218 = sub i64 %51, 1, !dbg !4778
  %and219 = and i64 %sub218, 2097152, !dbg !4778
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4778
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4778

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4778

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub223 = sub i64 %52, 1, !dbg !4778
  %and224 = and i64 %sub223, 1048576, !dbg !4778
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4778
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4778

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4778

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub228 = sub i64 %53, 1, !dbg !4778
  %and229 = and i64 %sub228, 524288, !dbg !4778
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4778
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4778

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4778

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub233 = sub i64 %54, 1, !dbg !4778
  %and234 = and i64 %sub233, 262144, !dbg !4778
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4778
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4778

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4778

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub238 = sub i64 %55, 1, !dbg !4778
  %and239 = and i64 %sub238, 131072, !dbg !4778
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4778
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4778

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4778

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub243 = sub i64 %56, 1, !dbg !4778
  %and244 = and i64 %sub243, 65536, !dbg !4778
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4778
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4778

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4778

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub248 = sub i64 %57, 1, !dbg !4778
  %and249 = and i64 %sub248, 32768, !dbg !4778
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4778
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4778

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4778

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub253 = sub i64 %58, 1, !dbg !4778
  %and254 = and i64 %sub253, 16384, !dbg !4778
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4778
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4778

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4778

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub258 = sub i64 %59, 1, !dbg !4778
  %and259 = and i64 %sub258, 8192, !dbg !4778
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4778
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4778

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4778

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub263 = sub i64 %60, 1, !dbg !4778
  %and264 = and i64 %sub263, 4096, !dbg !4778
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4778
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4778

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4778

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub268 = sub i64 %61, 1, !dbg !4778
  %and269 = and i64 %sub268, 2048, !dbg !4778
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4778
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4778

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4778

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub273 = sub i64 %62, 1, !dbg !4778
  %and274 = and i64 %sub273, 1024, !dbg !4778
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4778
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4778

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4778

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub278 = sub i64 %63, 1, !dbg !4778
  %and279 = and i64 %sub278, 512, !dbg !4778
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4778
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4778

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4778

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub283 = sub i64 %64, 1, !dbg !4778
  %and284 = and i64 %sub283, 256, !dbg !4778
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4778
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4778

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4778

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub288 = sub i64 %65, 1, !dbg !4778
  %and289 = and i64 %sub288, 128, !dbg !4778
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4778
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4778

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4778

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub293 = sub i64 %66, 1, !dbg !4778
  %and294 = and i64 %sub293, 64, !dbg !4778
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4778
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4778

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4778

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub298 = sub i64 %67, 1, !dbg !4778
  %and299 = and i64 %sub298, 32, !dbg !4778
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4778
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4778

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4778

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub303 = sub i64 %68, 1, !dbg !4778
  %and304 = and i64 %sub303, 16, !dbg !4778
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4778
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4778

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4778

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub308 = sub i64 %69, 1, !dbg !4778
  %and309 = and i64 %sub308, 8, !dbg !4778
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4778
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4778

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4778

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub313 = sub i64 %70, 1, !dbg !4778
  %and314 = and i64 %sub313, 4, !dbg !4778
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4778
  %71 = zext i1 %tobool315 to i64, !dbg !4778
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4778
  br label %cond.end, !dbg !4778

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4778
  br label %cond.end317, !dbg !4778

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4778
  br label %cond.end319, !dbg !4778

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4778
  br label %cond.end321, !dbg !4778

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4778
  br label %cond.end323, !dbg !4778

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4778
  br label %cond.end325, !dbg !4778

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4778
  br label %cond.end327, !dbg !4778

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4778
  br label %cond.end329, !dbg !4778

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4778
  br label %cond.end331, !dbg !4778

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4778
  br label %cond.end333, !dbg !4778

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4778
  br label %cond.end335, !dbg !4778

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4778
  br label %cond.end337, !dbg !4778

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4778
  br label %cond.end339, !dbg !4778

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4778
  br label %cond.end341, !dbg !4778

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4778
  br label %cond.end343, !dbg !4778

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4778
  br label %cond.end345, !dbg !4778

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4778
  br label %cond.end347, !dbg !4778

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4778
  br label %cond.end349, !dbg !4778

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4778
  br label %cond.end351, !dbg !4778

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4778
  br label %cond.end353, !dbg !4778

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4778
  br label %cond.end355, !dbg !4778

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4778
  br label %cond.end357, !dbg !4778

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4778
  br label %cond.end359, !dbg !4778

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4778
  br label %cond.end361, !dbg !4778

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4778
  br label %cond.end363, !dbg !4778

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4778
  br label %cond.end365, !dbg !4778

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4778
  br label %cond.end367, !dbg !4778

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4778
  br label %cond.end369, !dbg !4778

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4778
  br label %cond.end371, !dbg !4778

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4778
  br label %cond.end373, !dbg !4778

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4778
  br label %cond.end375, !dbg !4778

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4778
  br label %cond.end377, !dbg !4778

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4778
  br label %cond.end379, !dbg !4778

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4778
  br label %cond.end381, !dbg !4778

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4778
  br label %cond.end383, !dbg !4778

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4778
  br label %cond.end385, !dbg !4778

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4778
  br label %cond.end387, !dbg !4778

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4778
  br label %cond.end389, !dbg !4778

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4778
  br label %cond.end391, !dbg !4778

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4778
  br label %cond.end393, !dbg !4778

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4778
  br label %cond.end395, !dbg !4778

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4778
  br label %cond.end397, !dbg !4778

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4778
  br label %cond.end399, !dbg !4778

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4778
  br label %cond.end401, !dbg !4778

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4778
  br label %cond.end403, !dbg !4778

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4778
  br label %cond.end405, !dbg !4778

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4778
  br label %cond.end407, !dbg !4778

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4778
  br label %cond.end409, !dbg !4778

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4778
  br label %cond.end411, !dbg !4778

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4778
  br label %cond.end413, !dbg !4778

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4778
  br label %cond.end415, !dbg !4778

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4778
  br label %cond.end417, !dbg !4778

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4778
  br label %cond.end419, !dbg !4778

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4778
  br label %cond.end421, !dbg !4778

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4778
  br label %cond.end423, !dbg !4778

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4778
  br label %cond.end425, !dbg !4778

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4778
  br label %cond.end427, !dbg !4778

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4778
  br label %cond.end429, !dbg !4778

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4778
  br label %cond.end431, !dbg !4778

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4778
  br label %cond.end433, !dbg !4778

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4778
  br label %cond.end435, !dbg !4778

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4778
  br label %cond.end437, !dbg !4778

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4778
  br label %cond.end440, !dbg !4778

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4778

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4778
  br label %cond.end444, !dbg !4778

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4778
  %sub443 = sub i64 %72, 1, !dbg !4778
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !4778
  br label %cond.end444, !dbg !4778

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4778
  %sub446 = sub i32 %cond445, 12, !dbg !4779
  %add = add i32 %sub446, 1, !dbg !4780
  store i32 %add, i32* %retval, align 4, !dbg !4781
  br label %return, !dbg !4781

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4782
  %dec = add i64 %73, -1, !dbg !4782
  store i64 %dec, i64* %size.addr, align 8, !dbg !4782
  %74 = load i64, i64* %size.addr, align 8, !dbg !4783
  %shr = lshr i64 %74, 12, !dbg !4783
  store i64 %shr, i64* %size.addr, align 8, !dbg !4783
  %75 = load i64, i64* %size.addr, align 8, !dbg !4784
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4761
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4785
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4786
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !4785, !srcloc !4787
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4785
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4788
  %add.i = add i32 %79, 1, !dbg !4789
  store i32 %add.i, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4791
  ret i32 %80, !dbg !4791
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4792 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4753, metadata !DIExpression()), !dbg !4796
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4760, metadata !DIExpression()), !dbg !4798
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  %0 = load i64, i64* %n.addr, align 8, !dbg !4801
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4798
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4802
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4803
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !4802, !srcloc !4787
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4802
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4804
  %add.i = add i32 %4, 1, !dbg !4805
  %sub = sub i32 %add.i, 1, !dbg !4806
  ret i32 %sub, !dbg !4807
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4808 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4820
  ret i8* %0, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4822 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4831
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4833
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4834
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4835
  br i1 %call, label %if.end, label %if.then, !dbg !4836

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4837

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4838
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4839
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4840
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4841
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4842
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4843
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4844
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4845
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4846
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4847
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4848
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4849
  br label %do.body, !dbg !4850

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4851

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4853

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4851

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4855
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4855
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4855
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4855
  br label %do.end7, !dbg !4855

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4851

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4858 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4865, metadata !DIExpression()), !dbg !4866
  ret i1 true, !dbg !4867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_is_property_guid(%struct.guid_t* %guid) #0 !dbg !4868 {
entry:
  %retval = alloca i1, align 1
  %guid.addr = alloca %struct.guid_t*, align 8
  %i = alloca i32, align 4
  store %struct.guid_t* %guid, %struct.guid_t** %guid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %guid.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4873, metadata !DIExpression()), !dbg !4874
  store i32 0, i32* %i, align 4, !dbg !4875
  br label %for.cond, !dbg !4877

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4878
  %conv = sext i32 %0 to i64, !dbg !4878
  %cmp = icmp ult i64 %conv, 6, !dbg !4880
  br i1 %cmp, label %for.body, label %for.end, !dbg !4881

for.body:                                         ; preds = %for.cond
  %1 = load %struct.guid_t*, %struct.guid_t** %guid.addr, align 8, !dbg !4882
  %2 = load i32, i32* %i, align 4, !dbg !4885
  %idxprom = sext i32 %2 to i64, !dbg !4886
  %arrayidx = getelementptr [6 x %struct.guid_t], [6 x %struct.guid_t]* @prp_guids, i64 0, i64 %idxprom, !dbg !4886
  %call = call zeroext i1 @guid_equal(%struct.guid_t* %1, %struct.guid_t* %arrayidx) #7, !dbg !4887
  br i1 %call, label %if.then, label %if.end, !dbg !4888

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !4889
  br label %return, !dbg !4889

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4890

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4891
  %inc = add i32 %3, 1, !dbg !4891
  store i32 %inc, i32* %i, align 4, !dbg !4891
  br label %for.cond, !dbg !4892, !llvm.loop !4893

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !4895
  br label %return, !dbg !4895

return:                                           ; preds = %for.end, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !4896
  ret i1 %4, !dbg !4896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_properties_format_valid(%union.acpi_object* %properties) #0 !dbg !4897 {
entry:
  %retval = alloca i1, align 1
  %properties.addr = alloca %union.acpi_object*, align 8
  %i = alloca i32, align 4
  %property = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %properties, %union.acpi_object** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %properties.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i32 0, i32* %i, align 4, !dbg !4904
  br label %for.cond, !dbg !4906

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4907
  %1 = load %union.acpi_object*, %union.acpi_object** %properties.addr, align 8, !dbg !4909
  %package = bitcast %union.acpi_object* %1 to %struct.anon.2*, !dbg !4910
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !4911
  %2 = load i32, i32* %count, align 4, !dbg !4911
  %cmp = icmp ult i32 %0, %2, !dbg !4912
  br i1 %cmp, label %for.body, label %for.end, !dbg !4913

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %property, metadata !4914, metadata !DIExpression()), !dbg !4916
  %3 = load %union.acpi_object*, %union.acpi_object** %properties.addr, align 8, !dbg !4917
  %package1 = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !4918
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package1, i32 0, i32 2, !dbg !4919
  %4 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4919
  %5 = load i32, i32* %i, align 4, !dbg !4920
  %idxprom = sext i32 %5 to i64, !dbg !4917
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %4, i64 %idxprom, !dbg !4917
  store %union.acpi_object* %arrayidx, %union.acpi_object** %property, align 8, !dbg !4921
  %6 = load %union.acpi_object*, %union.acpi_object** %property, align 8, !dbg !4922
  %package2 = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !4924
  %count3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 1, !dbg !4925
  %7 = load i32, i32* %count3, align 4, !dbg !4925
  %cmp4 = icmp ne i32 %7, 2, !dbg !4926
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !4927

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %union.acpi_object*, %union.acpi_object** %property, align 8, !dbg !4928
  %package5 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !4929
  %elements6 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package5, i32 0, i32 2, !dbg !4930
  %9 = load %union.acpi_object*, %union.acpi_object** %elements6, align 8, !dbg !4930
  %arrayidx7 = getelementptr %union.acpi_object, %union.acpi_object* %9, i64 0, !dbg !4928
  %type = bitcast %union.acpi_object* %arrayidx7 to i32*, !dbg !4931
  %10 = load i32, i32* %type, align 8, !dbg !4931
  %cmp8 = icmp ne i32 %10, 2, !dbg !4932
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !4933

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %11 = load %union.acpi_object*, %union.acpi_object** %property, align 8, !dbg !4934
  %package10 = bitcast %union.acpi_object* %11 to %struct.anon.2*, !dbg !4935
  %elements11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package10, i32 0, i32 2, !dbg !4936
  %12 = load %union.acpi_object*, %union.acpi_object** %elements11, align 8, !dbg !4936
  %arrayidx12 = getelementptr %union.acpi_object, %union.acpi_object* %12, i64 1, !dbg !4934
  %call = call zeroext i1 @acpi_property_value_ok(%union.acpi_object* %arrayidx12) #7, !dbg !4937
  br i1 %call, label %if.end, label %if.then, !dbg !4938

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %for.body
  store i1 false, i1* %retval, align 1, !dbg !4939
  br label %return, !dbg !4939

if.end:                                           ; preds = %lor.lhs.false9
  br label %for.inc, !dbg !4940

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !4941
  %inc = add i32 %13, 1, !dbg !4941
  store i32 %inc, i32* %i, align 4, !dbg !4941
  br label %for.cond, !dbg !4942, !llvm.loop !4943

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !4945
  br label %return, !dbg !4945

return:                                           ; preds = %for.end, %if.then
  %14 = load i1, i1* %retval, align 1, !dbg !4946
  ret i1 %14, !dbg !4946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @guid_equal(%struct.guid_t* %u1, %struct.guid_t* %u2) #0 !dbg !4947 {
entry:
  %u1.addr = alloca %struct.guid_t*, align 8
  %u2.addr = alloca %struct.guid_t*, align 8
  store %struct.guid_t* %u1, %struct.guid_t** %u1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %u1.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  store %struct.guid_t* %u2, %struct.guid_t** %u2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %u2.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load %struct.guid_t*, %struct.guid_t** %u1.addr, align 8, !dbg !4955
  %1 = bitcast %struct.guid_t* %0 to i8*, !dbg !4955
  %2 = load %struct.guid_t*, %struct.guid_t** %u2.addr, align 8, !dbg !4956
  %3 = bitcast %struct.guid_t* %2 to i8*, !dbg !4956
  %call = call i32 @memcmp(i8* %1, i8* %3, i64 16) #7, !dbg !4957
  %cmp = icmp eq i32 %call, 0, !dbg !4958
  ret i1 %cmp, !dbg !4959
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_property_value_ok(%union.acpi_object* %value) #0 !dbg !4960 {
entry:
  %retval = alloca i1, align 1
  %value.addr = alloca %union.acpi_object*, align 8
  %j = alloca i32, align 4
  store %union.acpi_object* %value, %union.acpi_object** %value.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %value.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4963, metadata !DIExpression()), !dbg !4964
  %0 = load %union.acpi_object*, %union.acpi_object** %value.addr, align 8, !dbg !4965
  %type = bitcast %union.acpi_object* %0 to i32*, !dbg !4966
  %1 = load i32, i32* %type, align 8, !dbg !4966
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 20, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !4967

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !4968
  br label %return, !dbg !4968

sw.bb1:                                           ; preds = %entry
  store i32 0, i32* %j, align 4, !dbg !4970
  br label %for.cond, !dbg !4972

for.cond:                                         ; preds = %for.inc, %sw.bb1
  %2 = load i32, i32* %j, align 4, !dbg !4973
  %3 = load %union.acpi_object*, %union.acpi_object** %value.addr, align 8, !dbg !4975
  %package = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !4976
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !4977
  %4 = load i32, i32* %count, align 4, !dbg !4977
  %cmp = icmp ult i32 %2, %4, !dbg !4978
  br i1 %cmp, label %for.body, label %for.end, !dbg !4979

for.body:                                         ; preds = %for.cond
  %5 = load %union.acpi_object*, %union.acpi_object** %value.addr, align 8, !dbg !4980
  %package2 = bitcast %union.acpi_object* %5 to %struct.anon.2*, !dbg !4981
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 2, !dbg !4982
  %6 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4982
  %7 = load i32, i32* %j, align 4, !dbg !4983
  %idxprom = sext i32 %7 to i64, !dbg !4980
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %6, i64 %idxprom, !dbg !4980
  %type3 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !4984
  %8 = load i32, i32* %type3, align 8, !dbg !4984
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb4
    i32 20, label %sw.bb4
  ], !dbg !4985

sw.bb4:                                           ; preds = %for.body, %for.body, %for.body
  br label %for.inc, !dbg !4986

sw.default:                                       ; preds = %for.body
  store i1 false, i1* %retval, align 1, !dbg !4988
  br label %return, !dbg !4988

for.inc:                                          ; preds = %sw.bb4
  %9 = load i32, i32* %j, align 4, !dbg !4989
  %inc = add i32 %9, 1, !dbg !4989
  store i32 %inc, i32* %j, align 4, !dbg !4989
  br label %for.cond, !dbg !4990, !llvm.loop !4991

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !4993
  br label %return, !dbg !4993

sw.epilog:                                        ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4994
  br label %return, !dbg !4994

return:                                           ; preds = %sw.epilog, %for.end, %sw.default, %sw.bb
  %10 = load i1, i1* %retval, align 1, !dbg !4995
  ret i1 %10, !dbg !4995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_data_get_property_array(%struct.acpi_device_data* %data, i8* %name, i32 %type, %union.acpi_object** %obj) #0 !dbg !4996 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca %union.acpi_object**, align 8
  %prop = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  store %union.acpi_object** %obj, %union.acpi_object*** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object*** %obj.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata %union.acpi_object** %prop, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5009, metadata !DIExpression()), !dbg !5010
  %0 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !5011
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5012
  %call = call i32 @acpi_data_get_property(%struct.acpi_device_data* %0, i8* %1, i32 4, %union.acpi_object** %prop) #7, !dbg !5013
  store i32 %call, i32* %ret, align 4, !dbg !5014
  %2 = load i32, i32* %ret, align 4, !dbg !5015
  %tobool = icmp ne i32 %2, 0, !dbg !5015
  br i1 %tobool, label %if.then, label %if.end, !dbg !5017

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !5018
  store i32 %3, i32* %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4, !dbg !5020
  %cmp = icmp ne i32 %4, 0, !dbg !5022
  br i1 %cmp, label %if.then1, label %if.end8, !dbg !5023

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5024
  br label %for.cond, !dbg !5027

for.cond:                                         ; preds = %for.inc, %if.then1
  %5 = load i32, i32* %i, align 4, !dbg !5028
  %6 = load %union.acpi_object*, %union.acpi_object** %prop, align 8, !dbg !5030
  %package = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !5031
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !5032
  %7 = load i32, i32* %count, align 4, !dbg !5032
  %cmp2 = icmp ult i32 %5, %7, !dbg !5033
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5034

for.body:                                         ; preds = %for.cond
  %8 = load %union.acpi_object*, %union.acpi_object** %prop, align 8, !dbg !5035
  %package3 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !5037
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package3, i32 0, i32 2, !dbg !5038
  %9 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5038
  %10 = load i32, i32* %i, align 4, !dbg !5039
  %idxprom = sext i32 %10 to i64, !dbg !5035
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %9, i64 %idxprom, !dbg !5035
  %type4 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5040
  %11 = load i32, i32* %type4, align 8, !dbg !5040
  %12 = load i32, i32* %type.addr, align 4, !dbg !5041
  %cmp5 = icmp ne i32 %11, %12, !dbg !5042
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5043

if.then6:                                         ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !5041

for.inc:                                          ; preds = %if.end7
  %13 = load i32, i32* %i, align 4, !dbg !5045
  %inc = add i32 %13, 1, !dbg !5045
  store i32 %inc, i32* %i, align 4, !dbg !5045
  br label %for.cond, !dbg !5046, !llvm.loop !5047

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !5049

if.end8:                                          ; preds = %for.end, %if.end
  %14 = load %union.acpi_object**, %union.acpi_object*** %obj.addr, align 8, !dbg !5050
  %tobool9 = icmp ne %union.acpi_object** %14, null, !dbg !5050
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5052

if.then10:                                        ; preds = %if.end8
  %15 = load %union.acpi_object*, %union.acpi_object** %prop, align 8, !dbg !5053
  %16 = load %union.acpi_object**, %union.acpi_object*** %obj.addr, align 8, !dbg !5054
  store %union.acpi_object* %15, %union.acpi_object** %16, align 8, !dbg !5055
  br label %if.end11, !dbg !5056

if.end11:                                         ; preds = %if.then10, %if.end8
  store i32 0, i32* %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5058
  ret i32 %17, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_add_nondev_subnodes(i8* %scope, %union.acpi_object* %links, %struct.list_head* %list, %struct.fwnode_handle* %parent) #0 !dbg !5059 {
entry:
  %scope.addr = alloca i8*, align 8
  %links.addr = alloca %union.acpi_object*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  %link = alloca %union.acpi_object*, align 8
  %desc = alloca %union.acpi_object*, align 8
  %handle = alloca i8*, align 8
  %result = alloca i8, align 1
  store i8* %scope, i8** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %scope.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  store %union.acpi_object* %links, %union.acpi_object** %links.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %links.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5070, metadata !DIExpression()), !dbg !5071
  store i8 0, i8* %ret, align 1, !dbg !5071
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i32 0, i32* %i, align 4, !dbg !5074
  br label %for.cond, !dbg !5076

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5077
  %1 = load %union.acpi_object*, %union.acpi_object** %links.addr, align 8, !dbg !5079
  %package = bitcast %union.acpi_object* %1 to %struct.anon.2*, !dbg !5080
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !5081
  %2 = load i32, i32* %count, align 4, !dbg !5081
  %cmp = icmp ult i32 %0, %2, !dbg !5082
  br i1 %cmp, label %for.body, label %for.end, !dbg !5083

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %link, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata %union.acpi_object** %desc, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !5089, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.declare(metadata i8* %result, metadata !5091, metadata !DIExpression()), !dbg !5092
  %3 = load %union.acpi_object*, %union.acpi_object** %links.addr, align 8, !dbg !5093
  %package1 = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !5094
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package1, i32 0, i32 2, !dbg !5095
  %4 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5095
  %5 = load i32, i32* %i, align 4, !dbg !5096
  %idxprom = sext i32 %5 to i64, !dbg !5093
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %4, i64 %idxprom, !dbg !5093
  store %union.acpi_object* %arrayidx, %union.acpi_object** %link, align 8, !dbg !5097
  %6 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5098
  %package2 = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !5100
  %count3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 1, !dbg !5101
  %7 = load i32, i32* %count3, align 4, !dbg !5101
  %cmp4 = icmp ne i32 %7, 2, !dbg !5102
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5103

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5104

if.end:                                           ; preds = %for.body
  %8 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5105
  %package5 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !5107
  %elements6 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package5, i32 0, i32 2, !dbg !5108
  %9 = load %union.acpi_object*, %union.acpi_object** %elements6, align 8, !dbg !5108
  %arrayidx7 = getelementptr %union.acpi_object, %union.acpi_object* %9, i64 0, !dbg !5105
  %type = bitcast %union.acpi_object* %arrayidx7 to i32*, !dbg !5109
  %10 = load i32, i32* %type, align 8, !dbg !5109
  %cmp8 = icmp ne i32 %10, 2, !dbg !5110
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5111

if.then9:                                         ; preds = %if.end
  br label %for.inc, !dbg !5112

if.end10:                                         ; preds = %if.end
  %11 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5113
  %package11 = bitcast %union.acpi_object* %11 to %struct.anon.2*, !dbg !5114
  %elements12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package11, i32 0, i32 2, !dbg !5115
  %12 = load %union.acpi_object*, %union.acpi_object** %elements12, align 8, !dbg !5115
  %arrayidx13 = getelementptr %union.acpi_object, %union.acpi_object* %12, i64 1, !dbg !5113
  %type14 = bitcast %union.acpi_object* %arrayidx13 to i32*, !dbg !5116
  %13 = load i32, i32* %type14, align 8, !dbg !5116
  switch i32 %13, label %sw.default [
    i32 2, label %sw.bb
    i32 20, label %sw.bb15
    i32 4, label %sw.bb22
  ], !dbg !5117

sw.bb:                                            ; preds = %if.end10
  %14 = load i8*, i8** %scope.addr, align 8, !dbg !5118
  %15 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5120
  %16 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5121
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5122
  %call = call zeroext i1 @acpi_nondev_subnode_ok(i8* %14, %union.acpi_object* %15, %struct.list_head* %16, %struct.fwnode_handle* %17) #7, !dbg !5123
  %frombool = zext i1 %call to i8, !dbg !5124
  store i8 %frombool, i8* %result, align 1, !dbg !5124
  br label %sw.epilog, !dbg !5125

sw.bb15:                                          ; preds = %if.end10
  %18 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5126
  %package16 = bitcast %union.acpi_object* %18 to %struct.anon.2*, !dbg !5127
  %elements17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package16, i32 0, i32 2, !dbg !5128
  %19 = load %union.acpi_object*, %union.acpi_object** %elements17, align 8, !dbg !5128
  %arrayidx18 = getelementptr %union.acpi_object, %union.acpi_object* %19, i64 1, !dbg !5126
  %reference = bitcast %union.acpi_object* %arrayidx18 to %struct.anon.3*, !dbg !5129
  %handle19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference, i32 0, i32 2, !dbg !5130
  %20 = load i8*, i8** %handle19, align 8, !dbg !5130
  store i8* %20, i8** %handle, align 8, !dbg !5131
  %21 = load i8*, i8** %handle, align 8, !dbg !5132
  %22 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5133
  %23 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5134
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5135
  %call20 = call zeroext i1 @acpi_nondev_subnode_data_ok(i8* %21, %union.acpi_object* %22, %struct.list_head* %23, %struct.fwnode_handle* %24) #7, !dbg !5136
  %frombool21 = zext i1 %call20 to i8, !dbg !5137
  store i8 %frombool21, i8* %result, align 1, !dbg !5137
  br label %sw.epilog, !dbg !5138

sw.bb22:                                          ; preds = %if.end10
  %25 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5139
  %package23 = bitcast %union.acpi_object* %25 to %struct.anon.2*, !dbg !5140
  %elements24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package23, i32 0, i32 2, !dbg !5141
  %26 = load %union.acpi_object*, %union.acpi_object** %elements24, align 8, !dbg !5141
  %arrayidx25 = getelementptr %union.acpi_object, %union.acpi_object* %26, i64 1, !dbg !5139
  store %union.acpi_object* %arrayidx25, %union.acpi_object** %desc, align 8, !dbg !5142
  %27 = load %union.acpi_object*, %union.acpi_object** %desc, align 8, !dbg !5143
  %28 = load %union.acpi_object*, %union.acpi_object** %link, align 8, !dbg !5144
  %29 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5145
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5146
  %call26 = call zeroext i1 @acpi_nondev_subnode_extract(%union.acpi_object* %27, i8* null, %union.acpi_object* %28, %struct.list_head* %29, %struct.fwnode_handle* %30) #7, !dbg !5147
  %frombool27 = zext i1 %call26 to i8, !dbg !5148
  store i8 %frombool27, i8* %result, align 1, !dbg !5148
  br label %sw.epilog, !dbg !5149

sw.default:                                       ; preds = %if.end10
  store i8 0, i8* %result, align 1, !dbg !5150
  br label %sw.epilog, !dbg !5151

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb15, %sw.bb
  %31 = load i8, i8* %ret, align 1, !dbg !5152
  %tobool = trunc i8 %31 to i1, !dbg !5152
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5153

lor.rhs:                                          ; preds = %sw.epilog
  %32 = load i8, i8* %result, align 1, !dbg !5154
  %tobool28 = trunc i8 %32 to i1, !dbg !5154
  br label %lor.end, !dbg !5153

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %33 = phi i1 [ true, %sw.epilog ], [ %tobool28, %lor.rhs ]
  %frombool29 = zext i1 %33 to i8, !dbg !5155
  store i8 %frombool29, i8* %ret, align 1, !dbg !5155
  br label %for.inc, !dbg !5156

for.inc:                                          ; preds = %lor.end, %if.then9, %if.then
  %34 = load i32, i32* %i, align 4, !dbg !5157
  %inc = add i32 %34, 1, !dbg !5157
  store i32 %inc, i32* %i, align 4, !dbg !5157
  br label %for.cond, !dbg !5158, !llvm.loop !5159

for.end:                                          ; preds = %for.cond
  %35 = load i8, i8* %ret, align 1, !dbg !5161
  %tobool30 = trunc i8 %35 to i1, !dbg !5161
  %conv = zext i1 %tobool30 to i32, !dbg !5161
  ret i32 %conv, !dbg !5162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_nondev_subnode_ok(i8* %scope, %union.acpi_object* %link, %struct.list_head* %list, %struct.fwnode_handle* %parent) #0 !dbg !5163 {
entry:
  %retval = alloca i1, align 1
  %scope.addr = alloca i8*, align 8
  %link.addr = alloca %union.acpi_object*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %handle = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %scope, i8** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %scope.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  store %union.acpi_object* %link, %union.acpi_object** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %link.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load i8*, i8** %scope.addr, align 8, !dbg !5178
  %tobool = icmp ne i8* %0, null, !dbg !5178
  br i1 %tobool, label %if.end, label %if.then, !dbg !5180

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5181
  br label %return, !dbg !5181

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %scope.addr, align 8, !dbg !5182
  %2 = load %union.acpi_object*, %union.acpi_object** %link.addr, align 8, !dbg !5183
  %package = bitcast %union.acpi_object* %2 to %struct.anon.2*, !dbg !5184
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 2, !dbg !5185
  %3 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5185
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %3, i64 1, !dbg !5183
  %string = bitcast %union.acpi_object* %arrayidx to %struct.anon.0*, !dbg !5186
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !5187
  %4 = load i8*, i8** %pointer, align 8, !dbg !5187
  %call = call i32 @acpi_get_handle(i8* %1, i8* %4, i8** %handle) #7, !dbg !5188
  store i32 %call, i32* %status, align 4, !dbg !5189
  %5 = load i32, i32* %status, align 4, !dbg !5190
  %tobool1 = icmp ne i32 %5, 0, !dbg !5190
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5192

if.then2:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !5193
  br label %return, !dbg !5193

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** %handle, align 8, !dbg !5194
  %7 = load %union.acpi_object*, %union.acpi_object** %link.addr, align 8, !dbg !5195
  %8 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5196
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5197
  %call4 = call zeroext i1 @acpi_nondev_subnode_data_ok(i8* %6, %union.acpi_object* %7, %struct.list_head* %8, %struct.fwnode_handle* %9) #7, !dbg !5198
  store i1 %call4, i1* %retval, align 1, !dbg !5199
  br label %return, !dbg !5199

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !5200
  ret i1 %10, !dbg !5200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_nondev_subnode_data_ok(i8* %handle, %union.acpi_object* %link, %struct.list_head* %list, %struct.fwnode_handle* %parent) #0 !dbg !5201 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca i8*, align 8
  %link.addr = alloca %union.acpi_object*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  store %union.acpi_object* %link, %union.acpi_object** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %link.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !5210, metadata !DIExpression()), !dbg !5211
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !5211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_nondev_subnode_data_ok.buf to i8*), i64 16, i1 false), !dbg !5211
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5212, metadata !DIExpression()), !dbg !5213
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !5214
  %call = call i32 @acpi_evaluate_object_typed(i8* %1, i8* null, %struct.acpi_object_list* null, %struct.acpi_buffer* %buf, i32 4) #7, !dbg !5215
  store i32 %call, i32* %status, align 4, !dbg !5216
  %2 = load i32, i32* %status, align 4, !dbg !5217
  %tobool = icmp ne i32 %2, 0, !dbg !5217
  br i1 %tobool, label %if.then, label %if.end, !dbg !5219

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5220
  br label %return, !dbg !5220

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !5221
  %3 = load i8*, i8** %pointer, align 8, !dbg !5221
  %4 = bitcast i8* %3 to %union.acpi_object*, !dbg !5223
  %5 = load i8*, i8** %handle.addr, align 8, !dbg !5224
  %6 = load %union.acpi_object*, %union.acpi_object** %link.addr, align 8, !dbg !5225
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5226
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5227
  %call1 = call zeroext i1 @acpi_nondev_subnode_extract(%union.acpi_object* %4, i8* %5, %union.acpi_object* %6, %struct.list_head* %7, %struct.fwnode_handle* %8) #7, !dbg !5228
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5229

if.then2:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !5230
  br label %return, !dbg !5230

if.end3:                                          ; preds = %if.end
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !5231
  %9 = load i8*, i8** %pointer4, align 8, !dbg !5231
  call void @acpi_os_free(i8* %9) #7, !dbg !5231
  store i1 false, i1* %retval, align 1, !dbg !5232
  br label %return, !dbg !5232

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !5233
  ret i1 %10, !dbg !5233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_nondev_subnode_extract(%union.acpi_object* %desc, i8* %handle, %union.acpi_object* %link, %struct.list_head* %list, %struct.fwnode_handle* %parent) #0 !dbg !5234 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca %union.acpi_object*, align 8
  %handle.addr = alloca i8*, align 8
  %link.addr = alloca %union.acpi_object*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %result = alloca i8, align 1
  %scope = alloca i8*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %union.acpi_object* %desc, %union.acpi_object** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %desc.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  store %union.acpi_object* %link, %union.acpi_object** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %link.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !5247, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.declare(metadata i8* %result, metadata !5249, metadata !DIExpression()), !dbg !5250
  %call = call i8* @kzalloc(i64 200, i32 3264) #7, !dbg !5251
  %0 = bitcast i8* %call to %struct.acpi_data_node*, !dbg !5251
  store %struct.acpi_data_node* %0, %struct.acpi_data_node** %dn, align 8, !dbg !5252
  %1 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5253
  %tobool = icmp ne %struct.acpi_data_node* %1, null, !dbg !5253
  br i1 %tobool, label %if.end, label %if.then, !dbg !5255

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5256
  br label %return, !dbg !5256

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_object*, %union.acpi_object** %link.addr, align 8, !dbg !5257
  %package = bitcast %union.acpi_object* %2 to %struct.anon.2*, !dbg !5258
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 2, !dbg !5259
  %3 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5259
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %3, i64 0, !dbg !5257
  %string = bitcast %union.acpi_object* %arrayidx to %struct.anon.0*, !dbg !5260
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !5261
  %4 = load i8*, i8** %pointer, align 8, !dbg !5261
  %5 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5262
  %name = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %5, i32 0, i32 0, !dbg !5263
  store i8* %4, i8** %name, align 8, !dbg !5264
  %6 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5265
  %fwnode = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %6, i32 0, i32 2, !dbg !5266
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i32 0, i32 1, !dbg !5267
  store %struct.fwnode_operations* @acpi_data_fwnode_ops, %struct.fwnode_operations** %ops, align 8, !dbg !5268
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !5269
  %8 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5270
  %parent1 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %8, i32 0, i32 3, !dbg !5271
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %parent1, align 8, !dbg !5272
  %9 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5273
  %data = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %9, i32 0, i32 4, !dbg !5274
  %properties = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 1, !dbg !5275
  call void @INIT_LIST_HEAD(%struct.list_head* %properties) #7, !dbg !5276
  %10 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5277
  %data2 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %10, i32 0, i32 4, !dbg !5278
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data2, i32 0, i32 3, !dbg !5279
  call void @INIT_LIST_HEAD(%struct.list_head* %subnodes) #7, !dbg !5280
  %11 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !5281
  %12 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5282
  %data3 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %12, i32 0, i32 4, !dbg !5283
  %call4 = call zeroext i1 @acpi_extract_properties(%union.acpi_object* %11, %struct.acpi_device_data* %data3) #7, !dbg !5284
  %frombool = zext i1 %call4 to i8, !dbg !5285
  store i8 %frombool, i8* %result, align 1, !dbg !5285
  %13 = load i8*, i8** %handle.addr, align 8, !dbg !5286
  %tobool5 = icmp ne i8* %13, null, !dbg !5286
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5288

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %scope, metadata !5289, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5292, metadata !DIExpression()), !dbg !5293
  %14 = load i8*, i8** %handle.addr, align 8, !dbg !5294
  %call7 = call i32 @acpi_get_parent(i8* %14, i8** %scope) #7, !dbg !5295
  store i32 %call7, i32* %status, align 4, !dbg !5296
  %15 = load i32, i32* %status, align 4, !dbg !5297
  %tobool8 = icmp ne i32 %15, 0, !dbg !5297
  br i1 %tobool8, label %if.end13, label %land.lhs.true, !dbg !5299

land.lhs.true:                                    ; preds = %if.then6
  %16 = load i8*, i8** %scope, align 8, !dbg !5300
  %17 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !5301
  %18 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5302
  %data9 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %18, i32 0, i32 4, !dbg !5303
  %19 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5304
  %fwnode10 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %19, i32 0, i32 2, !dbg !5305
  %call11 = call zeroext i1 @acpi_enumerate_nondev_subnodes(i8* %16, %union.acpi_object* %17, %struct.acpi_device_data* %data9, %struct.fwnode_handle* %fwnode10) #7, !dbg !5306
  br i1 %call11, label %if.then12, label %if.end13, !dbg !5307

if.then12:                                        ; preds = %land.lhs.true
  store i8 1, i8* %result, align 1, !dbg !5308
  br label %if.end13, !dbg !5309

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %if.then6
  br label %if.end19, !dbg !5310

if.else:                                          ; preds = %if.end
  %20 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !5311
  %21 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5313
  %data14 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %21, i32 0, i32 4, !dbg !5314
  %22 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5315
  %fwnode15 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %22, i32 0, i32 2, !dbg !5316
  %call16 = call zeroext i1 @acpi_enumerate_nondev_subnodes(i8* null, %union.acpi_object* %20, %struct.acpi_device_data* %data14, %struct.fwnode_handle* %fwnode15) #7, !dbg !5317
  br i1 %call16, label %if.then17, label %if.end18, !dbg !5318

if.then17:                                        ; preds = %if.else
  store i8 1, i8* %result, align 1, !dbg !5319
  br label %if.end18, !dbg !5321

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  %23 = load i8, i8* %result, align 1, !dbg !5322
  %tobool20 = trunc i8 %23 to i1, !dbg !5322
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !5324

if.then21:                                        ; preds = %if.end19
  %24 = load i8*, i8** %handle.addr, align 8, !dbg !5325
  %25 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5327
  %handle22 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %25, i32 0, i32 1, !dbg !5328
  store i8* %24, i8** %handle22, align 8, !dbg !5329
  %26 = load %union.acpi_object*, %union.acpi_object** %desc.addr, align 8, !dbg !5330
  %27 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5331
  %data23 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %27, i32 0, i32 4, !dbg !5332
  %pointer24 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data23, i32 0, i32 0, !dbg !5333
  store %union.acpi_object* %26, %union.acpi_object** %pointer24, align 8, !dbg !5334
  %28 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5335
  %sibling = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %28, i32 0, i32 5, !dbg !5336
  %29 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5337
  call void @list_add_tail(%struct.list_head* %sibling, %struct.list_head* %29) #7, !dbg !5338
  store i1 true, i1* %retval, align 1, !dbg !5339
  br label %return, !dbg !5339

if.end25:                                         ; preds = %if.end19
  %30 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !5340
  %31 = bitcast %struct.acpi_data_node* %30 to i8*, !dbg !5340
  call void @kfree(i8* %31) #7, !dbg !5341
  store i32 0, i32* %tmp, align 4, !dbg !5342
  %32 = load i32, i32* %tmp, align 4, !dbg !5345
  store i1 false, i1* %retval, align 1, !dbg !5346
  br label %return, !dbg !5346

return:                                           ; preds = %if.end25, %if.then21, %if.then
  %33 = load i1, i1* %retval, align 1, !dbg !5347
  ret i1 %33, !dbg !5347
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #3

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5348 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5351
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5353
  br i1 %call, label %if.end, label %if.then, !dbg !5354

if.then:                                          ; preds = %entry
  br label %return, !dbg !5355

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5356
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5357
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5357
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5358
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5359
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5359
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5360
  br label %return, !dbg !5361

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5362 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  ret i1 true, !dbg !5367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5368 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5373
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5374
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5375
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5376
  br label %do.body, !dbg !5377

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5378

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5380

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5378

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5382
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5382
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5382
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5382
  br label %do.end5, !dbg !5382

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5378

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5384
}

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle*, %struct.fwnode_handle*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_data_node_match(%struct.fwnode_handle* %fwnode, i8* %name) #0 !dbg !5385 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %name.addr = alloca i8*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp3 = alloca %struct.acpi_data_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5390
  %call = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %0) #7, !dbg !5391
  br i1 %call, label %cond.true, label %cond.false6, !dbg !5391

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !5392, metadata !DIExpression()), !dbg !5394
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5394
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5394
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5394
  %call1 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %2) #7, !dbg !5394
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !5394

cond.true2:                                       ; preds = %cond.true
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5395, metadata !DIExpression()), !dbg !5397
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5397
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !5397
  store i8* %4, i8** %__mptr, align 8, !dbg !5397
  br label %do.body, !dbg !5397

do.body:                                          ; preds = %cond.true2
  br label %do.end, !dbg !5398

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5397
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !5397
  %6 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !5397
  store %struct.acpi_data_node* %6, %struct.acpi_data_node** %tmp3, align 8, !dbg !5398
  %7 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp3, align 8, !dbg !5397
  br label %cond.end, !dbg !5394

cond.false:                                       ; preds = %cond.true
  br label %cond.end, !dbg !5394

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_data_node* [ %7, %do.end ], [ null, %cond.false ], !dbg !5394
  store %struct.acpi_data_node* %cond, %struct.acpi_data_node** %tmp, align 8, !dbg !5394
  %8 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !5394
  %name4 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %8, i32 0, i32 0, !dbg !5400
  %9 = load i8*, i8** %name4, align 8, !dbg !5400
  %10 = load i8*, i8** %name.addr, align 8, !dbg !5401
  %call5 = call i32 @strcmp(i8* %9, i8* %10) #7, !dbg !5402
  %tobool = icmp ne i32 %call5, 0, !dbg !5403
  %lnot = xor i1 %tobool, true, !dbg !5403
  %lnot.ext = zext i1 %lnot to i32, !dbg !5403
  br label %cond.end7, !dbg !5391

cond.false6:                                      ; preds = %entry
  br label %cond.end7, !dbg !5391

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i32 [ %lnot.ext, %cond.end ], [ 0, %cond.false6 ], !dbg !5391
  %tobool9 = icmp ne i32 %cond8, 0, !dbg !5391
  ret i1 %tobool9, !dbg !5404
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_copy_property_array_u8(%union.acpi_object* %items, i8* %val, i64 %nval) #0 !dbg !5405 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca %union.acpi_object*, align 8
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %items, %union.acpi_object** %items.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32 0, i32* %i, align 4, !dbg !5416
  br label %for.cond, !dbg !5418

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5419
  %conv = sext i32 %0 to i64, !dbg !5419
  %1 = load i64, i64* %nval.addr, align 8, !dbg !5421
  %cmp = icmp ult i64 %conv, %1, !dbg !5422
  br i1 %cmp, label %for.body, label %for.end, !dbg !5423

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5424
  %3 = load i32, i32* %i, align 4, !dbg !5427
  %idxprom = sext i32 %3 to i64, !dbg !5424
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %2, i64 %idxprom, !dbg !5424
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5428
  %4 = load i32, i32* %type, align 8, !dbg !5428
  %cmp2 = icmp ne i32 %4, 1, !dbg !5429
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5430

if.then:                                          ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5431
  br label %return, !dbg !5431

if.end:                                           ; preds = %for.body
  %5 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5432
  %6 = load i32, i32* %i, align 4, !dbg !5434
  %idxprom4 = sext i32 %6 to i64, !dbg !5432
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom4, !dbg !5432
  %integer = bitcast %union.acpi_object* %arrayidx5 to %struct.anon*, !dbg !5435
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !5436
  %7 = load i64, i64* %value, align 8, !dbg !5436
  %cmp6 = icmp ugt i64 %7, 255, !dbg !5437
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5438

if.then8:                                         ; preds = %if.end
  store i32 -75, i32* %retval, align 4, !dbg !5439
  br label %return, !dbg !5439

if.end9:                                          ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5440
  %9 = load i32, i32* %i, align 4, !dbg !5441
  %idxprom10 = sext i32 %9 to i64, !dbg !5440
  %arrayidx11 = getelementptr %union.acpi_object, %union.acpi_object* %8, i64 %idxprom10, !dbg !5440
  %integer12 = bitcast %union.acpi_object* %arrayidx11 to %struct.anon*, !dbg !5442
  %value13 = getelementptr inbounds %struct.anon, %struct.anon* %integer12, i32 0, i32 1, !dbg !5443
  %10 = load i64, i64* %value13, align 8, !dbg !5443
  %conv14 = trunc i64 %10 to i8, !dbg !5440
  %11 = load i8*, i8** %val.addr, align 8, !dbg !5444
  %12 = load i32, i32* %i, align 4, !dbg !5445
  %idxprom15 = sext i32 %12 to i64, !dbg !5444
  %arrayidx16 = getelementptr i8, i8* %11, i64 %idxprom15, !dbg !5444
  store i8 %conv14, i8* %arrayidx16, align 1, !dbg !5446
  br label %for.inc, !dbg !5447

for.inc:                                          ; preds = %if.end9
  %13 = load i32, i32* %i, align 4, !dbg !5448
  %inc = add i32 %13, 1, !dbg !5448
  store i32 %inc, i32* %i, align 4, !dbg !5448
  br label %for.cond, !dbg !5449, !llvm.loop !5450

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

return:                                           ; preds = %for.end, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5453
  ret i32 %14, !dbg !5453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_copy_property_array_u16(%union.acpi_object* %items, i16* %val, i64 %nval) #0 !dbg !5454 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca %union.acpi_object*, align 8
  %val.addr = alloca i16*, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %items, %union.acpi_object** %items.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i16* %val, i16** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %val.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5463, metadata !DIExpression()), !dbg !5464
  store i32 0, i32* %i, align 4, !dbg !5465
  br label %for.cond, !dbg !5467

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5468
  %conv = sext i32 %0 to i64, !dbg !5468
  %1 = load i64, i64* %nval.addr, align 8, !dbg !5470
  %cmp = icmp ult i64 %conv, %1, !dbg !5471
  br i1 %cmp, label %for.body, label %for.end, !dbg !5472

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5473
  %3 = load i32, i32* %i, align 4, !dbg !5476
  %idxprom = sext i32 %3 to i64, !dbg !5473
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %2, i64 %idxprom, !dbg !5473
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5477
  %4 = load i32, i32* %type, align 8, !dbg !5477
  %cmp2 = icmp ne i32 %4, 1, !dbg !5478
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5479

if.then:                                          ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

if.end:                                           ; preds = %for.body
  %5 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5481
  %6 = load i32, i32* %i, align 4, !dbg !5483
  %idxprom4 = sext i32 %6 to i64, !dbg !5481
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom4, !dbg !5481
  %integer = bitcast %union.acpi_object* %arrayidx5 to %struct.anon*, !dbg !5484
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !5485
  %7 = load i64, i64* %value, align 8, !dbg !5485
  %cmp6 = icmp ugt i64 %7, 65535, !dbg !5486
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5487

if.then8:                                         ; preds = %if.end
  store i32 -75, i32* %retval, align 4, !dbg !5488
  br label %return, !dbg !5488

if.end9:                                          ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5489
  %9 = load i32, i32* %i, align 4, !dbg !5490
  %idxprom10 = sext i32 %9 to i64, !dbg !5489
  %arrayidx11 = getelementptr %union.acpi_object, %union.acpi_object* %8, i64 %idxprom10, !dbg !5489
  %integer12 = bitcast %union.acpi_object* %arrayidx11 to %struct.anon*, !dbg !5491
  %value13 = getelementptr inbounds %struct.anon, %struct.anon* %integer12, i32 0, i32 1, !dbg !5492
  %10 = load i64, i64* %value13, align 8, !dbg !5492
  %conv14 = trunc i64 %10 to i16, !dbg !5489
  %11 = load i16*, i16** %val.addr, align 8, !dbg !5493
  %12 = load i32, i32* %i, align 4, !dbg !5494
  %idxprom15 = sext i32 %12 to i64, !dbg !5493
  %arrayidx16 = getelementptr i16, i16* %11, i64 %idxprom15, !dbg !5493
  store i16 %conv14, i16* %arrayidx16, align 2, !dbg !5495
  br label %for.inc, !dbg !5496

for.inc:                                          ; preds = %if.end9
  %13 = load i32, i32* %i, align 4, !dbg !5497
  %inc = add i32 %13, 1, !dbg !5497
  store i32 %inc, i32* %i, align 4, !dbg !5497
  br label %for.cond, !dbg !5498, !llvm.loop !5499

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5501
  br label %return, !dbg !5501

return:                                           ; preds = %for.end, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5502
  ret i32 %14, !dbg !5502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_copy_property_array_u32(%union.acpi_object* %items, i32* %val, i64 %nval) #0 !dbg !5503 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca %union.acpi_object*, align 8
  %val.addr = alloca i32*, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %items, %union.acpi_object** %items.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i32 0, i32* %i, align 4, !dbg !5514
  br label %for.cond, !dbg !5516

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5517
  %conv = sext i32 %0 to i64, !dbg !5517
  %1 = load i64, i64* %nval.addr, align 8, !dbg !5519
  %cmp = icmp ult i64 %conv, %1, !dbg !5520
  br i1 %cmp, label %for.body, label %for.end, !dbg !5521

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5522
  %3 = load i32, i32* %i, align 4, !dbg !5525
  %idxprom = sext i32 %3 to i64, !dbg !5522
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %2, i64 %idxprom, !dbg !5522
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5526
  %4 = load i32, i32* %type, align 8, !dbg !5526
  %cmp2 = icmp ne i32 %4, 1, !dbg !5527
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5528

if.then:                                          ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5529
  br label %return, !dbg !5529

if.end:                                           ; preds = %for.body
  %5 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5530
  %6 = load i32, i32* %i, align 4, !dbg !5532
  %idxprom4 = sext i32 %6 to i64, !dbg !5530
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom4, !dbg !5530
  %integer = bitcast %union.acpi_object* %arrayidx5 to %struct.anon*, !dbg !5533
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !5534
  %7 = load i64, i64* %value, align 8, !dbg !5534
  %cmp6 = icmp ugt i64 %7, 4294967295, !dbg !5535
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5536

if.then8:                                         ; preds = %if.end
  store i32 -75, i32* %retval, align 4, !dbg !5537
  br label %return, !dbg !5537

if.end9:                                          ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5538
  %9 = load i32, i32* %i, align 4, !dbg !5539
  %idxprom10 = sext i32 %9 to i64, !dbg !5538
  %arrayidx11 = getelementptr %union.acpi_object, %union.acpi_object* %8, i64 %idxprom10, !dbg !5538
  %integer12 = bitcast %union.acpi_object* %arrayidx11 to %struct.anon*, !dbg !5540
  %value13 = getelementptr inbounds %struct.anon, %struct.anon* %integer12, i32 0, i32 1, !dbg !5541
  %10 = load i64, i64* %value13, align 8, !dbg !5541
  %conv14 = trunc i64 %10 to i32, !dbg !5538
  %11 = load i32*, i32** %val.addr, align 8, !dbg !5542
  %12 = load i32, i32* %i, align 4, !dbg !5543
  %idxprom15 = sext i32 %12 to i64, !dbg !5542
  %arrayidx16 = getelementptr i32, i32* %11, i64 %idxprom15, !dbg !5542
  store i32 %conv14, i32* %arrayidx16, align 4, !dbg !5544
  br label %for.inc, !dbg !5545

for.inc:                                          ; preds = %if.end9
  %13 = load i32, i32* %i, align 4, !dbg !5546
  %inc = add i32 %13, 1, !dbg !5546
  store i32 %inc, i32* %i, align 4, !dbg !5546
  br label %for.cond, !dbg !5547, !llvm.loop !5548

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5550
  br label %return, !dbg !5550

return:                                           ; preds = %for.end, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5551
  ret i32 %14, !dbg !5551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_copy_property_array_u64(%union.acpi_object* %items, i64* %val, i64 %nval) #0 !dbg !5552 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca %union.acpi_object*, align 8
  %val.addr = alloca i64*, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %items, %union.acpi_object** %items.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5561, metadata !DIExpression()), !dbg !5562
  store i32 0, i32* %i, align 4, !dbg !5563
  br label %for.cond, !dbg !5565

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5566
  %conv = sext i32 %0 to i64, !dbg !5566
  %1 = load i64, i64* %nval.addr, align 8, !dbg !5568
  %cmp = icmp ult i64 %conv, %1, !dbg !5569
  br i1 %cmp, label %for.body, label %for.end, !dbg !5570

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5571
  %3 = load i32, i32* %i, align 4, !dbg !5574
  %idxprom = sext i32 %3 to i64, !dbg !5571
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %2, i64 %idxprom, !dbg !5571
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5575
  %4 = load i32, i32* %type, align 8, !dbg !5575
  %cmp2 = icmp ne i32 %4, 1, !dbg !5576
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5577

if.then:                                          ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

if.end:                                           ; preds = %for.body
  %5 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5579
  %6 = load i32, i32* %i, align 4, !dbg !5580
  %idxprom4 = sext i32 %6 to i64, !dbg !5579
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom4, !dbg !5579
  %integer = bitcast %union.acpi_object* %arrayidx5 to %struct.anon*, !dbg !5581
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !5582
  %7 = load i64, i64* %value, align 8, !dbg !5582
  %8 = load i64*, i64** %val.addr, align 8, !dbg !5583
  %9 = load i32, i32* %i, align 4, !dbg !5584
  %idxprom6 = sext i32 %9 to i64, !dbg !5583
  %arrayidx7 = getelementptr i64, i64* %8, i64 %idxprom6, !dbg !5583
  store i64 %7, i64* %arrayidx7, align 8, !dbg !5585
  br label %for.inc, !dbg !5586

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5587
  %inc = add i32 %10, 1, !dbg !5587
  store i32 %inc, i32* %i, align 4, !dbg !5587
  br label %for.cond, !dbg !5588, !llvm.loop !5589

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5591
  br label %return, !dbg !5591

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5592
  ret i32 %11, !dbg !5592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_copy_property_array_string(%union.acpi_object* %items, i8** %val, i64 %nval) #0 !dbg !5593 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca %union.acpi_object*, align 8
  %val.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %items, %union.acpi_object** %items.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %items.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store i8** %val, i8*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %val.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i32 0, i32* %i, align 4, !dbg !5604
  br label %for.cond, !dbg !5606

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5607
  %conv = sext i32 %0 to i64, !dbg !5607
  %1 = load i64, i64* %nval.addr, align 8, !dbg !5609
  %cmp = icmp ult i64 %conv, %1, !dbg !5610
  br i1 %cmp, label %for.body, label %for.end, !dbg !5611

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5612
  %3 = load i32, i32* %i, align 4, !dbg !5615
  %idxprom = sext i32 %3 to i64, !dbg !5612
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %2, i64 %idxprom, !dbg !5612
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !5616
  %4 = load i32, i32* %type, align 8, !dbg !5616
  %cmp2 = icmp ne i32 %4, 2, !dbg !5617
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5618

if.then:                                          ; preds = %for.body
  store i32 -71, i32* %retval, align 4, !dbg !5619
  br label %return, !dbg !5619

if.end:                                           ; preds = %for.body
  %5 = load %union.acpi_object*, %union.acpi_object** %items.addr, align 8, !dbg !5620
  %6 = load i32, i32* %i, align 4, !dbg !5621
  %idxprom4 = sext i32 %6 to i64, !dbg !5620
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom4, !dbg !5620
  %string = bitcast %union.acpi_object* %arrayidx5 to %struct.anon.0*, !dbg !5622
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !5623
  %7 = load i8*, i8** %pointer, align 8, !dbg !5623
  %8 = load i8**, i8*** %val.addr, align 8, !dbg !5624
  %9 = load i32, i32* %i, align 4, !dbg !5625
  %idxprom6 = sext i32 %9 to i64, !dbg !5624
  %arrayidx7 = getelementptr i8*, i8** %8, i64 %idxprom6, !dbg !5624
  store i8* %7, i8** %arrayidx7, align 8, !dbg !5626
  br label %for.inc, !dbg !5627

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5628
  %inc = add i32 %10, 1, !dbg !5628
  store i32 %inc, i32* %i, align 4, !dbg !5628
  br label %for.cond, !dbg !5629, !llvm.loop !5630

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %nval.addr, align 8, !dbg !5632
  %conv8 = trunc i64 %11 to i32, !dbg !5632
  store i32 %conv8, i32* %retval, align 4, !dbg !5633
  br label %return, !dbg !5633

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5634
  ret i32 %12, !dbg !5634
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_is_present(%struct.acpi_device*) #3

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_get_match_data(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #3

; Function Attrs: noredzone
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle*) #3

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_acpi_graph_node(%struct.fwnode_handle* %fwnode, i8* %str) #0 !dbg !5635 {
entry:
  %retval = alloca i1, align 1
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %name = alloca i8*, align 8
  %__to_acpi_data_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_data_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5642, metadata !DIExpression()), !dbg !5643
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5644
  %call = call i64 @strlen(i8* %0) #7, !dbg !5645
  %conv = trunc i64 %call to i32, !dbg !5645
  store i32 %conv, i32* %len, align 4, !dbg !5643
  call void @llvm.dbg.declare(metadata i8** %name, metadata !5646, metadata !DIExpression()), !dbg !5647
  %1 = load i32, i32* %len, align 4, !dbg !5648
  %tobool = icmp ne i32 %1, 0, !dbg !5648
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5650

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5651
  %call1 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %2) #7, !dbg !5652
  br i1 %call1, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !5654
  br label %return, !dbg !5654

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_data_node_fwnode, metadata !5655, metadata !DIExpression()), !dbg !5657
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5657
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5657
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5657
  %call2 = call zeroext i1 @is_acpi_data_node(%struct.fwnode_handle* %4) #7, !dbg !5657
  br i1 %call2, label %cond.true, label %cond.false, !dbg !5657

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5658, metadata !DIExpression()), !dbg !5660
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_data_node_fwnode, align 8, !dbg !5660
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !5660
  store i8* %6, i8** %__mptr, align 8, !dbg !5660
  br label %do.body, !dbg !5660

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5661

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !5660
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !5660
  %8 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !5660
  store %struct.acpi_data_node* %8, %struct.acpi_data_node** %tmp4, align 8, !dbg !5661
  %9 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp4, align 8, !dbg !5660
  br label %cond.end, !dbg !5657

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5657

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_data_node* [ %9, %do.end ], [ null, %cond.false ], !dbg !5657
  store %struct.acpi_data_node* %cond, %struct.acpi_data_node** %tmp, align 8, !dbg !5657
  %10 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !5657
  %name5 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %10, i32 0, i32 0, !dbg !5663
  %11 = load i8*, i8** %name5, align 8, !dbg !5663
  store i8* %11, i8** %name, align 8, !dbg !5664
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5665
  %call6 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !5666
  br i1 %call6, label %land.lhs.true, label %lor.rhs, !dbg !5667

land.lhs.true:                                    ; preds = %cond.end
  %13 = load i8*, i8** %name, align 8, !dbg !5668
  %14 = load i8*, i8** %str.addr, align 8, !dbg !5669
  %15 = load i32, i32* %len, align 4, !dbg !5670
  %conv8 = zext i32 %15 to i64, !dbg !5670
  %call9 = call i32 @strncmp(i8* %13, i8* %14, i64 %conv8) #7, !dbg !5671
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5671
  br i1 %tobool10, label %lor.rhs, label %land.lhs.true11, !dbg !5672

land.lhs.true11:                                  ; preds = %land.lhs.true
  %16 = load i8*, i8** %name, align 8, !dbg !5673
  %17 = load i32, i32* %len, align 4, !dbg !5674
  %idxprom = zext i32 %17 to i64, !dbg !5673
  %arrayidx = getelementptr i8, i8* %16, i64 %idxprom, !dbg !5673
  %18 = load i8, i8* %arrayidx, align 1, !dbg !5673
  %conv12 = sext i8 %18 to i32, !dbg !5673
  %cmp = icmp eq i32 %conv12, 64, !dbg !5675
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5676

lor.rhs:                                          ; preds = %land.lhs.true11, %land.lhs.true, %cond.end
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5677
  %20 = load i8*, i8** %str.addr, align 8, !dbg !5678
  %call14 = call zeroext i1 @fwnode_property_present(%struct.fwnode_handle* %19, i8* %20) #7, !dbg !5679
  br label %lor.end, !dbg !5676

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true11
  %21 = phi i1 [ true, %land.lhs.true11 ], [ %call14, %lor.rhs ]
  store i1 %21, i1* %retval, align 1, !dbg !5680
  br label %return, !dbg !5680

return:                                           ; preds = %lor.end, %if.then
  %22 = load i1, i1* %retval, align 1, !dbg !5681
  ret i1 %22, !dbg !5681
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @fwnode_property_present(%struct.fwnode_handle*, i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_node_get_property_reference(%struct.fwnode_handle* %fwnode, i8* %name, i64 %index, %struct.fwnode_reference_args* %args) #0 !dbg !5682 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %name.addr = alloca i8*, align 8
  %index.addr = alloca i64, align 8
  %args.addr = alloca %struct.fwnode_reference_args*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store %struct.fwnode_reference_args* %args, %struct.fwnode_reference_args** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args** %args.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5694
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5695
  %2 = load i64, i64* %index.addr, align 8, !dbg !5696
  %3 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !5697
  %call = call i32 @__acpi_node_get_property_reference(%struct.fwnode_handle* %0, i8* %1, i64 %2, i64 8, %struct.fwnode_reference_args* %3) #7, !dbg !5698
  ret i32 %call, !dbg !5699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_graph_get_child_prop_value(%struct.fwnode_handle* %fwnode, i8* %prop_name, i32 %val) #0 !dbg !5700 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %prop_name.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %child = alloca %struct.fwnode_handle*, align 8
  %nr = alloca i32, align 4
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5711
  %call = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %0, %struct.fwnode_handle* null) #7, !dbg !5711
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %child, align 8, !dbg !5711
  br label %for.cond, !dbg !5711

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !5713
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !5711
  br i1 %tobool, label %for.body, label %for.end, !dbg !5711

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5715, metadata !DIExpression()), !dbg !5717
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !5718
  %3 = load i8*, i8** %prop_name.addr, align 8, !dbg !5720
  %call1 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %2, i8* %3, i32* %nr) #7, !dbg !5721
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5721
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5722

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5723

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* %val.addr, align 4, !dbg !5724
  %5 = load i32, i32* %nr, align 4, !dbg !5726
  %cmp = icmp eq i32 %4, %5, !dbg !5727
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5728

if.then3:                                         ; preds = %if.end
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !5729
  store %struct.fwnode_handle* %6, %struct.fwnode_handle** %retval, align 8, !dbg !5730
  br label %return, !dbg !5730

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !5731

for.inc:                                          ; preds = %if.end4, %if.then
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5713
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !5713
  %call5 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %7, %struct.fwnode_handle* %8) #7, !dbg !5713
  store %struct.fwnode_handle* %call5, %struct.fwnode_handle** %child, align 8, !dbg !5713
  br label %for.cond, !dbg !5713, !llvm.loop !5732

for.end:                                          ; preds = %for.cond
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !5734
  br label %return, !dbg !5734

return:                                           ; preds = %for.end, %if.then3
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !5735
  ret %struct.fwnode_handle* %9, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fwnode_property_read_u32(%struct.fwnode_handle* %fwnode, i8* %propname, i32* %val) #0 !dbg !5736 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5745
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5746
  %2 = load i32*, i32** %val.addr, align 8, !dbg !5747
  %call = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %0, i8* %1, i32* %2, i64 1) #7, !dbg !5748
  ret i32 %call, !dbg !5749
}

; Function Attrs: noredzone
declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32*, i64) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2485, !2486, !2487, !2488}
!llvm.ident = !{!2489}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_device_fwnode_ops", scope: !2, file: !3, line: 1411, type: !198, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, globals: !2475, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/property.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !78}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !51, line: 76, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !70, line: 19, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !79, line: 305, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!85 = !{!86, !88, !89, !103, !183, !184, !2455, !2466, !2468, !107, !188, !2469, !153, !152, !523, !2471, !128, !745, !2105, !2472, !2473, !331}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !87, line: 148, baseType: !7)
!87 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !91, line: 222, size: 192, elements: !92)
!91 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !90, file: !91, line: 223, baseType: !94, size: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !87, line: 178, size: 128, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !87, line: 179, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !87, line: 179, baseType: !97, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !90, file: !91, line: 224, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_properties", file: !91, line: 334, size: 256, elements: !105)
!105 = !{!106, !120, !182}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !104, file: !91, line: 335, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 23, size: 128, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !111, file: !110, line: 24, baseType: !114, size: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !118)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !116, line: 21, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!119}
!119 = !DISubrange(count: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !104, file: !91, line: 336, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !124, line: 899, size: 192, elements: !125)
!124 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !131, !139, !146, !154, !161, !168, !176}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !124, line: 900, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !124, line: 635, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !129, line: 21, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !7)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !123, file: !124, line: 904, baseType: !132, size: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 901, size: 128, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !124, line: 902, baseType: !127, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !132, file: !124, line: 903, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !129, line: 23, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !138)
!138 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !123, file: !124, line: 910, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 906, size: 128, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !124, line: 907, baseType: !127, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !124, line: 908, baseType: !128, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !140, file: !124, line: 909, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !123, file: !124, line: 916, baseType: !147, size: 128)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 912, size: 128, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !124, line: 913, baseType: !127, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !147, file: !124, line: 914, baseType: !128, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !147, file: !124, line: 915, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !129, line: 17, baseType: !115)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !123, file: !124, line: 922, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 918, size: 128, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !124, line: 919, baseType: !127, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !155, file: !124, line: 920, baseType: !128, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !155, file: !124, line: 921, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !123, file: !124, line: 928, baseType: !162, size: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 924, size: 128, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !124, line: 925, baseType: !127, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !162, file: !124, line: 926, baseType: !127, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !162, file: !124, line: 927, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !124, line: 424, baseType: !88)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !123, file: !124, line: 935, baseType: !169, size: 192)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 930, size: 192, elements: !170)
!170 = !{!171, !172, !173, !175}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !124, line: 931, baseType: !127, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !169, file: !124, line: 932, baseType: !128, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !169, file: !124, line: 933, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !124, line: 128, baseType: !136)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !169, file: !124, line: 934, baseType: !128, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !123, file: !124, line: 941, baseType: !177, size: 96)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 937, size: 96, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !124, line: 938, baseType: !127, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !177, file: !124, line: 939, baseType: !128, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !177, file: !124, line: 940, baseType: !128, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !104, file: !91, line: 337, baseType: !94, size: 128, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !91, line: 351, size: 10880, elements: !186)
!186 = !{!187, !189, !190, !2233, !2234, !2235, !2236, !2237, !2238, !2247, !2264, !2289, !2318, !2342, !2363, !2369, !2376, !2408, !2422, !2444, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !185, file: !91, line: 352, baseType: !188, size: 32)
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !185, file: !91, line: 353, baseType: !167, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !185, file: !91, line: 354, baseType: !191, size: 192, offset: 128)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !192, line: 17, size: 192, elements: !193)
!192 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !196, !2232}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !191, file: !192, line: 18, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !191, file: !192, line: 19, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !192, line: 110, size: 1152, elements: !200)
!200 = !{!201, !205, !209, !217, !2174, !2178, !2182, !2187, !2191, !2192, !2196, !2200, !2204, !2215, !2216, !2217, !2218, !2228}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !199, file: !192, line: 111, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!195, !195}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !199, file: !192, line: 112, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !195}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !199, file: !192, line: 113, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !87, line: 30, baseType: !214)
!214 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !199, file: !192, line: 114, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !215, !223}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !226)
!226 = !{!227, !1707, !1709, !1712, !1713, !1764, !1861, !1862, !1863, !1864, !1865, !1874, !1979, !1992, !2099, !2100, !2104, !2106, !2107, !2108, !2112, !2118, !2119, !2122, !2123, !2124, !2127, !2128, !2129, !2130, !2162, !2163, !2164, !2167, !2170, !2171, !2172, !2173}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !30, line: 462, baseType: !228, size: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !229, line: 64, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !233, !235, !294, !1544, !1697, !1702, !1703, !1704, !1705, !1706}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 65, baseType: !100, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !228, file: !229, line: 66, baseType: !94, size: 128, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !229, line: 67, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !228, file: !229, line: 68, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !229, line: 192, size: 704, elements: !238)
!238 = !{!239, !240, !256, !257}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !229, line: 193, baseType: !94, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !237, file: !229, line: 194, baseType: !241, offset: 128)
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
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !229, line: 195, baseType: !228, size: 512, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !237, file: !229, line: 196, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !229, line: 156, size: 192, elements: !261)
!261 = !{!262, !267, !272}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !229, line: 157, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!188, !236, !234}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !229, line: 158, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!100, !236, !234}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !229, line: 159, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!188, !236, !234, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !229, line: 148, size: 20736, elements: !279)
!279 = !{!280, !284, !288, !289, !293}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !229, line: 149, baseType: !281, size: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 192, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 3)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !278, file: !229, line: 150, baseType: !285, size: 4096, offset: 192)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 4096, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !278, file: !229, line: 151, baseType: !188, size: 32, offset: 4288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !278, file: !229, line: 152, baseType: !290, size: 16384, offset: 4320)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 2048)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !278, file: !229, line: 153, baseType: !188, size: 32, offset: 20704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !228, file: !229, line: 69, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !229, line: 138, size: 448, elements: !297)
!297 = !{!298, !302, !332, !334, !1491, !1522, !1526}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !296, file: !229, line: 139, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !234}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !296, file: !229, line: 140, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !306, line: 230, size: 128, elements: !307)
!306 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308, !324}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !305, file: !306, line: 231, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !234, !317, !145}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !87, line: 60, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !314, line: 73, baseType: !315)
!314 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !314, line: 15, baseType: !316)
!316 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !306, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !306, line: 31, baseType: !100, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !306, line: 32, baseType: !322, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !87, line: 19, baseType: !323)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !305, file: !306, line: 232, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!312, !234, !317, !100, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 55, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !314, line: 72, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !314, line: 16, baseType: !331)
!331 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !296, file: !229, line: 141, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !296, file: !229, line: 142, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !306, line: 84, size: 320, elements: !339)
!339 = !{!340, !341, !345, !1488, !1489}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !306, line: 85, baseType: !100, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !338, file: !306, line: 86, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!322, !234, !317, !188}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !338, file: !306, line: 88, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!322, !234, !349, !188}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !306, line: 168, size: 448, elements: !351)
!351 = !{!352, !353, !354, !355, !365, !366}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !350, file: !306, line: 169, baseType: !318, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !350, file: !306, line: 170, baseType: !328, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !350, file: !306, line: 171, baseType: !88, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !350, file: !306, line: 172, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!312, !359, !234, !349, !145, !362, !328}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !361, line: 526, flags: DIFlagFwdDecl)
!361 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !87, line: 46, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !314, line: 88, baseType: !364)
!364 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !350, file: !306, line: 174, baseType: !356, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !350, file: !306, line: 176, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!188, !359, !234, !349, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !372, line: 305, size: 1472, elements: !373)
!372 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !375, !376, !377, !378, !386, !387, !1462, !1468, !1469, !1474, !1475, !1478, !1482, !1483, !1484, !1485, !1486}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !371, file: !372, line: 308, baseType: !331, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !371, file: !372, line: 309, baseType: !331, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !371, file: !372, line: 313, baseType: !370, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !371, file: !372, line: 313, baseType: !370, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !371, file: !372, line: 315, baseType: !379, size: 192, align: 64, offset: 256)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !380, line: 24, size: 192, align: 64, elements: !381)
!380 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !383, !385}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !379, file: !380, line: 25, baseType: !331, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !379, file: !380, line: 26, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !379, file: !380, line: 27, baseType: !384, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !371, file: !372, line: 323, baseType: !331, size: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !371, file: !372, line: 327, baseType: !388, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !372, line: 388, size: 7296, elements: !390)
!390 = !{!391, !1458}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !372, line: 389, baseType: !392, size: 7296)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !372, line: 389, size: 7296, elements: !393)
!393 = !{!394, !395, !399, !400, !404, !405, !406, !407, !408, !416, !421, !422, !423, !424, !433, !434, !435, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !470, !478, !481, !529, !530, !1429, !1430, !1433, !1436, !1437, !1440, !1441, !1442, !1445, !1457}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !392, file: !372, line: 390, baseType: !370, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !392, file: !372, line: 391, baseType: !396, size: 64, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !380, line: 31, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !396, file: !380, line: 32, baseType: !384, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !392, file: !372, line: 392, baseType: !136, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !392, file: !372, line: 394, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!331, !359, !331, !331, !331, !331}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !392, file: !372, line: 398, baseType: !331, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !392, file: !372, line: 399, baseType: !331, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !392, file: !372, line: 405, baseType: !331, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !392, file: !372, line: 406, baseType: !331, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !392, file: !372, line: 407, baseType: !409, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !361, line: 286, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 286, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !411, file: !361, line: 286, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !415, line: 18, baseType: !331)
!415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !392, file: !372, line: 416, baseType: !417, size: 32, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !87, line: 168, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 166, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !418, file: !87, line: 167, baseType: !188, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !392, file: !372, line: 428, baseType: !417, size: 32, offset: 608)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !392, file: !372, line: 437, baseType: !417, size: 32, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !392, file: !372, line: 447, baseType: !417, size: 32, offset: 672)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !392, file: !372, line: 450, baseType: !425, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !426, line: 13, baseType: !427)
!426 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !87, line: 175, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 173, size: 64, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !428, file: !87, line: 174, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !129, line: 22, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !364)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !392, file: !372, line: 452, baseType: !188, size: 32, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !392, file: !372, line: 454, baseType: !241, offset: 800)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !392, file: !372, line: 457, baseType: !436, size: 256, offset: 832)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !437, line: 35, size: 256, elements: !438)
!437 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440, !441, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !437, line: 36, baseType: !425, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !436, file: !437, line: 42, baseType: !425, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !436, file: !437, line: 46, baseType: !442, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 29, baseType: !249)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !436, file: !437, line: 47, baseType: !94, size: 128, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !392, file: !372, line: 459, baseType: !94, size: 128, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !392, file: !372, line: 466, baseType: !331, size: 64, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !392, file: !372, line: 467, baseType: !331, size: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !392, file: !372, line: 469, baseType: !331, size: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !392, file: !372, line: 470, baseType: !331, size: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !392, file: !372, line: 471, baseType: !427, size: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !392, file: !372, line: 472, baseType: !331, size: 64, offset: 1536)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !392, file: !372, line: 473, baseType: !331, size: 64, offset: 1600)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !392, file: !372, line: 474, baseType: !331, size: 64, offset: 1664)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !392, file: !372, line: 475, baseType: !331, size: 64, offset: 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !392, file: !372, line: 477, baseType: !241, offset: 1792)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !392, file: !372, line: 478, baseType: !331, size: 64, offset: 1792)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !392, file: !372, line: 478, baseType: !331, size: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !392, file: !372, line: 478, baseType: !331, size: 64, offset: 1920)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !392, file: !372, line: 478, baseType: !331, size: 64, offset: 1984)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !392, file: !372, line: 479, baseType: !331, size: 64, offset: 2048)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !392, file: !372, line: 479, baseType: !331, size: 64, offset: 2112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !392, file: !372, line: 479, baseType: !331, size: 64, offset: 2176)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !392, file: !372, line: 480, baseType: !331, size: 64, offset: 2240)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !392, file: !372, line: 480, baseType: !331, size: 64, offset: 2304)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !392, file: !372, line: 480, baseType: !331, size: 64, offset: 2368)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !392, file: !372, line: 480, baseType: !331, size: 64, offset: 2432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !392, file: !372, line: 482, baseType: !467, size: 2816, offset: 2496)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 2816, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 44)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !392, file: !372, line: 488, baseType: !471, size: 256, offset: 5312)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !472, line: 60, size: 256, elements: !473)
!472 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !472, line: 61, baseType: !475, size: 256)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 4)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !392, file: !372, line: 490, baseType: !479, size: 64, offset: 5568)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !372, line: 490, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !392, file: !372, line: 493, baseType: !482, size: 896, offset: 5632)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !483, line: 53, baseType: !484)
!483 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 13, size: 896, elements: !485)
!485 = !{!486, !487, !488, !489, !492, !493, !500, !501, !521, !522, !525}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !484, file: !483, line: 18, baseType: !136, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !484, file: !483, line: 28, baseType: !427, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !484, file: !483, line: 31, baseType: !436, size: 256, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !484, file: !483, line: 32, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !483, line: 32, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !484, file: !483, line: 37, baseType: !323, size: 16, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !483, line: 40, baseType: !494, size: 192, offset: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !495, line: 53, size: 192, elements: !496)
!495 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !495, line: 54, baseType: !425, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !494, file: !495, line: 55, baseType: !241, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !494, file: !495, line: 59, baseType: !94, size: 128, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !484, file: !483, line: 41, baseType: !88, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !484, file: !483, line: 42, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !505, line: 13, size: 896, elements: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !504, file: !505, line: 14, baseType: !88, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !505, line: 15, baseType: !331, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !504, file: !505, line: 17, baseType: !331, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !504, file: !505, line: 17, baseType: !331, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !504, file: !505, line: 19, baseType: !316, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !504, file: !505, line: 21, baseType: !316, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !504, file: !505, line: 22, baseType: !316, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !504, file: !505, line: 23, baseType: !316, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !504, file: !505, line: 24, baseType: !316, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !504, file: !505, line: 25, baseType: !316, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !504, file: !505, line: 26, baseType: !316, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !504, file: !505, line: 27, baseType: !316, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !504, file: !505, line: 28, baseType: !316, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !504, file: !505, line: 29, baseType: !316, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !484, file: !483, line: 44, baseType: !417, size: 32, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !484, file: !483, line: 50, baseType: !523, size: 16, offset: 864)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !129, line: 19, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !323)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !484, file: !483, line: 51, baseType: !526, size: 16, offset: 880)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !129, line: 18, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !116, line: 23, baseType: !528)
!528 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !372, line: 495, baseType: !331, size: 64, offset: 6528)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !392, file: !372, line: 497, baseType: !531, size: 64, offset: 6592)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !372, line: 381, size: 384, elements: !533)
!533 = !{!534, !535, !1428}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !532, file: !372, line: 382, baseType: !417, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !532, file: !372, line: 383, baseType: !536, size: 128, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !372, line: 376, size: 128, elements: !537)
!537 = !{!538, !1426}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !536, file: !372, line: 377, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !541, line: 640, size: 48640, elements: !542)
!541 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !549, !551, !552, !558, !559, !560, !561, !562, !563, !564, !565, !569, !587, !598, !690, !691, !692, !703, !704, !706, !707, !708, !709, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !788, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !844, !846, !847, !848, !860, !862, !863, !864, !865, !866, !872, !873, !874, !875, !876, !877, !878, !890, !895, !899, !900, !901, !904, !906, !909, !912, !915, !918, !921, !924, !927, !933, !934, !935, !941, !942, !943, !944, !945, !954, !955, !956, !957, !958, !963, !964, !965, !968, !969, !972, !975, !978, !981, !984, !987, !988, !1068, !1071, !1074, !1075, !1078, !1079, !1080, !1086, !1087, !1088, !1101, !1102, !1103, !1113, !1118, !1121, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !540, file: !541, line: 646, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !545, line: 56, size: 128, elements: !546)
!545 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !545, line: 57, baseType: !331, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !544, file: !545, line: 58, baseType: !128, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !540, file: !541, line: 649, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !316)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !540, file: !541, line: 657, baseType: !88, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !540, file: !541, line: 658, baseType: !553, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !554, line: 113, baseType: !555)
!554 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !554, line: 111, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !555, file: !554, line: 112, baseType: !417, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !541, line: 660, baseType: !7, size: 32, offset: 288)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !540, file: !541, line: 661, baseType: !7, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !540, file: !541, line: 684, baseType: !188, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !540, file: !541, line: 686, baseType: !188, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !540, file: !541, line: 687, baseType: !188, size: 32, offset: 416)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !540, file: !541, line: 688, baseType: !188, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !540, file: !541, line: 689, baseType: !7, size: 32, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !540, file: !541, line: 691, baseType: !566, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !541, line: 691, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !540, file: !541, line: 692, baseType: !570, size: 832, offset: 576)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !541, line: 451, size: 832, elements: !571)
!571 = !{!572, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !570, file: !541, line: 453, baseType: !573, size: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !541, line: 325, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !573, file: !541, line: 326, baseType: !331, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !573, file: !541, line: 327, baseType: !128, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !570, file: !541, line: 454, baseType: !379, size: 192, align: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !570, file: !541, line: 455, baseType: !94, size: 128, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !570, file: !541, line: 456, baseType: !7, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !570, file: !541, line: 458, baseType: !136, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !570, file: !541, line: 459, baseType: !136, size: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !570, file: !541, line: 460, baseType: !136, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !570, file: !541, line: 461, baseType: !136, size: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !570, file: !541, line: 463, baseType: !136, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !570, file: !541, line: 465, baseType: !586, offset: 832)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !541, line: 415, elements: !255)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !540, file: !541, line: 693, baseType: !588, size: 384, offset: 1408)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !541, line: 489, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !588, file: !541, line: 490, baseType: !94, size: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !588, file: !541, line: 491, baseType: !331, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !588, file: !541, line: 492, baseType: !331, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !588, file: !541, line: 493, baseType: !7, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !588, file: !541, line: 494, baseType: !323, size: 16, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !588, file: !541, line: 495, baseType: !323, size: 16, offset: 304)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !588, file: !541, line: 497, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !540, file: !541, line: 697, baseType: !599, size: 1792, offset: 1792)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !541, line: 507, size: 1792, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !687, !688}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !599, file: !541, line: 508, baseType: !379, size: 192, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !599, file: !541, line: 515, baseType: !136, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !599, file: !541, line: 516, baseType: !136, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !599, file: !541, line: 517, baseType: !136, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !599, file: !541, line: 518, baseType: !136, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !599, file: !541, line: 519, baseType: !136, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !599, file: !541, line: 526, baseType: !431, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !599, file: !541, line: 527, baseType: !136, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !541, line: 528, baseType: !7, size: 32, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !599, file: !541, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !599, file: !541, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !599, file: !541, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !599, file: !541, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !599, file: !541, line: 563, baseType: !615, size: 512, offset: 704)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !616)
!616 = !{!617, !625, !626, !631, !683, !684, !685, !686}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !6, line: 119, baseType: !618, size: 256)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !619, line: 9, size: 256, elements: !620)
!619 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !619, line: 10, baseType: !379, size: 192, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !618, file: !619, line: 11, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !624, line: 29, baseType: !431)
!624 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !615, file: !6, line: 120, baseType: !623, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !615, file: !6, line: 121, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!5, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !615, file: !6, line: 122, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !634)
!634 = !{!635, !655, !656, !659, !669, !670, !678, !682}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !633, file: !6, line: 160, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !637, file: !6, line: 215, baseType: !442)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !637, file: !6, line: 216, baseType: !7, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !637, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !637, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !637, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !637, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !637, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !637, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !637, file: !6, line: 233, baseType: !623, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !637, file: !6, line: 234, baseType: !630, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !637, file: !6, line: 235, baseType: !623, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !637, file: !6, line: 236, baseType: !630, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !637, file: !6, line: 237, baseType: !652, size: 4096, offset: 512)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 4096, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 8)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !633, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !633, file: !6, line: 162, baseType: !657, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !87, line: 27, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !314, line: 96, baseType: !188)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !633, file: !6, line: 163, baseType: !660, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !661, line: 276, baseType: !662)
!661 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !661, line: 276, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !662, file: !661, line: 276, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !661, line: 70, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !661, line: 65, size: 32, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !666, file: !661, line: 66, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !633, file: !6, line: 164, baseType: !630, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !633, file: !6, line: 165, baseType: !671, size: 128, offset: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !619, line: 14, size: 128, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !671, file: !619, line: 15, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !380, line: 125, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !674, file: !380, line: 126, baseType: !396, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !674, file: !380, line: 127, baseType: !384, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !633, file: !6, line: 166, baseType: !679, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!623}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !633, file: !6, line: 167, baseType: !623, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !615, file: !6, line: 123, baseType: !153, size: 8, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !615, file: !6, line: 124, baseType: !153, size: 8, offset: 456)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !615, file: !6, line: 125, baseType: !153, size: 8, offset: 464)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !615, file: !6, line: 126, baseType: !153, size: 8, offset: 472)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !599, file: !541, line: 572, baseType: !615, size: 512, offset: 1216)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !599, file: !541, line: 580, baseType: !689, size: 64, offset: 1728)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !540, file: !541, line: 721, baseType: !7, size: 32, offset: 3584)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !540, file: !541, line: 722, baseType: !188, size: 32, offset: 3616)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !540, file: !541, line: 723, baseType: !693, size: 64, offset: 3648)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !696, line: 17, baseType: !697)
!696 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !696, line: 17, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !697, file: !696, line: 17, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 1)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !540, file: !541, line: 724, baseType: !695, size: 64, offset: 3712)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !540, file: !541, line: 749, baseType: !705, offset: 3776)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !541, line: 290, elements: !255)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !540, file: !541, line: 751, baseType: !94, size: 128, offset: 3776)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !540, file: !541, line: 757, baseType: !388, size: 64, offset: 3904)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !540, file: !541, line: 758, baseType: !388, size: 64, offset: 3968)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !540, file: !541, line: 761, baseType: !710, size: 320, offset: 4032)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !472, line: 34, size: 320, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !710, file: !472, line: 35, baseType: !136, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !710, file: !472, line: 36, baseType: !714, size: 256, offset: 64)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !476)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !540, file: !541, line: 766, baseType: !188, size: 32, offset: 4352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !540, file: !541, line: 767, baseType: !188, size: 32, offset: 4384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !540, file: !541, line: 768, baseType: !188, size: 32, offset: 4416)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !540, file: !541, line: 770, baseType: !188, size: 32, offset: 4448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !540, file: !541, line: 772, baseType: !331, size: 64, offset: 4480)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !540, file: !541, line: 775, baseType: !7, size: 32, offset: 4544)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !540, file: !541, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !540, file: !541, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !540, file: !541, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !540, file: !541, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !540, file: !541, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !540, file: !541, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !540, file: !541, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !540, file: !541, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !540, file: !541, line: 831, baseType: !331, size: 64, offset: 4672)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !540, file: !541, line: 833, baseType: !731, size: 384, offset: 4736)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !732)
!732 = !{!733, !738}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !731, file: !12, line: 26, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!316, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !12, line: 27, baseType: !739, size: 320, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !12, line: 27, size: 320, elements: !740)
!740 = !{!741, !751, !778}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !739, file: !12, line: 36, baseType: !742, size: 320)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !12, line: 29, size: 320, elements: !743)
!743 = !{!744, !746, !747, !748, !749, !750}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !742, file: !12, line: 30, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !742, file: !12, line: 31, baseType: !128, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !12, line: 32, baseType: !128, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !742, file: !12, line: 33, baseType: !128, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !742, file: !12, line: 34, baseType: !136, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !742, file: !12, line: 35, baseType: !745, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !739, file: !12, line: 46, baseType: !752, size: 192)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !12, line: 38, size: 192, elements: !753)
!753 = !{!754, !755, !756, !777}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !752, file: !12, line: 39, baseType: !657, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !12, line: 41, baseType: !757, size: 64, offset: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !12, line: 41, size: 64, elements: !758)
!758 = !{!759, !767}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !757, file: !12, line: 42, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !762, line: 7, size: 128, elements: !763)
!762 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !761, file: !762, line: 8, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !314, line: 93, baseType: !364)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !761, file: !762, line: 9, baseType: !364, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !757, file: !12, line: 43, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !770, line: 7, size: 64, elements: !771)
!770 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !769, file: !770, line: 8, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !770, line: 5, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !129, line: 20, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !116, line: 26, baseType: !188)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !769, file: !770, line: 9, baseType: !774, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !752, file: !12, line: 45, baseType: !136, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !739, file: !12, line: 54, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !12, line: 48, size: 256, elements: !780)
!780 = !{!781, !784, !785, !786, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !779, file: !12, line: 49, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !779, file: !12, line: 50, baseType: !188, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !779, file: !12, line: 51, baseType: !188, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !779, file: !12, line: 52, baseType: !331, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !779, file: !12, line: 53, baseType: !331, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !540, file: !541, line: 835, baseType: !789, size: 32, offset: 5120)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !87, line: 22, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !314, line: 28, baseType: !188)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !540, file: !541, line: 836, baseType: !789, size: 32, offset: 5152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !540, file: !541, line: 840, baseType: !331, size: 64, offset: 5184)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !540, file: !541, line: 849, baseType: !539, size: 64, offset: 5248)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !540, file: !541, line: 852, baseType: !539, size: 64, offset: 5312)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !540, file: !541, line: 857, baseType: !94, size: 128, offset: 5376)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !540, file: !541, line: 858, baseType: !94, size: 128, offset: 5504)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !540, file: !541, line: 859, baseType: !539, size: 64, offset: 5632)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !540, file: !541, line: 867, baseType: !94, size: 128, offset: 5696)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !540, file: !541, line: 868, baseType: !94, size: 128, offset: 5824)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !540, file: !541, line: 871, baseType: !801, size: 64, offset: 5952)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !803, line: 59, size: 768, elements: !804)
!803 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !806, !807, !808, !819, !820, !827, !836}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !803, line: 61, baseType: !553, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !802, file: !803, line: 62, baseType: !7, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 63, baseType: !241, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !802, file: !803, line: 65, baseType: !809, size: 256, offset: 64)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 256, elements: !476)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !87, line: 182, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !810, file: !87, line: 183, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !87, line: 186, size: 128, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !814, file: !87, line: 187, baseType: !813, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !814, file: !87, line: 187, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !802, file: !803, line: 66, baseType: !810, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !802, file: !803, line: 68, baseType: !821, size: 128, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !822, line: 40, baseType: !823)
!822 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !822, line: 36, size: 128, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !822, line: 37, baseType: !241)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !823, file: !822, line: 38, baseType: !94, size: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !802, file: !803, line: 69, baseType: !828, size: 128, align: 64, offset: 512)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !87, line: 216, size: 128, align: 64, elements: !829)
!829 = !{!830, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !87, line: 217, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !828, file: !87, line: 218, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !831}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !802, file: !803, line: 70, baseType: !837, size: 128, offset: 640)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 128, elements: !701)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !803, line: 54, size: 128, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !838, file: !803, line: 55, baseType: !188, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !838, file: !803, line: 56, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !803, line: 56, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !540, file: !541, line: 872, baseType: !845, size: 512, offset: 6016)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 512, elements: !476)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !540, file: !541, line: 873, baseType: !94, size: 128, offset: 6528)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !540, file: !541, line: 874, baseType: !94, size: 128, offset: 6656)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !540, file: !541, line: 876, baseType: !849, size: 64, offset: 6784)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !851, line: 26, size: 192, elements: !852)
!851 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !850, file: !851, line: 27, baseType: !7, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !850, file: !851, line: 28, baseType: !855, size: 128, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !856, line: 43, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !855, file: !856, line: 44, baseType: !442)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !855, file: !856, line: 45, baseType: !94, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !540, file: !541, line: 879, baseType: !861, size: 64, offset: 6848)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !540, file: !541, line: 882, baseType: !861, size: 64, offset: 6912)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !540, file: !541, line: 884, baseType: !136, size: 64, offset: 6976)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !540, file: !541, line: 885, baseType: !136, size: 64, offset: 7040)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !540, file: !541, line: 890, baseType: !136, size: 64, offset: 7104)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !540, file: !541, line: 891, baseType: !867, size: 128, offset: 7168)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !541, line: 242, size: 128, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !867, file: !541, line: 244, baseType: !136, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !867, file: !541, line: 245, baseType: !136, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !541, line: 246, baseType: !442, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !540, file: !541, line: 900, baseType: !331, size: 64, offset: 7296)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !540, file: !541, line: 901, baseType: !331, size: 64, offset: 7360)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !540, file: !541, line: 904, baseType: !136, size: 64, offset: 7424)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !540, file: !541, line: 907, baseType: !136, size: 64, offset: 7488)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !540, file: !541, line: 910, baseType: !331, size: 64, offset: 7552)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !540, file: !541, line: 911, baseType: !331, size: 64, offset: 7616)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !540, file: !541, line: 914, baseType: !879, size: 640, offset: 7680)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !880, line: 123, size: 640, elements: !881)
!880 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !879, file: !880, line: 124, baseType: !883, size: 576)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 576, elements: !282)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !880, line: 108, size: 192, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !884, file: !880, line: 109, baseType: !136, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !884, file: !880, line: 110, baseType: !671, size: 128, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !879, file: !880, line: 125, baseType: !7, size: 32, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !879, file: !880, line: 126, baseType: !7, size: 32, offset: 608)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !540, file: !541, line: 917, baseType: !891, size: 192, offset: 8320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !880, line: 134, size: 192, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !891, file: !880, line: 135, baseType: !828, size: 128, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !891, file: !880, line: 136, baseType: !7, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !540, file: !541, line: 923, baseType: !896, size: 64, offset: 8512)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !541, line: 923, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !540, file: !541, line: 926, baseType: !896, size: 64, offset: 8576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !540, file: !541, line: 929, baseType: !896, size: 64, offset: 8640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !540, file: !541, line: 933, baseType: !902, size: 64, offset: 8704)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !541, line: 933, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !540, file: !541, line: 943, baseType: !905, size: 128, offset: 8768)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !118)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !540, file: !541, line: 945, baseType: !907, size: 64, offset: 8896)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !541, line: 49, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !540, file: !541, line: 956, baseType: !910, size: 64, offset: 8960)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !541, line: 45, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !540, file: !541, line: 959, baseType: !913, size: 64, offset: 9024)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !541, line: 959, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !540, file: !541, line: 962, baseType: !916, size: 64, offset: 9088)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !541, line: 66, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !540, file: !541, line: 966, baseType: !919, size: 64, offset: 9152)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !541, line: 50, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !540, file: !541, line: 969, baseType: !922, size: 64, offset: 9216)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !880, line: 223, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !540, file: !541, line: 970, baseType: !925, size: 64, offset: 9280)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !541, line: 62, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !540, file: !541, line: 971, baseType: !928, size: 64, offset: 9344)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !929, line: 25, baseType: !930)
!929 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !929, line: 23, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !930, file: !929, line: 24, baseType: !700, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !540, file: !541, line: 972, baseType: !928, size: 64, offset: 9408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !540, file: !541, line: 974, baseType: !928, size: 64, offset: 9472)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !540, file: !541, line: 975, baseType: !936, size: 192, offset: 9536)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !937, line: 30, size: 192, elements: !938)
!937 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !936, file: !937, line: 31, baseType: !94, size: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !936, file: !937, line: 32, baseType: !928, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !540, file: !541, line: 976, baseType: !331, size: 64, offset: 9728)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !540, file: !541, line: 977, baseType: !328, size: 64, offset: 9792)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !540, file: !541, line: 978, baseType: !7, size: 32, offset: 9856)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !540, file: !541, line: 980, baseType: !831, size: 64, offset: 9920)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !540, file: !541, line: 989, baseType: !946, size: 128, offset: 9984)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !947, line: 35, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !946, file: !947, line: 36, baseType: !188, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !946, file: !947, line: 37, baseType: !417, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !946, file: !947, line: 38, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !947, line: 23, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !540, file: !541, line: 992, baseType: !136, size: 64, offset: 10112)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !540, file: !541, line: 993, baseType: !136, size: 64, offset: 10176)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !540, file: !541, line: 996, baseType: !241, offset: 10240)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !540, file: !541, line: 999, baseType: !442, offset: 10240)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !540, file: !541, line: 1001, baseType: !959, size: 64, offset: 10240)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !541, line: 636, size: 64, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !541, line: 637, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !540, file: !541, line: 1005, baseType: !674, size: 128, offset: 10304)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !540, file: !541, line: 1007, baseType: !539, size: 64, offset: 10432)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !540, file: !541, line: 1009, baseType: !966, size: 64, offset: 10496)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !541, line: 1009, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !540, file: !541, line: 1043, baseType: !88, size: 64, offset: 10560)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !540, file: !541, line: 1046, baseType: !970, size: 64, offset: 10624)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !541, line: 41, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !540, file: !541, line: 1050, baseType: !973, size: 64, offset: 10688)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !541, line: 42, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !540, file: !541, line: 1054, baseType: !976, size: 64, offset: 10752)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !541, line: 55, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !540, file: !541, line: 1056, baseType: !979, size: 64, offset: 10816)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !541, line: 40, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !540, file: !541, line: 1058, baseType: !982, size: 64, offset: 10880)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !541, line: 47, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !540, file: !541, line: 1061, baseType: !985, size: 64, offset: 10944)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !541, line: 43, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !540, file: !541, line: 1064, baseType: !331, size: 64, offset: 11008)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !540, file: !541, line: 1065, baseType: !989, size: 64, offset: 11072)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !937, line: 14, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !937, line: 12, size: 384, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !937, line: 13, baseType: !994, size: 384)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !937, line: 13, size: 384, elements: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !994, file: !937, line: 13, baseType: !188, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !994, file: !937, line: 13, baseType: !188, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !994, file: !937, line: 13, baseType: !188, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !994, file: !937, line: 13, baseType: !1000, size: 256, offset: 128)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1001, line: 32, size: 256, elements: !1002)
!1001 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003, !1009, !1022, !1028, !1037, !1057, !1062}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1000, file: !1001, line: 37, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 34, size: 64, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1004, file: !1001, line: 35, baseType: !790, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1004, file: !1001, line: 36, baseType: !1008, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !314, line: 49, baseType: !7)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1000, file: !1001, line: 45, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 40, size: 192, elements: !1011)
!1011 = !{!1012, !1014, !1015, !1021}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1010, file: !1001, line: 41, baseType: !1013, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !314, line: 95, baseType: !188)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1010, file: !1001, line: 42, baseType: !188, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1010, file: !1001, line: 43, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1001, line: 11, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1001, line: 8, size: 64, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1017, file: !1001, line: 9, baseType: !188, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1017, file: !1001, line: 10, baseType: !88, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1010, file: !1001, line: 44, baseType: !188, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1000, file: !1001, line: 52, baseType: !1023, size: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 48, size: 128, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1023, file: !1001, line: 49, baseType: !790, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1023, file: !1001, line: 50, baseType: !1008, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1023, file: !1001, line: 51, baseType: !1016, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1000, file: !1001, line: 61, baseType: !1029, size: 256)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 55, size: 256, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1029, file: !1001, line: 56, baseType: !790, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1029, file: !1001, line: 57, baseType: !1008, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1029, file: !1001, line: 58, baseType: !188, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1029, file: !1001, line: 59, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !314, line: 94, baseType: !315)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1029, file: !1001, line: 60, baseType: !1035, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1000, file: !1001, line: 95, baseType: !1038, size: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 64, size: 256, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1038, file: !1001, line: 65, baseType: !88, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1001, line: 77, baseType: !1042, size: 192, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1001, line: 77, size: 192, elements: !1043)
!1043 = !{!1044, !1045, !1052}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1042, file: !1001, line: 82, baseType: !528, size: 16)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1042, file: !1001, line: 88, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1001, line: 84, size: 192, elements: !1047)
!1047 = !{!1048, !1050, !1051}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1046, file: !1001, line: 85, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !653)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1046, file: !1001, line: 86, baseType: !88, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1046, file: !1001, line: 87, baseType: !88, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1042, file: !1001, line: 93, baseType: !1053, size: 96)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1001, line: 90, size: 96, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1053, file: !1001, line: 91, baseType: !1049, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1053, file: !1001, line: 92, baseType: !130, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1000, file: !1001, line: 101, baseType: !1058, size: 128)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 98, size: 128, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1058, file: !1001, line: 99, baseType: !316, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1058, file: !1001, line: 100, baseType: !188, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1000, file: !1001, line: 108, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !1001, line: 104, size: 128, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1063, file: !1001, line: 105, baseType: !88, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1063, file: !1001, line: 106, baseType: !188, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1063, file: !1001, line: 107, baseType: !7, size: 32, offset: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !540, file: !541, line: 1067, baseType: !1069, offset: 11136)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1070, line: 12, elements: !255)
!1070 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !540, file: !541, line: 1099, baseType: !1072, size: 64, offset: 11136)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !541, line: 56, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !540, file: !541, line: 1103, baseType: !94, size: 128, offset: 11200)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !540, file: !541, line: 1104, baseType: !1076, size: 64, offset: 11328)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !541, line: 46, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !540, file: !541, line: 1105, baseType: !494, size: 192, offset: 11392)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !540, file: !541, line: 1106, baseType: !7, size: 32, offset: 11584)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !540, file: !541, line: 1109, baseType: !1081, size: 128, offset: 11648)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 128, elements: !1084)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !541, line: 51, flags: DIFlagFwdDecl)
!1084 = !{!1085}
!1085 = !DISubrange(count: 2)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !540, file: !541, line: 1110, baseType: !494, size: 192, offset: 11776)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !540, file: !541, line: 1111, baseType: !94, size: 128, offset: 11968)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !540, file: !541, line: 1173, baseType: !1089, size: 64, offset: 12096)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1091, line: 62, size: 256, align: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1094, !1095, !1100}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1090, file: !1091, line: 75, baseType: !130, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1090, file: !1091, line: 90, baseType: !130, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1090, file: !1091, line: 124, baseType: !1096, size: 64, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !1091, line: 109, size: 64, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1096, file: !1091, line: 110, baseType: !137, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1096, file: !1091, line: 112, baseType: !137, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !1091, line: 144, baseType: !130, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !540, file: !541, line: 1174, baseType: !128, size: 32, offset: 12160)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !540, file: !541, line: 1179, baseType: !331, size: 64, offset: 12224)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !540, file: !541, line: 1182, baseType: !1104, size: 128, offset: 12288)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !472, line: 76, size: 128, elements: !1105)
!1105 = !{!1106, !1111, !1112}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1104, file: !472, line: 85, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1108, line: 7, size: 64, elements: !1109)
!1108 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1107, file: !1108, line: 12, baseType: !697, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1104, file: !472, line: 88, baseType: !213, size: 8, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1104, file: !472, line: 95, baseType: !213, size: 8, offset: 72)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !541, line: 1184, baseType: !1114, size: 128, offset: 12416)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !541, line: 1184, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1114, file: !541, line: 1185, baseType: !553, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1114, file: !541, line: 1186, baseType: !828, size: 128, align: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !540, file: !541, line: 1190, baseType: !1119, size: 64, offset: 12544)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !541, line: 53, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !540, file: !541, line: 1192, baseType: !1122, size: 128, offset: 12608)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !472, line: 64, size: 128, elements: !1123)
!1123 = !{!1124, !1217, !1218}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1122, file: !472, line: 65, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !372, line: 68, size: 512, align: 128, elements: !1127)
!1127 = !{!1128, !1129, !1209, !1216}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1126, file: !372, line: 69, baseType: !331, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !372, line: 77, baseType: !1130, size: 320, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !372, line: 77, size: 320, elements: !1131)
!1131 = !{!1132, !1141, !1146, !1174, !1182, !1188, !1201, !1208}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 78, baseType: !1133, size: 320)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 78, size: 320, elements: !1134)
!1134 = !{!1135, !1136, !1139, !1140}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1133, file: !372, line: 84, baseType: !94, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1133, file: !372, line: 86, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !372, line: 26, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1133, file: !372, line: 87, baseType: !331, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1133, file: !372, line: 94, baseType: !331, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 96, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 96, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1142, file: !372, line: 101, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !87, line: 143, baseType: !136)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 103, baseType: !1147, size: 320)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 103, size: 320, elements: !1148)
!1148 = !{!1149, !1159, !1162, !1163}
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !372, line: 104, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !372, line: 104, size: 128, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1150, file: !372, line: 105, baseType: !94, size: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !372, line: 106, baseType: !1154, size: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !372, line: 106, size: 128, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1154, file: !372, line: 107, baseType: !1125, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1154, file: !372, line: 109, baseType: !188, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1154, file: !372, line: 110, baseType: !188, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1147, file: !372, line: 117, baseType: !1160, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !372, line: 117, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1147, file: !372, line: 119, baseType: !88, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !372, line: 120, baseType: !1164, size: 64, offset: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !372, line: 120, size: 64, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1164, file: !372, line: 121, baseType: !88, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1164, file: !372, line: 122, baseType: !331, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !372, line: 123, baseType: !1169, size: 32)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !372, line: 123, size: 32, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1169, file: !372, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1169, file: !372, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1169, file: !372, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 130, baseType: !1175, size: 192)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 130, size: 192, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1175, file: !372, line: 131, baseType: !331, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1175, file: !372, line: 134, baseType: !117, size: 8, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1175, file: !372, line: 135, baseType: !117, size: 8, offset: 72)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1175, file: !372, line: 136, baseType: !417, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1175, file: !372, line: 137, baseType: !7, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 139, baseType: !1183, size: 256)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 139, size: 256, elements: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1183, file: !372, line: 140, baseType: !331, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1183, file: !372, line: 141, baseType: !417, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1183, file: !372, line: 143, baseType: !94, size: 128, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 145, baseType: !1189, size: 256)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 145, size: 256, elements: !1190)
!1190 = !{!1191, !1192, !1194, !1195, !1200}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1189, file: !372, line: 146, baseType: !331, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1189, file: !372, line: 147, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !361, line: 509, baseType: !1125)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1189, file: !372, line: 148, baseType: !331, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !372, line: 149, baseType: !1196, size: 64, offset: 192)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !372, line: 149, size: 64, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1196, file: !372, line: 150, baseType: !388, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1196, file: !372, line: 151, baseType: !417, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1189, file: !372, line: 156, baseType: !241, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !372, line: 159, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !372, line: 159, size: 128, elements: !1203)
!1203 = !{!1204, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1202, file: !372, line: 161, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !372, line: 161, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1202, file: !372, line: 162, baseType: !88, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1130, file: !372, line: 176, baseType: !828, size: 128, align: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !372, line: 179, baseType: !1210, size: 32, offset: 384)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !372, line: 179, size: 32, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1210, file: !372, line: 184, baseType: !417, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1210, file: !372, line: 192, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1210, file: !372, line: 194, baseType: !7, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1210, file: !372, line: 195, baseType: !188, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1126, file: !372, line: 199, baseType: !417, size: 32, offset: 416)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1122, file: !472, line: 67, baseType: !130, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1122, file: !472, line: 68, baseType: !130, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !540, file: !541, line: 1206, baseType: !188, size: 32, offset: 12736)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !540, file: !541, line: 1207, baseType: !188, size: 32, offset: 12768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !540, file: !541, line: 1209, baseType: !331, size: 64, offset: 12800)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !540, file: !541, line: 1219, baseType: !136, size: 64, offset: 12864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !540, file: !541, line: 1220, baseType: !136, size: 64, offset: 12928)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !540, file: !541, line: 1317, baseType: !188, size: 32, offset: 12992)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !540, file: !541, line: 1319, baseType: !539, size: 64, offset: 13056)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !540, file: !541, line: 1322, baseType: !1227, size: 64, offset: 13120)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1229, line: 56, size: 512, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1237, !1238, !1240}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1228, file: !1229, line: 57, baseType: !1227, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1228, file: !1229, line: 58, baseType: !88, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1228, file: !1229, line: 59, baseType: !331, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 60, baseType: !331, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1228, file: !1229, line: 61, baseType: !1236, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1228, file: !1229, line: 62, baseType: !7, size: 32, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1228, file: !1229, line: 63, baseType: !1239, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !87, line: 153, baseType: !136)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1228, file: !1229, line: 64, baseType: !221, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !540, file: !541, line: 1326, baseType: !553, size: 32, offset: 13184)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !540, file: !541, line: 1342, baseType: !88, size: 64, offset: 13248)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !540, file: !541, line: 1343, baseType: !137, size: 64, offset: 13312)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !540, file: !541, line: 1344, baseType: !136, size: 64, offset: 13376)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !540, file: !541, line: 1345, baseType: !137, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !540, file: !541, line: 1346, baseType: !137, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !540, file: !541, line: 1347, baseType: !137, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !540, file: !541, line: 1348, baseType: !828, size: 128, align: 64, offset: 13504)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !540, file: !541, line: 1358, baseType: !1250, size: 34816, offset: 13824)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1251, line: 485, size: 34816, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1282, !1283, !1284, !1285, !1286, !1287, !1290, !1291, !1292}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1250, file: !1251, line: 487, baseType: !1254, size: 192)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 192, elements: !282)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1256, line: 16, size: 64, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1255, file: !1256, line: 17, baseType: !523, size: 16)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1255, file: !1256, line: 18, baseType: !523, size: 16, offset: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1255, file: !1256, line: 19, baseType: !523, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1255, file: !1256, line: 19, baseType: !523, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1255, file: !1256, line: 19, baseType: !523, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1255, file: !1256, line: 19, baseType: !523, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1255, file: !1256, line: 19, baseType: !523, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1255, file: !1256, line: 20, baseType: !523, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1255, file: !1256, line: 20, baseType: !523, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1255, file: !1256, line: 20, baseType: !523, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1255, file: !1256, line: 20, baseType: !523, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1255, file: !1256, line: 20, baseType: !523, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1255, file: !1256, line: 20, baseType: !523, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1250, file: !1251, line: 491, baseType: !331, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1250, file: !1251, line: 495, baseType: !323, size: 16, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1250, file: !1251, line: 496, baseType: !323, size: 16, offset: 272)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1250, file: !1251, line: 497, baseType: !323, size: 16, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1250, file: !1251, line: 498, baseType: !323, size: 16, offset: 304)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1250, file: !1251, line: 502, baseType: !331, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1250, file: !1251, line: 503, baseType: !331, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1250, file: !1251, line: 514, baseType: !1279, size: 256, offset: 448)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 256, elements: !476)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1251, line: 483, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1250, file: !1251, line: 516, baseType: !331, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1250, file: !1251, line: 518, baseType: !331, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1250, file: !1251, line: 520, baseType: !331, size: 64, offset: 832)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1250, file: !1251, line: 521, baseType: !331, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1250, file: !1251, line: 522, baseType: !331, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1250, file: !1251, line: 528, baseType: !1288, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1251, line: 10, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1250, file: !1251, line: 535, baseType: !331, size: 64, offset: 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1250, file: !1251, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1250, file: !1251, line: 540, baseType: !1293, size: 33280, offset: 1536)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1294, line: 317, size: 33280, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1293, file: !1294, line: 330, baseType: !7, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1293, file: !1294, line: 337, baseType: !331, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1293, file: !1294, line: 348, baseType: !1299, size: 32768, offset: 512)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1294, line: 304, size: 32768, elements: !1300)
!1300 = !{!1301, !1316, !1355, !1405, !1422}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1299, file: !1294, line: 305, baseType: !1302, size: 896)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1294, line: 12, size: 896, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1315}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1302, file: !1294, line: 13, baseType: !128, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1302, file: !1294, line: 14, baseType: !128, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1302, file: !1294, line: 15, baseType: !128, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1302, file: !1294, line: 16, baseType: !128, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1302, file: !1294, line: 17, baseType: !128, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1302, file: !1294, line: 18, baseType: !128, size: 32, offset: 160)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1302, file: !1294, line: 19, baseType: !128, size: 32, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1302, file: !1294, line: 22, baseType: !1312, size: 640, offset: 224)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 20)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1302, file: !1294, line: 25, baseType: !128, size: 32, offset: 864)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1299, file: !1294, line: 306, baseType: !1317, size: 4096, align: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1294, line: 34, size: 4096, align: 128, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1338, !1339, !1340, !1344, !1346, !1350}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1317, file: !1294, line: 35, baseType: !523, size: 16)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1317, file: !1294, line: 36, baseType: !523, size: 16, offset: 16)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1317, file: !1294, line: 37, baseType: !523, size: 16, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1317, file: !1294, line: 38, baseType: !523, size: 16, offset: 48)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1294, line: 39, baseType: !1324, size: 128, offset: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !1294, line: 39, size: 128, elements: !1325)
!1325 = !{!1326, !1331}
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1294, line: 40, baseType: !1327, size: 128)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !1294, line: 40, size: 128, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1327, file: !1294, line: 41, baseType: !136, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1327, file: !1294, line: 42, baseType: !136, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1294, line: 44, baseType: !1332, size: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !1294, line: 44, size: 128, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1332, file: !1294, line: 45, baseType: !128, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1332, file: !1294, line: 46, baseType: !128, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1332, file: !1294, line: 47, baseType: !128, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1332, file: !1294, line: 48, baseType: !128, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1317, file: !1294, line: 51, baseType: !128, size: 32, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1317, file: !1294, line: 52, baseType: !128, size: 32, offset: 224)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1317, file: !1294, line: 55, baseType: !1341, size: 1024, offset: 256)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1317, file: !1294, line: 58, baseType: !1345, size: 2048, offset: 1280)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !286)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1317, file: !1294, line: 60, baseType: !1347, size: 384, offset: 3328)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 12)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1294, line: 62, baseType: !1351, size: 384, offset: 3712)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !1294, line: 62, size: 384, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1351, file: !1294, line: 63, baseType: !1347, size: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1351, file: !1294, line: 64, baseType: !1347, size: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1299, file: !1294, line: 307, baseType: !1356, size: 1088)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1294, line: 79, size: 1088, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1404}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1356, file: !1294, line: 80, baseType: !128, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1356, file: !1294, line: 81, baseType: !128, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1356, file: !1294, line: 82, baseType: !128, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1356, file: !1294, line: 83, baseType: !128, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1356, file: !1294, line: 84, baseType: !128, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1356, file: !1294, line: 85, baseType: !128, size: 32, offset: 160)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1356, file: !1294, line: 86, baseType: !128, size: 32, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1356, file: !1294, line: 88, baseType: !1312, size: 640, offset: 224)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1356, file: !1294, line: 89, baseType: !153, size: 8, offset: 864)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1356, file: !1294, line: 90, baseType: !153, size: 8, offset: 872)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1356, file: !1294, line: 91, baseType: !153, size: 8, offset: 880)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1356, file: !1294, line: 92, baseType: !153, size: 8, offset: 888)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1356, file: !1294, line: 93, baseType: !153, size: 8, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1356, file: !1294, line: 94, baseType: !153, size: 8, offset: 904)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1356, file: !1294, line: 95, baseType: !1373, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1375, line: 11, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1374, file: !1375, line: 12, baseType: !316, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1374, file: !1375, line: 13, baseType: !1379, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1381, line: 56, size: 1344, elements: !1382)
!1381 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1380, file: !1381, line: 61, baseType: !331, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1380, file: !1381, line: 62, baseType: !331, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1380, file: !1381, line: 63, baseType: !331, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1380, file: !1381, line: 64, baseType: !331, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1380, file: !1381, line: 65, baseType: !331, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1380, file: !1381, line: 66, baseType: !331, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1380, file: !1381, line: 68, baseType: !331, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1380, file: !1381, line: 69, baseType: !331, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1380, file: !1381, line: 70, baseType: !331, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1380, file: !1381, line: 71, baseType: !331, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1380, file: !1381, line: 72, baseType: !331, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1380, file: !1381, line: 73, baseType: !331, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1380, file: !1381, line: 74, baseType: !331, size: 64, offset: 768)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1380, file: !1381, line: 75, baseType: !331, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1380, file: !1381, line: 76, baseType: !331, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1380, file: !1381, line: 81, baseType: !331, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1380, file: !1381, line: 83, baseType: !331, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1380, file: !1381, line: 84, baseType: !331, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !1381, line: 85, baseType: !331, size: 64, offset: 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1380, file: !1381, line: 86, baseType: !331, size: 64, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1380, file: !1381, line: 87, baseType: !331, size: 64, offset: 1280)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1356, file: !1294, line: 96, baseType: !128, size: 32, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1299, file: !1294, line: 308, baseType: !1406, size: 4608, align: 512)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1294, line: 289, size: 4608, align: 512, elements: !1407)
!1407 = !{!1408, !1409, !1418}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1406, file: !1294, line: 290, baseType: !1317, size: 4096, align: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1406, file: !1294, line: 291, baseType: !1410, size: 512, offset: 4096)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1294, line: 268, size: 512, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1410, file: !1294, line: 269, baseType: !136, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1410, file: !1294, line: 270, baseType: !136, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1410, file: !1294, line: 271, baseType: !1415, size: 384, offset: 128)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 6)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1406, file: !1294, line: 292, baseType: !1419, offset: 4608)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1299, file: !1294, line: 309, baseType: !1423, size: 32768)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 32768, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 4096)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !372, line: 378, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !532, file: !372, line: 384, baseType: !850, size: 192, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !392, file: !372, line: 500, baseType: !241, offset: 6656)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !392, file: !372, line: 501, baseType: !1431, size: 64, offset: 6656)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !372, line: 387, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !392, file: !372, line: 516, baseType: !1434, size: 64, offset: 6720)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !372, line: 516, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !392, file: !372, line: 519, baseType: !359, size: 64, offset: 6784)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !392, file: !372, line: 521, baseType: !1438, size: 64, offset: 6848)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !372, line: 521, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !392, file: !372, line: 545, baseType: !417, size: 32, offset: 6912)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !392, file: !372, line: 548, baseType: !213, size: 8, offset: 6944)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !392, file: !372, line: 550, baseType: !1443, offset: 6952)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1444, line: 142, elements: !255)
!1444 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !392, file: !372, line: 554, baseType: !1446, size: 256, offset: 6976)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1447, line: 102, size: 256, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1446, file: !1447, line: 103, baseType: !425, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1446, file: !1447, line: 104, baseType: !94, size: 128, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1446, file: !1447, line: 105, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1447, line: 21, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !392, file: !372, line: 557, baseType: !128, size: 32, offset: 7232)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !389, file: !372, line: 565, baseType: !1459, offset: 7296)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: -1)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !371, file: !372, line: 333, baseType: !1463, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !361, line: 284, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !361, line: 284, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1464, file: !361, line: 284, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !415, line: 19, baseType: !331)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !371, file: !372, line: 334, baseType: !331, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !371, file: !372, line: 343, baseType: !1470, size: 256, offset: 704)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !372, line: 340, size: 256, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1470, file: !372, line: 341, baseType: !379, size: 192, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1470, file: !372, line: 342, baseType: !331, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !371, file: !372, line: 351, baseType: !94, size: 128, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !371, file: !372, line: 353, baseType: !1476, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !372, line: 353, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !371, file: !372, line: 356, baseType: !1479, size: 64, offset: 1152)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !372, line: 356, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !371, file: !372, line: 359, baseType: !331, size: 64, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !371, file: !372, line: 361, baseType: !359, size: 64, offset: 1280)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !371, file: !372, line: 362, baseType: !88, size: 64, offset: 1344)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !371, file: !372, line: 365, baseType: !425, size: 64, offset: 1408)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !371, file: !372, line: 373, baseType: !1487, offset: 1472)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !372, line: 296, elements: !255)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !338, file: !306, line: 90, baseType: !333, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !338, file: !306, line: 91, baseType: !1490, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !296, file: !229, line: 143, baseType: !1492, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1495, !234}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1498)
!1498 = !{!1499, !1500, !1504, !1508, !1514, !1518}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1497, file: !18, line: 40, baseType: !17, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1497, file: !18, line: 41, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!213}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1497, file: !18, line: 42, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!88}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1497, file: !18, line: 43, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!221, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1497, file: !18, line: 44, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!221}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1497, file: !18, line: 45, baseType: !1519, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !88}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !296, file: !229, line: 144, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!221, !234}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !296, file: !229, line: 145, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !234, !1530, !1537}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1532, line: 23, baseType: !1533)
!1532 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 21, size: 32, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1533, file: !1532, line: 22, baseType: !1536, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !87, line: 32, baseType: !1008)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1532, line: 28, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 26, size: 32, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1539, file: !1532, line: 27, baseType: !1542, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !87, line: 33, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !314, line: 50, baseType: !7)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !228, file: !229, line: 70, baseType: !1545, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1547, line: 123, size: 1024, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1690, !1691, !1692, !1693, !1694}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1546, file: !1547, line: 124, baseType: !417, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1546, file: !1547, line: 125, baseType: !417, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1546, file: !1547, line: 135, baseType: !1545, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1546, file: !1547, line: 136, baseType: !100, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1546, file: !1547, line: 138, baseType: !379, size: 192, align: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1546, file: !1547, line: 140, baseType: !221, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1546, file: !1547, line: 141, baseType: !7, size: 32, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 142, baseType: !1557, size: 256, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 142, size: 256, elements: !1558)
!1558 = !{!1559, !1613, !1617}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1557, file: !1547, line: 143, baseType: !1560, size: 192)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1547, line: 91, size: 192, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1560, file: !1547, line: 92, baseType: !331, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1560, file: !1547, line: 94, baseType: !396, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1560, file: !1547, line: 100, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1547, line: 180, size: 704, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1583, !1584, !1585, !1611, !1612}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1566, file: !1547, line: 182, baseType: !1545, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !1547, line: 183, baseType: !7, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1566, file: !1547, line: 186, baseType: !1571, size: 192, offset: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1572, line: 19, size: 192, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1581, !1582}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1571, file: !1572, line: 20, baseType: !1575, size: 128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1576, line: 292, size: 128, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1580}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1575, file: !1576, line: 293, baseType: !241)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1575, file: !1576, line: 295, baseType: !86, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1575, file: !1576, line: 296, baseType: !88, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1571, file: !1572, line: 21, baseType: !7, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1571, file: !1572, line: 22, baseType: !7, size: 32, offset: 160)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1566, file: !1547, line: 187, baseType: !128, size: 32, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1566, file: !1547, line: 188, baseType: !128, size: 32, offset: 352)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1566, file: !1547, line: 189, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1547, line: 168, size: 320, elements: !1588)
!1588 = !{!1589, !1595, !1599, !1603, !1607}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1587, file: !1547, line: 169, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!188, !1593, !1565}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !361, line: 539, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1587, file: !1547, line: 171, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!188, !1545, !100, !322}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1587, file: !1547, line: 173, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!188, !1545}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1587, file: !1547, line: 174, baseType: !1604, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!188, !1545, !1545, !100}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1587, file: !1547, line: 176, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!188, !1593, !1545, !1565}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1566, file: !1547, line: 192, baseType: !94, size: 128, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1566, file: !1547, line: 194, baseType: !821, size: 128, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1557, file: !1547, line: 144, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1547, line: 103, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1614, file: !1547, line: 104, baseType: !1545, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1557, file: !1547, line: 145, baseType: !1618, size: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1547, line: 107, size: 256, elements: !1619)
!1619 = !{!1620, !1685, !1688, !1689}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1618, file: !1547, line: 108, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1547, line: 217, size: 768, elements: !1624)
!1624 = !{!1625, !1645, !1649, !1653, !1658, !1662, !1666, !1670, !1671, !1672, !1673, !1681}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1623, file: !1547, line: 222, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!188, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1547, line: 197, size: 1088, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1630, file: !1547, line: 199, baseType: !1545, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1630, file: !1547, line: 200, baseType: !359, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1630, file: !1547, line: 201, baseType: !1593, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1630, file: !1547, line: 202, baseType: !88, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1630, file: !1547, line: 205, baseType: !494, size: 192, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1630, file: !1547, line: 206, baseType: !494, size: 192, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1630, file: !1547, line: 207, baseType: !188, size: 32, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1630, file: !1547, line: 208, baseType: !94, size: 128, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1630, file: !1547, line: 209, baseType: !145, size: 64, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1630, file: !1547, line: 211, baseType: !328, size: 64, offset: 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1630, file: !1547, line: 212, baseType: !213, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1630, file: !1547, line: 213, baseType: !213, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1630, file: !1547, line: 214, baseType: !1479, size: 64, offset: 1024)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1623, file: !1547, line: 223, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1629}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1623, file: !1547, line: 236, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!188, !1593, !88}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1623, file: !1547, line: 238, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!88, !1593, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1623, file: !1547, line: 239, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!88, !1593, !88, !1657}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1623, file: !1547, line: 240, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1593, !88}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1623, file: !1547, line: 242, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!312, !1629, !145, !328, !362}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1623, file: !1547, line: 252, baseType: !328, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1623, file: !1547, line: 259, baseType: !213, size: 8, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1623, file: !1547, line: 260, baseType: !1667, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1623, file: !1547, line: 263, baseType: !1674, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1629, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1678, line: 52, baseType: !7)
!1678 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1547, line: 27, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1623, file: !1547, line: 266, baseType: !1682, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!188, !1629, !370}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1618, file: !1547, line: 109, baseType: !1686, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1547, line: 31, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1618, file: !1547, line: 110, baseType: !362, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1618, file: !1547, line: 111, baseType: !1545, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1546, file: !1547, line: 148, baseType: !88, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1546, file: !1547, line: 154, baseType: !136, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1547, line: 156, baseType: !323, size: 16, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1546, file: !1547, line: 157, baseType: !322, size: 16, offset: 912)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1546, file: !1547, line: 158, baseType: !1695, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1547, line: 32, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !228, file: !229, line: 71, baseType: !1698, size: 32, offset: 448)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1699, line: 19, size: 32, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1698, file: !1699, line: 20, baseType: !553, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !228, file: !229, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !228, file: !229, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !228, file: !229, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !228, file: !229, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !228, file: !229, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !30, line: 463, baseType: !1708, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !30, line: 465, baseType: !1710, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !225, file: !30, line: 467, baseType: !100, size: 64, offset: 640)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !30, line: 468, baseType: !1714, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1724, !1729, !1733}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !30, line: 88, baseType: !100, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1716, file: !30, line: 89, baseType: !335, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1716, file: !30, line: 90, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!188, !1708, !277}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1716, file: !30, line: 91, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!145, !1708, !1728, !1530, !1537}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1716, file: !30, line: 93, baseType: !1730, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1708}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1716, file: !30, line: 95, baseType: !1734, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1737)
!1737 = !{!1738, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1736, file: !37, line: 279, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!188, !1708}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1736, file: !37, line: 280, baseType: !1730, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1736, file: !37, line: 281, baseType: !1739, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1736, file: !37, line: 282, baseType: !1739, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1736, file: !37, line: 283, baseType: !1739, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1736, file: !37, line: 284, baseType: !1739, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1736, file: !37, line: 285, baseType: !1739, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1736, file: !37, line: 286, baseType: !1739, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1736, file: !37, line: 287, baseType: !1739, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1736, file: !37, line: 288, baseType: !1739, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1736, file: !37, line: 289, baseType: !1739, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1736, file: !37, line: 290, baseType: !1739, size: 64, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1736, file: !37, line: 291, baseType: !1739, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1736, file: !37, line: 292, baseType: !1739, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1736, file: !37, line: 293, baseType: !1739, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1736, file: !37, line: 294, baseType: !1739, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1736, file: !37, line: 295, baseType: !1739, size: 64, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1736, file: !37, line: 296, baseType: !1739, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1736, file: !37, line: 297, baseType: !1739, size: 64, offset: 1152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1736, file: !37, line: 298, baseType: !1739, size: 64, offset: 1216)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1736, file: !37, line: 299, baseType: !1739, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1736, file: !37, line: 300, baseType: !1739, size: 64, offset: 1344)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1736, file: !37, line: 301, baseType: !1739, size: 64, offset: 1408)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !30, line: 470, baseType: !1765, size: 64, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1767, line: 82, size: 1408, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1854, !1857, !1860}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1766, file: !1767, line: 83, baseType: !100, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1766, file: !1767, line: 84, baseType: !100, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1766, file: !1767, line: 85, baseType: !1708, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1766, file: !1767, line: 86, baseType: !335, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1766, file: !1767, line: 87, baseType: !335, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1766, file: !1767, line: 88, baseType: !335, size: 64, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1766, file: !1767, line: 90, baseType: !1776, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!188, !1708, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1788, !1789, !1790, !1791, !1805, !1818, !1819, !1820, !1821, !1822, !1830, !1831, !1832, !1833, !1834, !1835}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !24, line: 96, baseType: !100, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1780, file: !24, line: 97, baseType: !1765, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1780, file: !24, line: 99, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1787, line: 76, flags: DIFlagFwdDecl)
!1787 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1780, file: !24, line: 100, baseType: !100, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1780, file: !24, line: 102, baseType: !213, size: 8, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1780, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1780, file: !24, line: 105, baseType: !1792, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1795, line: 262, size: 1600, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1799, !1800, !1804}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1794, file: !1795, line: 263, baseType: !1798, size: 256)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !1342)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1794, file: !1795, line: 264, baseType: !1798, size: 256, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1794, file: !1795, line: 265, baseType: !1801, size: 1024, offset: 512)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1024, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1794, file: !1795, line: 266, baseType: !221, size: 64, offset: 1536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1780, file: !24, line: 106, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1795, line: 210, size: 256, elements: !1809)
!1809 = !{!1810, !1814, !1816, !1817}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1808, file: !1795, line: 211, baseType: !1811, size: 72)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 72, elements: !1812)
!1812 = !{!1813}
!1813 = !DISubrange(count: 9)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1808, file: !1795, line: 212, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1795, line: 14, baseType: !331)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1808, file: !1795, line: 213, baseType: !130, size: 32, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1808, file: !1795, line: 214, baseType: !130, size: 32, offset: 224)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1780, file: !24, line: 108, baseType: !1739, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1780, file: !24, line: 109, baseType: !1730, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1780, file: !24, line: 110, baseType: !1739, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1780, file: !24, line: 111, baseType: !1730, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1780, file: !24, line: 112, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!188, !1708, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1828)
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1827, file: !37, line: 51, baseType: !188, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1780, file: !24, line: 113, baseType: !1739, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1780, file: !24, line: 114, baseType: !335, size: 64, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1780, file: !24, line: 115, baseType: !335, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1780, file: !24, line: 117, baseType: !1734, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1780, file: !24, line: 118, baseType: !1730, size: 64, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1780, file: !24, line: 120, baseType: !1836, size: 64, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1766, file: !1767, line: 91, baseType: !1721, size: 64, offset: 448)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1766, file: !1767, line: 92, baseType: !1739, size: 64, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1766, file: !1767, line: 93, baseType: !1730, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1766, file: !1767, line: 94, baseType: !1739, size: 64, offset: 640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1766, file: !1767, line: 95, baseType: !1730, size: 64, offset: 704)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1766, file: !1767, line: 97, baseType: !1739, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1766, file: !1767, line: 98, baseType: !1739, size: 64, offset: 832)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1766, file: !1767, line: 100, baseType: !1823, size: 64, offset: 896)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1766, file: !1767, line: 101, baseType: !1739, size: 64, offset: 960)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1766, file: !1767, line: 103, baseType: !1739, size: 64, offset: 1024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1766, file: !1767, line: 105, baseType: !1739, size: 64, offset: 1088)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1766, file: !1767, line: 107, baseType: !1734, size: 64, offset: 1152)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1766, file: !1767, line: 109, baseType: !1851, size: 64, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1767, line: 109, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1766, file: !1767, line: 111, baseType: !1855, size: 64, offset: 1280)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1767, line: 111, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1766, file: !1767, line: 112, baseType: !1858, offset: 1344)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1859, line: 187, elements: !255)
!1859 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1766, file: !1767, line: 114, baseType: !213, size: 8, offset: 1344)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !30, line: 471, baseType: !1779, size: 64, offset: 832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !225, file: !30, line: 473, baseType: !88, size: 64, offset: 896)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !225, file: !30, line: 475, baseType: !88, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !30, line: 480, baseType: !494, size: 192, offset: 1024)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !225, file: !30, line: 484, baseType: !1866, size: 576, offset: 1216)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1866, file: !30, line: 362, baseType: !94, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1866, file: !30, line: 363, baseType: !94, size: 128, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1866, file: !30, line: 364, baseType: !94, size: 128, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1866, file: !30, line: 365, baseType: !94, size: 128, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1866, file: !30, line: 366, baseType: !213, size: 8, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1866, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !225, file: !30, line: 485, baseType: !1875, size: 2304, offset: 1792)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1972, !1976}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1875, file: !37, line: 566, baseType: !1826, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1875, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1875, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1875, file: !37, line: 569, baseType: !213, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1875, file: !37, line: 570, baseType: !213, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1875, file: !37, line: 571, baseType: !213, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1875, file: !37, line: 572, baseType: !213, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1875, file: !37, line: 573, baseType: !213, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1875, file: !37, line: 574, baseType: !213, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1875, file: !37, line: 575, baseType: !213, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1875, file: !37, line: 576, baseType: !213, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1875, file: !37, line: 577, baseType: !128, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !37, line: 578, baseType: !241, offset: 96)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1875, file: !37, line: 580, baseType: !94, size: 128, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1875, file: !37, line: 581, baseType: !850, size: 192, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1875, file: !37, line: 582, baseType: !1893, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1895, line: 43, size: 1472, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1904, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1894, file: !1895, line: 44, baseType: !100, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1894, file: !1895, line: 45, baseType: !188, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1894, file: !1895, line: 46, baseType: !94, size: 128, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1894, file: !1895, line: 47, baseType: !241, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1894, file: !1895, line: 48, baseType: !1902, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1894, file: !1895, line: 49, baseType: !1905, size: 320, offset: 320)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1906, line: 11, size: 320, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1909, !1910, !1915}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1905, file: !1906, line: 16, baseType: !814, size: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1905, file: !1906, line: 17, baseType: !331, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1905, file: !1906, line: 18, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1906, line: 19, baseType: !128, size: 32, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1894, file: !1895, line: 50, baseType: !331, size: 64, offset: 640)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1894, file: !1895, line: 51, baseType: !623, size: 64, offset: 704)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1894, file: !1895, line: 52, baseType: !623, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1894, file: !1895, line: 53, baseType: !623, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1894, file: !1895, line: 54, baseType: !623, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1894, file: !1895, line: 55, baseType: !623, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1894, file: !1895, line: 56, baseType: !331, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1894, file: !1895, line: 57, baseType: !331, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1894, file: !1895, line: 58, baseType: !331, size: 64, offset: 1152)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1894, file: !1895, line: 59, baseType: !331, size: 64, offset: 1216)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1894, file: !1895, line: 60, baseType: !331, size: 64, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1894, file: !1895, line: 61, baseType: !1708, size: 64, offset: 1344)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1894, file: !1895, line: 62, baseType: !213, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1894, file: !1895, line: 63, baseType: !213, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1875, file: !37, line: 583, baseType: !213, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1875, file: !37, line: 584, baseType: !213, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1875, file: !37, line: 585, baseType: !213, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1875, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1875, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1875, file: !37, line: 592, baseType: !615, size: 512, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1875, file: !37, line: 593, baseType: !136, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1875, file: !37, line: 594, baseType: !1446, size: 256, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1875, file: !37, line: 595, baseType: !821, size: 128, offset: 1408)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1875, file: !37, line: 596, baseType: !1902, size: 64, offset: 1536)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1875, file: !37, line: 597, baseType: !417, size: 32, offset: 1600)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1875, file: !37, line: 598, baseType: !417, size: 32, offset: 1632)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1875, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1875, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1875, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1875, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1875, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1875, file: !37, line: 604, baseType: !213, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1875, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1875, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1875, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1875, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1875, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1875, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1875, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1875, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1875, file: !37, line: 613, baseType: !188, size: 32, offset: 1792)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1875, file: !37, line: 614, baseType: !188, size: 32, offset: 1824)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1875, file: !37, line: 615, baseType: !136, size: 64, offset: 1856)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1875, file: !37, line: 616, baseType: !136, size: 64, offset: 1920)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1875, file: !37, line: 617, baseType: !136, size: 64, offset: 1984)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1875, file: !37, line: 618, baseType: !136, size: 64, offset: 2048)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1875, file: !37, line: 620, baseType: !1963, size: 64, offset: 2112)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1964, file: !37, line: 537, baseType: !241)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1964, file: !37, line: 538, baseType: !7, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1964, file: !37, line: 540, baseType: !94, size: 128, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1964, file: !37, line: 543, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1875, file: !37, line: 621, baseType: !1973, size: 64, offset: 2176)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1708, !774}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1875, file: !37, line: 622, baseType: !1977, size: 64, offset: 2240)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !225, file: !30, line: 486, baseType: !1980, size: 64, offset: 4096)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1989, !1990, !1991}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1981, file: !37, line: 643, baseType: !1736, size: 1472)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1981, file: !37, line: 644, baseType: !1739, size: 64, offset: 1472)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1981, file: !37, line: 645, baseType: !1986, size: 64, offset: 1536)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1708, !213}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1981, file: !37, line: 646, baseType: !1739, size: 64, offset: 1600)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1981, file: !37, line: 647, baseType: !1730, size: 64, offset: 1664)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1981, file: !37, line: 648, baseType: !1730, size: 64, offset: 1728)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !225, file: !30, line: 493, baseType: !1993, size: 64, offset: 4160)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1995)
!1995 = !{!1996, !1997, !1998, !2083, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1994, file: !51, line: 163, baseType: !94, size: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !51, line: 164, baseType: !100, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1994, file: !51, line: 165, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2002)
!2002 = !{!2003, !2032, !2043, !2048, !2052, !2060, !2064, !2068, !2075, !2079}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2001, file: !51, line: 106, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!188, !1993, !2007, !50}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2009, line: 51, size: 1344, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !{!2011, !2012, !2014, !2015, !2016, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2008, file: !2009, line: 52, baseType: !100, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2008, file: !2009, line: 53, baseType: !2013, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2009, line: 28, baseType: !128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2008, file: !2009, line: 54, baseType: !100, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2008, file: !2009, line: 55, baseType: !191, size: 192, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2008, file: !2009, line: 57, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2009, line: 31, size: 704, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2018, file: !2009, line: 32, baseType: !145, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2018, file: !2009, line: 33, baseType: !188, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2018, file: !2009, line: 34, baseType: !88, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2018, file: !2009, line: 35, baseType: !2017, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2018, file: !2009, line: 43, baseType: !350, size: 448, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2008, file: !2009, line: 58, baseType: !2017, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2008, file: !2009, line: 59, baseType: !2007, size: 64, offset: 512)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2008, file: !2009, line: 60, baseType: !2007, size: 64, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2008, file: !2009, line: 61, baseType: !2007, size: 64, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2008, file: !2009, line: 63, baseType: !228, size: 512, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2008, file: !2009, line: 65, baseType: !331, size: 64, offset: 1216)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2008, file: !2009, line: 66, baseType: !88, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2001, file: !51, line: 108, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!188, !1993, !2036, !50}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2037, file: !51, line: 64, baseType: !195, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2037, file: !51, line: 65, baseType: !188, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2037, file: !51, line: 66, baseType: !2042, size: 512, offset: 96)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !118)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2001, file: !51, line: 110, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!188, !1993, !7, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !87, line: 164, baseType: !331)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2001, file: !51, line: 111, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1993, !7}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2001, file: !51, line: 112, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!188, !1993, !2007, !2056, !7, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2001, file: !51, line: 117, baseType: !2061, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!188, !1993, !7, !7, !88}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2001, file: !51, line: 119, baseType: !2065, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !1993, !7, !7}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2001, file: !51, line: 121, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!188, !1993, !2072, !213}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2074, line: 11, flags: DIFlagFwdDecl)
!2074 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2001, file: !51, line: 122, baseType: !2076, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1993, !2072}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2001, file: !51, line: 123, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!188, !1993, !2036, !2058, !2059}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1994, file: !51, line: 166, baseType: !88, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1994, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1994, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1994, file: !51, line: 171, baseType: !195, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1994, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1994, file: !51, line: 173, baseType: !2089, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1994, file: !51, line: 175, baseType: !1993, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1994, file: !51, line: 182, baseType: !2047, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1994, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1994, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1994, file: !51, line: 185, baseType: !1575, size: 128, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1994, file: !51, line: 186, baseType: !494, size: 192, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1994, file: !51, line: 187, baseType: !2098, offset: 1088)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1460)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !225, file: !30, line: 499, baseType: !94, size: 128, offset: 4224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !225, file: !30, line: 502, baseType: !2101, size: 64, offset: 4352)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !30, line: 504, baseType: !2105, size: 64, offset: 4416)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !225, file: !30, line: 505, baseType: !136, size: 64, offset: 4480)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !225, file: !30, line: 510, baseType: !136, size: 64, offset: 4544)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !225, file: !30, line: 511, baseType: !2109, size: 64, offset: 4608)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !30, line: 513, baseType: !2113, size: 64, offset: 4672)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2114, file: !30, line: 293, baseType: !7, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2114, file: !30, line: 294, baseType: !331, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !225, file: !30, line: 515, baseType: !94, size: 128, offset: 4736)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !225, file: !30, line: 526, baseType: !2120, offset: 4864)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2121, line: 5, elements: !255)
!2121 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !225, file: !30, line: 528, baseType: !2007, size: 64, offset: 4864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !225, file: !30, line: 529, baseType: !195, size: 64, offset: 4928)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !225, file: !30, line: 534, baseType: !2125, size: 32, offset: 4992)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !87, line: 16, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !87, line: 13, baseType: !128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !30, line: 535, baseType: !128, size: 32, offset: 5024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !225, file: !30, line: 537, baseType: !241, offset: 5056)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !225, file: !30, line: 538, baseType: !94, size: 128, offset: 5056)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !30, line: 540, baseType: !2131, size: 64, offset: 5184)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2133, line: 54, size: 960, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145, !2149, !2150, !2151, !2152, !2156, !2160, !2161}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2132, file: !2133, line: 55, baseType: !100, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2132, file: !2133, line: 56, baseType: !1785, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2132, file: !2133, line: 58, baseType: !335, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2132, file: !2133, line: 59, baseType: !335, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2132, file: !2133, line: 60, baseType: !234, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2132, file: !2133, line: 62, baseType: !1721, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2132, file: !2133, line: 63, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!145, !1708, !1728}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2132, file: !2133, line: 65, baseType: !2146, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2131}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2132, file: !2133, line: 66, baseType: !1730, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2132, file: !2133, line: 68, baseType: !1739, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2132, file: !2133, line: 70, baseType: !1495, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2132, file: !2133, line: 71, baseType: !2153, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!221, !1708}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2132, file: !2133, line: 73, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1708, !1530, !1537}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2132, file: !2133, line: 75, baseType: !1734, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2132, file: !2133, line: 77, baseType: !1855, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !225, file: !30, line: 541, baseType: !335, size: 64, offset: 5248)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !30, line: 543, baseType: !1730, size: 64, offset: 5312)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !225, file: !30, line: 544, baseType: !2165, size: 64, offset: 5376)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !225, file: !30, line: 545, baseType: !2168, size: 64, offset: 5440)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !225, file: !30, line: 547, baseType: !213, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !225, file: !30, line: 548, baseType: !213, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !225, file: !30, line: 549, baseType: !213, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !225, file: !30, line: 550, baseType: !213, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !199, file: !192, line: 116, baseType: !2175, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!213, !215, !100}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !199, file: !192, line: 118, baseType: !2179, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!188, !215, !100, !7, !88, !328}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !199, file: !192, line: 123, baseType: !2183, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!188, !215, !100, !2186, !328}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !199, file: !192, line: 126, baseType: !2188, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!100, !215}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !199, file: !192, line: 127, baseType: !2188, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !199, file: !192, line: 128, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!195, !215}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !199, file: !192, line: 130, baseType: !2197, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!195, !215, !195}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !199, file: !192, line: 133, baseType: !2201, size: 64, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!195, !215, !100}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !199, file: !192, line: 135, baseType: !2205, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!188, !215, !100, !100, !7, !7, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !192, line: 43, size: 640, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2209, file: !192, line: 44, baseType: !195, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2209, file: !192, line: 45, baseType: !7, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2209, file: !192, line: 46, baseType: !2214, size: 512, offset: 128)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !653)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !199, file: !192, line: 140, baseType: !2197, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !199, file: !192, line: 143, baseType: !2193, size: 64, offset: 896)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !199, file: !192, line: 145, baseType: !202, size: 64, offset: 960)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !199, file: !192, line: 146, baseType: !2219, size: 64, offset: 1024)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!188, !215, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !192, line: 29, size: 128, elements: !2224)
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2223, file: !192, line: 30, baseType: !7, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2223, file: !192, line: 31, baseType: !7, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2223, file: !192, line: 32, baseType: !215, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !199, file: !192, line: 148, baseType: !2229, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!188, !215, !1708}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !192, line: 20, baseType: !1708, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !91, line: 355, baseType: !184, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !185, file: !91, line: 356, baseType: !94, size: 128, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !91, line: 357, baseType: !94, size: 128, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !185, file: !91, line: 358, baseType: !94, size: 128, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !185, file: !91, line: 359, baseType: !94, size: 128, offset: 768)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !185, file: !91, line: 360, baseType: !2239, size: 32, offset: 896)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !91, line: 179, size: 32, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2239, file: !91, line: 180, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2239, file: !91, line: 181, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2239, file: !91, line: 182, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2239, file: !91, line: 183, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2239, file: !91, line: 184, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2239, file: !91, line: 185, baseType: !128, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !91, line: 361, baseType: !2248, size: 32, offset: 928)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !91, line: 190, size: 32, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2248, file: !91, line: 191, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2248, file: !91, line: 192, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2248, file: !91, line: 193, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2248, file: !91, line: 194, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2248, file: !91, line: 195, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2248, file: !91, line: 196, baseType: !128, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2248, file: !91, line: 197, baseType: !128, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2248, file: !91, line: 198, baseType: !128, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2248, file: !91, line: 199, baseType: !128, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2248, file: !91, line: 200, baseType: !128, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2248, file: !91, line: 201, baseType: !128, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2248, file: !91, line: 202, baseType: !128, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2248, file: !91, line: 203, baseType: !128, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2248, file: !91, line: 204, baseType: !128, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !185, file: !91, line: 362, baseType: !2265, size: 960, offset: 960)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !91, line: 234, size: 960, elements: !2266)
!2266 = !{!2267, !2269, !2276, !2278, !2279, !2280, !2285, !2288}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2265, file: !91, line: 235, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !91, line: 217, baseType: !1049)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2265, file: !91, line: 236, baseType: !2270, size: 32, offset: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !91, line: 227, size: 32, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2270, file: !91, line: 228, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2270, file: !91, line: 229, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2270, file: !91, line: 230, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2270, file: !91, line: 231, baseType: !128, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2265, file: !91, line: 237, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !91, line: 218, baseType: !136)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2265, file: !91, line: 238, baseType: !145, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2265, file: !91, line: 239, baseType: !94, size: 128, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2265, file: !91, line: 240, baseType: !2281, size: 320, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !91, line: 219, baseType: !2282)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !2283)
!2283 = !{!2284}
!2284 = !DISubrange(count: 40)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2265, file: !91, line: 241, baseType: !2286, size: 160, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !91, line: 220, baseType: !2287)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 160, elements: !1313)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2265, file: !91, line: 242, baseType: !160, size: 64, offset: 896)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !185, file: !91, line: 363, baseType: !2290, size: 1344, offset: 1920)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !91, line: 275, size: 1344, elements: !2291)
!2291 = !{!2292, !2293, !2303}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2290, file: !91, line: 276, baseType: !188, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2290, file: !91, line: 277, baseType: !2294, size: 32, offset: 32)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !91, line: 254, size: 32, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2294, file: !91, line: 255, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2294, file: !91, line: 256, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2294, file: !91, line: 257, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2294, file: !91, line: 258, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2294, file: !91, line: 259, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2294, file: !91, line: 260, baseType: !128, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2294, file: !91, line: 261, baseType: !128, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2290, file: !91, line: 278, baseType: !2304, size: 1280, offset: 64)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2305, size: 1280, elements: !2316)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !91, line: 264, size: 256, elements: !2306)
!2306 = !{!2307, !2313, !2314, !2315}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !91, line: 269, baseType: !2308, size: 8)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !91, line: 265, size: 8, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2308, file: !91, line: 266, baseType: !153, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2308, file: !91, line: 267, baseType: !153, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2308, file: !91, line: 268, baseType: !153, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2305, file: !91, line: 270, baseType: !188, size: 32, offset: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2305, file: !91, line: 271, baseType: !188, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2305, file: !91, line: 272, baseType: !94, size: 128, offset: 128)
!2316 = !{!2317}
!2317 = !DISubrange(count: 5)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !185, file: !91, line: 364, baseType: !2319, size: 640, offset: 3264)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !91, line: 315, size: 640, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2330, !2339, !2340, !2341}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2319, file: !91, line: 316, baseType: !167, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2319, file: !91, line: 317, baseType: !136, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2319, file: !91, line: 318, baseType: !136, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2319, file: !91, line: 319, baseType: !94, size: 128, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2319, file: !91, line: 320, baseType: !2326, size: 8, offset: 320)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !91, line: 305, size: 8, elements: !2327)
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2326, file: !91, line: 306, baseType: !153, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2326, file: !91, line: 307, baseType: !153, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2319, file: !91, line: 321, baseType: !2331, size: 128, offset: 384)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !91, line: 310, size: 128, elements: !2332)
!2332 = !{!2333, !2338}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2331, file: !91, line: 311, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2331, file: !91, line: 312, baseType: !1708, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2319, file: !91, line: 322, baseType: !1893, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2319, file: !91, line: 323, baseType: !188, size: 32, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2319, file: !91, line: 324, baseType: !188, size: 32, offset: 608)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !185, file: !91, line: 365, baseType: !2343, size: 192, offset: 3904)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !91, line: 297, size: 192, elements: !2344)
!2344 = !{!2345, !2346, !2350, !2351}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2343, file: !91, line: 298, baseType: !188, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !91, line: 299, baseType: !2347, size: 8, offset: 32)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !91, line: 283, size: 8, elements: !2348)
!2348 = !{!2349}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2347, file: !91, line: 284, baseType: !153, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2343, file: !91, line: 300, baseType: !188, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2343, file: !91, line: 301, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !91, line: 287, size: 64, elements: !2354)
!2354 = !{!2355, !2360, !2361, !2362}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2353, file: !91, line: 291, baseType: !2356, size: 8)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !91, line: 288, size: 8, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2356, file: !91, line: 289, baseType: !153, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2356, file: !91, line: 290, baseType: !153, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2353, file: !91, line: 292, baseType: !153, size: 8, offset: 8)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2353, file: !91, line: 293, baseType: !153, size: 8, offset: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2353, file: !91, line: 294, baseType: !188, size: 32, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !185, file: !91, line: 366, baseType: !2364, size: 64, offset: 4096)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !91, line: 209, size: 64, elements: !2365)
!2365 = !{!2366}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2364, file: !91, line: 210, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !91, line: 84, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !185, file: !91, line: 367, baseType: !2370, size: 384, offset: 4160)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !91, line: 341, size: 384, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2370, file: !91, line: 342, baseType: !121, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2370, file: !91, line: 343, baseType: !94, size: 128, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2370, file: !91, line: 344, baseType: !121, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2370, file: !91, line: 345, baseType: !94, size: 128, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !185, file: !91, line: 368, baseType: !2377, size: 64, offset: 4544)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !91, line: 122, size: 1216, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2387, !2391, !2395, !2396, !2397}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2378, file: !91, line: 123, baseType: !1806, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2378, file: !91, line: 124, baseType: !94, size: 128, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2378, file: !91, line: 125, baseType: !2383, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!213, !100, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2378, file: !91, line: 126, baseType: !2388, size: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!188, !184, !1806}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2378, file: !91, line: 127, baseType: !2392, size: 64, offset: 320)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !184}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2378, file: !91, line: 128, baseType: !1730, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2378, file: !91, line: 129, baseType: !1730, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2378, file: !91, line: 130, baseType: !2398, size: 704, offset: 512)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !91, line: 108, size: 704, elements: !2399)
!2399 = !{!2400, !2401, !2405, !2406, !2407}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2398, file: !91, line: 109, baseType: !228, size: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2398, file: !91, line: 110, baseType: !2402, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!188, !184}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2398, file: !91, line: 111, baseType: !2392, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2398, file: !91, line: 112, baseType: !213, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2398, file: !91, line: 113, baseType: !213, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !185, file: !91, line: 369, baseType: !2409, size: 64, offset: 4608)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !91, line: 138, size: 256, elements: !2411)
!2411 = !{!2412, !2413, !2417, !2421}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2410, file: !91, line: 139, baseType: !184, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2410, file: !91, line: 140, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!188, !184, !128}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2410, file: !91, line: 141, baseType: !2418, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !184, !128}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2410, file: !91, line: 142, baseType: !2392, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !185, file: !91, line: 370, baseType: !2423, size: 64, offset: 4672)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !91, line: 162, size: 2816, elements: !2425)
!2425 = !{!2426, !2430, !2431, !2432, !2433, !2442, !2443}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2424, file: !91, line: 163, baseType: !2427, size: 640)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 640, elements: !2428)
!2428 = !{!2429}
!2429 = !DISubrange(count: 80)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2424, file: !91, line: 164, baseType: !2427, size: 640, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2424, file: !91, line: 165, baseType: !1806, size: 64, offset: 1280)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2424, file: !91, line: 166, baseType: !7, size: 32, offset: 1344)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2424, file: !91, line: 167, baseType: !2434, size: 192, offset: 1408)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !91, line: 154, size: 192, elements: !2435)
!2435 = !{!2436, !2438, !2440}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2434, file: !91, line: 155, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !91, line: 150, baseType: !2402)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2434, file: !91, line: 156, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !91, line: 151, baseType: !2402)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2434, file: !91, line: 157, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !91, line: 152, baseType: !2418)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2424, file: !91, line: 168, baseType: !1780, size: 1152, offset: 1600)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2424, file: !91, line: 169, baseType: !1785, size: 64, offset: 2752)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !185, file: !91, line: 371, baseType: !2445, size: 64, offset: 4736)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !91, line: 348, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !185, file: !91, line: 372, baseType: !88, size: 64, offset: 4800)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !185, file: !91, line: 373, baseType: !225, size: 5568, offset: 4864)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !185, file: !91, line: 374, baseType: !7, size: 32, offset: 10432)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !185, file: !91, line: 375, baseType: !7, size: 32, offset: 10464)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !185, file: !91, line: 376, baseType: !94, size: 128, offset: 10496)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !185, file: !91, line: 377, baseType: !494, size: 192, offset: 10624)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !185, file: !91, line: 378, baseType: !2392, size: 64, offset: 10816)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node", file: !91, line: 382, size: 1600, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2456, file: !91, line: 383, baseType: !100, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2456, file: !91, line: 384, baseType: !167, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2456, file: !91, line: 385, baseType: !191, size: 192, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2456, file: !91, line: 386, baseType: !195, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2456, file: !91, line: 387, baseType: !2370, size: 384, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2456, file: !91, line: 388, baseType: !94, size: 128, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2456, file: !91, line: 389, baseType: !228, size: 512, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_done", scope: !2456, file: !91, line: 390, baseType: !850, size: 192, offset: 1408)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2475 = !{!0, !2476, !2478, !2480, !2483}
!2476 = !DIGlobalVariableExpression(var: !2477, expr: !DIExpression())
!2477 = distinct !DIGlobalVariable(name: "acpi_data_fwnode_ops", scope: !2, file: !3, line: 1412, type: !198, isLocal: false, isDefinition: true)
!2478 = !DIGlobalVariableExpression(var: !2479, expr: !DIExpression())
!2479 = distinct !DIGlobalVariable(name: "acpi_static_fwnode_ops", scope: !2, file: !3, line: 1413, type: !198, isLocal: false, isDefinition: true)
!2480 = !DIGlobalVariableExpression(var: !2481, expr: !DIExpression())
!2481 = distinct !DIGlobalVariable(name: "prp_guids", scope: !2, file: !3, line: 32, type: !2482, isLocal: true, isDefinition: true)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 768, elements: !1416)
!2483 = !DIGlobalVariableExpression(var: !2484, expr: !DIExpression())
!2484 = distinct !DIGlobalVariable(name: "ads_guid", scope: !2, file: !3, line: 54, type: !108, isLocal: true, isDefinition: true)
!2485 = !{i32 7, !"Dwarf Version", i32 4}
!2486 = !{i32 2, !"Debug Info Version", i32 3}
!2487 = !{i32 1, !"wchar_size", i32 2}
!2488 = !{i32 1, !"Code Model", i32 2}
!2489 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2490 = distinct !DISubprogram(name: "acpi_data_add_props", scope: !3, file: !3, line: 327, type: !2491, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!103, !2493, !107, !121}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2494 = !DILocalVariable(name: "data", arg: 1, scope: !2490, file: !3, line: 327, type: !2493)
!2495 = !DILocation(line: 327, column: 46, scope: !2490)
!2496 = !DILocalVariable(name: "guid", arg: 2, scope: !2490, file: !3, line: 327, type: !107)
!2497 = !DILocation(line: 327, column: 66, scope: !2490)
!2498 = !DILocalVariable(name: "properties", arg: 3, scope: !2490, file: !3, line: 328, type: !121)
!2499 = !DILocation(line: 328, column: 32, scope: !2490)
!2500 = !DILocalVariable(name: "props", scope: !2490, file: !3, line: 330, type: !103)
!2501 = !DILocation(line: 330, column: 33, scope: !2490)
!2502 = !DILocation(line: 332, column: 10, scope: !2490)
!2503 = !DILocation(line: 332, column: 8, scope: !2490)
!2504 = !DILocation(line: 333, column: 6, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 333, column: 6)
!2506 = !DILocation(line: 333, column: 6, scope: !2490)
!2507 = !DILocation(line: 334, column: 19, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 333, column: 13)
!2509 = !DILocation(line: 334, column: 26, scope: !2508)
!2510 = !DILocation(line: 334, column: 3, scope: !2508)
!2511 = !DILocation(line: 335, column: 17, scope: !2508)
!2512 = !DILocation(line: 335, column: 3, scope: !2508)
!2513 = !DILocation(line: 335, column: 10, scope: !2508)
!2514 = !DILocation(line: 335, column: 15, scope: !2508)
!2515 = !DILocation(line: 336, column: 23, scope: !2508)
!2516 = !DILocation(line: 336, column: 3, scope: !2508)
!2517 = !DILocation(line: 336, column: 10, scope: !2508)
!2518 = !DILocation(line: 336, column: 21, scope: !2508)
!2519 = !DILocation(line: 337, column: 18, scope: !2508)
!2520 = !DILocation(line: 337, column: 25, scope: !2508)
!2521 = !DILocation(line: 337, column: 32, scope: !2508)
!2522 = !DILocation(line: 337, column: 38, scope: !2508)
!2523 = !DILocation(line: 337, column: 3, scope: !2508)
!2524 = !DILocation(line: 338, column: 2, scope: !2508)
!2525 = !DILocation(line: 340, column: 9, scope: !2490)
!2526 = !DILocation(line: 340, column: 2, scope: !2490)
!2527 = distinct !DISubprogram(name: "kzalloc", scope: !79, file: !79, line: 662, type: !2528, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!88, !328, !86}
!2530 = !DILocalVariable(name: "s", arg: 1, scope: !2531, file: !79, line: 445, type: !1160)
!2531 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !79, file: !79, line: 445, type: !2532, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!88, !1160, !86, !328}
!2534 = !DILocation(line: 445, column: 72, scope: !2531, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 552, column: 10, scope: !2536, inlinedAt: !2539)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !79, line: 540, column: 34)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !79, line: 540, column: 6)
!2538 = distinct !DISubprogram(name: "kmalloc", scope: !79, file: !79, line: 538, type: !2528, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2539 = distinct !DILocation(line: 664, column: 9, scope: !2527)
!2540 = !DILocalVariable(name: "flags", arg: 2, scope: !2531, file: !79, line: 446, type: !86)
!2541 = !DILocation(line: 446, column: 9, scope: !2531, inlinedAt: !2535)
!2542 = !DILocalVariable(name: "size", arg: 3, scope: !2531, file: !79, line: 446, type: !328)
!2543 = !DILocation(line: 446, column: 23, scope: !2531, inlinedAt: !2535)
!2544 = !DILocalVariable(name: "ret", scope: !2531, file: !79, line: 448, type: !88)
!2545 = !DILocation(line: 448, column: 8, scope: !2531, inlinedAt: !2535)
!2546 = !DILocalVariable(name: "flags", arg: 1, scope: !2547, file: !79, line: 318, type: !86)
!2547 = distinct !DISubprogram(name: "kmalloc_type", scope: !79, file: !79, line: 318, type: !2548, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!78, !86}
!2550 = !DILocation(line: 318, column: 67, scope: !2547, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 553, column: 20, scope: !2536, inlinedAt: !2539)
!2552 = !DILocalVariable(name: "size", arg: 1, scope: !2553, file: !79, line: 346, type: !328)
!2553 = distinct !DISubprogram(name: "kmalloc_index", scope: !79, file: !79, line: 346, type: !2554, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!7, !328}
!2556 = !DILocation(line: 346, column: 58, scope: !2553, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 547, column: 11, scope: !2536, inlinedAt: !2539)
!2558 = !DILocalVariable(name: "size", arg: 1, scope: !2559, file: !79, line: 472, type: !328)
!2559 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !79, file: !79, line: 472, type: !2560, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!88, !328, !86, !7}
!2562 = !DILocation(line: 472, column: 28, scope: !2559, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 481, column: 9, scope: !2564, inlinedAt: !2565)
!2564 = distinct !DISubprogram(name: "kmalloc_large", scope: !79, file: !79, line: 478, type: !2528, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2565 = distinct !DILocation(line: 545, column: 11, scope: !2566, inlinedAt: !2539)
!2566 = distinct !DILexicalBlock(scope: !2536, file: !79, line: 544, column: 7)
!2567 = !DILocalVariable(name: "flags", arg: 2, scope: !2559, file: !79, line: 472, type: !86)
!2568 = !DILocation(line: 472, column: 40, scope: !2559, inlinedAt: !2563)
!2569 = !DILocalVariable(name: "order", arg: 3, scope: !2559, file: !79, line: 472, type: !7)
!2570 = !DILocation(line: 472, column: 60, scope: !2559, inlinedAt: !2563)
!2571 = !DILocalVariable(name: "size", arg: 1, scope: !2564, file: !79, line: 478, type: !328)
!2572 = !DILocation(line: 478, column: 51, scope: !2564, inlinedAt: !2565)
!2573 = !DILocalVariable(name: "flags", arg: 2, scope: !2564, file: !79, line: 478, type: !86)
!2574 = !DILocation(line: 478, column: 63, scope: !2564, inlinedAt: !2565)
!2575 = !DILocalVariable(name: "order", scope: !2564, file: !79, line: 480, type: !7)
!2576 = !DILocation(line: 480, column: 15, scope: !2564, inlinedAt: !2565)
!2577 = !DILocalVariable(name: "size", arg: 1, scope: !2538, file: !79, line: 538, type: !328)
!2578 = !DILocation(line: 538, column: 45, scope: !2538, inlinedAt: !2539)
!2579 = !DILocalVariable(name: "flags", arg: 2, scope: !2538, file: !79, line: 538, type: !86)
!2580 = !DILocation(line: 538, column: 57, scope: !2538, inlinedAt: !2539)
!2581 = !DILocalVariable(name: "index", scope: !2536, file: !79, line: 542, type: !7)
!2582 = !DILocation(line: 542, column: 16, scope: !2536, inlinedAt: !2539)
!2583 = !DILocalVariable(name: "size", arg: 1, scope: !2527, file: !79, line: 662, type: !328)
!2584 = !DILocation(line: 662, column: 36, scope: !2527)
!2585 = !DILocalVariable(name: "flags", arg: 2, scope: !2527, file: !79, line: 662, type: !86)
!2586 = !DILocation(line: 662, column: 48, scope: !2527)
!2587 = !DILocation(line: 664, column: 17, scope: !2527)
!2588 = !DILocation(line: 664, column: 23, scope: !2527)
!2589 = !DILocation(line: 664, column: 29, scope: !2527)
!2590 = !DILocation(line: 540, column: 27, scope: !2537, inlinedAt: !2539)
!2591 = !DILocation(line: 540, column: 6, scope: !2537, inlinedAt: !2539)
!2592 = !DILocation(line: 540, column: 6, scope: !2538, inlinedAt: !2539)
!2593 = !DILocation(line: 544, column: 7, scope: !2566, inlinedAt: !2539)
!2594 = !DILocation(line: 544, column: 12, scope: !2566, inlinedAt: !2539)
!2595 = !DILocation(line: 544, column: 7, scope: !2536, inlinedAt: !2539)
!2596 = !DILocation(line: 545, column: 25, scope: !2566, inlinedAt: !2539)
!2597 = !DILocation(line: 545, column: 31, scope: !2566, inlinedAt: !2539)
!2598 = !DILocation(line: 480, column: 33, scope: !2564, inlinedAt: !2565)
!2599 = !DILocation(line: 480, column: 23, scope: !2564, inlinedAt: !2565)
!2600 = !DILocation(line: 481, column: 29, scope: !2564, inlinedAt: !2565)
!2601 = !DILocation(line: 481, column: 35, scope: !2564, inlinedAt: !2565)
!2602 = !DILocation(line: 481, column: 42, scope: !2564, inlinedAt: !2565)
!2603 = !DILocation(line: 474, column: 23, scope: !2559, inlinedAt: !2563)
!2604 = !DILocation(line: 474, column: 29, scope: !2559, inlinedAt: !2563)
!2605 = !DILocation(line: 474, column: 36, scope: !2559, inlinedAt: !2563)
!2606 = !DILocation(line: 474, column: 9, scope: !2559, inlinedAt: !2563)
!2607 = !DILocation(line: 545, column: 4, scope: !2566, inlinedAt: !2539)
!2608 = !DILocation(line: 547, column: 25, scope: !2536, inlinedAt: !2539)
!2609 = !DILocation(line: 348, column: 7, scope: !2610, inlinedAt: !2557)
!2610 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 348, column: 6)
!2611 = !DILocation(line: 348, column: 6, scope: !2553, inlinedAt: !2557)
!2612 = !DILocation(line: 349, column: 3, scope: !2610, inlinedAt: !2557)
!2613 = !DILocation(line: 351, column: 6, scope: !2614, inlinedAt: !2557)
!2614 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 351, column: 6)
!2615 = !DILocation(line: 351, column: 11, scope: !2614, inlinedAt: !2557)
!2616 = !DILocation(line: 351, column: 6, scope: !2553, inlinedAt: !2557)
!2617 = !DILocation(line: 352, column: 3, scope: !2614, inlinedAt: !2557)
!2618 = !DILocation(line: 354, column: 32, scope: !2619, inlinedAt: !2557)
!2619 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 354, column: 6)
!2620 = !DILocation(line: 354, column: 37, scope: !2619, inlinedAt: !2557)
!2621 = !DILocation(line: 354, column: 42, scope: !2619, inlinedAt: !2557)
!2622 = !DILocation(line: 354, column: 45, scope: !2619, inlinedAt: !2557)
!2623 = !DILocation(line: 354, column: 50, scope: !2619, inlinedAt: !2557)
!2624 = !DILocation(line: 354, column: 6, scope: !2553, inlinedAt: !2557)
!2625 = !DILocation(line: 355, column: 3, scope: !2619, inlinedAt: !2557)
!2626 = !DILocation(line: 356, column: 32, scope: !2627, inlinedAt: !2557)
!2627 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 356, column: 6)
!2628 = !DILocation(line: 356, column: 37, scope: !2627, inlinedAt: !2557)
!2629 = !DILocation(line: 356, column: 43, scope: !2627, inlinedAt: !2557)
!2630 = !DILocation(line: 356, column: 46, scope: !2627, inlinedAt: !2557)
!2631 = !DILocation(line: 356, column: 51, scope: !2627, inlinedAt: !2557)
!2632 = !DILocation(line: 356, column: 6, scope: !2553, inlinedAt: !2557)
!2633 = !DILocation(line: 357, column: 3, scope: !2627, inlinedAt: !2557)
!2634 = !DILocation(line: 358, column: 6, scope: !2635, inlinedAt: !2557)
!2635 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 358, column: 6)
!2636 = !DILocation(line: 358, column: 11, scope: !2635, inlinedAt: !2557)
!2637 = !DILocation(line: 358, column: 6, scope: !2553, inlinedAt: !2557)
!2638 = !DILocation(line: 358, column: 26, scope: !2635, inlinedAt: !2557)
!2639 = !DILocation(line: 359, column: 6, scope: !2640, inlinedAt: !2557)
!2640 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 359, column: 6)
!2641 = !DILocation(line: 359, column: 11, scope: !2640, inlinedAt: !2557)
!2642 = !DILocation(line: 359, column: 6, scope: !2553, inlinedAt: !2557)
!2643 = !DILocation(line: 359, column: 26, scope: !2640, inlinedAt: !2557)
!2644 = !DILocation(line: 360, column: 6, scope: !2645, inlinedAt: !2557)
!2645 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 360, column: 6)
!2646 = !DILocation(line: 360, column: 11, scope: !2645, inlinedAt: !2557)
!2647 = !DILocation(line: 360, column: 6, scope: !2553, inlinedAt: !2557)
!2648 = !DILocation(line: 360, column: 26, scope: !2645, inlinedAt: !2557)
!2649 = !DILocation(line: 361, column: 6, scope: !2650, inlinedAt: !2557)
!2650 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 361, column: 6)
!2651 = !DILocation(line: 361, column: 11, scope: !2650, inlinedAt: !2557)
!2652 = !DILocation(line: 361, column: 6, scope: !2553, inlinedAt: !2557)
!2653 = !DILocation(line: 361, column: 26, scope: !2650, inlinedAt: !2557)
!2654 = !DILocation(line: 362, column: 6, scope: !2655, inlinedAt: !2557)
!2655 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 362, column: 6)
!2656 = !DILocation(line: 362, column: 11, scope: !2655, inlinedAt: !2557)
!2657 = !DILocation(line: 362, column: 6, scope: !2553, inlinedAt: !2557)
!2658 = !DILocation(line: 362, column: 26, scope: !2655, inlinedAt: !2557)
!2659 = !DILocation(line: 363, column: 6, scope: !2660, inlinedAt: !2557)
!2660 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 363, column: 6)
!2661 = !DILocation(line: 363, column: 11, scope: !2660, inlinedAt: !2557)
!2662 = !DILocation(line: 363, column: 6, scope: !2553, inlinedAt: !2557)
!2663 = !DILocation(line: 363, column: 26, scope: !2660, inlinedAt: !2557)
!2664 = !DILocation(line: 364, column: 6, scope: !2665, inlinedAt: !2557)
!2665 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 364, column: 6)
!2666 = !DILocation(line: 364, column: 11, scope: !2665, inlinedAt: !2557)
!2667 = !DILocation(line: 364, column: 6, scope: !2553, inlinedAt: !2557)
!2668 = !DILocation(line: 364, column: 26, scope: !2665, inlinedAt: !2557)
!2669 = !DILocation(line: 365, column: 6, scope: !2670, inlinedAt: !2557)
!2670 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 365, column: 6)
!2671 = !DILocation(line: 365, column: 11, scope: !2670, inlinedAt: !2557)
!2672 = !DILocation(line: 365, column: 6, scope: !2553, inlinedAt: !2557)
!2673 = !DILocation(line: 365, column: 26, scope: !2670, inlinedAt: !2557)
!2674 = !DILocation(line: 366, column: 6, scope: !2675, inlinedAt: !2557)
!2675 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 366, column: 6)
!2676 = !DILocation(line: 366, column: 11, scope: !2675, inlinedAt: !2557)
!2677 = !DILocation(line: 366, column: 6, scope: !2553, inlinedAt: !2557)
!2678 = !DILocation(line: 366, column: 26, scope: !2675, inlinedAt: !2557)
!2679 = !DILocation(line: 367, column: 6, scope: !2680, inlinedAt: !2557)
!2680 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 367, column: 6)
!2681 = !DILocation(line: 367, column: 11, scope: !2680, inlinedAt: !2557)
!2682 = !DILocation(line: 367, column: 6, scope: !2553, inlinedAt: !2557)
!2683 = !DILocation(line: 367, column: 26, scope: !2680, inlinedAt: !2557)
!2684 = !DILocation(line: 368, column: 6, scope: !2685, inlinedAt: !2557)
!2685 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 368, column: 6)
!2686 = !DILocation(line: 368, column: 11, scope: !2685, inlinedAt: !2557)
!2687 = !DILocation(line: 368, column: 6, scope: !2553, inlinedAt: !2557)
!2688 = !DILocation(line: 368, column: 26, scope: !2685, inlinedAt: !2557)
!2689 = !DILocation(line: 369, column: 6, scope: !2690, inlinedAt: !2557)
!2690 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 369, column: 6)
!2691 = !DILocation(line: 369, column: 11, scope: !2690, inlinedAt: !2557)
!2692 = !DILocation(line: 369, column: 6, scope: !2553, inlinedAt: !2557)
!2693 = !DILocation(line: 369, column: 26, scope: !2690, inlinedAt: !2557)
!2694 = !DILocation(line: 370, column: 6, scope: !2695, inlinedAt: !2557)
!2695 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 370, column: 6)
!2696 = !DILocation(line: 370, column: 11, scope: !2695, inlinedAt: !2557)
!2697 = !DILocation(line: 370, column: 6, scope: !2553, inlinedAt: !2557)
!2698 = !DILocation(line: 370, column: 26, scope: !2695, inlinedAt: !2557)
!2699 = !DILocation(line: 371, column: 6, scope: !2700, inlinedAt: !2557)
!2700 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 371, column: 6)
!2701 = !DILocation(line: 371, column: 11, scope: !2700, inlinedAt: !2557)
!2702 = !DILocation(line: 371, column: 6, scope: !2553, inlinedAt: !2557)
!2703 = !DILocation(line: 371, column: 26, scope: !2700, inlinedAt: !2557)
!2704 = !DILocation(line: 372, column: 6, scope: !2705, inlinedAt: !2557)
!2705 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 372, column: 6)
!2706 = !DILocation(line: 372, column: 11, scope: !2705, inlinedAt: !2557)
!2707 = !DILocation(line: 372, column: 6, scope: !2553, inlinedAt: !2557)
!2708 = !DILocation(line: 372, column: 26, scope: !2705, inlinedAt: !2557)
!2709 = !DILocation(line: 373, column: 6, scope: !2710, inlinedAt: !2557)
!2710 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 373, column: 6)
!2711 = !DILocation(line: 373, column: 11, scope: !2710, inlinedAt: !2557)
!2712 = !DILocation(line: 373, column: 6, scope: !2553, inlinedAt: !2557)
!2713 = !DILocation(line: 373, column: 26, scope: !2710, inlinedAt: !2557)
!2714 = !DILocation(line: 374, column: 6, scope: !2715, inlinedAt: !2557)
!2715 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 374, column: 6)
!2716 = !DILocation(line: 374, column: 11, scope: !2715, inlinedAt: !2557)
!2717 = !DILocation(line: 374, column: 6, scope: !2553, inlinedAt: !2557)
!2718 = !DILocation(line: 374, column: 26, scope: !2715, inlinedAt: !2557)
!2719 = !DILocation(line: 375, column: 6, scope: !2720, inlinedAt: !2557)
!2720 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 375, column: 6)
!2721 = !DILocation(line: 375, column: 11, scope: !2720, inlinedAt: !2557)
!2722 = !DILocation(line: 375, column: 6, scope: !2553, inlinedAt: !2557)
!2723 = !DILocation(line: 375, column: 27, scope: !2720, inlinedAt: !2557)
!2724 = !DILocation(line: 376, column: 6, scope: !2725, inlinedAt: !2557)
!2725 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 376, column: 6)
!2726 = !DILocation(line: 376, column: 11, scope: !2725, inlinedAt: !2557)
!2727 = !DILocation(line: 376, column: 6, scope: !2553, inlinedAt: !2557)
!2728 = !DILocation(line: 376, column: 32, scope: !2725, inlinedAt: !2557)
!2729 = !DILocation(line: 377, column: 6, scope: !2730, inlinedAt: !2557)
!2730 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 377, column: 6)
!2731 = !DILocation(line: 377, column: 11, scope: !2730, inlinedAt: !2557)
!2732 = !DILocation(line: 377, column: 6, scope: !2553, inlinedAt: !2557)
!2733 = !DILocation(line: 377, column: 32, scope: !2730, inlinedAt: !2557)
!2734 = !DILocation(line: 378, column: 6, scope: !2735, inlinedAt: !2557)
!2735 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 378, column: 6)
!2736 = !DILocation(line: 378, column: 11, scope: !2735, inlinedAt: !2557)
!2737 = !DILocation(line: 378, column: 6, scope: !2553, inlinedAt: !2557)
!2738 = !DILocation(line: 378, column: 32, scope: !2735, inlinedAt: !2557)
!2739 = !DILocation(line: 379, column: 6, scope: !2740, inlinedAt: !2557)
!2740 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 379, column: 6)
!2741 = !DILocation(line: 379, column: 11, scope: !2740, inlinedAt: !2557)
!2742 = !DILocation(line: 379, column: 6, scope: !2553, inlinedAt: !2557)
!2743 = !DILocation(line: 379, column: 33, scope: !2740, inlinedAt: !2557)
!2744 = !DILocation(line: 380, column: 6, scope: !2745, inlinedAt: !2557)
!2745 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 380, column: 6)
!2746 = !DILocation(line: 380, column: 11, scope: !2745, inlinedAt: !2557)
!2747 = !DILocation(line: 380, column: 6, scope: !2553, inlinedAt: !2557)
!2748 = !DILocation(line: 380, column: 33, scope: !2745, inlinedAt: !2557)
!2749 = !DILocation(line: 381, column: 6, scope: !2750, inlinedAt: !2557)
!2750 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 381, column: 6)
!2751 = !DILocation(line: 381, column: 11, scope: !2750, inlinedAt: !2557)
!2752 = !DILocation(line: 381, column: 6, scope: !2553, inlinedAt: !2557)
!2753 = !DILocation(line: 381, column: 33, scope: !2750, inlinedAt: !2557)
!2754 = !DILocation(line: 382, column: 2, scope: !2755, inlinedAt: !2557)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !79, line: 382, column: 2)
!2756 = distinct !DILexicalBlock(scope: !2553, file: !79, line: 382, column: 2)
!2757 = !{i32 -2144186087, i32 -2144186058, i32 -2144186012, i32 -2144185954, i32 -2144185900, i32 -2144185846, i32 -2144185791, i32 -2144185760}
!2758 = !DILocation(line: 382, column: 2, scope: !2759, inlinedAt: !2557)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !79, line: 382, column: 2)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !79, line: 382, column: 2)
!2761 = !{i32 -2144185317, i32 -2144185310, i32 -2144185256, i32 -2144185225, i32 -2144185195}
!2762 = !DILocation(line: 382, column: 2, scope: !2760, inlinedAt: !2557)
!2763 = !DILocation(line: 386, column: 1, scope: !2553, inlinedAt: !2557)
!2764 = !DILocation(line: 547, column: 9, scope: !2536, inlinedAt: !2539)
!2765 = !DILocation(line: 549, column: 8, scope: !2766, inlinedAt: !2539)
!2766 = distinct !DILexicalBlock(scope: !2536, file: !79, line: 549, column: 7)
!2767 = !DILocation(line: 549, column: 7, scope: !2536, inlinedAt: !2539)
!2768 = !DILocation(line: 550, column: 4, scope: !2766, inlinedAt: !2539)
!2769 = !DILocation(line: 553, column: 33, scope: !2536, inlinedAt: !2539)
!2770 = !DILocation(line: 325, column: 6, scope: !2771, inlinedAt: !2551)
!2771 = distinct !DILexicalBlock(scope: !2547, file: !79, line: 325, column: 6)
!2772 = !DILocation(line: 325, column: 6, scope: !2547, inlinedAt: !2551)
!2773 = !DILocation(line: 326, column: 3, scope: !2771, inlinedAt: !2551)
!2774 = !DILocation(line: 332, column: 9, scope: !2547, inlinedAt: !2551)
!2775 = !DILocation(line: 332, column: 15, scope: !2547, inlinedAt: !2551)
!2776 = !DILocation(line: 332, column: 2, scope: !2547, inlinedAt: !2551)
!2777 = !DILocation(line: 336, column: 1, scope: !2547, inlinedAt: !2551)
!2778 = !DILocation(line: 553, column: 5, scope: !2536, inlinedAt: !2539)
!2779 = !DILocation(line: 553, column: 41, scope: !2536, inlinedAt: !2539)
!2780 = !DILocation(line: 554, column: 5, scope: !2536, inlinedAt: !2539)
!2781 = !DILocation(line: 554, column: 12, scope: !2536, inlinedAt: !2539)
!2782 = !DILocation(line: 448, column: 31, scope: !2531, inlinedAt: !2535)
!2783 = !DILocation(line: 448, column: 34, scope: !2531, inlinedAt: !2535)
!2784 = !DILocation(line: 448, column: 14, scope: !2531, inlinedAt: !2535)
!2785 = !DILocation(line: 450, column: 22, scope: !2531, inlinedAt: !2535)
!2786 = !DILocation(line: 450, column: 25, scope: !2531, inlinedAt: !2535)
!2787 = !DILocation(line: 450, column: 30, scope: !2531, inlinedAt: !2535)
!2788 = !DILocation(line: 450, column: 36, scope: !2531, inlinedAt: !2535)
!2789 = !DILocation(line: 450, column: 8, scope: !2531, inlinedAt: !2535)
!2790 = !DILocation(line: 450, column: 6, scope: !2531, inlinedAt: !2535)
!2791 = !DILocation(line: 451, column: 9, scope: !2531, inlinedAt: !2535)
!2792 = !DILocation(line: 552, column: 3, scope: !2536, inlinedAt: !2539)
!2793 = !DILocation(line: 557, column: 19, scope: !2538, inlinedAt: !2539)
!2794 = !DILocation(line: 557, column: 25, scope: !2538, inlinedAt: !2539)
!2795 = !DILocation(line: 557, column: 9, scope: !2538, inlinedAt: !2539)
!2796 = !DILocation(line: 557, column: 2, scope: !2538, inlinedAt: !2539)
!2797 = !DILocation(line: 558, column: 1, scope: !2538, inlinedAt: !2539)
!2798 = !DILocation(line: 664, column: 2, scope: !2527)
!2799 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2800, file: !2800, line: 33, type: !2801, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2800 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !97}
!2803 = !DILocalVariable(name: "list", arg: 1, scope: !2799, file: !2800, line: 33, type: !97)
!2804 = !DILocation(line: 33, column: 53, scope: !2799)
!2805 = !DILocation(line: 35, column: 2, scope: !2799)
!2806 = !DILocation(line: 35, column: 2, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2799, file: !2800, line: 35, column: 2)
!2808 = !DILocation(line: 35, column: 2, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2807, file: !2800, line: 35, column: 2)
!2810 = !DILocation(line: 35, column: 2, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !2800, line: 35, column: 2)
!2812 = !DILocation(line: 36, column: 15, scope: !2799)
!2813 = !DILocation(line: 36, column: 2, scope: !2799)
!2814 = !DILocation(line: 36, column: 8, scope: !2799)
!2815 = !DILocation(line: 36, column: 13, scope: !2799)
!2816 = !DILocation(line: 37, column: 1, scope: !2799)
!2817 = distinct !DISubprogram(name: "list_add_tail", scope: !2800, file: !2800, line: 98, type: !2818, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !97, !97}
!2820 = !DILocalVariable(name: "new", arg: 1, scope: !2817, file: !2800, line: 98, type: !97)
!2821 = !DILocation(line: 98, column: 52, scope: !2817)
!2822 = !DILocalVariable(name: "head", arg: 2, scope: !2817, file: !2800, line: 98, type: !97)
!2823 = !DILocation(line: 98, column: 75, scope: !2817)
!2824 = !DILocation(line: 100, column: 13, scope: !2817)
!2825 = !DILocation(line: 100, column: 18, scope: !2817)
!2826 = !DILocation(line: 100, column: 24, scope: !2817)
!2827 = !DILocation(line: 100, column: 30, scope: !2817)
!2828 = !DILocation(line: 100, column: 2, scope: !2817)
!2829 = !DILocation(line: 101, column: 1, scope: !2817)
!2830 = distinct !DISubprogram(name: "acpi_init_properties", scope: !3, file: !3, line: 384, type: !2393, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2831 = !DILocalVariable(name: "adev", arg: 1, scope: !2830, file: !3, line: 384, type: !184)
!2832 = !DILocation(line: 384, column: 47, scope: !2830)
!2833 = !DILocalVariable(name: "buf", scope: !2830, file: !3, line: 386, type: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !124, line: 969, size: 128, elements: !2835)
!2835 = !{!2836, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2834, file: !124, line: 970, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !124, line: 127, baseType: !136)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2834, file: !124, line: 971, baseType: !88, size: 64, offset: 64)
!2839 = !DILocation(line: 386, column: 21, scope: !2830)
!2840 = !DILocalVariable(name: "hwid", scope: !2830, file: !3, line: 387, type: !89)
!2841 = !DILocation(line: 387, column: 27, scope: !2830)
!2842 = !DILocalVariable(name: "status", scope: !2830, file: !3, line: 388, type: !2843)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !124, line: 421, baseType: !128)
!2844 = !DILocation(line: 388, column: 14, scope: !2830)
!2845 = !DILocalVariable(name: "acpi_of", scope: !2830, file: !3, line: 389, type: !213)
!2846 = !DILocation(line: 389, column: 7, scope: !2830)
!2847 = !DILocation(line: 391, column: 18, scope: !2830)
!2848 = !DILocation(line: 391, column: 24, scope: !2830)
!2849 = !DILocation(line: 391, column: 29, scope: !2830)
!2850 = !DILocation(line: 391, column: 2, scope: !2830)
!2851 = !DILocation(line: 392, column: 18, scope: !2830)
!2852 = !DILocation(line: 392, column: 24, scope: !2830)
!2853 = !DILocation(line: 392, column: 29, scope: !2830)
!2854 = !DILocation(line: 392, column: 2, scope: !2830)
!2855 = !DILocation(line: 394, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 394, column: 6)
!2857 = !DILocation(line: 394, column: 13, scope: !2856)
!2858 = !DILocation(line: 394, column: 6, scope: !2830)
!2859 = !DILocation(line: 395, column: 3, scope: !2856)
!2860 = !DILocalVariable(name: "__mptr", scope: !2861, file: !3, line: 401, type: !88)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 401, column: 2)
!2862 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 401, column: 2)
!2863 = !DILocation(line: 401, column: 2, scope: !2861)
!2864 = !DILocation(line: 401, column: 2, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 401, column: 2)
!2866 = !DILocation(line: 401, column: 2, scope: !2862)
!2867 = !DILocation(line: 401, column: 2, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 401, column: 2)
!2869 = !DILocation(line: 402, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 402, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 401, column: 50)
!2872 = !DILocation(line: 402, column: 21, scope: !2870)
!2873 = !DILocation(line: 402, column: 8, scope: !2870)
!2874 = !DILocation(line: 402, column: 7, scope: !2871)
!2875 = !DILocation(line: 403, column: 12, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 402, column: 49)
!2877 = !DILocation(line: 404, column: 4, scope: !2876)
!2878 = !DILocation(line: 406, column: 2, scope: !2871)
!2879 = !DILocalVariable(name: "__mptr", scope: !2880, file: !3, line: 401, type: !88)
!2880 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 401, column: 2)
!2881 = !DILocation(line: 401, column: 2, scope: !2880)
!2882 = !DILocation(line: 401, column: 2, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 401, column: 2)
!2884 = distinct !{!2884, !2866, !2885}
!2885 = !DILocation(line: 406, column: 2, scope: !2862)
!2886 = !DILocation(line: 408, column: 38, scope: !2830)
!2887 = !DILocation(line: 408, column: 44, scope: !2830)
!2888 = !DILocation(line: 408, column: 11, scope: !2830)
!2889 = !DILocation(line: 408, column: 9, scope: !2830)
!2890 = !DILocation(line: 410, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 410, column: 6)
!2892 = !DILocation(line: 410, column: 6, scope: !2830)
!2893 = !DILocation(line: 411, column: 3, scope: !2891)
!2894 = !DILocation(line: 413, column: 34, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 413, column: 6)
!2896 = !DILocation(line: 413, column: 30, scope: !2895)
!2897 = !DILocation(line: 413, column: 44, scope: !2895)
!2898 = !DILocation(line: 413, column: 50, scope: !2895)
!2899 = !DILocation(line: 413, column: 6, scope: !2895)
!2900 = !DILocation(line: 413, column: 6, scope: !2830)
!2901 = !DILocation(line: 414, column: 28, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 413, column: 57)
!2903 = !DILocation(line: 414, column: 24, scope: !2902)
!2904 = !DILocation(line: 414, column: 3, scope: !2902)
!2905 = !DILocation(line: 414, column: 9, scope: !2902)
!2906 = !DILocation(line: 414, column: 14, scope: !2902)
!2907 = !DILocation(line: 414, column: 22, scope: !2902)
!2908 = !DILocation(line: 415, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 415, column: 7)
!2910 = !DILocation(line: 415, column: 7, scope: !2902)
!2911 = !DILocation(line: 416, column: 28, scope: !2909)
!2912 = !DILocation(line: 416, column: 4, scope: !2909)
!2913 = !DILocation(line: 417, column: 2, scope: !2902)
!2914 = !DILocation(line: 418, column: 37, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 418, column: 6)
!2916 = !DILocation(line: 418, column: 43, scope: !2915)
!2917 = !DILocation(line: 418, column: 55, scope: !2915)
!2918 = !DILocation(line: 418, column: 51, scope: !2915)
!2919 = !DILocation(line: 419, column: 7, scope: !2915)
!2920 = !DILocation(line: 419, column: 13, scope: !2915)
!2921 = !DILocation(line: 419, column: 38, scope: !2915)
!2922 = !DILocation(line: 419, column: 19, scope: !2915)
!2923 = !DILocation(line: 418, column: 6, scope: !2915)
!2924 = !DILocation(line: 418, column: 6, scope: !2830)
!2925 = !DILocation(line: 420, column: 28, scope: !2915)
!2926 = !DILocation(line: 420, column: 24, scope: !2915)
!2927 = !DILocation(line: 420, column: 3, scope: !2915)
!2928 = !DILocation(line: 420, column: 9, scope: !2915)
!2929 = !DILocation(line: 420, column: 14, scope: !2915)
!2930 = !DILocation(line: 420, column: 22, scope: !2915)
!2931 = !DILocation(line: 422, column: 7, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 422, column: 6)
!2933 = !DILocation(line: 422, column: 13, scope: !2932)
!2934 = !DILocation(line: 422, column: 18, scope: !2932)
!2935 = !DILocation(line: 422, column: 6, scope: !2830)
!2936 = !DILocation(line: 423, column: 3, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 423, column: 3)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 423, column: 3)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 422, column: 27)
!2940 = !DILocation(line: 423, column: 3, scope: !2938)
!2941 = !DILocation(line: 424, column: 3, scope: !2939)
!2942 = !DILocation(line: 425, column: 2, scope: !2939)
!2943 = !DILabel(scope: !2830, name: "out", file: !3, line: 427)
!2944 = !DILocation(line: 427, column: 2, scope: !2830)
!2945 = !DILocation(line: 428, column: 6, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 428, column: 6)
!2947 = !DILocation(line: 428, column: 14, scope: !2946)
!2948 = !DILocation(line: 428, column: 18, scope: !2946)
!2949 = !DILocation(line: 428, column: 24, scope: !2946)
!2950 = !DILocation(line: 428, column: 30, scope: !2946)
!2951 = !DILocation(line: 428, column: 6, scope: !2830)
!2952 = !DILocation(line: 429, column: 3, scope: !2946)
!2953 = !DILocation(line: 432, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 432, column: 6)
!2955 = !DILocation(line: 432, column: 13, scope: !2954)
!2956 = !DILocation(line: 432, column: 18, scope: !2954)
!2957 = !DILocation(line: 432, column: 6, scope: !2830)
!2958 = !DILocation(line: 433, column: 33, scope: !2954)
!2959 = !DILocation(line: 433, column: 3, scope: !2954)
!2960 = !DILocation(line: 434, column: 1, scope: !2830)
!2961 = distinct !DISubprogram(name: "acpi_extract_properties", scope: !3, file: !3, line: 343, type: !2962, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!213, !121, !2493}
!2964 = !DILocalVariable(name: "desc", arg: 1, scope: !2961, file: !3, line: 343, type: !121)
!2965 = !DILocation(line: 343, column: 62, scope: !2961)
!2966 = !DILocalVariable(name: "data", arg: 2, scope: !2961, file: !3, line: 344, type: !2493)
!2967 = !DILocation(line: 344, column: 34, scope: !2961)
!2968 = !DILocalVariable(name: "i", scope: !2961, file: !3, line: 346, type: !188)
!2969 = !DILocation(line: 346, column: 6, scope: !2961)
!2970 = !DILocation(line: 348, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 348, column: 6)
!2972 = !DILocation(line: 348, column: 12, scope: !2971)
!2973 = !DILocation(line: 348, column: 20, scope: !2971)
!2974 = !DILocation(line: 348, column: 26, scope: !2971)
!2975 = !DILocation(line: 348, column: 6, scope: !2961)
!2976 = !DILocation(line: 349, column: 3, scope: !2971)
!2977 = !DILocation(line: 352, column: 9, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 352, column: 2)
!2979 = !DILocation(line: 352, column: 7, scope: !2978)
!2980 = !DILocation(line: 352, column: 14, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 352, column: 2)
!2982 = !DILocation(line: 352, column: 18, scope: !2981)
!2983 = !DILocation(line: 352, column: 24, scope: !2981)
!2984 = !DILocation(line: 352, column: 32, scope: !2981)
!2985 = !DILocation(line: 352, column: 16, scope: !2981)
!2986 = !DILocation(line: 352, column: 2, scope: !2978)
!2987 = !DILocalVariable(name: "guid", scope: !2988, file: !3, line: 353, type: !121)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 352, column: 47)
!2989 = !DILocation(line: 353, column: 28, scope: !2988)
!2990 = !DILocalVariable(name: "properties", scope: !2988, file: !3, line: 353, type: !121)
!2991 = !DILocation(line: 353, column: 35, scope: !2988)
!2992 = !DILocation(line: 355, column: 11, scope: !2988)
!2993 = !DILocation(line: 355, column: 17, scope: !2988)
!2994 = !DILocation(line: 355, column: 25, scope: !2988)
!2995 = !DILocation(line: 355, column: 34, scope: !2988)
!2996 = !DILocation(line: 355, column: 8, scope: !2988)
!2997 = !DILocation(line: 356, column: 17, scope: !2988)
!2998 = !DILocation(line: 356, column: 23, scope: !2988)
!2999 = !DILocation(line: 356, column: 31, scope: !2988)
!3000 = !DILocation(line: 356, column: 40, scope: !2988)
!3001 = !DILocation(line: 356, column: 42, scope: !2988)
!3002 = !DILocation(line: 356, column: 14, scope: !2988)
!3003 = !DILocation(line: 362, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 362, column: 7)
!3005 = !DILocation(line: 362, column: 13, scope: !3004)
!3006 = !DILocation(line: 362, column: 18, scope: !3004)
!3007 = !DILocation(line: 362, column: 38, scope: !3004)
!3008 = !DILocation(line: 363, column: 7, scope: !3004)
!3009 = !DILocation(line: 363, column: 13, scope: !3004)
!3010 = !DILocation(line: 363, column: 20, scope: !3004)
!3011 = !DILocation(line: 363, column: 27, scope: !3004)
!3012 = !DILocation(line: 363, column: 33, scope: !3004)
!3013 = !DILocation(line: 364, column: 7, scope: !3004)
!3014 = !DILocation(line: 364, column: 19, scope: !3004)
!3015 = !DILocation(line: 364, column: 24, scope: !3004)
!3016 = !DILocation(line: 362, column: 7, scope: !2988)
!3017 = !DILocation(line: 365, column: 4, scope: !3004)
!3018 = !DILocation(line: 367, column: 40, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 367, column: 7)
!3020 = !DILocation(line: 367, column: 46, scope: !3019)
!3021 = !DILocation(line: 367, column: 53, scope: !3019)
!3022 = !DILocation(line: 367, column: 30, scope: !3019)
!3023 = !DILocation(line: 367, column: 8, scope: !3019)
!3024 = !DILocation(line: 367, column: 7, scope: !2988)
!3025 = !DILocation(line: 368, column: 4, scope: !3019)
!3026 = !DILocation(line: 374, column: 37, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 374, column: 7)
!3028 = !DILocation(line: 374, column: 8, scope: !3027)
!3029 = !DILocation(line: 374, column: 7, scope: !2988)
!3030 = !DILocation(line: 375, column: 4, scope: !3027)
!3031 = !DILocation(line: 377, column: 23, scope: !2988)
!3032 = !DILocation(line: 377, column: 45, scope: !2988)
!3033 = !DILocation(line: 377, column: 51, scope: !2988)
!3034 = !DILocation(line: 377, column: 58, scope: !2988)
!3035 = !DILocation(line: 377, column: 29, scope: !2988)
!3036 = !DILocation(line: 378, column: 9, scope: !2988)
!3037 = !DILocation(line: 377, column: 3, scope: !2988)
!3038 = !DILocation(line: 379, column: 2, scope: !2988)
!3039 = !DILocation(line: 352, column: 41, scope: !2981)
!3040 = !DILocation(line: 352, column: 2, scope: !2981)
!3041 = distinct !{!3041, !2986, !3042}
!3042 = !DILocation(line: 379, column: 2, scope: !2978)
!3043 = !DILocation(line: 381, column: 22, scope: !2961)
!3044 = !DILocation(line: 381, column: 28, scope: !2961)
!3045 = !DILocation(line: 381, column: 10, scope: !2961)
!3046 = !DILocation(line: 381, column: 9, scope: !2961)
!3047 = !DILocation(line: 381, column: 2, scope: !2961)
!3048 = !DILocation(line: 382, column: 1, scope: !2961)
!3049 = distinct !DISubprogram(name: "acpi_init_of_compatible", scope: !3, file: !3, line: 290, type: !2393, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3050 = !DILocalVariable(name: "adev", arg: 1, scope: !3049, file: !3, line: 290, type: !184)
!3051 = !DILocation(line: 290, column: 57, scope: !3049)
!3052 = !DILocalVariable(name: "of_compatible", scope: !3049, file: !3, line: 292, type: !121)
!3053 = !DILocation(line: 292, column: 27, scope: !3049)
!3054 = !DILocalVariable(name: "ret", scope: !3049, file: !3, line: 293, type: !188)
!3055 = !DILocation(line: 293, column: 6, scope: !3049)
!3056 = !DILocation(line: 295, column: 38, scope: !3049)
!3057 = !DILocation(line: 295, column: 44, scope: !3049)
!3058 = !DILocation(line: 295, column: 8, scope: !3049)
!3059 = !DILocation(line: 295, column: 6, scope: !3049)
!3060 = !DILocation(line: 297, column: 6, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 297, column: 6)
!3062 = !DILocation(line: 297, column: 6, scope: !3049)
!3063 = !DILocation(line: 298, column: 31, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 297, column: 11)
!3065 = !DILocation(line: 298, column: 9, scope: !3064)
!3066 = !DILocation(line: 298, column: 7, scope: !3064)
!3067 = !DILocation(line: 300, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 300, column: 7)
!3069 = !DILocation(line: 300, column: 7, scope: !3064)
!3070 = !DILocation(line: 301, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 301, column: 8)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 300, column: 12)
!3073 = !DILocation(line: 301, column: 14, scope: !3071)
!3074 = !DILocation(line: 302, column: 8, scope: !3071)
!3075 = !DILocation(line: 302, column: 11, scope: !3071)
!3076 = !DILocation(line: 302, column: 17, scope: !3071)
!3077 = !DILocation(line: 302, column: 25, scope: !3071)
!3078 = !DILocation(line: 302, column: 31, scope: !3071)
!3079 = !DILocation(line: 301, column: 8, scope: !3072)
!3080 = !DILocation(line: 303, column: 5, scope: !3071)
!3081 = !DILocation(line: 305, column: 4, scope: !3072)
!3082 = !DILocation(line: 307, column: 2, scope: !3064)
!3083 = !DILocation(line: 308, column: 29, scope: !3049)
!3084 = !DILocation(line: 308, column: 2, scope: !3049)
!3085 = !DILocation(line: 308, column: 8, scope: !3049)
!3086 = !DILocation(line: 308, column: 13, scope: !3049)
!3087 = !DILocation(line: 308, column: 27, scope: !3049)
!3088 = !DILabel(scope: !3049, name: "out", file: !3, line: 310)
!3089 = !DILocation(line: 310, column: 2, scope: !3049)
!3090 = !DILocation(line: 311, column: 2, scope: !3049)
!3091 = !DILocation(line: 311, column: 8, scope: !3049)
!3092 = !DILocation(line: 311, column: 14, scope: !3049)
!3093 = !DILocation(line: 311, column: 31, scope: !3049)
!3094 = !DILocation(line: 312, column: 1, scope: !3049)
!3095 = distinct !DISubprogram(name: "acpi_enumerate_nondev_subnodes", scope: !3, file: !3, line: 206, type: !3096, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!213, !167, !121, !2493, !195}
!3098 = !DILocalVariable(name: "scope", arg: 1, scope: !3095, file: !3, line: 206, type: !167)
!3099 = !DILocation(line: 206, column: 56, scope: !3095)
!3100 = !DILocalVariable(name: "desc", arg: 2, scope: !3095, file: !3, line: 207, type: !121)
!3101 = !DILocation(line: 207, column: 34, scope: !3095)
!3102 = !DILocalVariable(name: "data", arg: 3, scope: !3095, file: !3, line: 208, type: !2493)
!3103 = !DILocation(line: 208, column: 34, scope: !3095)
!3104 = !DILocalVariable(name: "parent", arg: 4, scope: !3095, file: !3, line: 209, type: !195)
!3105 = !DILocation(line: 209, column: 31, scope: !3095)
!3106 = !DILocalVariable(name: "i", scope: !3095, file: !3, line: 211, type: !188)
!3107 = !DILocation(line: 211, column: 6, scope: !3095)
!3108 = !DILocation(line: 214, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 214, column: 2)
!3110 = !DILocation(line: 214, column: 7, scope: !3109)
!3111 = !DILocation(line: 214, column: 14, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 214, column: 2)
!3113 = !DILocation(line: 214, column: 18, scope: !3112)
!3114 = !DILocation(line: 214, column: 24, scope: !3112)
!3115 = !DILocation(line: 214, column: 32, scope: !3112)
!3116 = !DILocation(line: 214, column: 16, scope: !3112)
!3117 = !DILocation(line: 214, column: 2, scope: !3109)
!3118 = !DILocalVariable(name: "guid", scope: !3119, file: !3, line: 215, type: !121)
!3119 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 214, column: 47)
!3120 = !DILocation(line: 215, column: 28, scope: !3119)
!3121 = !DILocalVariable(name: "links", scope: !3119, file: !3, line: 215, type: !121)
!3122 = !DILocation(line: 215, column: 35, scope: !3119)
!3123 = !DILocation(line: 217, column: 11, scope: !3119)
!3124 = !DILocation(line: 217, column: 17, scope: !3119)
!3125 = !DILocation(line: 217, column: 25, scope: !3119)
!3126 = !DILocation(line: 217, column: 34, scope: !3119)
!3127 = !DILocation(line: 217, column: 8, scope: !3119)
!3128 = !DILocation(line: 218, column: 12, scope: !3119)
!3129 = !DILocation(line: 218, column: 18, scope: !3119)
!3130 = !DILocation(line: 218, column: 26, scope: !3119)
!3131 = !DILocation(line: 218, column: 35, scope: !3119)
!3132 = !DILocation(line: 218, column: 37, scope: !3119)
!3133 = !DILocation(line: 218, column: 9, scope: !3119)
!3134 = !DILocation(line: 224, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 224, column: 7)
!3136 = !DILocation(line: 224, column: 13, scope: !3135)
!3137 = !DILocation(line: 224, column: 18, scope: !3135)
!3138 = !DILocation(line: 224, column: 38, scope: !3135)
!3139 = !DILocation(line: 225, column: 7, scope: !3135)
!3140 = !DILocation(line: 225, column: 13, scope: !3135)
!3141 = !DILocation(line: 225, column: 20, scope: !3135)
!3142 = !DILocation(line: 225, column: 27, scope: !3135)
!3143 = !DILocation(line: 225, column: 33, scope: !3135)
!3144 = !DILocation(line: 226, column: 7, scope: !3135)
!3145 = !DILocation(line: 226, column: 14, scope: !3135)
!3146 = !DILocation(line: 226, column: 19, scope: !3135)
!3147 = !DILocation(line: 224, column: 7, scope: !3119)
!3148 = !DILocation(line: 227, column: 4, scope: !3135)
!3149 = !DILocation(line: 229, column: 29, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 229, column: 7)
!3151 = !DILocation(line: 229, column: 35, scope: !3150)
!3152 = !DILocation(line: 229, column: 42, scope: !3150)
!3153 = !DILocation(line: 229, column: 19, scope: !3150)
!3154 = !DILocation(line: 229, column: 8, scope: !3150)
!3155 = !DILocation(line: 229, column: 7, scope: !3119)
!3156 = !DILocation(line: 230, column: 4, scope: !3150)
!3157 = !DILocation(line: 232, column: 35, scope: !3119)
!3158 = !DILocation(line: 232, column: 42, scope: !3119)
!3159 = !DILocation(line: 232, column: 50, scope: !3119)
!3160 = !DILocation(line: 232, column: 56, scope: !3119)
!3161 = !DILocation(line: 233, column: 7, scope: !3119)
!3162 = !DILocation(line: 232, column: 10, scope: !3119)
!3163 = !DILocation(line: 232, column: 3, scope: !3119)
!3164 = !DILocation(line: 214, column: 41, scope: !3112)
!3165 = !DILocation(line: 214, column: 2, scope: !3112)
!3166 = distinct !{!3166, !3117, !3167}
!3167 = !DILocation(line: 234, column: 2, scope: !3109)
!3168 = !DILocation(line: 236, column: 2, scope: !3095)
!3169 = !DILocation(line: 237, column: 1, scope: !3095)
!3170 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !91, file: !91, line: 438, type: !3171, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!195, !184}
!3173 = !DILocalVariable(name: "adev", arg: 1, scope: !3170, file: !91, line: 438, type: !184)
!3174 = !DILocation(line: 438, column: 76, scope: !3170)
!3175 = !DILocation(line: 440, column: 10, scope: !3170)
!3176 = !DILocation(line: 440, column: 16, scope: !3170)
!3177 = !DILocation(line: 440, column: 2, scope: !3170)
!3178 = distinct !DISubprogram(name: "acpi_os_free", scope: !3179, file: !3179, line: 60, type: !1520, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3179 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!3180 = !DILocalVariable(name: "memory", arg: 1, scope: !3178, file: !3179, line: 60, type: !88)
!3181 = !DILocation(line: 60, column: 39, scope: !3178)
!3182 = !DILocation(line: 62, column: 8, scope: !3178)
!3183 = !DILocation(line: 62, column: 2, scope: !3178)
!3184 = !DILocation(line: 63, column: 1, scope: !3178)
!3185 = distinct !DISubprogram(name: "acpi_free_properties", scope: !3, file: !3, line: 452, type: !2393, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3186 = !DILocalVariable(name: "adev", arg: 1, scope: !3185, file: !3, line: 452, type: !184)
!3187 = !DILocation(line: 452, column: 47, scope: !3185)
!3188 = !DILocalVariable(name: "props", scope: !3185, file: !3, line: 454, type: !103)
!3189 = !DILocation(line: 454, column: 33, scope: !3185)
!3190 = !DILocalVariable(name: "tmp", scope: !3185, file: !3, line: 454, type: !103)
!3191 = !DILocation(line: 454, column: 41, scope: !3185)
!3192 = !DILocation(line: 456, column: 32, scope: !3185)
!3193 = !DILocation(line: 456, column: 38, scope: !3185)
!3194 = !DILocation(line: 456, column: 43, scope: !3185)
!3195 = !DILocation(line: 456, column: 2, scope: !3185)
!3196 = !DILocation(line: 457, column: 2, scope: !3185)
!3197 = !DILocation(line: 458, column: 2, scope: !3185)
!3198 = !DILocation(line: 458, column: 8, scope: !3185)
!3199 = !DILocation(line: 458, column: 13, scope: !3185)
!3200 = !DILocation(line: 458, column: 27, scope: !3185)
!3201 = !DILocation(line: 459, column: 2, scope: !3185)
!3202 = !DILocation(line: 459, column: 8, scope: !3185)
!3203 = !DILocation(line: 459, column: 13, scope: !3185)
!3204 = !DILocation(line: 459, column: 21, scope: !3185)
!3205 = !DILocalVariable(name: "__mptr", scope: !3206, file: !3, line: 460, type: !88)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 460, column: 2)
!3207 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 460, column: 2)
!3208 = !DILocation(line: 460, column: 2, scope: !3206)
!3209 = !DILocation(line: 460, column: 2, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 460, column: 2)
!3211 = !DILocation(line: 460, column: 2, scope: !3207)
!3212 = !DILocalVariable(name: "__mptr", scope: !3213, file: !3, line: 460, type: !88)
!3213 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 460, column: 2)
!3214 = !DILocation(line: 460, column: 2, scope: !3213)
!3215 = !DILocation(line: 460, column: 2, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 460, column: 2)
!3217 = !DILocation(line: 460, column: 2, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 460, column: 2)
!3219 = !DILocation(line: 461, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 460, column: 69)
!3221 = !DILocation(line: 461, column: 20, scope: !3220)
!3222 = !DILocation(line: 461, column: 3, scope: !3220)
!3223 = !DILocation(line: 462, column: 9, scope: !3220)
!3224 = !DILocation(line: 462, column: 3, scope: !3220)
!3225 = !DILocation(line: 463, column: 2, scope: !3220)
!3226 = !DILocalVariable(name: "__mptr", scope: !3227, file: !3, line: 460, type: !88)
!3227 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 460, column: 2)
!3228 = !DILocation(line: 460, column: 2, scope: !3227)
!3229 = !DILocation(line: 460, column: 2, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 460, column: 2)
!3231 = distinct !{!3231, !3211, !3232}
!3232 = !DILocation(line: 463, column: 2, scope: !3207)
!3233 = !DILocation(line: 464, column: 1, scope: !3185)
!3234 = distinct !DISubprogram(name: "acpi_destroy_nondev_subnodes", scope: !3, file: !3, line: 436, type: !2801, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3235 = !DILocalVariable(name: "list", arg: 1, scope: !3234, file: !3, line: 436, type: !97)
!3236 = !DILocation(line: 436, column: 60, scope: !3234)
!3237 = !DILocalVariable(name: "dn", scope: !3234, file: !3, line: 438, type: !2455)
!3238 = !DILocation(line: 438, column: 25, scope: !3234)
!3239 = !DILocalVariable(name: "next", scope: !3234, file: !3, line: 438, type: !2455)
!3240 = !DILocation(line: 438, column: 30, scope: !3234)
!3241 = !DILocation(line: 440, column: 17, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 440, column: 6)
!3243 = !DILocation(line: 440, column: 6, scope: !3242)
!3244 = !DILocation(line: 440, column: 6, scope: !3234)
!3245 = !DILocation(line: 441, column: 3, scope: !3242)
!3246 = !DILocalVariable(name: "__mptr", scope: !3247, file: !3, line: 443, type: !88)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 443, column: 2)
!3248 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 443, column: 2)
!3249 = !DILocation(line: 443, column: 2, scope: !3247)
!3250 = !DILocation(line: 443, column: 2, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 443, column: 2)
!3252 = !DILocation(line: 443, column: 2, scope: !3248)
!3253 = !DILocalVariable(name: "__mptr", scope: !3254, file: !3, line: 443, type: !88)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 443, column: 2)
!3255 = !DILocation(line: 443, column: 2, scope: !3254)
!3256 = !DILocation(line: 443, column: 2, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 443, column: 2)
!3258 = !DILocation(line: 443, column: 2, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 443, column: 2)
!3260 = !DILocation(line: 444, column: 33, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 443, column: 60)
!3262 = !DILocation(line: 444, column: 37, scope: !3261)
!3263 = !DILocation(line: 444, column: 42, scope: !3261)
!3264 = !DILocation(line: 444, column: 3, scope: !3261)
!3265 = !DILocation(line: 445, column: 24, scope: !3261)
!3266 = !DILocation(line: 445, column: 28, scope: !3261)
!3267 = !DILocation(line: 445, column: 3, scope: !3261)
!3268 = !DILocation(line: 446, column: 13, scope: !3261)
!3269 = !DILocation(line: 446, column: 17, scope: !3261)
!3270 = !DILocation(line: 446, column: 3, scope: !3261)
!3271 = !DILocation(line: 447, column: 3, scope: !3261)
!3272 = !DILocation(line: 448, column: 9, scope: !3261)
!3273 = !DILocation(line: 448, column: 3, scope: !3261)
!3274 = !DILocation(line: 449, column: 2, scope: !3261)
!3275 = !DILocalVariable(name: "__mptr", scope: !3276, file: !3, line: 443, type: !88)
!3276 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 443, column: 2)
!3277 = !DILocation(line: 443, column: 2, scope: !3276)
!3278 = !DILocation(line: 443, column: 2, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 443, column: 2)
!3280 = distinct !{!3280, !3252, !3281}
!3281 = !DILocation(line: 449, column: 2, scope: !3248)
!3282 = !DILocation(line: 450, column: 1, scope: !3234)
!3283 = distinct !DISubprogram(name: "list_del", scope: !2800, file: !2800, line: 144, type: !2801, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3284 = !DILocalVariable(name: "entry", arg: 1, scope: !3283, file: !2800, line: 144, type: !97)
!3285 = !DILocation(line: 144, column: 47, scope: !3283)
!3286 = !DILocation(line: 146, column: 19, scope: !3283)
!3287 = !DILocation(line: 146, column: 2, scope: !3283)
!3288 = !DILocation(line: 147, column: 2, scope: !3283)
!3289 = !DILocation(line: 147, column: 9, scope: !3283)
!3290 = !DILocation(line: 147, column: 14, scope: !3283)
!3291 = !DILocation(line: 148, column: 2, scope: !3283)
!3292 = !DILocation(line: 148, column: 9, scope: !3283)
!3293 = !DILocation(line: 148, column: 14, scope: !3283)
!3294 = !DILocation(line: 149, column: 1, scope: !3283)
!3295 = distinct !DISubprogram(name: "acpi_dev_get_property", scope: !3, file: !3, line: 531, type: !3296, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!188, !3298, !100, !127, !183}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!3300 = !DILocalVariable(name: "adev", arg: 1, scope: !3295, file: !3, line: 531, type: !3298)
!3301 = !DILocation(line: 531, column: 53, scope: !3295)
!3302 = !DILocalVariable(name: "name", arg: 2, scope: !3295, file: !3, line: 531, type: !100)
!3303 = !DILocation(line: 531, column: 71, scope: !3295)
!3304 = !DILocalVariable(name: "type", arg: 3, scope: !3295, file: !3, line: 532, type: !127)
!3305 = !DILocation(line: 532, column: 23, scope: !3295)
!3306 = !DILocalVariable(name: "obj", arg: 4, scope: !3295, file: !3, line: 532, type: !183)
!3307 = !DILocation(line: 532, column: 55, scope: !3295)
!3308 = !DILocation(line: 534, column: 9, scope: !3295)
!3309 = !DILocation(line: 534, column: 40, scope: !3295)
!3310 = !DILocation(line: 534, column: 46, scope: !3295)
!3311 = !DILocation(line: 534, column: 52, scope: !3295)
!3312 = !DILocation(line: 534, column: 58, scope: !3295)
!3313 = !DILocation(line: 534, column: 64, scope: !3295)
!3314 = !DILocation(line: 534, column: 16, scope: !3295)
!3315 = !DILocation(line: 534, column: 2, scope: !3295)
!3316 = distinct !DISubprogram(name: "acpi_data_get_property", scope: !3, file: !3, line: 484, type: !3317, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!188, !3319, !100, !127, !183}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!3321 = !DILocalVariable(name: "data", arg: 1, scope: !3316, file: !3, line: 484, type: !3319)
!3322 = !DILocation(line: 484, column: 66, scope: !3316)
!3323 = !DILocalVariable(name: "name", arg: 2, scope: !3316, file: !3, line: 485, type: !100)
!3324 = !DILocation(line: 485, column: 19, scope: !3316)
!3325 = !DILocalVariable(name: "type", arg: 3, scope: !3316, file: !3, line: 485, type: !127)
!3326 = !DILocation(line: 485, column: 42, scope: !3316)
!3327 = !DILocalVariable(name: "obj", arg: 4, scope: !3316, file: !3, line: 486, type: !183)
!3328 = !DILocation(line: 486, column: 33, scope: !3316)
!3329 = !DILocalVariable(name: "props", scope: !3316, file: !3, line: 488, type: !2469)
!3330 = !DILocation(line: 488, column: 39, scope: !3316)
!3331 = !DILocation(line: 490, column: 7, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 490, column: 6)
!3333 = !DILocation(line: 490, column: 12, scope: !3332)
!3334 = !DILocation(line: 490, column: 16, scope: !3332)
!3335 = !DILocation(line: 490, column: 6, scope: !3316)
!3336 = !DILocation(line: 491, column: 3, scope: !3332)
!3337 = !DILocation(line: 493, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 493, column: 6)
!3339 = !DILocation(line: 493, column: 13, scope: !3338)
!3340 = !DILocation(line: 493, column: 21, scope: !3338)
!3341 = !DILocation(line: 493, column: 36, scope: !3338)
!3342 = !DILocation(line: 493, column: 42, scope: !3338)
!3343 = !DILocation(line: 493, column: 24, scope: !3338)
!3344 = !DILocation(line: 493, column: 6, scope: !3316)
!3345 = !DILocation(line: 494, column: 3, scope: !3338)
!3346 = !DILocalVariable(name: "__mptr", scope: !3347, file: !3, line: 496, type: !88)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 496, column: 2)
!3348 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 496, column: 2)
!3349 = !DILocation(line: 496, column: 2, scope: !3347)
!3350 = !DILocation(line: 496, column: 2, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 496, column: 2)
!3352 = !DILocation(line: 496, column: 2, scope: !3348)
!3353 = !DILocation(line: 496, column: 2, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 496, column: 2)
!3355 = !DILocalVariable(name: "properties", scope: !3356, file: !3, line: 497, type: !121)
!3356 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 496, column: 54)
!3357 = !DILocation(line: 497, column: 28, scope: !3356)
!3358 = !DILocalVariable(name: "i", scope: !3356, file: !3, line: 498, type: !7)
!3359 = !DILocation(line: 498, column: 16, scope: !3356)
!3360 = !DILocation(line: 500, column: 16, scope: !3356)
!3361 = !DILocation(line: 500, column: 23, scope: !3356)
!3362 = !DILocation(line: 500, column: 14, scope: !3356)
!3363 = !DILocation(line: 501, column: 10, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 501, column: 3)
!3365 = !DILocation(line: 501, column: 8, scope: !3364)
!3366 = !DILocation(line: 501, column: 15, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 501, column: 3)
!3368 = !DILocation(line: 501, column: 19, scope: !3367)
!3369 = !DILocation(line: 501, column: 31, scope: !3367)
!3370 = !DILocation(line: 501, column: 39, scope: !3367)
!3371 = !DILocation(line: 501, column: 17, scope: !3367)
!3372 = !DILocation(line: 501, column: 3, scope: !3364)
!3373 = !DILocalVariable(name: "propname", scope: !3374, file: !3, line: 502, type: !121)
!3374 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 501, column: 51)
!3375 = !DILocation(line: 502, column: 29, scope: !3374)
!3376 = !DILocalVariable(name: "propvalue", scope: !3374, file: !3, line: 502, type: !121)
!3377 = !DILocation(line: 502, column: 40, scope: !3374)
!3378 = !DILocalVariable(name: "property", scope: !3374, file: !3, line: 503, type: !121)
!3379 = !DILocation(line: 503, column: 29, scope: !3374)
!3380 = !DILocation(line: 505, column: 16, scope: !3374)
!3381 = !DILocation(line: 505, column: 28, scope: !3374)
!3382 = !DILocation(line: 505, column: 36, scope: !3374)
!3383 = !DILocation(line: 505, column: 45, scope: !3374)
!3384 = !DILocation(line: 505, column: 13, scope: !3374)
!3385 = !DILocation(line: 507, column: 16, scope: !3374)
!3386 = !DILocation(line: 507, column: 26, scope: !3374)
!3387 = !DILocation(line: 507, column: 34, scope: !3374)
!3388 = !DILocation(line: 507, column: 13, scope: !3374)
!3389 = !DILocation(line: 508, column: 17, scope: !3374)
!3390 = !DILocation(line: 508, column: 27, scope: !3374)
!3391 = !DILocation(line: 508, column: 35, scope: !3374)
!3392 = !DILocation(line: 508, column: 14, scope: !3374)
!3393 = !DILocation(line: 510, column: 16, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 510, column: 8)
!3395 = !DILocation(line: 510, column: 22, scope: !3394)
!3396 = !DILocation(line: 510, column: 32, scope: !3394)
!3397 = !DILocation(line: 510, column: 39, scope: !3394)
!3398 = !DILocation(line: 510, column: 9, scope: !3394)
!3399 = !DILocation(line: 510, column: 8, scope: !3374)
!3400 = !DILocation(line: 511, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 511, column: 9)
!3402 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 510, column: 49)
!3403 = !DILocation(line: 511, column: 14, scope: !3401)
!3404 = !DILocation(line: 511, column: 31, scope: !3401)
!3405 = !DILocation(line: 512, column: 9, scope: !3401)
!3406 = !DILocation(line: 512, column: 20, scope: !3401)
!3407 = !DILocation(line: 512, column: 28, scope: !3401)
!3408 = !DILocation(line: 512, column: 25, scope: !3401)
!3409 = !DILocation(line: 511, column: 9, scope: !3402)
!3410 = !DILocation(line: 513, column: 6, scope: !3401)
!3411 = !DILocation(line: 514, column: 9, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 514, column: 9)
!3413 = !DILocation(line: 514, column: 9, scope: !3402)
!3414 = !DILocation(line: 515, column: 13, scope: !3412)
!3415 = !DILocation(line: 515, column: 7, scope: !3412)
!3416 = !DILocation(line: 515, column: 11, scope: !3412)
!3417 = !DILocation(line: 515, column: 6, scope: !3412)
!3418 = !DILocation(line: 517, column: 5, scope: !3402)
!3419 = !DILocation(line: 519, column: 3, scope: !3374)
!3420 = !DILocation(line: 501, column: 47, scope: !3367)
!3421 = !DILocation(line: 501, column: 3, scope: !3367)
!3422 = distinct !{!3422, !3372, !3423}
!3423 = !DILocation(line: 519, column: 3, scope: !3364)
!3424 = !DILocation(line: 520, column: 2, scope: !3356)
!3425 = !DILocalVariable(name: "__mptr", scope: !3426, file: !3, line: 496, type: !88)
!3426 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 496, column: 2)
!3427 = !DILocation(line: 496, column: 2, scope: !3426)
!3428 = !DILocation(line: 496, column: 2, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 496, column: 2)
!3430 = distinct !{!3430, !3352, !3431}
!3431 = !DILocation(line: 520, column: 2, scope: !3348)
!3432 = !DILocation(line: 521, column: 2, scope: !3316)
!3433 = !DILocation(line: 522, column: 1, scope: !3316)
!3434 = distinct !DISubprogram(name: "acpi_node_prop_get", scope: !3, file: !3, line: 557, type: !3435, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!188, !215, !100, !3437}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!3438 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3434, file: !3, line: 557, type: !215)
!3439 = !DILocation(line: 557, column: 52, scope: !3434)
!3440 = !DILocalVariable(name: "propname", arg: 2, scope: !3434, file: !3, line: 558, type: !100)
!3441 = !DILocation(line: 558, column: 22, scope: !3434)
!3442 = !DILocalVariable(name: "valptr", arg: 3, scope: !3434, file: !3, line: 558, type: !3437)
!3443 = !DILocation(line: 558, column: 39, scope: !3434)
!3444 = !DILocation(line: 560, column: 57, scope: !3434)
!3445 = !DILocation(line: 560, column: 32, scope: !3434)
!3446 = !DILocation(line: 561, column: 11, scope: !3434)
!3447 = !DILocation(line: 562, column: 39, scope: !3434)
!3448 = !DILocation(line: 562, column: 11, scope: !3434)
!3449 = !DILocation(line: 560, column: 9, scope: !3434)
!3450 = !DILocation(line: 560, column: 2, scope: !3434)
!3451 = distinct !DISubprogram(name: "acpi_device_data_of_node", scope: !3, file: !3, line: 539, type: !3452, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!3319, !215}
!3454 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3451, file: !3, line: 539, type: !215)
!3455 = !DILocation(line: 539, column: 54, scope: !3451)
!3456 = !DILocation(line: 541, column: 26, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 541, column: 6)
!3458 = !DILocation(line: 541, column: 6, scope: !3457)
!3459 = !DILocation(line: 541, column: 6, scope: !3451)
!3460 = !DILocalVariable(name: "adev", scope: !3461, file: !3, line: 542, type: !3298)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 541, column: 35)
!3462 = !DILocation(line: 542, column: 29, scope: !3461)
!3463 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3464, file: !3, line: 542, type: !215)
!3464 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 542, column: 36)
!3465 = !DILocation(line: 542, column: 36, scope: !3464)
!3466 = !DILocalVariable(name: "__mptr", scope: !3467, file: !3, line: 542, type: !88)
!3467 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 542, column: 36)
!3468 = !DILocation(line: 542, column: 36, scope: !3467)
!3469 = !DILocation(line: 542, column: 36, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 542, column: 36)
!3471 = !DILocation(line: 543, column: 11, scope: !3461)
!3472 = !DILocation(line: 543, column: 17, scope: !3461)
!3473 = !DILocation(line: 543, column: 3, scope: !3461)
!3474 = !DILocation(line: 544, column: 31, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 544, column: 13)
!3476 = !DILocation(line: 544, column: 13, scope: !3475)
!3477 = !DILocation(line: 544, column: 13, scope: !3457)
!3478 = !DILocalVariable(name: "dn", scope: !3479, file: !3, line: 545, type: !3480)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 544, column: 40)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2456)
!3482 = !DILocation(line: 545, column: 32, scope: !3479)
!3483 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3484, file: !3, line: 545, type: !215)
!3484 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 545, column: 37)
!3485 = !DILocation(line: 545, column: 37, scope: !3484)
!3486 = !DILocalVariable(name: "__mptr", scope: !3487, file: !3, line: 545, type: !88)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 545, column: 37)
!3488 = !DILocation(line: 545, column: 37, scope: !3487)
!3489 = !DILocation(line: 545, column: 37, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 545, column: 37)
!3491 = !DILocation(line: 546, column: 11, scope: !3479)
!3492 = !DILocation(line: 546, column: 15, scope: !3479)
!3493 = !DILocation(line: 546, column: 3, scope: !3479)
!3494 = !DILocation(line: 548, column: 2, scope: !3451)
!3495 = !DILocation(line: 549, column: 1, scope: !3451)
!3496 = distinct !DISubprogram(name: "__acpi_node_get_property_reference", scope: !3, file: !3, line: 664, type: !3497, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!188, !215, !100, !328, !328, !2208}
!3499 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3496, file: !3, line: 664, type: !215)
!3500 = !DILocation(line: 664, column: 68, scope: !3496)
!3501 = !DILocalVariable(name: "propname", arg: 2, scope: !3496, file: !3, line: 665, type: !100)
!3502 = !DILocation(line: 665, column: 14, scope: !3496)
!3503 = !DILocalVariable(name: "index", arg: 3, scope: !3496, file: !3, line: 665, type: !328)
!3504 = !DILocation(line: 665, column: 31, scope: !3496)
!3505 = !DILocalVariable(name: "num_args", arg: 4, scope: !3496, file: !3, line: 665, type: !328)
!3506 = !DILocation(line: 665, column: 45, scope: !3496)
!3507 = !DILocalVariable(name: "args", arg: 5, scope: !3496, file: !3, line: 666, type: !2208)
!3508 = !DILocation(line: 666, column: 32, scope: !3496)
!3509 = !DILocalVariable(name: "element", scope: !3496, file: !3, line: 668, type: !121)
!3510 = !DILocation(line: 668, column: 27, scope: !3496)
!3511 = !DILocalVariable(name: "end", scope: !3496, file: !3, line: 668, type: !121)
!3512 = !DILocation(line: 668, column: 37, scope: !3496)
!3513 = !DILocalVariable(name: "obj", scope: !3496, file: !3, line: 669, type: !121)
!3514 = !DILocation(line: 669, column: 27, scope: !3496)
!3515 = !DILocalVariable(name: "data", scope: !3496, file: !3, line: 670, type: !3319)
!3516 = !DILocation(line: 670, column: 33, scope: !3496)
!3517 = !DILocalVariable(name: "device", scope: !3496, file: !3, line: 671, type: !184)
!3518 = !DILocation(line: 671, column: 22, scope: !3496)
!3519 = !DILocalVariable(name: "ret", scope: !3496, file: !3, line: 672, type: !188)
!3520 = !DILocation(line: 672, column: 6, scope: !3496)
!3521 = !DILocalVariable(name: "idx", scope: !3496, file: !3, line: 672, type: !188)
!3522 = !DILocation(line: 672, column: 11, scope: !3496)
!3523 = !DILocation(line: 674, column: 34, scope: !3496)
!3524 = !DILocation(line: 674, column: 9, scope: !3496)
!3525 = !DILocation(line: 674, column: 7, scope: !3496)
!3526 = !DILocation(line: 675, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 675, column: 6)
!3528 = !DILocation(line: 675, column: 6, scope: !3496)
!3529 = !DILocation(line: 676, column: 3, scope: !3527)
!3530 = !DILocation(line: 678, column: 31, scope: !3496)
!3531 = !DILocation(line: 678, column: 37, scope: !3496)
!3532 = !DILocation(line: 678, column: 8, scope: !3496)
!3533 = !DILocation(line: 678, column: 6, scope: !3496)
!3534 = !DILocation(line: 679, column: 6, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 679, column: 6)
!3536 = !DILocation(line: 679, column: 6, scope: !3496)
!3537 = !DILocation(line: 680, column: 10, scope: !3535)
!3538 = !DILocation(line: 680, column: 14, scope: !3535)
!3539 = !DILocation(line: 680, column: 3, scope: !3535)
!3540 = !DILocation(line: 686, column: 6, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 686, column: 6)
!3542 = !DILocation(line: 686, column: 11, scope: !3541)
!3543 = !DILocation(line: 686, column: 16, scope: !3541)
!3544 = !DILocation(line: 686, column: 6, scope: !3496)
!3545 = !DILocation(line: 687, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 687, column: 7)
!3547 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 686, column: 46)
!3548 = !DILocation(line: 687, column: 7, scope: !3547)
!3549 = !DILocation(line: 688, column: 4, scope: !3546)
!3550 = !DILocation(line: 690, column: 29, scope: !3547)
!3551 = !DILocation(line: 690, column: 34, scope: !3547)
!3552 = !DILocation(line: 690, column: 44, scope: !3547)
!3553 = !DILocation(line: 690, column: 9, scope: !3547)
!3554 = !DILocation(line: 690, column: 7, scope: !3547)
!3555 = !DILocation(line: 691, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 691, column: 7)
!3557 = !DILocation(line: 691, column: 7, scope: !3547)
!3558 = !DILocation(line: 692, column: 11, scope: !3556)
!3559 = !DILocation(line: 692, column: 15, scope: !3556)
!3560 = !DILocation(line: 692, column: 38, scope: !3556)
!3561 = !DILocation(line: 692, column: 4, scope: !3556)
!3562 = !DILocation(line: 694, column: 37, scope: !3547)
!3563 = !DILocation(line: 694, column: 18, scope: !3547)
!3564 = !DILocation(line: 694, column: 3, scope: !3547)
!3565 = !DILocation(line: 694, column: 9, scope: !3547)
!3566 = !DILocation(line: 694, column: 16, scope: !3547)
!3567 = !DILocation(line: 695, column: 3, scope: !3547)
!3568 = !DILocation(line: 695, column: 9, scope: !3547)
!3569 = !DILocation(line: 695, column: 15, scope: !3547)
!3570 = !DILocation(line: 696, column: 3, scope: !3547)
!3571 = !DILocation(line: 708, column: 6, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 708, column: 6)
!3573 = !DILocation(line: 708, column: 11, scope: !3572)
!3574 = !DILocation(line: 708, column: 16, scope: !3572)
!3575 = !DILocation(line: 708, column: 6, scope: !3496)
!3576 = !DILocation(line: 709, column: 3, scope: !3572)
!3577 = !DILocation(line: 710, column: 6, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 710, column: 6)
!3579 = !DILocation(line: 710, column: 15, scope: !3578)
!3580 = !DILocation(line: 710, column: 20, scope: !3578)
!3581 = !DILocation(line: 710, column: 28, scope: !3578)
!3582 = !DILocation(line: 710, column: 12, scope: !3578)
!3583 = !DILocation(line: 710, column: 6, scope: !3496)
!3584 = !DILocation(line: 711, column: 3, scope: !3578)
!3585 = !DILocation(line: 713, column: 12, scope: !3496)
!3586 = !DILocation(line: 713, column: 17, scope: !3496)
!3587 = !DILocation(line: 713, column: 25, scope: !3496)
!3588 = !DILocation(line: 713, column: 10, scope: !3496)
!3589 = !DILocation(line: 714, column: 8, scope: !3496)
!3590 = !DILocation(line: 714, column: 18, scope: !3496)
!3591 = !DILocation(line: 714, column: 23, scope: !3496)
!3592 = !DILocation(line: 714, column: 31, scope: !3496)
!3593 = !DILocation(line: 714, column: 16, scope: !3496)
!3594 = !DILocation(line: 714, column: 6, scope: !3496)
!3595 = !DILocation(line: 716, column: 2, scope: !3496)
!3596 = !DILocation(line: 716, column: 9, scope: !3496)
!3597 = !DILocation(line: 716, column: 19, scope: !3496)
!3598 = !DILocation(line: 716, column: 17, scope: !3496)
!3599 = !DILocalVariable(name: "nargs", scope: !3600, file: !3, line: 717, type: !128)
!3600 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 716, column: 24)
!3601 = !DILocation(line: 717, column: 7, scope: !3600)
!3602 = !DILocalVariable(name: "i", scope: !3600, file: !3, line: 717, type: !128)
!3603 = !DILocation(line: 717, column: 14, scope: !3600)
!3604 = !DILocation(line: 719, column: 7, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 719, column: 7)
!3606 = !DILocation(line: 719, column: 16, scope: !3605)
!3607 = !DILocation(line: 719, column: 21, scope: !3605)
!3608 = !DILocation(line: 719, column: 7, scope: !3600)
!3609 = !DILocalVariable(name: "ref_fwnode", scope: !3610, file: !3, line: 720, type: !195)
!3610 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 719, column: 51)
!3611 = !DILocation(line: 720, column: 26, scope: !3610)
!3612 = !DILocation(line: 722, column: 30, scope: !3610)
!3613 = !DILocation(line: 722, column: 39, scope: !3610)
!3614 = !DILocation(line: 722, column: 49, scope: !3610)
!3615 = !DILocation(line: 722, column: 10, scope: !3610)
!3616 = !DILocation(line: 722, column: 8, scope: !3610)
!3617 = !DILocation(line: 724, column: 8, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 724, column: 8)
!3619 = !DILocation(line: 724, column: 8, scope: !3610)
!3620 = !DILocation(line: 725, column: 5, scope: !3618)
!3621 = !DILocation(line: 727, column: 10, scope: !3610)
!3622 = !DILocation(line: 728, column: 11, scope: !3610)
!3623 = !DILocation(line: 734, column: 41, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 734, column: 4)
!3625 = !DILocation(line: 734, column: 22, scope: !3624)
!3626 = !DILocation(line: 734, column: 20, scope: !3624)
!3627 = !DILocation(line: 734, column: 9, scope: !3624)
!3628 = !DILocation(line: 735, column: 9, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 734, column: 4)
!3630 = !DILocation(line: 735, column: 19, scope: !3629)
!3631 = !DILocation(line: 735, column: 17, scope: !3629)
!3632 = !DILocation(line: 735, column: 23, scope: !3629)
!3633 = !DILocation(line: 735, column: 26, scope: !3629)
!3634 = !DILocation(line: 735, column: 35, scope: !3629)
!3635 = !DILocation(line: 735, column: 40, scope: !3629)
!3636 = !DILocation(line: 0, scope: !3629)
!3637 = !DILocation(line: 734, column: 4, scope: !3624)
!3638 = !DILocation(line: 738, column: 6, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 736, column: 20)
!3640 = !DILocation(line: 738, column: 18, scope: !3639)
!3641 = !DILocation(line: 738, column: 27, scope: !3639)
!3642 = !DILocation(line: 738, column: 34, scope: !3639)
!3643 = !DILocation(line: 737, column: 18, scope: !3639)
!3644 = !DILocation(line: 737, column: 16, scope: !3639)
!3645 = !DILocation(line: 739, column: 10, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 739, column: 9)
!3647 = !DILocation(line: 739, column: 9, scope: !3639)
!3648 = !DILocation(line: 740, column: 6, scope: !3646)
!3649 = !DILocation(line: 741, column: 4, scope: !3639)
!3650 = !DILocation(line: 736, column: 16, scope: !3629)
!3651 = !DILocation(line: 734, column: 4, scope: !3629)
!3652 = distinct !{!3652, !3637, !3653}
!3653 = !DILocation(line: 741, column: 4, scope: !3624)
!3654 = !DILocation(line: 744, column: 11, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 744, column: 4)
!3656 = !DILocation(line: 744, column: 9, scope: !3655)
!3657 = !DILocation(line: 744, column: 16, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 744, column: 4)
!3659 = !DILocation(line: 744, column: 26, scope: !3658)
!3660 = !DILocation(line: 744, column: 24, scope: !3658)
!3661 = !DILocation(line: 744, column: 30, scope: !3658)
!3662 = !DILocation(line: 744, column: 28, scope: !3658)
!3663 = !DILocation(line: 744, column: 34, scope: !3658)
!3664 = !DILocation(line: 744, column: 37, scope: !3658)
!3665 = !DILocation(line: 744, column: 41, scope: !3658)
!3666 = !DILocation(line: 744, column: 39, scope: !3658)
!3667 = !DILocation(line: 0, scope: !3658)
!3668 = !DILocation(line: 744, column: 4, scope: !3655)
!3669 = !DILocalVariable(name: "type", scope: !3670, file: !3, line: 745, type: !188)
!3670 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 744, column: 56)
!3671 = !DILocation(line: 745, column: 9, scope: !3670)
!3672 = !DILocation(line: 745, column: 16, scope: !3670)
!3673 = !DILocation(line: 745, column: 24, scope: !3670)
!3674 = !DILocation(line: 745, column: 27, scope: !3670)
!3675 = !DILocation(line: 747, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 747, column: 9)
!3677 = !DILocation(line: 747, column: 14, scope: !3676)
!3678 = !DILocation(line: 747, column: 9, scope: !3670)
!3679 = !DILocation(line: 748, column: 11, scope: !3676)
!3680 = !DILocation(line: 748, column: 6, scope: !3676)
!3681 = !DILocation(line: 749, column: 14, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 749, column: 14)
!3683 = !DILocation(line: 749, column: 19, scope: !3682)
!3684 = !DILocation(line: 749, column: 14, scope: !3676)
!3685 = !DILocation(line: 750, column: 6, scope: !3682)
!3686 = !DILocation(line: 752, column: 6, scope: !3682)
!3687 = !DILocation(line: 753, column: 4, scope: !3670)
!3688 = !DILocation(line: 744, column: 52, scope: !3658)
!3689 = !DILocation(line: 744, column: 4, scope: !3658)
!3690 = distinct !{!3690, !3668, !3691}
!3691 = !DILocation(line: 753, column: 4, scope: !3655)
!3692 = !DILocation(line: 755, column: 8, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 755, column: 8)
!3694 = !DILocation(line: 755, column: 14, scope: !3693)
!3695 = !DILocation(line: 755, column: 8, scope: !3610)
!3696 = !DILocation(line: 756, column: 5, scope: !3693)
!3697 = !DILocation(line: 758, column: 8, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 758, column: 8)
!3699 = !DILocation(line: 758, column: 15, scope: !3698)
!3700 = !DILocation(line: 758, column: 12, scope: !3698)
!3701 = !DILocation(line: 758, column: 8, scope: !3610)
!3702 = !DILocation(line: 759, column: 20, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 758, column: 22)
!3704 = !DILocation(line: 759, column: 5, scope: !3703)
!3705 = !DILocation(line: 759, column: 11, scope: !3703)
!3706 = !DILocation(line: 759, column: 18, scope: !3703)
!3707 = !DILocation(line: 760, column: 19, scope: !3703)
!3708 = !DILocation(line: 760, column: 5, scope: !3703)
!3709 = !DILocation(line: 760, column: 11, scope: !3703)
!3710 = !DILocation(line: 760, column: 17, scope: !3703)
!3711 = !DILocation(line: 761, column: 12, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 761, column: 5)
!3713 = !DILocation(line: 761, column: 10, scope: !3712)
!3714 = !DILocation(line: 761, column: 17, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 761, column: 5)
!3716 = !DILocation(line: 761, column: 21, scope: !3715)
!3717 = !DILocation(line: 761, column: 19, scope: !3715)
!3718 = !DILocation(line: 761, column: 5, scope: !3712)
!3719 = !DILocation(line: 762, column: 22, scope: !3715)
!3720 = !DILocation(line: 762, column: 30, scope: !3715)
!3721 = !DILocation(line: 762, column: 33, scope: !3715)
!3722 = !DILocation(line: 762, column: 41, scope: !3715)
!3723 = !DILocation(line: 762, column: 6, scope: !3715)
!3724 = !DILocation(line: 762, column: 12, scope: !3715)
!3725 = !DILocation(line: 762, column: 17, scope: !3715)
!3726 = !DILocation(line: 762, column: 20, scope: !3715)
!3727 = !DILocation(line: 761, column: 29, scope: !3715)
!3728 = !DILocation(line: 761, column: 5, scope: !3715)
!3729 = distinct !{!3729, !3718, !3730}
!3730 = !DILocation(line: 762, column: 41, scope: !3712)
!3731 = !DILocation(line: 764, column: 5, scope: !3703)
!3732 = !DILocation(line: 767, column: 15, scope: !3610)
!3733 = !DILocation(line: 767, column: 12, scope: !3610)
!3734 = !DILocation(line: 768, column: 3, scope: !3610)
!3735 = !DILocation(line: 768, column: 14, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 768, column: 14)
!3737 = !DILocation(line: 768, column: 23, scope: !3736)
!3738 = !DILocation(line: 768, column: 28, scope: !3736)
!3739 = !DILocation(line: 768, column: 14, scope: !3605)
!3740 = !DILocation(line: 769, column: 8, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 769, column: 8)
!3742 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 768, column: 50)
!3743 = !DILocation(line: 769, column: 15, scope: !3741)
!3744 = !DILocation(line: 769, column: 12, scope: !3741)
!3745 = !DILocation(line: 769, column: 8, scope: !3742)
!3746 = !DILocation(line: 770, column: 5, scope: !3741)
!3747 = !DILocation(line: 771, column: 11, scope: !3742)
!3748 = !DILocation(line: 772, column: 3, scope: !3742)
!3749 = !DILocation(line: 773, column: 4, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 772, column: 10)
!3751 = !DILocation(line: 776, column: 6, scope: !3600)
!3752 = distinct !{!3752, !3595, !3753}
!3753 = !DILocation(line: 777, column: 2, scope: !3496)
!3754 = !DILocation(line: 779, column: 2, scope: !3496)
!3755 = !DILocation(line: 780, column: 1, scope: !3496)
!3756 = distinct !DISubprogram(name: "acpi_fwnode_get_named_child_node", scope: !3, file: !3, line: 609, type: !2202, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3757 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3756, file: !3, line: 609, type: !215)
!3758 = !DILocation(line: 609, column: 62, scope: !3756)
!3759 = !DILocalVariable(name: "childname", arg: 2, scope: !3756, file: !3, line: 610, type: !100)
!3760 = !DILocation(line: 610, column: 18, scope: !3756)
!3761 = !DILocalVariable(name: "child", scope: !3756, file: !3, line: 612, type: !195)
!3762 = !DILocation(line: 612, column: 24, scope: !3756)
!3763 = !DILocation(line: 614, column: 2, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 614, column: 2)
!3765 = !DILocation(line: 614, column: 2, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 614, column: 2)
!3767 = !DILocation(line: 615, column: 25, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 615, column: 7)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 614, column: 44)
!3770 = !DILocation(line: 615, column: 7, scope: !3768)
!3771 = !DILocation(line: 615, column: 7, scope: !3769)
!3772 = !DILocation(line: 616, column: 29, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 616, column: 8)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 615, column: 33)
!3775 = !DILocation(line: 616, column: 36, scope: !3773)
!3776 = !DILocation(line: 616, column: 8, scope: !3773)
!3777 = !DILocation(line: 616, column: 8, scope: !3774)
!3778 = !DILocation(line: 617, column: 12, scope: !3773)
!3779 = !DILocation(line: 617, column: 5, scope: !3773)
!3780 = !DILocation(line: 618, column: 4, scope: !3774)
!3781 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3782, file: !3, line: 621, type: !195)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 621, column: 16)
!3783 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 621, column: 7)
!3784 = !DILocation(line: 621, column: 16, scope: !3782)
!3785 = !DILocalVariable(name: "__mptr", scope: !3786, file: !3, line: 621, type: !88)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 621, column: 16)
!3787 = !DILocation(line: 621, column: 16, scope: !3786)
!3788 = !DILocation(line: 621, column: 16, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 621, column: 16)
!3790 = !DILocation(line: 621, column: 16, scope: !3783)
!3791 = !DILocation(line: 622, column: 9, scope: !3783)
!3792 = !DILocation(line: 621, column: 8, scope: !3783)
!3793 = !DILocation(line: 621, column: 7, scope: !3769)
!3794 = !DILocation(line: 623, column: 11, scope: !3783)
!3795 = !DILocation(line: 623, column: 4, scope: !3783)
!3796 = !DILocation(line: 624, column: 2, scope: !3769)
!3797 = distinct !{!3797, !3763, !3798}
!3798 = !DILocation(line: 624, column: 2, scope: !3764)
!3799 = !DILocation(line: 626, column: 2, scope: !3756)
!3800 = !DILocation(line: 627, column: 1, scope: !3756)
!3801 = distinct !DISubprogram(name: "acpi_dev_prop_read_single", scope: !3, file: !3, line: 832, type: !3802, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!188, !184, !100, !69, !88}
!3804 = !DILocalVariable(name: "adev", arg: 1, scope: !3801, file: !3, line: 832, type: !184)
!3805 = !DILocation(line: 832, column: 51, scope: !3801)
!3806 = !DILocalVariable(name: "propname", arg: 2, scope: !3801, file: !3, line: 832, type: !100)
!3807 = !DILocation(line: 832, column: 69, scope: !3801)
!3808 = !DILocalVariable(name: "proptype", arg: 3, scope: !3801, file: !3, line: 833, type: !69)
!3809 = !DILocation(line: 833, column: 29, scope: !3801)
!3810 = !DILocalVariable(name: "val", arg: 4, scope: !3801, file: !3, line: 833, type: !88)
!3811 = !DILocation(line: 833, column: 45, scope: !3801)
!3812 = !DILocalVariable(name: "ret", scope: !3801, file: !3, line: 835, type: !188)
!3813 = !DILocation(line: 835, column: 6, scope: !3801)
!3814 = !DILocation(line: 837, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 837, column: 6)
!3816 = !DILocation(line: 837, column: 6, scope: !3801)
!3817 = !DILocation(line: 838, column: 3, scope: !3815)
!3818 = !DILocation(line: 840, column: 36, scope: !3801)
!3819 = !DILocation(line: 840, column: 42, scope: !3801)
!3820 = !DILocation(line: 840, column: 48, scope: !3801)
!3821 = !DILocation(line: 840, column: 58, scope: !3801)
!3822 = !DILocation(line: 840, column: 68, scope: !3801)
!3823 = !DILocation(line: 840, column: 8, scope: !3801)
!3824 = !DILocation(line: 840, column: 6, scope: !3801)
!3825 = !DILocation(line: 841, column: 6, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 841, column: 6)
!3827 = !DILocation(line: 841, column: 10, scope: !3826)
!3828 = !DILocation(line: 841, column: 14, scope: !3826)
!3829 = !DILocation(line: 841, column: 17, scope: !3826)
!3830 = !DILocation(line: 841, column: 26, scope: !3826)
!3831 = !DILocation(line: 841, column: 6, scope: !3801)
!3832 = !DILocation(line: 842, column: 10, scope: !3826)
!3833 = !DILocation(line: 842, column: 3, scope: !3826)
!3834 = !DILocation(line: 843, column: 2, scope: !3801)
!3835 = !DILocation(line: 844, column: 1, scope: !3801)
!3836 = distinct !DISubprogram(name: "acpi_data_prop_read_single", scope: !3, file: !3, line: 783, type: !3837, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!188, !3319, !100, !69, !88}
!3839 = !DILocalVariable(name: "data", arg: 1, scope: !3836, file: !3, line: 783, type: !3319)
!3840 = !DILocation(line: 783, column: 70, scope: !3836)
!3841 = !DILocalVariable(name: "propname", arg: 2, scope: !3836, file: !3, line: 784, type: !100)
!3842 = !DILocation(line: 784, column: 23, scope: !3836)
!3843 = !DILocalVariable(name: "proptype", arg: 3, scope: !3836, file: !3, line: 785, type: !69)
!3844 = !DILocation(line: 785, column: 30, scope: !3836)
!3845 = !DILocalVariable(name: "val", arg: 4, scope: !3836, file: !3, line: 785, type: !88)
!3846 = !DILocation(line: 785, column: 46, scope: !3836)
!3847 = !DILocalVariable(name: "obj", scope: !3836, file: !3, line: 787, type: !121)
!3848 = !DILocation(line: 787, column: 27, scope: !3836)
!3849 = !DILocalVariable(name: "ret", scope: !3836, file: !3, line: 788, type: !188)
!3850 = !DILocation(line: 788, column: 6, scope: !3836)
!3851 = !DILocation(line: 790, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 790, column: 6)
!3853 = !DILocation(line: 790, column: 6, scope: !3836)
!3854 = !DILocation(line: 791, column: 3, scope: !3852)
!3855 = !DILocation(line: 793, column: 6, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 793, column: 6)
!3857 = !DILocation(line: 793, column: 15, scope: !3856)
!3858 = !DILocation(line: 793, column: 30, scope: !3856)
!3859 = !DILocation(line: 793, column: 33, scope: !3856)
!3860 = !DILocation(line: 793, column: 42, scope: !3856)
!3861 = !DILocation(line: 793, column: 6, scope: !3836)
!3862 = !DILocation(line: 794, column: 32, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 793, column: 59)
!3864 = !DILocation(line: 794, column: 38, scope: !3863)
!3865 = !DILocation(line: 794, column: 9, scope: !3863)
!3866 = !DILocation(line: 794, column: 7, scope: !3863)
!3867 = !DILocation(line: 795, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 795, column: 7)
!3869 = !DILocation(line: 795, column: 7, scope: !3863)
!3870 = !DILocation(line: 796, column: 11, scope: !3868)
!3871 = !DILocation(line: 796, column: 4, scope: !3868)
!3872 = !DILocation(line: 798, column: 11, scope: !3863)
!3873 = !DILocation(line: 798, column: 3, scope: !3863)
!3874 = !DILocation(line: 800, column: 8, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 800, column: 8)
!3876 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 798, column: 21)
!3877 = !DILocation(line: 800, column: 13, scope: !3875)
!3878 = !DILocation(line: 800, column: 21, scope: !3875)
!3879 = !DILocation(line: 800, column: 27, scope: !3875)
!3880 = !DILocation(line: 800, column: 8, scope: !3876)
!3881 = !DILocation(line: 801, column: 5, scope: !3875)
!3882 = !DILocation(line: 802, column: 17, scope: !3876)
!3883 = !DILocation(line: 802, column: 22, scope: !3876)
!3884 = !DILocation(line: 802, column: 30, scope: !3876)
!3885 = !DILocation(line: 802, column: 11, scope: !3876)
!3886 = !DILocation(line: 802, column: 15, scope: !3876)
!3887 = !DILocation(line: 803, column: 4, scope: !3876)
!3888 = !DILocation(line: 805, column: 8, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 805, column: 8)
!3890 = !DILocation(line: 805, column: 13, scope: !3889)
!3891 = !DILocation(line: 805, column: 21, scope: !3889)
!3892 = !DILocation(line: 805, column: 27, scope: !3889)
!3893 = !DILocation(line: 805, column: 8, scope: !3876)
!3894 = !DILocation(line: 806, column: 5, scope: !3889)
!3895 = !DILocation(line: 807, column: 18, scope: !3876)
!3896 = !DILocation(line: 807, column: 23, scope: !3876)
!3897 = !DILocation(line: 807, column: 31, scope: !3876)
!3898 = !DILocation(line: 807, column: 12, scope: !3876)
!3899 = !DILocation(line: 807, column: 5, scope: !3876)
!3900 = !DILocation(line: 807, column: 16, scope: !3876)
!3901 = !DILocation(line: 808, column: 4, scope: !3876)
!3902 = !DILocation(line: 810, column: 8, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 810, column: 8)
!3904 = !DILocation(line: 810, column: 13, scope: !3903)
!3905 = !DILocation(line: 810, column: 21, scope: !3903)
!3906 = !DILocation(line: 810, column: 27, scope: !3903)
!3907 = !DILocation(line: 810, column: 8, scope: !3876)
!3908 = !DILocation(line: 811, column: 5, scope: !3903)
!3909 = !DILocation(line: 812, column: 18, scope: !3876)
!3910 = !DILocation(line: 812, column: 23, scope: !3876)
!3911 = !DILocation(line: 812, column: 31, scope: !3876)
!3912 = !DILocation(line: 812, column: 12, scope: !3876)
!3913 = !DILocation(line: 812, column: 5, scope: !3876)
!3914 = !DILocation(line: 812, column: 16, scope: !3876)
!3915 = !DILocation(line: 813, column: 4, scope: !3876)
!3916 = !DILocation(line: 815, column: 18, scope: !3876)
!3917 = !DILocation(line: 815, column: 23, scope: !3876)
!3918 = !DILocation(line: 815, column: 31, scope: !3876)
!3919 = !DILocation(line: 815, column: 12, scope: !3876)
!3920 = !DILocation(line: 815, column: 5, scope: !3876)
!3921 = !DILocation(line: 815, column: 16, scope: !3876)
!3922 = !DILocation(line: 816, column: 4, scope: !3876)
!3923 = !DILocation(line: 818, column: 2, scope: !3863)
!3924 = !DILocation(line: 818, column: 13, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 818, column: 13)
!3926 = !DILocation(line: 818, column: 22, scope: !3925)
!3927 = !DILocation(line: 818, column: 13, scope: !3856)
!3928 = !DILocation(line: 819, column: 32, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 818, column: 42)
!3930 = !DILocation(line: 819, column: 38, scope: !3929)
!3931 = !DILocation(line: 819, column: 9, scope: !3929)
!3932 = !DILocation(line: 819, column: 7, scope: !3929)
!3933 = !DILocation(line: 820, column: 7, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 820, column: 7)
!3935 = !DILocation(line: 820, column: 7, scope: !3929)
!3936 = !DILocation(line: 821, column: 11, scope: !3934)
!3937 = !DILocation(line: 821, column: 4, scope: !3934)
!3938 = !DILocation(line: 823, column: 19, scope: !3929)
!3939 = !DILocation(line: 823, column: 24, scope: !3929)
!3940 = !DILocation(line: 823, column: 31, scope: !3929)
!3941 = !DILocation(line: 823, column: 13, scope: !3929)
!3942 = !DILocation(line: 823, column: 4, scope: !3929)
!3943 = !DILocation(line: 823, column: 17, scope: !3929)
!3944 = !DILocation(line: 825, column: 3, scope: !3929)
!3945 = !DILocation(line: 827, column: 7, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 826, column: 9)
!3947 = !DILocation(line: 829, column: 9, scope: !3836)
!3948 = !DILocation(line: 829, column: 2, scope: !3836)
!3949 = !DILocation(line: 830, column: 1, scope: !3836)
!3950 = distinct !DISubprogram(name: "acpi_dev_prop_read", scope: !3, file: !3, line: 976, type: !3951, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!188, !3298, !100, !69, !88, !328}
!3953 = !DILocalVariable(name: "adev", arg: 1, scope: !3950, file: !3, line: 976, type: !3298)
!3954 = !DILocation(line: 976, column: 50, scope: !3950)
!3955 = !DILocalVariable(name: "propname", arg: 2, scope: !3950, file: !3, line: 976, type: !100)
!3956 = !DILocation(line: 976, column: 68, scope: !3950)
!3957 = !DILocalVariable(name: "proptype", arg: 3, scope: !3950, file: !3, line: 977, type: !69)
!3958 = !DILocation(line: 977, column: 29, scope: !3950)
!3959 = !DILocalVariable(name: "val", arg: 4, scope: !3950, file: !3, line: 977, type: !88)
!3960 = !DILocation(line: 977, column: 45, scope: !3950)
!3961 = !DILocalVariable(name: "nval", arg: 5, scope: !3950, file: !3, line: 977, type: !328)
!3962 = !DILocation(line: 977, column: 57, scope: !3950)
!3963 = !DILocation(line: 979, column: 9, scope: !3950)
!3964 = !DILocation(line: 979, column: 37, scope: !3950)
!3965 = !DILocation(line: 979, column: 43, scope: !3950)
!3966 = !DILocation(line: 979, column: 49, scope: !3950)
!3967 = !DILocation(line: 979, column: 59, scope: !3950)
!3968 = !DILocation(line: 979, column: 69, scope: !3950)
!3969 = !DILocation(line: 979, column: 74, scope: !3950)
!3970 = !DILocation(line: 979, column: 16, scope: !3950)
!3971 = !DILocation(line: 979, column: 2, scope: !3950)
!3972 = distinct !DISubprogram(name: "acpi_data_prop_read", scope: !3, file: !3, line: 922, type: !3973, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!188, !3319, !100, !69, !88, !328}
!3975 = !DILocalVariable(name: "data", arg: 1, scope: !3972, file: !3, line: 922, type: !3319)
!3976 = !DILocation(line: 922, column: 63, scope: !3972)
!3977 = !DILocalVariable(name: "propname", arg: 2, scope: !3972, file: !3, line: 923, type: !100)
!3978 = !DILocation(line: 923, column: 23, scope: !3972)
!3979 = !DILocalVariable(name: "proptype", arg: 3, scope: !3972, file: !3, line: 924, type: !69)
!3980 = !DILocation(line: 924, column: 30, scope: !3972)
!3981 = !DILocalVariable(name: "val", arg: 4, scope: !3972, file: !3, line: 925, type: !88)
!3982 = !DILocation(line: 925, column: 17, scope: !3972)
!3983 = !DILocalVariable(name: "nval", arg: 5, scope: !3972, file: !3, line: 925, type: !328)
!3984 = !DILocation(line: 925, column: 29, scope: !3972)
!3985 = !DILocalVariable(name: "obj", scope: !3972, file: !3, line: 927, type: !121)
!3986 = !DILocation(line: 927, column: 27, scope: !3972)
!3987 = !DILocalVariable(name: "items", scope: !3972, file: !3, line: 928, type: !121)
!3988 = !DILocation(line: 928, column: 27, scope: !3972)
!3989 = !DILocalVariable(name: "ret", scope: !3972, file: !3, line: 929, type: !188)
!3990 = !DILocation(line: 929, column: 6, scope: !3972)
!3991 = !DILocation(line: 931, column: 6, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 931, column: 6)
!3993 = !DILocation(line: 931, column: 10, scope: !3992)
!3994 = !DILocation(line: 931, column: 13, scope: !3992)
!3995 = !DILocation(line: 931, column: 18, scope: !3992)
!3996 = !DILocation(line: 931, column: 6, scope: !3972)
!3997 = !DILocation(line: 932, column: 36, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 931, column: 24)
!3999 = !DILocation(line: 932, column: 42, scope: !3998)
!4000 = !DILocation(line: 932, column: 52, scope: !3998)
!4001 = !DILocation(line: 932, column: 62, scope: !3998)
!4002 = !DILocation(line: 932, column: 9, scope: !3998)
!4003 = !DILocation(line: 932, column: 7, scope: !3998)
!4004 = !DILocation(line: 933, column: 7, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 933, column: 7)
!4006 = !DILocation(line: 933, column: 11, scope: !4005)
!4007 = !DILocation(line: 933, column: 7, scope: !3998)
!4008 = !DILocation(line: 934, column: 11, scope: !4005)
!4009 = !DILocation(line: 934, column: 4, scope: !4005)
!4010 = !DILocation(line: 935, column: 2, scope: !3998)
!4011 = !DILocation(line: 937, column: 37, scope: !3972)
!4012 = !DILocation(line: 937, column: 43, scope: !3972)
!4013 = !DILocation(line: 937, column: 8, scope: !3972)
!4014 = !DILocation(line: 937, column: 6, scope: !3972)
!4015 = !DILocation(line: 938, column: 6, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 938, column: 6)
!4017 = !DILocation(line: 938, column: 6, scope: !3972)
!4018 = !DILocation(line: 939, column: 10, scope: !4016)
!4019 = !DILocation(line: 939, column: 3, scope: !4016)
!4020 = !DILocation(line: 941, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 941, column: 6)
!4022 = !DILocation(line: 941, column: 6, scope: !3972)
!4023 = !DILocation(line: 942, column: 10, scope: !4021)
!4024 = !DILocation(line: 942, column: 15, scope: !4021)
!4025 = !DILocation(line: 942, column: 23, scope: !4021)
!4026 = !DILocation(line: 942, column: 3, scope: !4021)
!4027 = !DILocation(line: 944, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 944, column: 6)
!4029 = !DILocation(line: 944, column: 15, scope: !4028)
!4030 = !DILocation(line: 944, column: 34, scope: !4028)
!4031 = !DILocation(line: 944, column: 37, scope: !4028)
!4032 = !DILocation(line: 944, column: 44, scope: !4028)
!4033 = !DILocation(line: 944, column: 49, scope: !4028)
!4034 = !DILocation(line: 944, column: 57, scope: !4028)
!4035 = !DILocation(line: 944, column: 42, scope: !4028)
!4036 = !DILocation(line: 944, column: 6, scope: !3972)
!4037 = !DILocation(line: 945, column: 3, scope: !4028)
!4038 = !DILocation(line: 946, column: 11, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 946, column: 11)
!4040 = !DILocation(line: 946, column: 16, scope: !4039)
!4041 = !DILocation(line: 946, column: 11, scope: !4028)
!4042 = !DILocation(line: 947, column: 3, scope: !4039)
!4043 = !DILocation(line: 949, column: 10, scope: !3972)
!4044 = !DILocation(line: 949, column: 15, scope: !3972)
!4045 = !DILocation(line: 949, column: 23, scope: !3972)
!4046 = !DILocation(line: 949, column: 8, scope: !3972)
!4047 = !DILocation(line: 951, column: 10, scope: !3972)
!4048 = !DILocation(line: 951, column: 2, scope: !3972)
!4049 = !DILocation(line: 953, column: 37, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 951, column: 20)
!4051 = !DILocation(line: 953, column: 50, scope: !4050)
!4052 = !DILocation(line: 953, column: 55, scope: !4050)
!4053 = !DILocation(line: 953, column: 9, scope: !4050)
!4054 = !DILocation(line: 953, column: 7, scope: !4050)
!4055 = !DILocation(line: 954, column: 3, scope: !4050)
!4056 = !DILocation(line: 956, column: 38, scope: !4050)
!4057 = !DILocation(line: 956, column: 52, scope: !4050)
!4058 = !DILocation(line: 956, column: 45, scope: !4050)
!4059 = !DILocation(line: 956, column: 57, scope: !4050)
!4060 = !DILocation(line: 956, column: 9, scope: !4050)
!4061 = !DILocation(line: 956, column: 7, scope: !4050)
!4062 = !DILocation(line: 957, column: 3, scope: !4050)
!4063 = !DILocation(line: 959, column: 38, scope: !4050)
!4064 = !DILocation(line: 959, column: 52, scope: !4050)
!4065 = !DILocation(line: 959, column: 45, scope: !4050)
!4066 = !DILocation(line: 959, column: 57, scope: !4050)
!4067 = !DILocation(line: 959, column: 9, scope: !4050)
!4068 = !DILocation(line: 959, column: 7, scope: !4050)
!4069 = !DILocation(line: 960, column: 3, scope: !4050)
!4070 = !DILocation(line: 962, column: 38, scope: !4050)
!4071 = !DILocation(line: 962, column: 52, scope: !4050)
!4072 = !DILocation(line: 962, column: 45, scope: !4050)
!4073 = !DILocation(line: 962, column: 57, scope: !4050)
!4074 = !DILocation(line: 962, column: 9, scope: !4050)
!4075 = !DILocation(line: 962, column: 7, scope: !4050)
!4076 = !DILocation(line: 963, column: 3, scope: !4050)
!4077 = !DILocation(line: 966, column: 4, scope: !4050)
!4078 = !DILocation(line: 966, column: 20, scope: !4050)
!4079 = !DILocation(line: 966, column: 11, scope: !4050)
!4080 = !DILocalVariable(name: "__UNIQUE_ID___x182", scope: !4081, file: !3, line: 967, type: !128)
!4081 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 967, column: 4)
!4082 = !DILocation(line: 967, column: 4, scope: !4081)
!4083 = !DILocalVariable(name: "__UNIQUE_ID___y183", scope: !4081, file: !3, line: 967, type: !128)
!4084 = !DILocation(line: 967, column: 4, scope: !4050)
!4085 = !DILocation(line: 965, column: 9, scope: !4050)
!4086 = !DILocation(line: 965, column: 7, scope: !4050)
!4087 = !DILocation(line: 968, column: 3, scope: !4050)
!4088 = !DILocation(line: 970, column: 7, scope: !4050)
!4089 = !DILocation(line: 971, column: 3, scope: !4050)
!4090 = !DILocation(line: 973, column: 9, scope: !3972)
!4091 = !DILocation(line: 973, column: 2, scope: !3972)
!4092 = !DILocation(line: 974, column: 1, scope: !3972)
!4093 = distinct !DISubprogram(name: "acpi_node_prop_read", scope: !3, file: !3, line: 994, type: !4094, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!188, !215, !100, !69, !88, !328}
!4096 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4093, file: !3, line: 994, type: !215)
!4097 = !DILocation(line: 994, column: 53, scope: !4093)
!4098 = !DILocalVariable(name: "propname", arg: 2, scope: !4093, file: !3, line: 995, type: !100)
!4099 = !DILocation(line: 995, column: 16, scope: !4093)
!4100 = !DILocalVariable(name: "proptype", arg: 3, scope: !4093, file: !3, line: 995, type: !69)
!4101 = !DILocation(line: 995, column: 45, scope: !4093)
!4102 = !DILocalVariable(name: "val", arg: 4, scope: !4093, file: !3, line: 996, type: !88)
!4103 = !DILocation(line: 996, column: 10, scope: !4093)
!4104 = !DILocalVariable(name: "nval", arg: 5, scope: !4093, file: !3, line: 996, type: !328)
!4105 = !DILocation(line: 996, column: 22, scope: !4093)
!4106 = !DILocation(line: 998, column: 54, scope: !4093)
!4107 = !DILocation(line: 998, column: 29, scope: !4093)
!4108 = !DILocation(line: 999, column: 8, scope: !4093)
!4109 = !DILocation(line: 999, column: 18, scope: !4093)
!4110 = !DILocation(line: 999, column: 28, scope: !4093)
!4111 = !DILocation(line: 999, column: 33, scope: !4093)
!4112 = !DILocation(line: 998, column: 9, scope: !4093)
!4113 = !DILocation(line: 998, column: 2, scope: !4093)
!4114 = distinct !DISubprogram(name: "acpi_get_next_subnode", scope: !3, file: !3, line: 1007, type: !2198, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4115 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4114, file: !3, line: 1007, type: !215)
!4116 = !DILocation(line: 1007, column: 73, scope: !4114)
!4117 = !DILocalVariable(name: "child", arg: 2, scope: !4114, file: !3, line: 1008, type: !195)
!4118 = !DILocation(line: 1008, column: 32, scope: !4114)
!4119 = !DILocalVariable(name: "adev", scope: !4114, file: !3, line: 1010, type: !3298)
!4120 = !DILocation(line: 1010, column: 28, scope: !4114)
!4121 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4122, file: !3, line: 1010, type: !215)
!4122 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1010, column: 35)
!4123 = !DILocation(line: 1010, column: 35, scope: !4122)
!4124 = !DILocalVariable(name: "__mptr", scope: !4125, file: !3, line: 1010, type: !88)
!4125 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 1010, column: 35)
!4126 = !DILocation(line: 1010, column: 35, scope: !4125)
!4127 = !DILocation(line: 1010, column: 35, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1010, column: 35)
!4129 = !DILocalVariable(name: "head", scope: !4114, file: !3, line: 1011, type: !4130)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!4132 = !DILocation(line: 1011, column: 26, scope: !4114)
!4133 = !DILocalVariable(name: "next", scope: !4114, file: !3, line: 1012, type: !97)
!4134 = !DILocation(line: 1012, column: 20, scope: !4114)
!4135 = !DILocation(line: 1014, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1014, column: 6)
!4137 = !DILocation(line: 1014, column: 13, scope: !4136)
!4138 = !DILocation(line: 1014, column: 36, scope: !4136)
!4139 = !DILocation(line: 1014, column: 16, scope: !4136)
!4140 = !DILocation(line: 1014, column: 6, scope: !4114)
!4141 = !DILocalVariable(name: "child_adev", scope: !4142, file: !3, line: 1015, type: !184)
!4142 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1014, column: 44)
!4143 = !DILocation(line: 1015, column: 23, scope: !4142)
!4144 = !DILocation(line: 1017, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1017, column: 7)
!4146 = !DILocation(line: 1017, column: 7, scope: !4142)
!4147 = !DILocation(line: 1018, column: 12, scope: !4145)
!4148 = !DILocation(line: 1018, column: 18, scope: !4145)
!4149 = !DILocation(line: 1018, column: 9, scope: !4145)
!4150 = !DILocation(line: 1018, column: 4, scope: !4145)
!4151 = !DILocation(line: 1020, column: 4, scope: !4145)
!4152 = !DILocation(line: 1022, column: 18, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1022, column: 7)
!4154 = !DILocation(line: 1022, column: 7, scope: !4153)
!4155 = !DILocation(line: 1022, column: 7, scope: !4142)
!4156 = !DILocation(line: 1023, column: 4, scope: !4153)
!4157 = !DILocation(line: 1025, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1025, column: 7)
!4159 = !DILocation(line: 1025, column: 7, scope: !4142)
!4160 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4161, file: !3, line: 1026, type: !195)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1026, column: 11)
!4162 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1025, column: 14)
!4163 = !DILocation(line: 1026, column: 11, scope: !4161)
!4164 = !DILocalVariable(name: "__mptr", scope: !4165, file: !3, line: 1026, type: !88)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 1026, column: 11)
!4166 = !DILocation(line: 1026, column: 11, scope: !4165)
!4167 = !DILocation(line: 1026, column: 11, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1026, column: 11)
!4169 = !DILocation(line: 1026, column: 9, scope: !4162)
!4170 = !DILocation(line: 1027, column: 11, scope: !4162)
!4171 = !DILocation(line: 1027, column: 17, scope: !4162)
!4172 = !DILocation(line: 1027, column: 22, scope: !4162)
!4173 = !DILocation(line: 1027, column: 9, scope: !4162)
!4174 = !DILocation(line: 1028, column: 8, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1028, column: 8)
!4176 = !DILocation(line: 1028, column: 16, scope: !4175)
!4177 = !DILocation(line: 1028, column: 13, scope: !4175)
!4178 = !DILocation(line: 1028, column: 8, scope: !4162)
!4179 = !DILocation(line: 1029, column: 11, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 1028, column: 22)
!4181 = !DILocation(line: 1030, column: 5, scope: !4180)
!4182 = !DILocalVariable(name: "__mptr", scope: !4183, file: !3, line: 1032, type: !88)
!4183 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1032, column: 17)
!4184 = !DILocation(line: 1032, column: 17, scope: !4183)
!4185 = !DILocation(line: 1032, column: 17, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 1032, column: 17)
!4187 = !DILocation(line: 1032, column: 15, scope: !4162)
!4188 = !DILocation(line: 1033, column: 3, scope: !4162)
!4189 = !DILocalVariable(name: "__mptr", scope: !4190, file: !3, line: 1034, type: !88)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 1034, column: 17)
!4191 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1033, column: 10)
!4192 = !DILocation(line: 1034, column: 17, scope: !4190)
!4193 = !DILocation(line: 1034, column: 17, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 1034, column: 17)
!4195 = !DILocation(line: 1034, column: 15, scope: !4191)
!4196 = !DILocation(line: 1037, column: 29, scope: !4142)
!4197 = !DILocation(line: 1037, column: 10, scope: !4142)
!4198 = !DILocation(line: 1037, column: 3, scope: !4142)
!4199 = !DILocation(line: 1014, column: 41, scope: !4136)
!4200 = !DILabel(scope: !4114, name: "nondev", file: !3, line: 1040)
!4201 = !DILocation(line: 1040, column: 2, scope: !4114)
!4202 = !DILocation(line: 1041, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1041, column: 6)
!4204 = !DILocation(line: 1041, column: 13, scope: !4203)
!4205 = !DILocation(line: 1041, column: 34, scope: !4203)
!4206 = !DILocation(line: 1041, column: 16, scope: !4203)
!4207 = !DILocation(line: 1041, column: 6, scope: !4114)
!4208 = !DILocalVariable(name: "data", scope: !4209, file: !3, line: 1042, type: !3480)
!4209 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1041, column: 42)
!4210 = !DILocation(line: 1042, column: 32, scope: !4209)
!4211 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !4212, file: !3, line: 1042, type: !215)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1042, column: 39)
!4213 = !DILocation(line: 1042, column: 39, scope: !4212)
!4214 = !DILocalVariable(name: "__mptr", scope: !4215, file: !3, line: 1042, type: !88)
!4215 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 1042, column: 39)
!4216 = !DILocation(line: 1042, column: 39, scope: !4215)
!4217 = !DILocation(line: 1042, column: 39, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 1042, column: 39)
!4219 = !DILocalVariable(name: "dn", scope: !4209, file: !3, line: 1043, type: !2455)
!4220 = !DILocation(line: 1043, column: 26, scope: !4209)
!4221 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4222, file: !3, line: 1052, type: !215)
!4222 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1052, column: 10)
!4223 = !DILocation(line: 1052, column: 10, scope: !4222)
!4224 = !DILocalVariable(name: "__mptr", scope: !4225, file: !3, line: 1052, type: !88)
!4225 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 1052, column: 10)
!4226 = !DILocation(line: 1052, column: 10, scope: !4225)
!4227 = !DILocation(line: 1052, column: 10, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 1052, column: 10)
!4229 = !DILocation(line: 1052, column: 8, scope: !4209)
!4230 = !DILocation(line: 1053, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1053, column: 7)
!4232 = !DILocation(line: 1053, column: 7, scope: !4209)
!4233 = !DILocation(line: 1054, column: 12, scope: !4231)
!4234 = !DILocation(line: 1054, column: 18, scope: !4231)
!4235 = !DILocation(line: 1054, column: 23, scope: !4231)
!4236 = !DILocation(line: 1054, column: 9, scope: !4231)
!4237 = !DILocation(line: 1054, column: 4, scope: !4231)
!4238 = !DILocation(line: 1055, column: 12, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 1055, column: 12)
!4240 = !DILocation(line: 1055, column: 12, scope: !4231)
!4241 = !DILocation(line: 1056, column: 12, scope: !4239)
!4242 = !DILocation(line: 1056, column: 18, scope: !4239)
!4243 = !DILocation(line: 1056, column: 23, scope: !4239)
!4244 = !DILocation(line: 1056, column: 9, scope: !4239)
!4245 = !DILocation(line: 1056, column: 4, scope: !4239)
!4246 = !DILocation(line: 1058, column: 4, scope: !4239)
!4247 = !DILocation(line: 1060, column: 18, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1060, column: 7)
!4249 = !DILocation(line: 1060, column: 7, scope: !4248)
!4250 = !DILocation(line: 1060, column: 7, scope: !4209)
!4251 = !DILocation(line: 1061, column: 4, scope: !4248)
!4252 = !DILocation(line: 1063, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1063, column: 7)
!4254 = !DILocation(line: 1063, column: 7, scope: !4209)
!4255 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !4256, file: !3, line: 1064, type: !195)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1064, column: 9)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 1063, column: 14)
!4258 = !DILocation(line: 1064, column: 9, scope: !4256)
!4259 = !DILocalVariable(name: "__mptr", scope: !4260, file: !3, line: 1064, type: !88)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 1064, column: 9)
!4261 = !DILocation(line: 1064, column: 9, scope: !4260)
!4262 = !DILocation(line: 1064, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1064, column: 9)
!4264 = !DILocation(line: 1064, column: 7, scope: !4257)
!4265 = !DILocation(line: 1065, column: 11, scope: !4257)
!4266 = !DILocation(line: 1065, column: 15, scope: !4257)
!4267 = !DILocation(line: 1065, column: 23, scope: !4257)
!4268 = !DILocation(line: 1065, column: 9, scope: !4257)
!4269 = !DILocation(line: 1066, column: 8, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1066, column: 8)
!4271 = !DILocation(line: 1066, column: 16, scope: !4270)
!4272 = !DILocation(line: 1066, column: 13, scope: !4270)
!4273 = !DILocation(line: 1066, column: 8, scope: !4257)
!4274 = !DILocation(line: 1067, column: 5, scope: !4270)
!4275 = !DILocalVariable(name: "__mptr", scope: !4276, file: !3, line: 1069, type: !88)
!4276 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1069, column: 9)
!4277 = !DILocation(line: 1069, column: 9, scope: !4276)
!4278 = !DILocation(line: 1069, column: 9, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1069, column: 9)
!4280 = !DILocation(line: 1069, column: 7, scope: !4257)
!4281 = !DILocation(line: 1070, column: 3, scope: !4257)
!4282 = !DILocalVariable(name: "__mptr", scope: !4283, file: !3, line: 1071, type: !88)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 1071, column: 9)
!4284 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 1070, column: 10)
!4285 = !DILocation(line: 1071, column: 9, scope: !4283)
!4286 = !DILocation(line: 1071, column: 9, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 1071, column: 9)
!4288 = !DILocation(line: 1071, column: 7, scope: !4284)
!4289 = !DILocation(line: 1073, column: 11, scope: !4209)
!4290 = !DILocation(line: 1073, column: 15, scope: !4209)
!4291 = !DILocation(line: 1073, column: 3, scope: !4209)
!4292 = !DILocation(line: 1075, column: 2, scope: !4114)
!4293 = !DILocation(line: 1076, column: 1, scope: !4114)
!4294 = distinct !DISubprogram(name: "is_acpi_device_node", scope: !3, file: !3, line: 1415, type: !211, scopeLine: 1416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4295 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4294, file: !3, line: 1415, type: !215)
!4296 = !DILocation(line: 1415, column: 54, scope: !4294)
!4297 = !DILocation(line: 1417, column: 25, scope: !4294)
!4298 = !DILocation(line: 1417, column: 10, scope: !4294)
!4299 = !DILocation(line: 1417, column: 33, scope: !4294)
!4300 = !DILocation(line: 1418, column: 3, scope: !4294)
!4301 = !DILocation(line: 1418, column: 11, scope: !4294)
!4302 = !DILocation(line: 1418, column: 15, scope: !4294)
!4303 = !DILocation(line: 0, scope: !4294)
!4304 = !DILocation(line: 1417, column: 2, scope: !4294)
!4305 = distinct !DISubprogram(name: "list_empty", scope: !2800, file: !2800, line: 280, type: !4306, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!188, !4130}
!4308 = !DILocalVariable(name: "head", arg: 1, scope: !4305, file: !2800, line: 280, type: !4130)
!4309 = !DILocation(line: 280, column: 54, scope: !4305)
!4310 = !DILocation(line: 282, column: 9, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4305, file: !2800, line: 282, column: 9)
!4312 = !DILocation(line: 282, column: 9, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4311, file: !2800, line: 282, column: 9)
!4314 = !DILocation(line: 282, column: 34, scope: !4305)
!4315 = !DILocation(line: 282, column: 31, scope: !4305)
!4316 = !DILocation(line: 282, column: 2, scope: !4305)
!4317 = distinct !DISubprogram(name: "is_acpi_data_node", scope: !3, file: !3, line: 1422, type: !211, scopeLine: 1423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4318 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4317, file: !3, line: 1422, type: !215)
!4319 = !DILocation(line: 1422, column: 52, scope: !4317)
!4320 = !DILocation(line: 1424, column: 25, scope: !4317)
!4321 = !DILocation(line: 1424, column: 10, scope: !4317)
!4322 = !DILocation(line: 1424, column: 33, scope: !4317)
!4323 = !DILocation(line: 1424, column: 36, scope: !4317)
!4324 = !DILocation(line: 1424, column: 44, scope: !4317)
!4325 = !DILocation(line: 1424, column: 48, scope: !4317)
!4326 = !DILocation(line: 0, scope: !4317)
!4327 = !DILocation(line: 1424, column: 2, scope: !4317)
!4328 = distinct !DISubprogram(name: "acpi_node_get_parent", scope: !3, file: !3, line: 1085, type: !2194, scopeLine: 1086, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4329 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4328, file: !3, line: 1085, type: !215)
!4330 = !DILocation(line: 1085, column: 72, scope: !4328)
!4331 = !DILocation(line: 1087, column: 24, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 1087, column: 6)
!4333 = !DILocation(line: 1087, column: 6, scope: !4332)
!4334 = !DILocation(line: 1087, column: 6, scope: !4328)
!4335 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !4336, file: !3, line: 1089, type: !215)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 1089, column: 10)
!4337 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1087, column: 33)
!4338 = !DILocation(line: 1089, column: 10, scope: !4336)
!4339 = !DILocalVariable(name: "__mptr", scope: !4340, file: !3, line: 1089, type: !88)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 1089, column: 10)
!4341 = !DILocation(line: 1089, column: 10, scope: !4340)
!4342 = !DILocation(line: 1089, column: 10, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 1089, column: 10)
!4344 = !DILocation(line: 1089, column: 37, scope: !4337)
!4345 = !DILocation(line: 1089, column: 3, scope: !4337)
!4346 = !DILocation(line: 1090, column: 33, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1090, column: 13)
!4348 = !DILocation(line: 1090, column: 13, scope: !4347)
!4349 = !DILocation(line: 1090, column: 13, scope: !4332)
!4350 = !DILocalVariable(name: "handle", scope: !4351, file: !3, line: 1091, type: !167)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1090, column: 42)
!4352 = !DILocation(line: 1091, column: 15, scope: !4351)
!4353 = !DILocalVariable(name: "parent_handle", scope: !4351, file: !3, line: 1091, type: !167)
!4354 = !DILocation(line: 1091, column: 23, scope: !4351)
!4355 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4356, file: !3, line: 1093, type: !215)
!4356 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1093, column: 12)
!4357 = !DILocation(line: 1093, column: 12, scope: !4356)
!4358 = !DILocalVariable(name: "__mptr", scope: !4359, file: !3, line: 1093, type: !88)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1093, column: 12)
!4360 = !DILocation(line: 1093, column: 12, scope: !4359)
!4361 = !DILocation(line: 1093, column: 12, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 1093, column: 12)
!4363 = !DILocation(line: 1093, column: 41, scope: !4351)
!4364 = !DILocation(line: 1093, column: 10, scope: !4351)
!4365 = !DILocation(line: 1094, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1094, column: 7)
!4367 = !DILocation(line: 1094, column: 7, scope: !4351)
!4368 = !DILocalVariable(name: "adev", scope: !4369, file: !3, line: 1095, type: !184)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1094, column: 62)
!4370 = !DILocation(line: 1095, column: 24, scope: !4369)
!4371 = !DILocation(line: 1097, column: 29, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 1097, column: 8)
!4373 = !DILocation(line: 1097, column: 9, scope: !4372)
!4374 = !DILocation(line: 1097, column: 8, scope: !4369)
!4375 = !DILocation(line: 1098, column: 31, scope: !4372)
!4376 = !DILocation(line: 1098, column: 12, scope: !4372)
!4377 = !DILocation(line: 1098, column: 5, scope: !4372)
!4378 = !DILocation(line: 1099, column: 3, scope: !4369)
!4379 = !DILocation(line: 1100, column: 2, scope: !4351)
!4380 = !DILocation(line: 1102, column: 2, scope: !4328)
!4381 = !DILocation(line: 1103, column: 1, scope: !4328)
!4382 = distinct !DISubprogram(name: "acpi_fwnode_device_is_available", scope: !3, file: !3, line: 1252, type: !211, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4383 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4382, file: !3, line: 1252, type: !215)
!4384 = !DILocation(line: 1252, column: 73, scope: !4382)
!4385 = !DILocation(line: 1254, column: 27, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 1254, column: 6)
!4387 = !DILocation(line: 1254, column: 7, scope: !4386)
!4388 = !DILocation(line: 1254, column: 6, scope: !4382)
!4389 = !DILocation(line: 1255, column: 3, scope: !4386)
!4390 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4391, file: !3, line: 1257, type: !215)
!4391 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 1257, column: 32)
!4392 = !DILocation(line: 1257, column: 32, scope: !4391)
!4393 = !DILocalVariable(name: "__mptr", scope: !4394, file: !3, line: 1257, type: !88)
!4394 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 1257, column: 32)
!4395 = !DILocation(line: 1257, column: 32, scope: !4394)
!4396 = !DILocation(line: 1257, column: 32, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 1257, column: 32)
!4398 = !DILocation(line: 1257, column: 9, scope: !4382)
!4399 = !DILocation(line: 1257, column: 2, scope: !4382)
!4400 = !DILocation(line: 1258, column: 1, scope: !4382)
!4401 = distinct !DISubprogram(name: "acpi_fwnode_device_get_match_data", scope: !3, file: !3, line: 1381, type: !219, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4402 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4401, file: !3, line: 1381, type: !215)
!4403 = !DILocation(line: 1381, column: 63, scope: !4401)
!4404 = !DILocalVariable(name: "dev", arg: 2, scope: !4401, file: !3, line: 1382, type: !223)
!4405 = !DILocation(line: 1382, column: 28, scope: !4401)
!4406 = !DILocation(line: 1384, column: 36, scope: !4401)
!4407 = !DILocation(line: 1384, column: 9, scope: !4401)
!4408 = !DILocation(line: 1384, column: 2, scope: !4401)
!4409 = distinct !DISubprogram(name: "acpi_fwnode_property_present", scope: !3, file: !3, line: 1260, type: !2176, scopeLine: 1262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4410 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4409, file: !3, line: 1260, type: !215)
!4411 = !DILocation(line: 1260, column: 70, scope: !4409)
!4412 = !DILocalVariable(name: "propname", arg: 2, scope: !4409, file: !3, line: 1261, type: !100)
!4413 = !DILocation(line: 1261, column: 19, scope: !4409)
!4414 = !DILocation(line: 1263, column: 29, scope: !4409)
!4415 = !DILocation(line: 1263, column: 37, scope: !4409)
!4416 = !DILocation(line: 1263, column: 10, scope: !4409)
!4417 = !DILocation(line: 1263, column: 9, scope: !4409)
!4418 = !DILocation(line: 1263, column: 2, scope: !4409)
!4419 = distinct !DISubprogram(name: "acpi_fwnode_property_read_int_array", scope: !3, file: !3, line: 1267, type: !2180, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4420 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4419, file: !3, line: 1267, type: !215)
!4421 = !DILocation(line: 1267, column: 65, scope: !4419)
!4422 = !DILocalVariable(name: "propname", arg: 2, scope: !4419, file: !3, line: 1268, type: !100)
!4423 = !DILocation(line: 1268, column: 21, scope: !4419)
!4424 = !DILocalVariable(name: "elem_size", arg: 3, scope: !4419, file: !3, line: 1269, type: !7)
!4425 = !DILocation(line: 1269, column: 22, scope: !4419)
!4426 = !DILocalVariable(name: "val", arg: 4, scope: !4419, file: !3, line: 1269, type: !88)
!4427 = !DILocation(line: 1269, column: 39, scope: !4419)
!4428 = !DILocalVariable(name: "nval", arg: 5, scope: !4419, file: !3, line: 1270, type: !328)
!4429 = !DILocation(line: 1270, column: 16, scope: !4419)
!4430 = !DILocalVariable(name: "type", scope: !4419, file: !3, line: 1272, type: !69)
!4431 = !DILocation(line: 1272, column: 21, scope: !4419)
!4432 = !DILocation(line: 1274, column: 10, scope: !4419)
!4433 = !DILocation(line: 1274, column: 2, scope: !4419)
!4434 = !DILocation(line: 1276, column: 8, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 1274, column: 21)
!4436 = !DILocation(line: 1277, column: 3, scope: !4435)
!4437 = !DILocation(line: 1279, column: 8, scope: !4435)
!4438 = !DILocation(line: 1280, column: 3, scope: !4435)
!4439 = !DILocation(line: 1282, column: 8, scope: !4435)
!4440 = !DILocation(line: 1283, column: 3, scope: !4435)
!4441 = !DILocation(line: 1285, column: 8, scope: !4435)
!4442 = !DILocation(line: 1286, column: 3, scope: !4435)
!4443 = !DILocation(line: 1288, column: 3, scope: !4435)
!4444 = !DILocation(line: 1291, column: 29, scope: !4419)
!4445 = !DILocation(line: 1291, column: 37, scope: !4419)
!4446 = !DILocation(line: 1291, column: 47, scope: !4419)
!4447 = !DILocation(line: 1291, column: 53, scope: !4419)
!4448 = !DILocation(line: 1291, column: 58, scope: !4419)
!4449 = !DILocation(line: 1291, column: 9, scope: !4419)
!4450 = !DILocation(line: 1291, column: 2, scope: !4419)
!4451 = !DILocation(line: 1292, column: 1, scope: !4419)
!4452 = distinct !DISubprogram(name: "acpi_fwnode_property_read_string_array", scope: !3, file: !3, line: 1295, type: !2184, scopeLine: 1298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4453 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4452, file: !3, line: 1295, type: !215)
!4454 = !DILocation(line: 1295, column: 68, scope: !4452)
!4455 = !DILocalVariable(name: "propname", arg: 2, scope: !4452, file: !3, line: 1296, type: !100)
!4456 = !DILocation(line: 1296, column: 24, scope: !4452)
!4457 = !DILocalVariable(name: "val", arg: 3, scope: !4452, file: !3, line: 1296, type: !2186)
!4458 = !DILocation(line: 1296, column: 47, scope: !4452)
!4459 = !DILocalVariable(name: "nval", arg: 4, scope: !4452, file: !3, line: 1297, type: !328)
!4460 = !DILocation(line: 1297, column: 19, scope: !4452)
!4461 = !DILocation(line: 1299, column: 29, scope: !4452)
!4462 = !DILocation(line: 1299, column: 37, scope: !4452)
!4463 = !DILocation(line: 1300, column: 8, scope: !4452)
!4464 = !DILocation(line: 1300, column: 13, scope: !4452)
!4465 = !DILocation(line: 1299, column: 9, scope: !4452)
!4466 = !DILocation(line: 1299, column: 2, scope: !4452)
!4467 = distinct !DISubprogram(name: "acpi_fwnode_get_name", scope: !3, file: !3, line: 1313, type: !2189, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4468 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4467, file: !3, line: 1313, type: !215)
!4469 = !DILocation(line: 1313, column: 69, scope: !4467)
!4470 = !DILocalVariable(name: "adev", scope: !4467, file: !3, line: 1315, type: !3298)
!4471 = !DILocation(line: 1315, column: 28, scope: !4467)
!4472 = !DILocalVariable(name: "parent", scope: !4467, file: !3, line: 1316, type: !195)
!4473 = !DILocation(line: 1316, column: 24, scope: !4467)
!4474 = !DILocation(line: 1319, column: 29, scope: !4467)
!4475 = !DILocation(line: 1319, column: 11, scope: !4467)
!4476 = !DILocation(line: 1319, column: 9, scope: !4467)
!4477 = !DILocation(line: 1320, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1320, column: 6)
!4479 = !DILocation(line: 1320, column: 6, scope: !4467)
!4480 = !DILocation(line: 1321, column: 3, scope: !4478)
!4481 = !DILocation(line: 1323, column: 20, scope: !4467)
!4482 = !DILocation(line: 1323, column: 2, scope: !4467)
!4483 = !DILocation(line: 1325, column: 24, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1325, column: 6)
!4485 = !DILocation(line: 1325, column: 6, scope: !4484)
!4486 = !DILocation(line: 1325, column: 6, scope: !4467)
!4487 = !DILocalVariable(name: "dn", scope: !4488, file: !3, line: 1326, type: !3480)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1325, column: 33)
!4489 = !DILocation(line: 1326, column: 32, scope: !4488)
!4490 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !4491, file: !3, line: 1326, type: !215)
!4491 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1326, column: 37)
!4492 = !DILocation(line: 1326, column: 37, scope: !4491)
!4493 = !DILocalVariable(name: "__mptr", scope: !4494, file: !3, line: 1326, type: !88)
!4494 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 1326, column: 37)
!4495 = !DILocation(line: 1326, column: 37, scope: !4494)
!4496 = !DILocation(line: 1326, column: 37, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 1326, column: 37)
!4498 = !DILocation(line: 1328, column: 10, scope: !4488)
!4499 = !DILocation(line: 1328, column: 14, scope: !4488)
!4500 = !DILocation(line: 1328, column: 3, scope: !4488)
!4501 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4502, file: !3, line: 1331, type: !215)
!4502 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1331, column: 9)
!4503 = !DILocation(line: 1331, column: 9, scope: !4502)
!4504 = !DILocalVariable(name: "__mptr", scope: !4505, file: !3, line: 1331, type: !88)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 1331, column: 9)
!4506 = !DILocation(line: 1331, column: 9, scope: !4505)
!4507 = !DILocation(line: 1331, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 1331, column: 9)
!4509 = !DILocation(line: 1331, column: 7, scope: !4467)
!4510 = !DILocalVariable(name: "__ret_warn_on", scope: !4511, file: !3, line: 1332, type: !188)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 1332, column: 6)
!4512 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1332, column: 6)
!4513 = !DILocation(line: 1332, column: 6, scope: !4511)
!4514 = !DILocation(line: 1332, column: 6, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 1332, column: 6)
!4516 = !DILocation(line: 1332, column: 6, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 1332, column: 6)
!4518 = !DILocation(line: 1332, column: 6, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1332, column: 6)
!4520 = !DILocation(line: 1332, column: 6, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1332, column: 6)
!4522 = !{i32 -2142711639, i32 -2142711610, i32 -2142711564, i32 -2142711506, i32 -2142711452, i32 -2142711398, i32 -2142711343, i32 -2142711312}
!4523 = !DILocation(line: 1332, column: 6, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1332, column: 6)
!4525 = !{i32 -2142710906, i32 -2142710899, i32 -2142710847, i32 -2142710816, i32 -2142710786}
!4526 = !DILocation(line: 1332, column: 6, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1332, column: 6)
!4528 = !DILocation(line: 1332, column: 6, scope: !4512)
!4529 = !DILocation(line: 1332, column: 6, scope: !4467)
!4530 = !DILocation(line: 1333, column: 3, scope: !4512)
!4531 = !DILocation(line: 1335, column: 9, scope: !4467)
!4532 = !DILocation(line: 1335, column: 2, scope: !4467)
!4533 = !DILocation(line: 1336, column: 1, scope: !4467)
!4534 = distinct !DISubprogram(name: "acpi_fwnode_get_name_prefix", scope: !3, file: !3, line: 1339, type: !2189, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4535 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4534, file: !3, line: 1339, type: !215)
!4536 = !DILocation(line: 1339, column: 57, scope: !4534)
!4537 = !DILocalVariable(name: "parent", scope: !4534, file: !3, line: 1341, type: !195)
!4538 = !DILocation(line: 1341, column: 24, scope: !4534)
!4539 = !DILocation(line: 1344, column: 29, scope: !4534)
!4540 = !DILocation(line: 1344, column: 11, scope: !4534)
!4541 = !DILocation(line: 1344, column: 9, scope: !4534)
!4542 = !DILocation(line: 1345, column: 7, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1345, column: 6)
!4544 = !DILocation(line: 1345, column: 6, scope: !4534)
!4545 = !DILocation(line: 1346, column: 3, scope: !4543)
!4546 = !DILocation(line: 1349, column: 34, scope: !4534)
!4547 = !DILocation(line: 1349, column: 11, scope: !4534)
!4548 = !DILocation(line: 1349, column: 9, scope: !4534)
!4549 = !DILocation(line: 1350, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1350, column: 6)
!4551 = !DILocation(line: 1350, column: 6, scope: !4534)
!4552 = !DILocation(line: 1351, column: 3, scope: !4550)
!4553 = !DILocation(line: 1353, column: 20, scope: !4534)
!4554 = !DILocation(line: 1353, column: 2, scope: !4534)
!4555 = !DILocation(line: 1356, column: 2, scope: !4534)
!4556 = !DILocation(line: 1357, column: 1, scope: !4534)
!4557 = distinct !DISubprogram(name: "acpi_fwnode_get_reference_args", scope: !3, file: !3, line: 1304, type: !2206, scopeLine: 1308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4558 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4557, file: !3, line: 1304, type: !215)
!4559 = !DILocation(line: 1304, column: 60, scope: !4557)
!4560 = !DILocalVariable(name: "prop", arg: 2, scope: !4557, file: !3, line: 1305, type: !100)
!4561 = !DILocation(line: 1305, column: 23, scope: !4557)
!4562 = !DILocalVariable(name: "nargs_prop", arg: 3, scope: !4557, file: !3, line: 1305, type: !100)
!4563 = !DILocation(line: 1305, column: 41, scope: !4557)
!4564 = !DILocalVariable(name: "args_count", arg: 4, scope: !4557, file: !3, line: 1306, type: !7)
!4565 = !DILocation(line: 1306, column: 24, scope: !4557)
!4566 = !DILocalVariable(name: "index", arg: 5, scope: !4557, file: !3, line: 1306, type: !7)
!4567 = !DILocation(line: 1306, column: 49, scope: !4557)
!4568 = !DILocalVariable(name: "args", arg: 6, scope: !4557, file: !3, line: 1307, type: !2208)
!4569 = !DILocation(line: 1307, column: 41, scope: !4557)
!4570 = !DILocation(line: 1309, column: 44, scope: !4557)
!4571 = !DILocation(line: 1309, column: 52, scope: !4557)
!4572 = !DILocation(line: 1309, column: 58, scope: !4557)
!4573 = !DILocation(line: 1310, column: 9, scope: !4557)
!4574 = !DILocation(line: 1310, column: 21, scope: !4557)
!4575 = !DILocation(line: 1309, column: 9, scope: !4557)
!4576 = !DILocation(line: 1309, column: 2, scope: !4557)
!4577 = distinct !DISubprogram(name: "acpi_graph_get_next_endpoint", scope: !3, file: !3, line: 1134, type: !2198, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4578 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4577, file: !3, line: 1135, type: !215)
!4579 = !DILocation(line: 1135, column: 30, scope: !4577)
!4580 = !DILocalVariable(name: "prev", arg: 2, scope: !4577, file: !3, line: 1135, type: !195)
!4581 = !DILocation(line: 1135, column: 60, scope: !4577)
!4582 = !DILocalVariable(name: "port", scope: !4577, file: !3, line: 1137, type: !195)
!4583 = !DILocation(line: 1137, column: 24, scope: !4577)
!4584 = !DILocalVariable(name: "endpoint", scope: !4577, file: !3, line: 1138, type: !195)
!4585 = !DILocation(line: 1138, column: 24, scope: !4577)
!4586 = !DILocation(line: 1140, column: 7, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1140, column: 6)
!4588 = !DILocation(line: 1140, column: 6, scope: !4577)
!4589 = !DILocation(line: 1141, column: 3, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 1140, column: 13)
!4591 = !DILocation(line: 1142, column: 38, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 1141, column: 6)
!4593 = !DILocation(line: 1142, column: 46, scope: !4592)
!4594 = !DILocation(line: 1142, column: 11, scope: !4592)
!4595 = !DILocation(line: 1142, column: 9, scope: !4592)
!4596 = !DILocation(line: 1150, column: 27, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 1150, column: 8)
!4598 = !DILocation(line: 1150, column: 8, scope: !4597)
!4599 = !DILocation(line: 1150, column: 8, scope: !4592)
!4600 = !DILocation(line: 1151, column: 5, scope: !4597)
!4601 = !DILocation(line: 1152, column: 3, scope: !4592)
!4602 = !DILocation(line: 1152, column: 12, scope: !4590)
!4603 = distinct !{!4603, !4589, !4604}
!4604 = !DILocation(line: 1152, column: 16, scope: !4590)
!4605 = !DILocation(line: 1153, column: 2, scope: !4590)
!4606 = !DILocation(line: 1154, column: 28, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 1153, column: 9)
!4608 = !DILocation(line: 1154, column: 10, scope: !4607)
!4609 = !DILocation(line: 1154, column: 8, scope: !4607)
!4610 = !DILocation(line: 1157, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1157, column: 6)
!4612 = !DILocation(line: 1157, column: 6, scope: !4577)
!4613 = !DILocation(line: 1158, column: 3, scope: !4611)
!4614 = !DILocation(line: 1160, column: 40, scope: !4577)
!4615 = !DILocation(line: 1160, column: 46, scope: !4577)
!4616 = !DILocation(line: 1160, column: 13, scope: !4577)
!4617 = !DILocation(line: 1160, column: 11, scope: !4577)
!4618 = !DILocation(line: 1161, column: 2, scope: !4577)
!4619 = !DILocation(line: 1161, column: 10, scope: !4577)
!4620 = !DILocation(line: 1161, column: 9, scope: !4577)
!4621 = !DILocation(line: 1162, column: 37, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1161, column: 20)
!4623 = !DILocation(line: 1162, column: 45, scope: !4622)
!4624 = !DILocation(line: 1162, column: 10, scope: !4622)
!4625 = !DILocation(line: 1162, column: 8, scope: !4622)
!4626 = !DILocation(line: 1163, column: 8, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1163, column: 7)
!4628 = !DILocation(line: 1163, column: 7, scope: !4622)
!4629 = !DILocation(line: 1164, column: 4, scope: !4627)
!4630 = !DILocation(line: 1165, column: 26, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1165, column: 7)
!4632 = !DILocation(line: 1165, column: 7, scope: !4631)
!4633 = !DILocation(line: 1165, column: 7, scope: !4622)
!4634 = !DILocation(line: 1166, column: 42, scope: !4631)
!4635 = !DILocation(line: 1166, column: 15, scope: !4631)
!4636 = !DILocation(line: 1166, column: 13, scope: !4631)
!4637 = !DILocation(line: 1166, column: 4, scope: !4631)
!4638 = distinct !{!4638, !4618, !4639}
!4639 = !DILocation(line: 1167, column: 2, scope: !4577)
!4640 = !DILocation(line: 1176, column: 26, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1176, column: 6)
!4642 = !DILocation(line: 1176, column: 7, scope: !4641)
!4643 = !DILocation(line: 1176, column: 6, scope: !4577)
!4644 = !DILocation(line: 1177, column: 3, scope: !4641)
!4645 = !DILocation(line: 1179, column: 9, scope: !4577)
!4646 = !DILocation(line: 1179, column: 2, scope: !4577)
!4647 = !DILocation(line: 1180, column: 1, scope: !4577)
!4648 = distinct !DISubprogram(name: "acpi_graph_get_remote_endpoint", scope: !3, file: !3, line: 1219, type: !2194, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4649 = !DILocalVariable(name: "__fwnode", arg: 1, scope: !4648, file: !3, line: 1219, type: !215)
!4650 = !DILocation(line: 1219, column: 60, scope: !4648)
!4651 = !DILocalVariable(name: "fwnode", scope: !4648, file: !3, line: 1221, type: !195)
!4652 = !DILocation(line: 1221, column: 24, scope: !4648)
!4653 = !DILocalVariable(name: "port_nr", scope: !4648, file: !3, line: 1222, type: !7)
!4654 = !DILocation(line: 1222, column: 15, scope: !4648)
!4655 = !DILocalVariable(name: "endpoint_nr", scope: !4648, file: !3, line: 1222, type: !7)
!4656 = !DILocation(line: 1222, column: 24, scope: !4648)
!4657 = !DILocalVariable(name: "args", scope: !4648, file: !3, line: 1223, type: !2209)
!4658 = !DILocation(line: 1223, column: 31, scope: !4648)
!4659 = !DILocalVariable(name: "ret", scope: !4648, file: !3, line: 1224, type: !188)
!4660 = !DILocation(line: 1224, column: 6, scope: !4648)
!4661 = !DILocation(line: 1226, column: 2, scope: !4648)
!4662 = !DILocation(line: 1227, column: 41, scope: !4648)
!4663 = !DILocation(line: 1227, column: 8, scope: !4648)
!4664 = !DILocation(line: 1227, column: 6, scope: !4648)
!4665 = !DILocation(line: 1229, column: 6, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1229, column: 6)
!4667 = !DILocation(line: 1229, column: 6, scope: !4648)
!4668 = !DILocation(line: 1230, column: 3, scope: !4666)
!4669 = !DILocation(line: 1233, column: 32, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1233, column: 6)
!4671 = !DILocation(line: 1233, column: 7, scope: !4670)
!4672 = !DILocation(line: 1233, column: 6, scope: !4648)
!4673 = !DILocation(line: 1234, column: 15, scope: !4670)
!4674 = !DILocation(line: 1234, column: 10, scope: !4670)
!4675 = !DILocation(line: 1234, column: 35, scope: !4670)
!4676 = !DILocation(line: 1234, column: 3, scope: !4670)
!4677 = !DILocation(line: 1240, column: 11, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1240, column: 6)
!4679 = !DILocation(line: 1240, column: 17, scope: !4678)
!4680 = !DILocation(line: 1240, column: 6, scope: !4648)
!4681 = !DILocation(line: 1241, column: 3, scope: !4678)
!4682 = !DILocation(line: 1243, column: 16, scope: !4648)
!4683 = !DILocation(line: 1243, column: 9, scope: !4648)
!4684 = !DILocation(line: 1244, column: 17, scope: !4648)
!4685 = !DILocation(line: 1244, column: 12, scope: !4648)
!4686 = !DILocation(line: 1244, column: 10, scope: !4648)
!4687 = !DILocation(line: 1245, column: 21, scope: !4648)
!4688 = !DILocation(line: 1245, column: 16, scope: !4648)
!4689 = !DILocation(line: 1245, column: 14, scope: !4648)
!4690 = !DILocation(line: 1247, column: 43, scope: !4648)
!4691 = !DILocation(line: 1247, column: 59, scope: !4648)
!4692 = !DILocation(line: 1247, column: 11, scope: !4648)
!4693 = !DILocation(line: 1247, column: 9, scope: !4648)
!4694 = !DILocation(line: 1249, column: 41, scope: !4648)
!4695 = !DILocation(line: 1249, column: 61, scope: !4648)
!4696 = !DILocation(line: 1249, column: 9, scope: !4648)
!4697 = !DILocation(line: 1249, column: 2, scope: !4648)
!4698 = !DILocation(line: 1250, column: 1, scope: !4648)
!4699 = distinct !DISubprogram(name: "acpi_fwnode_get_parent", scope: !3, file: !3, line: 1360, type: !203, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4700 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4699, file: !3, line: 1360, type: !195)
!4701 = !DILocation(line: 1360, column: 46, scope: !4699)
!4702 = !DILocation(line: 1362, column: 30, scope: !4699)
!4703 = !DILocation(line: 1362, column: 9, scope: !4699)
!4704 = !DILocation(line: 1362, column: 2, scope: !4699)
!4705 = distinct !DISubprogram(name: "acpi_fwnode_graph_parse_endpoint", scope: !3, file: !3, line: 1365, type: !2220, scopeLine: 1367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4706 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4705, file: !3, line: 1365, type: !215)
!4707 = !DILocation(line: 1365, column: 73, scope: !4705)
!4708 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4705, file: !3, line: 1366, type: !2222)
!4709 = !DILocation(line: 1366, column: 34, scope: !4705)
!4710 = !DILocalVariable(name: "port_fwnode", scope: !4705, file: !3, line: 1368, type: !195)
!4711 = !DILocation(line: 1368, column: 24, scope: !4705)
!4712 = !DILocation(line: 1368, column: 56, scope: !4705)
!4713 = !DILocation(line: 1368, column: 38, scope: !4705)
!4714 = !DILocation(line: 1370, column: 27, scope: !4705)
!4715 = !DILocation(line: 1370, column: 2, scope: !4705)
!4716 = !DILocation(line: 1370, column: 12, scope: !4705)
!4717 = !DILocation(line: 1370, column: 25, scope: !4705)
!4718 = !DILocation(line: 1372, column: 31, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1372, column: 6)
!4720 = !DILocation(line: 1372, column: 52, scope: !4719)
!4721 = !DILocation(line: 1372, column: 62, scope: !4719)
!4722 = !DILocation(line: 1372, column: 6, scope: !4719)
!4723 = !DILocation(line: 1372, column: 6, scope: !4705)
!4724 = !DILocation(line: 1373, column: 28, scope: !4719)
!4725 = !DILocation(line: 1373, column: 50, scope: !4719)
!4726 = !DILocation(line: 1373, column: 60, scope: !4719)
!4727 = !DILocation(line: 1373, column: 3, scope: !4719)
!4728 = !DILocation(line: 1374, column: 31, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1374, column: 6)
!4730 = !DILocation(line: 1374, column: 47, scope: !4729)
!4731 = !DILocation(line: 1374, column: 57, scope: !4729)
!4732 = !DILocation(line: 1374, column: 6, scope: !4729)
!4733 = !DILocation(line: 1374, column: 6, scope: !4705)
!4734 = !DILocation(line: 1375, column: 28, scope: !4729)
!4735 = !DILocation(line: 1375, column: 49, scope: !4729)
!4736 = !DILocation(line: 1375, column: 59, scope: !4729)
!4737 = !DILocation(line: 1375, column: 3, scope: !4729)
!4738 = !DILocation(line: 1377, column: 2, scope: !4705)
!4739 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4740, file: !4740, line: 39, type: !4741, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4740 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!213, !221}
!4743 = !DILocalVariable(name: "ptr", arg: 1, scope: !4739, file: !4740, line: 39, type: !221)
!4744 = !DILocation(line: 39, column: 68, scope: !4739)
!4745 = !DILocation(line: 41, column: 9, scope: !4739)
!4746 = !DILocation(line: 41, column: 24, scope: !4739)
!4747 = !DILocation(line: 41, column: 27, scope: !4739)
!4748 = !DILocation(line: 41, column: 2, scope: !4739)
!4749 = distinct !DISubprogram(name: "get_order", scope: !4750, file: !4750, line: 29, type: !4751, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4750 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!188, !331}
!4753 = !DILocalVariable(name: "x", arg: 1, scope: !4754, file: !4755, line: 366, type: !137)
!4754 = distinct !DISubprogram(name: "fls64", scope: !4755, file: !4755, line: 366, type: !4756, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4755 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!188, !137}
!4758 = !DILocation(line: 366, column: 40, scope: !4754, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 46, column: 9, scope: !4749)
!4760 = !DILocalVariable(name: "bitpos", scope: !4754, file: !4755, line: 368, type: !188)
!4761 = !DILocation(line: 368, column: 6, scope: !4754, inlinedAt: !4759)
!4762 = !DILocalVariable(name: "size", arg: 1, scope: !4749, file: !4750, line: 29, type: !331)
!4763 = !DILocation(line: 29, column: 63, scope: !4749)
!4764 = !DILocation(line: 31, column: 27, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4749, file: !4750, line: 31, column: 6)
!4766 = !DILocation(line: 31, column: 6, scope: !4765)
!4767 = !DILocation(line: 31, column: 6, scope: !4749)
!4768 = !DILocation(line: 32, column: 8, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !4750, line: 32, column: 7)
!4770 = distinct !DILexicalBlock(scope: !4765, file: !4750, line: 31, column: 34)
!4771 = !DILocation(line: 32, column: 7, scope: !4770)
!4772 = !DILocation(line: 33, column: 4, scope: !4769)
!4773 = !DILocation(line: 35, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4770, file: !4750, line: 35, column: 7)
!4775 = !DILocation(line: 35, column: 12, scope: !4774)
!4776 = !DILocation(line: 35, column: 7, scope: !4770)
!4777 = !DILocation(line: 36, column: 4, scope: !4774)
!4778 = !DILocation(line: 38, column: 10, scope: !4770)
!4779 = !DILocation(line: 38, column: 28, scope: !4770)
!4780 = !DILocation(line: 38, column: 41, scope: !4770)
!4781 = !DILocation(line: 38, column: 3, scope: !4770)
!4782 = !DILocation(line: 41, column: 6, scope: !4749)
!4783 = !DILocation(line: 42, column: 7, scope: !4749)
!4784 = !DILocation(line: 46, column: 15, scope: !4749)
!4785 = !DILocation(line: 374, column: 2, scope: !4754, inlinedAt: !4759)
!4786 = !DILocation(line: 376, column: 14, scope: !4754, inlinedAt: !4759)
!4787 = !{i32 349025}
!4788 = !DILocation(line: 377, column: 9, scope: !4754, inlinedAt: !4759)
!4789 = !DILocation(line: 377, column: 16, scope: !4754, inlinedAt: !4759)
!4790 = !DILocation(line: 46, column: 2, scope: !4749)
!4791 = !DILocation(line: 48, column: 1, scope: !4749)
!4792 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4793, file: !4793, line: 30, type: !4794, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4793 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!188, !136}
!4796 = !DILocation(line: 366, column: 40, scope: !4754, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 32, column: 9, scope: !4792)
!4798 = !DILocation(line: 368, column: 6, scope: !4754, inlinedAt: !4797)
!4799 = !DILocalVariable(name: "n", arg: 1, scope: !4792, file: !4793, line: 30, type: !136)
!4800 = !DILocation(line: 30, column: 21, scope: !4792)
!4801 = !DILocation(line: 32, column: 15, scope: !4792)
!4802 = !DILocation(line: 374, column: 2, scope: !4754, inlinedAt: !4797)
!4803 = !DILocation(line: 376, column: 14, scope: !4754, inlinedAt: !4797)
!4804 = !DILocation(line: 377, column: 9, scope: !4754, inlinedAt: !4797)
!4805 = !DILocation(line: 377, column: 16, scope: !4754, inlinedAt: !4797)
!4806 = !DILocation(line: 32, column: 18, scope: !4792)
!4807 = !DILocation(line: 32, column: 2, scope: !4792)
!4808 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4809, file: !4809, line: 137, type: !4810, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4809 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!88, !1160, !221, !328, !86}
!4812 = !DILocalVariable(name: "s", arg: 1, scope: !4808, file: !4809, line: 137, type: !1160)
!4813 = !DILocation(line: 137, column: 54, scope: !4808)
!4814 = !DILocalVariable(name: "object", arg: 2, scope: !4808, file: !4809, line: 137, type: !221)
!4815 = !DILocation(line: 137, column: 69, scope: !4808)
!4816 = !DILocalVariable(name: "size", arg: 3, scope: !4808, file: !4809, line: 138, type: !328)
!4817 = !DILocation(line: 138, column: 12, scope: !4808)
!4818 = !DILocalVariable(name: "flags", arg: 4, scope: !4808, file: !4809, line: 138, type: !86)
!4819 = !DILocation(line: 138, column: 24, scope: !4808)
!4820 = !DILocation(line: 140, column: 17, scope: !4808)
!4821 = !DILocation(line: 140, column: 2, scope: !4808)
!4822 = distinct !DISubprogram(name: "__list_add", scope: !2800, file: !2800, line: 63, type: !4823, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !97, !97, !97}
!4825 = !DILocalVariable(name: "new", arg: 1, scope: !4822, file: !2800, line: 63, type: !97)
!4826 = !DILocation(line: 63, column: 49, scope: !4822)
!4827 = !DILocalVariable(name: "prev", arg: 2, scope: !4822, file: !2800, line: 64, type: !97)
!4828 = !DILocation(line: 64, column: 28, scope: !4822)
!4829 = !DILocalVariable(name: "next", arg: 3, scope: !4822, file: !2800, line: 65, type: !97)
!4830 = !DILocation(line: 65, column: 28, scope: !4822)
!4831 = !DILocation(line: 67, column: 24, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4822, file: !2800, line: 67, column: 6)
!4833 = !DILocation(line: 67, column: 29, scope: !4832)
!4834 = !DILocation(line: 67, column: 35, scope: !4832)
!4835 = !DILocation(line: 67, column: 7, scope: !4832)
!4836 = !DILocation(line: 67, column: 6, scope: !4822)
!4837 = !DILocation(line: 68, column: 3, scope: !4832)
!4838 = !DILocation(line: 70, column: 15, scope: !4822)
!4839 = !DILocation(line: 70, column: 2, scope: !4822)
!4840 = !DILocation(line: 70, column: 8, scope: !4822)
!4841 = !DILocation(line: 70, column: 13, scope: !4822)
!4842 = !DILocation(line: 71, column: 14, scope: !4822)
!4843 = !DILocation(line: 71, column: 2, scope: !4822)
!4844 = !DILocation(line: 71, column: 7, scope: !4822)
!4845 = !DILocation(line: 71, column: 12, scope: !4822)
!4846 = !DILocation(line: 72, column: 14, scope: !4822)
!4847 = !DILocation(line: 72, column: 2, scope: !4822)
!4848 = !DILocation(line: 72, column: 7, scope: !4822)
!4849 = !DILocation(line: 72, column: 12, scope: !4822)
!4850 = !DILocation(line: 73, column: 2, scope: !4822)
!4851 = !DILocation(line: 73, column: 2, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4822, file: !2800, line: 73, column: 2)
!4853 = !DILocation(line: 73, column: 2, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4852, file: !2800, line: 73, column: 2)
!4855 = !DILocation(line: 73, column: 2, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !2800, line: 73, column: 2)
!4857 = !DILocation(line: 74, column: 1, scope: !4822)
!4858 = distinct !DISubprogram(name: "__list_add_valid", scope: !2800, file: !2800, line: 45, type: !4859, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!213, !97, !97, !97}
!4861 = !DILocalVariable(name: "new", arg: 1, scope: !4858, file: !2800, line: 45, type: !97)
!4862 = !DILocation(line: 45, column: 55, scope: !4858)
!4863 = !DILocalVariable(name: "prev", arg: 2, scope: !4858, file: !2800, line: 46, type: !97)
!4864 = !DILocation(line: 46, column: 23, scope: !4858)
!4865 = !DILocalVariable(name: "next", arg: 3, scope: !4858, file: !2800, line: 47, type: !97)
!4866 = !DILocation(line: 47, column: 23, scope: !4858)
!4867 = !DILocation(line: 49, column: 2, scope: !4858)
!4868 = distinct !DISubprogram(name: "acpi_is_property_guid", scope: !3, file: !3, line: 314, type: !4869, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!213, !107}
!4871 = !DILocalVariable(name: "guid", arg: 1, scope: !4868, file: !3, line: 314, type: !107)
!4872 = !DILocation(line: 314, column: 49, scope: !4868)
!4873 = !DILocalVariable(name: "i", scope: !4868, file: !3, line: 316, type: !188)
!4874 = !DILocation(line: 316, column: 6, scope: !4868)
!4875 = !DILocation(line: 318, column: 9, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 318, column: 2)
!4877 = !DILocation(line: 318, column: 7, scope: !4876)
!4878 = !DILocation(line: 318, column: 14, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 318, column: 2)
!4880 = !DILocation(line: 318, column: 16, scope: !4879)
!4881 = !DILocation(line: 318, column: 2, scope: !4876)
!4882 = !DILocation(line: 319, column: 18, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 319, column: 7)
!4884 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 318, column: 46)
!4885 = !DILocation(line: 319, column: 35, scope: !4883)
!4886 = !DILocation(line: 319, column: 25, scope: !4883)
!4887 = !DILocation(line: 319, column: 7, scope: !4883)
!4888 = !DILocation(line: 319, column: 7, scope: !4884)
!4889 = !DILocation(line: 320, column: 4, scope: !4883)
!4890 = !DILocation(line: 321, column: 2, scope: !4884)
!4891 = !DILocation(line: 318, column: 42, scope: !4879)
!4892 = !DILocation(line: 318, column: 2, scope: !4879)
!4893 = distinct !{!4893, !4881, !4894}
!4894 = !DILocation(line: 321, column: 2, scope: !4876)
!4895 = !DILocation(line: 323, column: 2, scope: !4868)
!4896 = !DILocation(line: 324, column: 1, scope: !4868)
!4897 = distinct !DISubprogram(name: "acpi_properties_format_valid", scope: !3, file: !3, line: 270, type: !4898, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!213, !121}
!4900 = !DILocalVariable(name: "properties", arg: 1, scope: !4897, file: !3, line: 270, type: !121)
!4901 = !DILocation(line: 270, column: 67, scope: !4897)
!4902 = !DILocalVariable(name: "i", scope: !4897, file: !3, line: 272, type: !188)
!4903 = !DILocation(line: 272, column: 6, scope: !4897)
!4904 = !DILocation(line: 274, column: 9, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 274, column: 2)
!4906 = !DILocation(line: 274, column: 7, scope: !4905)
!4907 = !DILocation(line: 274, column: 14, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 274, column: 2)
!4909 = !DILocation(line: 274, column: 18, scope: !4908)
!4910 = !DILocation(line: 274, column: 30, scope: !4908)
!4911 = !DILocation(line: 274, column: 38, scope: !4908)
!4912 = !DILocation(line: 274, column: 16, scope: !4908)
!4913 = !DILocation(line: 274, column: 2, scope: !4905)
!4914 = !DILocalVariable(name: "property", scope: !4915, file: !3, line: 275, type: !121)
!4915 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 274, column: 50)
!4916 = !DILocation(line: 275, column: 28, scope: !4915)
!4917 = !DILocation(line: 277, column: 15, scope: !4915)
!4918 = !DILocation(line: 277, column: 27, scope: !4915)
!4919 = !DILocation(line: 277, column: 35, scope: !4915)
!4920 = !DILocation(line: 277, column: 44, scope: !4915)
!4921 = !DILocation(line: 277, column: 12, scope: !4915)
!4922 = !DILocation(line: 282, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 282, column: 7)
!4924 = !DILocation(line: 282, column: 17, scope: !4923)
!4925 = !DILocation(line: 282, column: 25, scope: !4923)
!4926 = !DILocation(line: 282, column: 31, scope: !4923)
!4927 = !DILocation(line: 283, column: 7, scope: !4923)
!4928 = !DILocation(line: 283, column: 10, scope: !4923)
!4929 = !DILocation(line: 283, column: 20, scope: !4923)
!4930 = !DILocation(line: 283, column: 28, scope: !4923)
!4931 = !DILocation(line: 283, column: 40, scope: !4923)
!4932 = !DILocation(line: 283, column: 45, scope: !4923)
!4933 = !DILocation(line: 284, column: 7, scope: !4923)
!4934 = !DILocation(line: 284, column: 35, scope: !4923)
!4935 = !DILocation(line: 284, column: 45, scope: !4923)
!4936 = !DILocation(line: 284, column: 53, scope: !4923)
!4937 = !DILocation(line: 284, column: 11, scope: !4923)
!4938 = !DILocation(line: 282, column: 7, scope: !4915)
!4939 = !DILocation(line: 285, column: 4, scope: !4923)
!4940 = !DILocation(line: 286, column: 2, scope: !4915)
!4941 = !DILocation(line: 274, column: 46, scope: !4908)
!4942 = !DILocation(line: 274, column: 2, scope: !4908)
!4943 = distinct !{!4943, !4913, !4944}
!4944 = !DILocation(line: 286, column: 2, scope: !4905)
!4945 = !DILocation(line: 287, column: 2, scope: !4897)
!4946 = !DILocation(line: 288, column: 1, scope: !4897)
!4947 = distinct !DISubprogram(name: "guid_equal", scope: !4948, file: !4948, line: 36, type: !4949, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4948 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!213, !107, !107}
!4951 = !DILocalVariable(name: "u1", arg: 1, scope: !4947, file: !4948, line: 36, type: !107)
!4952 = !DILocation(line: 36, column: 45, scope: !4947)
!4953 = !DILocalVariable(name: "u2", arg: 2, scope: !4947, file: !4948, line: 36, type: !107)
!4954 = !DILocation(line: 36, column: 63, scope: !4947)
!4955 = !DILocation(line: 38, column: 16, scope: !4947)
!4956 = !DILocation(line: 38, column: 20, scope: !4947)
!4957 = !DILocation(line: 38, column: 9, scope: !4947)
!4958 = !DILocation(line: 38, column: 40, scope: !4947)
!4959 = !DILocation(line: 38, column: 2, scope: !4947)
!4960 = distinct !DISubprogram(name: "acpi_property_value_ok", scope: !3, file: !3, line: 239, type: !4898, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4961 = !DILocalVariable(name: "value", arg: 1, scope: !4960, file: !3, line: 239, type: !121)
!4962 = !DILocation(line: 239, column: 61, scope: !4960)
!4963 = !DILocalVariable(name: "j", scope: !4960, file: !3, line: 241, type: !188)
!4964 = !DILocation(line: 241, column: 6, scope: !4960)
!4965 = !DILocation(line: 247, column: 10, scope: !4960)
!4966 = !DILocation(line: 247, column: 17, scope: !4960)
!4967 = !DILocation(line: 247, column: 2, scope: !4960)
!4968 = !DILocation(line: 251, column: 3, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 247, column: 23)
!4970 = !DILocation(line: 254, column: 10, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 254, column: 3)
!4972 = !DILocation(line: 254, column: 8, scope: !4971)
!4973 = !DILocation(line: 254, column: 15, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 254, column: 3)
!4975 = !DILocation(line: 254, column: 19, scope: !4974)
!4976 = !DILocation(line: 254, column: 26, scope: !4974)
!4977 = !DILocation(line: 254, column: 34, scope: !4974)
!4978 = !DILocation(line: 254, column: 17, scope: !4974)
!4979 = !DILocation(line: 254, column: 3, scope: !4971)
!4980 = !DILocation(line: 255, column: 12, scope: !4974)
!4981 = !DILocation(line: 255, column: 19, scope: !4974)
!4982 = !DILocation(line: 255, column: 27, scope: !4974)
!4983 = !DILocation(line: 255, column: 36, scope: !4974)
!4984 = !DILocation(line: 255, column: 39, scope: !4974)
!4985 = !DILocation(line: 255, column: 4, scope: !4974)
!4986 = !DILocation(line: 259, column: 5, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 255, column: 45)
!4988 = !DILocation(line: 262, column: 5, scope: !4987)
!4989 = !DILocation(line: 254, column: 42, scope: !4974)
!4990 = !DILocation(line: 254, column: 3, scope: !4974)
!4991 = distinct !{!4991, !4979, !4992}
!4992 = !DILocation(line: 263, column: 4, scope: !4971)
!4993 = !DILocation(line: 265, column: 3, scope: !4969)
!4994 = !DILocation(line: 267, column: 2, scope: !4960)
!4995 = !DILocation(line: 268, column: 1, scope: !4960)
!4996 = distinct !DISubprogram(name: "acpi_data_get_property_array", scope: !3, file: !3, line: 584, type: !3317, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4997 = !DILocalVariable(name: "data", arg: 1, scope: !4996, file: !3, line: 584, type: !3319)
!4998 = !DILocation(line: 584, column: 72, scope: !4996)
!4999 = !DILocalVariable(name: "name", arg: 2, scope: !4996, file: !3, line: 585, type: !100)
!5000 = !DILocation(line: 585, column: 18, scope: !4996)
!5001 = !DILocalVariable(name: "type", arg: 3, scope: !4996, file: !3, line: 586, type: !127)
!5002 = !DILocation(line: 586, column: 23, scope: !4996)
!5003 = !DILocalVariable(name: "obj", arg: 4, scope: !4996, file: !3, line: 587, type: !183)
!5004 = !DILocation(line: 587, column: 32, scope: !4996)
!5005 = !DILocalVariable(name: "prop", scope: !4996, file: !3, line: 589, type: !121)
!5006 = !DILocation(line: 589, column: 27, scope: !4996)
!5007 = !DILocalVariable(name: "ret", scope: !4996, file: !3, line: 590, type: !188)
!5008 = !DILocation(line: 590, column: 6, scope: !4996)
!5009 = !DILocalVariable(name: "i", scope: !4996, file: !3, line: 590, type: !188)
!5010 = !DILocation(line: 590, column: 11, scope: !4996)
!5011 = !DILocation(line: 592, column: 31, scope: !4996)
!5012 = !DILocation(line: 592, column: 37, scope: !4996)
!5013 = !DILocation(line: 592, column: 8, scope: !4996)
!5014 = !DILocation(line: 592, column: 6, scope: !4996)
!5015 = !DILocation(line: 593, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 593, column: 6)
!5017 = !DILocation(line: 593, column: 6, scope: !4996)
!5018 = !DILocation(line: 594, column: 10, scope: !5016)
!5019 = !DILocation(line: 594, column: 3, scope: !5016)
!5020 = !DILocation(line: 596, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 596, column: 6)
!5022 = !DILocation(line: 596, column: 11, scope: !5021)
!5023 = !DILocation(line: 596, column: 6, scope: !4996)
!5024 = !DILocation(line: 598, column: 10, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 598, column: 3)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 596, column: 29)
!5027 = !DILocation(line: 598, column: 8, scope: !5025)
!5028 = !DILocation(line: 598, column: 15, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 598, column: 3)
!5030 = !DILocation(line: 598, column: 19, scope: !5029)
!5031 = !DILocation(line: 598, column: 25, scope: !5029)
!5032 = !DILocation(line: 598, column: 33, scope: !5029)
!5033 = !DILocation(line: 598, column: 17, scope: !5029)
!5034 = !DILocation(line: 598, column: 3, scope: !5025)
!5035 = !DILocation(line: 599, column: 8, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 599, column: 8)
!5037 = !DILocation(line: 599, column: 14, scope: !5036)
!5038 = !DILocation(line: 599, column: 22, scope: !5036)
!5039 = !DILocation(line: 599, column: 31, scope: !5036)
!5040 = !DILocation(line: 599, column: 34, scope: !5036)
!5041 = !DILocation(line: 599, column: 42, scope: !5036)
!5042 = !DILocation(line: 599, column: 39, scope: !5036)
!5043 = !DILocation(line: 599, column: 8, scope: !5029)
!5044 = !DILocation(line: 600, column: 5, scope: !5036)
!5045 = !DILocation(line: 598, column: 41, scope: !5029)
!5046 = !DILocation(line: 598, column: 3, scope: !5029)
!5047 = distinct !{!5047, !5034, !5048}
!5048 = !DILocation(line: 600, column: 13, scope: !5025)
!5049 = !DILocation(line: 601, column: 2, scope: !5026)
!5050 = !DILocation(line: 602, column: 6, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 602, column: 6)
!5052 = !DILocation(line: 602, column: 6, scope: !4996)
!5053 = !DILocation(line: 603, column: 10, scope: !5051)
!5054 = !DILocation(line: 603, column: 4, scope: !5051)
!5055 = !DILocation(line: 603, column: 8, scope: !5051)
!5056 = !DILocation(line: 603, column: 3, scope: !5051)
!5057 = !DILocation(line: 605, column: 2, scope: !4996)
!5058 = !DILocation(line: 606, column: 1, scope: !4996)
!5059 = distinct !DISubprogram(name: "acpi_add_nondev_subnodes", scope: !3, file: !3, line: 158, type: !5060, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!188, !167, !121, !97, !195}
!5062 = !DILocalVariable(name: "scope", arg: 1, scope: !5059, file: !3, line: 158, type: !167)
!5063 = !DILocation(line: 158, column: 49, scope: !5059)
!5064 = !DILocalVariable(name: "links", arg: 2, scope: !5059, file: !3, line: 159, type: !121)
!5065 = !DILocation(line: 159, column: 34, scope: !5059)
!5066 = !DILocalVariable(name: "list", arg: 3, scope: !5059, file: !3, line: 160, type: !97)
!5067 = !DILocation(line: 160, column: 27, scope: !5059)
!5068 = !DILocalVariable(name: "parent", arg: 4, scope: !5059, file: !3, line: 161, type: !195)
!5069 = !DILocation(line: 161, column: 31, scope: !5059)
!5070 = !DILocalVariable(name: "ret", scope: !5059, file: !3, line: 163, type: !213)
!5071 = !DILocation(line: 163, column: 7, scope: !5059)
!5072 = !DILocalVariable(name: "i", scope: !5059, file: !3, line: 164, type: !188)
!5073 = !DILocation(line: 164, column: 6, scope: !5059)
!5074 = !DILocation(line: 166, column: 9, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 166, column: 2)
!5076 = !DILocation(line: 166, column: 7, scope: !5075)
!5077 = !DILocation(line: 166, column: 14, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 166, column: 2)
!5079 = !DILocation(line: 166, column: 18, scope: !5078)
!5080 = !DILocation(line: 166, column: 25, scope: !5078)
!5081 = !DILocation(line: 166, column: 33, scope: !5078)
!5082 = !DILocation(line: 166, column: 16, scope: !5078)
!5083 = !DILocation(line: 166, column: 2, scope: !5075)
!5084 = !DILocalVariable(name: "link", scope: !5085, file: !3, line: 167, type: !121)
!5085 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 166, column: 45)
!5086 = !DILocation(line: 167, column: 28, scope: !5085)
!5087 = !DILocalVariable(name: "desc", scope: !5085, file: !3, line: 167, type: !121)
!5088 = !DILocation(line: 167, column: 35, scope: !5085)
!5089 = !DILocalVariable(name: "handle", scope: !5085, file: !3, line: 168, type: !167)
!5090 = !DILocation(line: 168, column: 15, scope: !5085)
!5091 = !DILocalVariable(name: "result", scope: !5085, file: !3, line: 169, type: !213)
!5092 = !DILocation(line: 169, column: 8, scope: !5085)
!5093 = !DILocation(line: 171, column: 11, scope: !5085)
!5094 = !DILocation(line: 171, column: 18, scope: !5085)
!5095 = !DILocation(line: 171, column: 26, scope: !5085)
!5096 = !DILocation(line: 171, column: 35, scope: !5085)
!5097 = !DILocation(line: 171, column: 8, scope: !5085)
!5098 = !DILocation(line: 173, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 173, column: 7)
!5100 = !DILocation(line: 173, column: 13, scope: !5099)
!5101 = !DILocation(line: 173, column: 21, scope: !5099)
!5102 = !DILocation(line: 173, column: 27, scope: !5099)
!5103 = !DILocation(line: 173, column: 7, scope: !5085)
!5104 = !DILocation(line: 174, column: 4, scope: !5099)
!5105 = !DILocation(line: 177, column: 7, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 177, column: 7)
!5107 = !DILocation(line: 177, column: 13, scope: !5106)
!5108 = !DILocation(line: 177, column: 21, scope: !5106)
!5109 = !DILocation(line: 177, column: 33, scope: !5106)
!5110 = !DILocation(line: 177, column: 38, scope: !5106)
!5111 = !DILocation(line: 177, column: 7, scope: !5085)
!5112 = !DILocation(line: 178, column: 4, scope: !5106)
!5113 = !DILocation(line: 181, column: 11, scope: !5085)
!5114 = !DILocation(line: 181, column: 17, scope: !5085)
!5115 = !DILocation(line: 181, column: 25, scope: !5085)
!5116 = !DILocation(line: 181, column: 37, scope: !5085)
!5117 = !DILocation(line: 181, column: 3, scope: !5085)
!5118 = !DILocation(line: 183, column: 36, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 181, column: 43)
!5120 = !DILocation(line: 183, column: 43, scope: !5119)
!5121 = !DILocation(line: 183, column: 49, scope: !5119)
!5122 = !DILocation(line: 184, column: 9, scope: !5119)
!5123 = !DILocation(line: 183, column: 13, scope: !5119)
!5124 = !DILocation(line: 183, column: 11, scope: !5119)
!5125 = !DILocation(line: 185, column: 4, scope: !5119)
!5126 = !DILocation(line: 187, column: 13, scope: !5119)
!5127 = !DILocation(line: 187, column: 19, scope: !5119)
!5128 = !DILocation(line: 187, column: 27, scope: !5119)
!5129 = !DILocation(line: 187, column: 39, scope: !5119)
!5130 = !DILocation(line: 187, column: 49, scope: !5119)
!5131 = !DILocation(line: 187, column: 11, scope: !5119)
!5132 = !DILocation(line: 188, column: 41, scope: !5119)
!5133 = !DILocation(line: 188, column: 49, scope: !5119)
!5134 = !DILocation(line: 188, column: 55, scope: !5119)
!5135 = !DILocation(line: 189, column: 13, scope: !5119)
!5136 = !DILocation(line: 188, column: 13, scope: !5119)
!5137 = !DILocation(line: 188, column: 11, scope: !5119)
!5138 = !DILocation(line: 190, column: 4, scope: !5119)
!5139 = !DILocation(line: 192, column: 12, scope: !5119)
!5140 = !DILocation(line: 192, column: 18, scope: !5119)
!5141 = !DILocation(line: 192, column: 26, scope: !5119)
!5142 = !DILocation(line: 192, column: 9, scope: !5119)
!5143 = !DILocation(line: 193, column: 41, scope: !5119)
!5144 = !DILocation(line: 193, column: 53, scope: !5119)
!5145 = !DILocation(line: 194, column: 13, scope: !5119)
!5146 = !DILocation(line: 194, column: 19, scope: !5119)
!5147 = !DILocation(line: 193, column: 13, scope: !5119)
!5148 = !DILocation(line: 193, column: 11, scope: !5119)
!5149 = !DILocation(line: 195, column: 4, scope: !5119)
!5150 = !DILocation(line: 197, column: 11, scope: !5119)
!5151 = !DILocation(line: 198, column: 4, scope: !5119)
!5152 = !DILocation(line: 200, column: 9, scope: !5085)
!5153 = !DILocation(line: 200, column: 13, scope: !5085)
!5154 = !DILocation(line: 200, column: 16, scope: !5085)
!5155 = !DILocation(line: 200, column: 7, scope: !5085)
!5156 = !DILocation(line: 201, column: 2, scope: !5085)
!5157 = !DILocation(line: 166, column: 41, scope: !5078)
!5158 = !DILocation(line: 166, column: 2, scope: !5078)
!5159 = distinct !{!5159, !5083, !5160}
!5160 = !DILocation(line: 201, column: 2, scope: !5075)
!5161 = !DILocation(line: 203, column: 9, scope: !5059)
!5162 = !DILocation(line: 203, column: 2, scope: !5059)
!5163 = distinct !DISubprogram(name: "acpi_nondev_subnode_ok", scope: !3, file: !3, line: 139, type: !5164, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!213, !167, !121, !97, !195}
!5166 = !DILocalVariable(name: "scope", arg: 1, scope: !5163, file: !3, line: 139, type: !167)
!5167 = !DILocation(line: 139, column: 48, scope: !5163)
!5168 = !DILocalVariable(name: "link", arg: 2, scope: !5163, file: !3, line: 140, type: !121)
!5169 = !DILocation(line: 140, column: 33, scope: !5163)
!5170 = !DILocalVariable(name: "list", arg: 3, scope: !5163, file: !3, line: 141, type: !97)
!5171 = !DILocation(line: 141, column: 26, scope: !5163)
!5172 = !DILocalVariable(name: "parent", arg: 4, scope: !5163, file: !3, line: 142, type: !195)
!5173 = !DILocation(line: 142, column: 30, scope: !5163)
!5174 = !DILocalVariable(name: "handle", scope: !5163, file: !3, line: 144, type: !167)
!5175 = !DILocation(line: 144, column: 14, scope: !5163)
!5176 = !DILocalVariable(name: "status", scope: !5163, file: !3, line: 145, type: !2843)
!5177 = !DILocation(line: 145, column: 14, scope: !5163)
!5178 = !DILocation(line: 147, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 147, column: 6)
!5180 = !DILocation(line: 147, column: 6, scope: !5163)
!5181 = !DILocation(line: 148, column: 3, scope: !5179)
!5182 = !DILocation(line: 150, column: 27, scope: !5163)
!5183 = !DILocation(line: 150, column: 34, scope: !5163)
!5184 = !DILocation(line: 150, column: 40, scope: !5163)
!5185 = !DILocation(line: 150, column: 48, scope: !5163)
!5186 = !DILocation(line: 150, column: 60, scope: !5163)
!5187 = !DILocation(line: 150, column: 67, scope: !5163)
!5188 = !DILocation(line: 150, column: 11, scope: !5163)
!5189 = !DILocation(line: 150, column: 9, scope: !5163)
!5190 = !DILocation(line: 152, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 152, column: 6)
!5192 = !DILocation(line: 152, column: 6, scope: !5163)
!5193 = !DILocation(line: 153, column: 3, scope: !5191)
!5194 = !DILocation(line: 155, column: 37, scope: !5163)
!5195 = !DILocation(line: 155, column: 45, scope: !5163)
!5196 = !DILocation(line: 155, column: 51, scope: !5163)
!5197 = !DILocation(line: 155, column: 57, scope: !5163)
!5198 = !DILocation(line: 155, column: 9, scope: !5163)
!5199 = !DILocation(line: 155, column: 2, scope: !5163)
!5200 = !DILocation(line: 156, column: 1, scope: !5163)
!5201 = distinct !DISubprogram(name: "acpi_nondev_subnode_data_ok", scope: !3, file: !3, line: 118, type: !5164, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5202 = !DILocalVariable(name: "handle", arg: 1, scope: !5201, file: !3, line: 118, type: !167)
!5203 = !DILocation(line: 118, column: 53, scope: !5201)
!5204 = !DILocalVariable(name: "link", arg: 2, scope: !5201, file: !3, line: 119, type: !121)
!5205 = !DILocation(line: 119, column: 31, scope: !5201)
!5206 = !DILocalVariable(name: "list", arg: 3, scope: !5201, file: !3, line: 120, type: !97)
!5207 = !DILocation(line: 120, column: 24, scope: !5201)
!5208 = !DILocalVariable(name: "parent", arg: 4, scope: !5201, file: !3, line: 121, type: !195)
!5209 = !DILocation(line: 121, column: 28, scope: !5201)
!5210 = !DILocalVariable(name: "buf", scope: !5201, file: !3, line: 123, type: !2834)
!5211 = !DILocation(line: 123, column: 21, scope: !5201)
!5212 = !DILocalVariable(name: "status", scope: !5201, file: !3, line: 124, type: !2843)
!5213 = !DILocation(line: 124, column: 14, scope: !5201)
!5214 = !DILocation(line: 126, column: 38, scope: !5201)
!5215 = !DILocation(line: 126, column: 11, scope: !5201)
!5216 = !DILocation(line: 126, column: 9, scope: !5201)
!5217 = !DILocation(line: 128, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 128, column: 6)
!5219 = !DILocation(line: 128, column: 6, scope: !5201)
!5220 = !DILocation(line: 129, column: 3, scope: !5218)
!5221 = !DILocation(line: 131, column: 38, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 131, column: 6)
!5223 = !DILocation(line: 131, column: 34, scope: !5222)
!5224 = !DILocation(line: 131, column: 47, scope: !5222)
!5225 = !DILocation(line: 131, column: 55, scope: !5222)
!5226 = !DILocation(line: 131, column: 61, scope: !5222)
!5227 = !DILocation(line: 132, column: 6, scope: !5222)
!5228 = !DILocation(line: 131, column: 6, scope: !5222)
!5229 = !DILocation(line: 131, column: 6, scope: !5201)
!5230 = !DILocation(line: 133, column: 3, scope: !5222)
!5231 = !DILocation(line: 135, column: 2, scope: !5201)
!5232 = !DILocation(line: 136, column: 2, scope: !5201)
!5233 = !DILocation(line: 137, column: 1, scope: !5201)
!5234 = distinct !DISubprogram(name: "acpi_nondev_subnode_extract", scope: !3, file: !3, line: 65, type: !5235, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!213, !121, !167, !121, !97, !195}
!5237 = !DILocalVariable(name: "desc", arg: 1, scope: !5234, file: !3, line: 65, type: !121)
!5238 = !DILocation(line: 65, column: 66, scope: !5234)
!5239 = !DILocalVariable(name: "handle", arg: 2, scope: !5234, file: !3, line: 66, type: !167)
!5240 = !DILocation(line: 66, column: 18, scope: !5234)
!5241 = !DILocalVariable(name: "link", arg: 3, scope: !5234, file: !3, line: 67, type: !121)
!5242 = !DILocation(line: 67, column: 31, scope: !5234)
!5243 = !DILocalVariable(name: "list", arg: 4, scope: !5234, file: !3, line: 68, type: !97)
!5244 = !DILocation(line: 68, column: 24, scope: !5234)
!5245 = !DILocalVariable(name: "parent", arg: 5, scope: !5234, file: !3, line: 69, type: !195)
!5246 = !DILocation(line: 69, column: 28, scope: !5234)
!5247 = !DILocalVariable(name: "dn", scope: !5234, file: !3, line: 71, type: !2455)
!5248 = !DILocation(line: 71, column: 25, scope: !5234)
!5249 = !DILocalVariable(name: "result", scope: !5234, file: !3, line: 72, type: !213)
!5250 = !DILocation(line: 72, column: 7, scope: !5234)
!5251 = !DILocation(line: 74, column: 7, scope: !5234)
!5252 = !DILocation(line: 74, column: 5, scope: !5234)
!5253 = !DILocation(line: 75, column: 7, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 75, column: 6)
!5255 = !DILocation(line: 75, column: 6, scope: !5234)
!5256 = !DILocation(line: 76, column: 3, scope: !5254)
!5257 = !DILocation(line: 78, column: 13, scope: !5234)
!5258 = !DILocation(line: 78, column: 19, scope: !5234)
!5259 = !DILocation(line: 78, column: 27, scope: !5234)
!5260 = !DILocation(line: 78, column: 39, scope: !5234)
!5261 = !DILocation(line: 78, column: 46, scope: !5234)
!5262 = !DILocation(line: 78, column: 2, scope: !5234)
!5263 = !DILocation(line: 78, column: 6, scope: !5234)
!5264 = !DILocation(line: 78, column: 11, scope: !5234)
!5265 = !DILocation(line: 79, column: 2, scope: !5234)
!5266 = !DILocation(line: 79, column: 6, scope: !5234)
!5267 = !DILocation(line: 79, column: 13, scope: !5234)
!5268 = !DILocation(line: 79, column: 17, scope: !5234)
!5269 = !DILocation(line: 80, column: 15, scope: !5234)
!5270 = !DILocation(line: 80, column: 2, scope: !5234)
!5271 = !DILocation(line: 80, column: 6, scope: !5234)
!5272 = !DILocation(line: 80, column: 13, scope: !5234)
!5273 = !DILocation(line: 81, column: 18, scope: !5234)
!5274 = !DILocation(line: 81, column: 22, scope: !5234)
!5275 = !DILocation(line: 81, column: 27, scope: !5234)
!5276 = !DILocation(line: 81, column: 2, scope: !5234)
!5277 = !DILocation(line: 82, column: 18, scope: !5234)
!5278 = !DILocation(line: 82, column: 22, scope: !5234)
!5279 = !DILocation(line: 82, column: 27, scope: !5234)
!5280 = !DILocation(line: 82, column: 2, scope: !5234)
!5281 = !DILocation(line: 84, column: 35, scope: !5234)
!5282 = !DILocation(line: 84, column: 42, scope: !5234)
!5283 = !DILocation(line: 84, column: 46, scope: !5234)
!5284 = !DILocation(line: 84, column: 11, scope: !5234)
!5285 = !DILocation(line: 84, column: 9, scope: !5234)
!5286 = !DILocation(line: 86, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 86, column: 6)
!5288 = !DILocation(line: 86, column: 6, scope: !5234)
!5289 = !DILocalVariable(name: "scope", scope: !5290, file: !3, line: 87, type: !167)
!5290 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 86, column: 14)
!5291 = !DILocation(line: 87, column: 15, scope: !5290)
!5292 = !DILocalVariable(name: "status", scope: !5290, file: !3, line: 88, type: !2843)
!5293 = !DILocation(line: 88, column: 15, scope: !5290)
!5294 = !DILocation(line: 96, column: 28, scope: !5290)
!5295 = !DILocation(line: 96, column: 12, scope: !5290)
!5296 = !DILocation(line: 96, column: 10, scope: !5290)
!5297 = !DILocation(line: 97, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 97, column: 7)
!5299 = !DILocation(line: 98, column: 7, scope: !5298)
!5300 = !DILocation(line: 98, column: 41, scope: !5298)
!5301 = !DILocation(line: 98, column: 48, scope: !5298)
!5302 = !DILocation(line: 98, column: 55, scope: !5298)
!5303 = !DILocation(line: 98, column: 59, scope: !5298)
!5304 = !DILocation(line: 99, column: 14, scope: !5298)
!5305 = !DILocation(line: 99, column: 18, scope: !5298)
!5306 = !DILocation(line: 98, column: 10, scope: !5298)
!5307 = !DILocation(line: 97, column: 7, scope: !5290)
!5308 = !DILocation(line: 100, column: 11, scope: !5298)
!5309 = !DILocation(line: 100, column: 4, scope: !5298)
!5310 = !DILocation(line: 101, column: 2, scope: !5290)
!5311 = !DILocation(line: 101, column: 50, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 101, column: 13)
!5313 = !DILocation(line: 101, column: 57, scope: !5312)
!5314 = !DILocation(line: 101, column: 61, scope: !5312)
!5315 = !DILocation(line: 102, column: 10, scope: !5312)
!5316 = !DILocation(line: 102, column: 14, scope: !5312)
!5317 = !DILocation(line: 101, column: 13, scope: !5312)
!5318 = !DILocation(line: 101, column: 13, scope: !5287)
!5319 = !DILocation(line: 103, column: 10, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 102, column: 23)
!5321 = !DILocation(line: 104, column: 2, scope: !5320)
!5322 = !DILocation(line: 106, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 106, column: 6)
!5324 = !DILocation(line: 106, column: 6, scope: !5234)
!5325 = !DILocation(line: 107, column: 16, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 106, column: 14)
!5327 = !DILocation(line: 107, column: 3, scope: !5326)
!5328 = !DILocation(line: 107, column: 7, scope: !5326)
!5329 = !DILocation(line: 107, column: 14, scope: !5326)
!5330 = !DILocation(line: 108, column: 22, scope: !5326)
!5331 = !DILocation(line: 108, column: 3, scope: !5326)
!5332 = !DILocation(line: 108, column: 7, scope: !5326)
!5333 = !DILocation(line: 108, column: 12, scope: !5326)
!5334 = !DILocation(line: 108, column: 20, scope: !5326)
!5335 = !DILocation(line: 109, column: 18, scope: !5326)
!5336 = !DILocation(line: 109, column: 22, scope: !5326)
!5337 = !DILocation(line: 109, column: 31, scope: !5326)
!5338 = !DILocation(line: 109, column: 3, scope: !5326)
!5339 = !DILocation(line: 110, column: 3, scope: !5326)
!5340 = !DILocation(line: 113, column: 8, scope: !5234)
!5341 = !DILocation(line: 113, column: 2, scope: !5234)
!5342 = !DILocation(line: 114, column: 2, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 114, column: 2)
!5344 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 114, column: 2)
!5345 = !DILocation(line: 114, column: 2, scope: !5344)
!5346 = !DILocation(line: 115, column: 2, scope: !5234)
!5347 = !DILocation(line: 116, column: 1, scope: !5234)
!5348 = distinct !DISubprogram(name: "__list_del_entry", scope: !2800, file: !2800, line: 130, type: !2801, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5349 = !DILocalVariable(name: "entry", arg: 1, scope: !5348, file: !2800, line: 130, type: !97)
!5350 = !DILocation(line: 130, column: 55, scope: !5348)
!5351 = !DILocation(line: 132, column: 30, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5348, file: !2800, line: 132, column: 6)
!5353 = !DILocation(line: 132, column: 7, scope: !5352)
!5354 = !DILocation(line: 132, column: 6, scope: !5348)
!5355 = !DILocation(line: 133, column: 3, scope: !5352)
!5356 = !DILocation(line: 135, column: 13, scope: !5348)
!5357 = !DILocation(line: 135, column: 20, scope: !5348)
!5358 = !DILocation(line: 135, column: 26, scope: !5348)
!5359 = !DILocation(line: 135, column: 33, scope: !5348)
!5360 = !DILocation(line: 135, column: 2, scope: !5348)
!5361 = !DILocation(line: 136, column: 1, scope: !5348)
!5362 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2800, file: !2800, line: 51, type: !5363, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!213, !97}
!5365 = !DILocalVariable(name: "entry", arg: 1, scope: !5362, file: !2800, line: 51, type: !97)
!5366 = !DILocation(line: 51, column: 61, scope: !5362)
!5367 = !DILocation(line: 53, column: 2, scope: !5362)
!5368 = distinct !DISubprogram(name: "__list_del", scope: !2800, file: !2800, line: 110, type: !2818, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5369 = !DILocalVariable(name: "prev", arg: 1, scope: !5368, file: !2800, line: 110, type: !97)
!5370 = !DILocation(line: 110, column: 50, scope: !5368)
!5371 = !DILocalVariable(name: "next", arg: 2, scope: !5368, file: !2800, line: 110, type: !97)
!5372 = !DILocation(line: 110, column: 75, scope: !5368)
!5373 = !DILocation(line: 112, column: 15, scope: !5368)
!5374 = !DILocation(line: 112, column: 2, scope: !5368)
!5375 = !DILocation(line: 112, column: 8, scope: !5368)
!5376 = !DILocation(line: 112, column: 13, scope: !5368)
!5377 = !DILocation(line: 113, column: 2, scope: !5368)
!5378 = !DILocation(line: 113, column: 2, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5368, file: !2800, line: 113, column: 2)
!5380 = !DILocation(line: 113, column: 2, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5379, file: !2800, line: 113, column: 2)
!5382 = !DILocation(line: 113, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5379, file: !2800, line: 113, column: 2)
!5384 = !DILocation(line: 114, column: 1, scope: !5368)
!5385 = distinct !DISubprogram(name: "acpi_data_node_match", scope: !91, file: !91, line: 431, type: !2176, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5386 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5385, file: !91, line: 431, type: !215)
!5387 = !DILocation(line: 431, column: 69, scope: !5385)
!5388 = !DILocalVariable(name: "name", arg: 2, scope: !5385, file: !91, line: 432, type: !100)
!5389 = !DILocation(line: 432, column: 18, scope: !5385)
!5390 = !DILocation(line: 434, column: 27, scope: !5385)
!5391 = !DILocation(line: 434, column: 9, scope: !5385)
!5392 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !5393, file: !91, line: 435, type: !215)
!5393 = distinct !DILexicalBlock(scope: !5385, file: !91, line: 435, column: 12)
!5394 = !DILocation(line: 435, column: 12, scope: !5393)
!5395 = !DILocalVariable(name: "__mptr", scope: !5396, file: !91, line: 435, type: !88)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !91, line: 435, column: 12)
!5397 = !DILocation(line: 435, column: 12, scope: !5396)
!5398 = !DILocation(line: 435, column: 12, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5396, file: !91, line: 435, column: 12)
!5400 = !DILocation(line: 435, column: 39, scope: !5385)
!5401 = !DILocation(line: 435, column: 45, scope: !5385)
!5402 = !DILocation(line: 435, column: 5, scope: !5385)
!5403 = !DILocation(line: 435, column: 4, scope: !5385)
!5404 = !DILocation(line: 434, column: 2, scope: !5385)
!5405 = distinct !DISubprogram(name: "acpi_copy_property_array_u8", scope: !3, file: !3, line: 846, type: !5406, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!188, !121, !152, !328}
!5408 = !DILocalVariable(name: "items", arg: 1, scope: !5405, file: !3, line: 846, type: !121)
!5409 = !DILocation(line: 846, column: 65, scope: !5405)
!5410 = !DILocalVariable(name: "val", arg: 2, scope: !5405, file: !3, line: 846, type: !152)
!5411 = !DILocation(line: 846, column: 76, scope: !5405)
!5412 = !DILocalVariable(name: "nval", arg: 3, scope: !5405, file: !3, line: 847, type: !328)
!5413 = !DILocation(line: 847, column: 19, scope: !5405)
!5414 = !DILocalVariable(name: "i", scope: !5405, file: !3, line: 849, type: !188)
!5415 = !DILocation(line: 849, column: 6, scope: !5405)
!5416 = !DILocation(line: 851, column: 9, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 851, column: 2)
!5418 = !DILocation(line: 851, column: 7, scope: !5417)
!5419 = !DILocation(line: 851, column: 14, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 851, column: 2)
!5421 = !DILocation(line: 851, column: 18, scope: !5420)
!5422 = !DILocation(line: 851, column: 16, scope: !5420)
!5423 = !DILocation(line: 851, column: 2, scope: !5417)
!5424 = !DILocation(line: 852, column: 7, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 852, column: 7)
!5426 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 851, column: 29)
!5427 = !DILocation(line: 852, column: 13, scope: !5425)
!5428 = !DILocation(line: 852, column: 16, scope: !5425)
!5429 = !DILocation(line: 852, column: 21, scope: !5425)
!5430 = !DILocation(line: 852, column: 7, scope: !5426)
!5431 = !DILocation(line: 853, column: 4, scope: !5425)
!5432 = !DILocation(line: 854, column: 7, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 854, column: 7)
!5434 = !DILocation(line: 854, column: 13, scope: !5433)
!5435 = !DILocation(line: 854, column: 16, scope: !5433)
!5436 = !DILocation(line: 854, column: 24, scope: !5433)
!5437 = !DILocation(line: 854, column: 30, scope: !5433)
!5438 = !DILocation(line: 854, column: 7, scope: !5426)
!5439 = !DILocation(line: 855, column: 4, scope: !5433)
!5440 = !DILocation(line: 857, column: 12, scope: !5426)
!5441 = !DILocation(line: 857, column: 18, scope: !5426)
!5442 = !DILocation(line: 857, column: 21, scope: !5426)
!5443 = !DILocation(line: 857, column: 29, scope: !5426)
!5444 = !DILocation(line: 857, column: 3, scope: !5426)
!5445 = !DILocation(line: 857, column: 7, scope: !5426)
!5446 = !DILocation(line: 857, column: 10, scope: !5426)
!5447 = !DILocation(line: 858, column: 2, scope: !5426)
!5448 = !DILocation(line: 851, column: 25, scope: !5420)
!5449 = !DILocation(line: 851, column: 2, scope: !5420)
!5450 = distinct !{!5450, !5423, !5451}
!5451 = !DILocation(line: 858, column: 2, scope: !5417)
!5452 = !DILocation(line: 859, column: 2, scope: !5405)
!5453 = !DILocation(line: 860, column: 1, scope: !5405)
!5454 = distinct !DISubprogram(name: "acpi_copy_property_array_u16", scope: !3, file: !3, line: 862, type: !5455, scopeLine: 864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!188, !121, !2471, !328}
!5457 = !DILocalVariable(name: "items", arg: 1, scope: !5454, file: !3, line: 862, type: !121)
!5458 = !DILocation(line: 862, column: 66, scope: !5454)
!5459 = !DILocalVariable(name: "val", arg: 2, scope: !5454, file: !3, line: 863, type: !2471)
!5460 = !DILocation(line: 863, column: 11, scope: !5454)
!5461 = !DILocalVariable(name: "nval", arg: 3, scope: !5454, file: !3, line: 863, type: !328)
!5462 = !DILocation(line: 863, column: 23, scope: !5454)
!5463 = !DILocalVariable(name: "i", scope: !5454, file: !3, line: 865, type: !188)
!5464 = !DILocation(line: 865, column: 6, scope: !5454)
!5465 = !DILocation(line: 867, column: 9, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 867, column: 2)
!5467 = !DILocation(line: 867, column: 7, scope: !5466)
!5468 = !DILocation(line: 867, column: 14, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 867, column: 2)
!5470 = !DILocation(line: 867, column: 18, scope: !5469)
!5471 = !DILocation(line: 867, column: 16, scope: !5469)
!5472 = !DILocation(line: 867, column: 2, scope: !5466)
!5473 = !DILocation(line: 868, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 868, column: 7)
!5475 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 867, column: 29)
!5476 = !DILocation(line: 868, column: 13, scope: !5474)
!5477 = !DILocation(line: 868, column: 16, scope: !5474)
!5478 = !DILocation(line: 868, column: 21, scope: !5474)
!5479 = !DILocation(line: 868, column: 7, scope: !5475)
!5480 = !DILocation(line: 869, column: 4, scope: !5474)
!5481 = !DILocation(line: 870, column: 7, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 870, column: 7)
!5483 = !DILocation(line: 870, column: 13, scope: !5482)
!5484 = !DILocation(line: 870, column: 16, scope: !5482)
!5485 = !DILocation(line: 870, column: 24, scope: !5482)
!5486 = !DILocation(line: 870, column: 30, scope: !5482)
!5487 = !DILocation(line: 870, column: 7, scope: !5475)
!5488 = !DILocation(line: 871, column: 4, scope: !5482)
!5489 = !DILocation(line: 873, column: 12, scope: !5475)
!5490 = !DILocation(line: 873, column: 18, scope: !5475)
!5491 = !DILocation(line: 873, column: 21, scope: !5475)
!5492 = !DILocation(line: 873, column: 29, scope: !5475)
!5493 = !DILocation(line: 873, column: 3, scope: !5475)
!5494 = !DILocation(line: 873, column: 7, scope: !5475)
!5495 = !DILocation(line: 873, column: 10, scope: !5475)
!5496 = !DILocation(line: 874, column: 2, scope: !5475)
!5497 = !DILocation(line: 867, column: 25, scope: !5469)
!5498 = !DILocation(line: 867, column: 2, scope: !5469)
!5499 = distinct !{!5499, !5472, !5500}
!5500 = !DILocation(line: 874, column: 2, scope: !5466)
!5501 = !DILocation(line: 875, column: 2, scope: !5454)
!5502 = !DILocation(line: 876, column: 1, scope: !5454)
!5503 = distinct !DISubprogram(name: "acpi_copy_property_array_u32", scope: !3, file: !3, line: 878, type: !5504, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!188, !121, !745, !328}
!5506 = !DILocalVariable(name: "items", arg: 1, scope: !5503, file: !3, line: 878, type: !121)
!5507 = !DILocation(line: 878, column: 66, scope: !5503)
!5508 = !DILocalVariable(name: "val", arg: 2, scope: !5503, file: !3, line: 879, type: !745)
!5509 = !DILocation(line: 879, column: 11, scope: !5503)
!5510 = !DILocalVariable(name: "nval", arg: 3, scope: !5503, file: !3, line: 879, type: !328)
!5511 = !DILocation(line: 879, column: 23, scope: !5503)
!5512 = !DILocalVariable(name: "i", scope: !5503, file: !3, line: 881, type: !188)
!5513 = !DILocation(line: 881, column: 6, scope: !5503)
!5514 = !DILocation(line: 883, column: 9, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 883, column: 2)
!5516 = !DILocation(line: 883, column: 7, scope: !5515)
!5517 = !DILocation(line: 883, column: 14, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 883, column: 2)
!5519 = !DILocation(line: 883, column: 18, scope: !5518)
!5520 = !DILocation(line: 883, column: 16, scope: !5518)
!5521 = !DILocation(line: 883, column: 2, scope: !5515)
!5522 = !DILocation(line: 884, column: 7, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 884, column: 7)
!5524 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 883, column: 29)
!5525 = !DILocation(line: 884, column: 13, scope: !5523)
!5526 = !DILocation(line: 884, column: 16, scope: !5523)
!5527 = !DILocation(line: 884, column: 21, scope: !5523)
!5528 = !DILocation(line: 884, column: 7, scope: !5524)
!5529 = !DILocation(line: 885, column: 4, scope: !5523)
!5530 = !DILocation(line: 886, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 886, column: 7)
!5532 = !DILocation(line: 886, column: 13, scope: !5531)
!5533 = !DILocation(line: 886, column: 16, scope: !5531)
!5534 = !DILocation(line: 886, column: 24, scope: !5531)
!5535 = !DILocation(line: 886, column: 30, scope: !5531)
!5536 = !DILocation(line: 886, column: 7, scope: !5524)
!5537 = !DILocation(line: 887, column: 4, scope: !5531)
!5538 = !DILocation(line: 889, column: 12, scope: !5524)
!5539 = !DILocation(line: 889, column: 18, scope: !5524)
!5540 = !DILocation(line: 889, column: 21, scope: !5524)
!5541 = !DILocation(line: 889, column: 29, scope: !5524)
!5542 = !DILocation(line: 889, column: 3, scope: !5524)
!5543 = !DILocation(line: 889, column: 7, scope: !5524)
!5544 = !DILocation(line: 889, column: 10, scope: !5524)
!5545 = !DILocation(line: 890, column: 2, scope: !5524)
!5546 = !DILocation(line: 883, column: 25, scope: !5518)
!5547 = !DILocation(line: 883, column: 2, scope: !5518)
!5548 = distinct !{!5548, !5521, !5549}
!5549 = !DILocation(line: 890, column: 2, scope: !5515)
!5550 = !DILocation(line: 891, column: 2, scope: !5503)
!5551 = !DILocation(line: 892, column: 1, scope: !5503)
!5552 = distinct !DISubprogram(name: "acpi_copy_property_array_u64", scope: !3, file: !3, line: 894, type: !5553, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!188, !121, !2105, !328}
!5555 = !DILocalVariable(name: "items", arg: 1, scope: !5552, file: !3, line: 894, type: !121)
!5556 = !DILocation(line: 894, column: 66, scope: !5552)
!5557 = !DILocalVariable(name: "val", arg: 2, scope: !5552, file: !3, line: 895, type: !2105)
!5558 = !DILocation(line: 895, column: 11, scope: !5552)
!5559 = !DILocalVariable(name: "nval", arg: 3, scope: !5552, file: !3, line: 895, type: !328)
!5560 = !DILocation(line: 895, column: 23, scope: !5552)
!5561 = !DILocalVariable(name: "i", scope: !5552, file: !3, line: 897, type: !188)
!5562 = !DILocation(line: 897, column: 6, scope: !5552)
!5563 = !DILocation(line: 899, column: 9, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 899, column: 2)
!5565 = !DILocation(line: 899, column: 7, scope: !5564)
!5566 = !DILocation(line: 899, column: 14, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 899, column: 2)
!5568 = !DILocation(line: 899, column: 18, scope: !5567)
!5569 = !DILocation(line: 899, column: 16, scope: !5567)
!5570 = !DILocation(line: 899, column: 2, scope: !5564)
!5571 = !DILocation(line: 900, column: 7, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 900, column: 7)
!5573 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 899, column: 29)
!5574 = !DILocation(line: 900, column: 13, scope: !5572)
!5575 = !DILocation(line: 900, column: 16, scope: !5572)
!5576 = !DILocation(line: 900, column: 21, scope: !5572)
!5577 = !DILocation(line: 900, column: 7, scope: !5573)
!5578 = !DILocation(line: 901, column: 4, scope: !5572)
!5579 = !DILocation(line: 903, column: 12, scope: !5573)
!5580 = !DILocation(line: 903, column: 18, scope: !5573)
!5581 = !DILocation(line: 903, column: 21, scope: !5573)
!5582 = !DILocation(line: 903, column: 29, scope: !5573)
!5583 = !DILocation(line: 903, column: 3, scope: !5573)
!5584 = !DILocation(line: 903, column: 7, scope: !5573)
!5585 = !DILocation(line: 903, column: 10, scope: !5573)
!5586 = !DILocation(line: 904, column: 2, scope: !5573)
!5587 = !DILocation(line: 899, column: 25, scope: !5567)
!5588 = !DILocation(line: 899, column: 2, scope: !5567)
!5589 = distinct !{!5589, !5570, !5590}
!5590 = !DILocation(line: 904, column: 2, scope: !5564)
!5591 = !DILocation(line: 905, column: 2, scope: !5552)
!5592 = !DILocation(line: 906, column: 1, scope: !5552)
!5593 = distinct !DISubprogram(name: "acpi_copy_property_array_string", scope: !3, file: !3, line: 908, type: !5594, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!188, !121, !2472, !328}
!5596 = !DILocalVariable(name: "items", arg: 1, scope: !5593, file: !3, line: 908, type: !121)
!5597 = !DILocation(line: 908, column: 69, scope: !5593)
!5598 = !DILocalVariable(name: "val", arg: 2, scope: !5593, file: !3, line: 909, type: !2472)
!5599 = !DILocation(line: 909, column: 16, scope: !5593)
!5600 = !DILocalVariable(name: "nval", arg: 3, scope: !5593, file: !3, line: 909, type: !328)
!5601 = !DILocation(line: 909, column: 28, scope: !5593)
!5602 = !DILocalVariable(name: "i", scope: !5593, file: !3, line: 911, type: !188)
!5603 = !DILocation(line: 911, column: 6, scope: !5593)
!5604 = !DILocation(line: 913, column: 9, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 913, column: 2)
!5606 = !DILocation(line: 913, column: 7, scope: !5605)
!5607 = !DILocation(line: 913, column: 14, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 913, column: 2)
!5609 = !DILocation(line: 913, column: 18, scope: !5608)
!5610 = !DILocation(line: 913, column: 16, scope: !5608)
!5611 = !DILocation(line: 913, column: 2, scope: !5605)
!5612 = !DILocation(line: 914, column: 7, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 914, column: 7)
!5614 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 913, column: 29)
!5615 = !DILocation(line: 914, column: 13, scope: !5613)
!5616 = !DILocation(line: 914, column: 16, scope: !5613)
!5617 = !DILocation(line: 914, column: 21, scope: !5613)
!5618 = !DILocation(line: 914, column: 7, scope: !5614)
!5619 = !DILocation(line: 915, column: 4, scope: !5613)
!5620 = !DILocation(line: 917, column: 12, scope: !5614)
!5621 = !DILocation(line: 917, column: 18, scope: !5614)
!5622 = !DILocation(line: 917, column: 21, scope: !5614)
!5623 = !DILocation(line: 917, column: 28, scope: !5614)
!5624 = !DILocation(line: 917, column: 3, scope: !5614)
!5625 = !DILocation(line: 917, column: 7, scope: !5614)
!5626 = !DILocation(line: 917, column: 10, scope: !5614)
!5627 = !DILocation(line: 918, column: 2, scope: !5614)
!5628 = !DILocation(line: 913, column: 25, scope: !5608)
!5629 = !DILocation(line: 913, column: 2, scope: !5608)
!5630 = distinct !{!5630, !5611, !5631}
!5631 = !DILocation(line: 918, column: 2, scope: !5605)
!5632 = !DILocation(line: 919, column: 9, scope: !5593)
!5633 = !DILocation(line: 919, column: 2, scope: !5593)
!5634 = !DILocation(line: 920, column: 1, scope: !5593)
!5635 = distinct !DISubprogram(name: "is_acpi_graph_node", scope: !3, file: !3, line: 1109, type: !5636, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!213, !195, !100}
!5638 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5635, file: !3, line: 1109, type: !195)
!5639 = !DILocation(line: 1109, column: 54, scope: !5635)
!5640 = !DILocalVariable(name: "str", arg: 2, scope: !5635, file: !3, line: 1110, type: !100)
!5641 = !DILocation(line: 1110, column: 23, scope: !5635)
!5642 = !DILocalVariable(name: "len", scope: !5635, file: !3, line: 1112, type: !7)
!5643 = !DILocation(line: 1112, column: 15, scope: !5635)
!5644 = !DILocation(line: 1112, column: 28, scope: !5635)
!5645 = !DILocation(line: 1112, column: 21, scope: !5635)
!5646 = !DILocalVariable(name: "name", scope: !5635, file: !3, line: 1113, type: !100)
!5647 = !DILocation(line: 1113, column: 14, scope: !5635)
!5648 = !DILocation(line: 1115, column: 7, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 1115, column: 6)
!5650 = !DILocation(line: 1115, column: 11, scope: !5649)
!5651 = !DILocation(line: 1115, column: 33, scope: !5649)
!5652 = !DILocation(line: 1115, column: 15, scope: !5649)
!5653 = !DILocation(line: 1115, column: 6, scope: !5635)
!5654 = !DILocation(line: 1116, column: 3, scope: !5649)
!5655 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !5656, file: !3, line: 1118, type: !195)
!5656 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 1118, column: 9)
!5657 = !DILocation(line: 1118, column: 9, scope: !5656)
!5658 = !DILocalVariable(name: "__mptr", scope: !5659, file: !3, line: 1118, type: !88)
!5659 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 1118, column: 9)
!5660 = !DILocation(line: 1118, column: 9, scope: !5659)
!5661 = !DILocation(line: 1118, column: 9, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 1118, column: 9)
!5663 = !DILocation(line: 1118, column: 36, scope: !5635)
!5664 = !DILocation(line: 1118, column: 7, scope: !5635)
!5665 = !DILocation(line: 1120, column: 34, scope: !5635)
!5666 = !DILocation(line: 1120, column: 10, scope: !5635)
!5667 = !DILocation(line: 1120, column: 49, scope: !5635)
!5668 = !DILocation(line: 1121, column: 12, scope: !5635)
!5669 = !DILocation(line: 1121, column: 18, scope: !5635)
!5670 = !DILocation(line: 1121, column: 23, scope: !5635)
!5671 = !DILocation(line: 1121, column: 4, scope: !5635)
!5672 = !DILocation(line: 1121, column: 28, scope: !5635)
!5673 = !DILocation(line: 1121, column: 31, scope: !5635)
!5674 = !DILocation(line: 1121, column: 36, scope: !5635)
!5675 = !DILocation(line: 1121, column: 41, scope: !5635)
!5676 = !DILocation(line: 1121, column: 49, scope: !5635)
!5677 = !DILocation(line: 1122, column: 27, scope: !5635)
!5678 = !DILocation(line: 1122, column: 35, scope: !5635)
!5679 = !DILocation(line: 1122, column: 3, scope: !5635)
!5680 = !DILocation(line: 1120, column: 2, scope: !5635)
!5681 = !DILocation(line: 1123, column: 1, scope: !5635)
!5682 = distinct !DISubprogram(name: "acpi_node_get_property_reference", scope: !5683, file: !5683, line: 1090, type: !5684, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5683 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!188, !215, !100, !328, !2208}
!5686 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5682, file: !5683, line: 1091, type: !215)
!5687 = !DILocation(line: 1091, column: 33, scope: !5682)
!5688 = !DILocalVariable(name: "name", arg: 2, scope: !5682, file: !5683, line: 1092, type: !100)
!5689 = !DILocation(line: 1092, column: 17, scope: !5682)
!5690 = !DILocalVariable(name: "index", arg: 3, scope: !5682, file: !5683, line: 1092, type: !328)
!5691 = !DILocation(line: 1092, column: 30, scope: !5682)
!5692 = !DILocalVariable(name: "args", arg: 4, scope: !5682, file: !5683, line: 1093, type: !2208)
!5693 = !DILocation(line: 1093, column: 35, scope: !5682)
!5694 = !DILocation(line: 1095, column: 44, scope: !5682)
!5695 = !DILocation(line: 1095, column: 52, scope: !5682)
!5696 = !DILocation(line: 1095, column: 58, scope: !5682)
!5697 = !DILocation(line: 1096, column: 29, scope: !5682)
!5698 = !DILocation(line: 1095, column: 9, scope: !5682)
!5699 = !DILocation(line: 1095, column: 2, scope: !5682)
!5700 = distinct !DISubprogram(name: "acpi_graph_get_child_prop_value", scope: !3, file: !3, line: 1191, type: !5701, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!195, !215, !100, !7}
!5703 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5700, file: !3, line: 1192, type: !215)
!5704 = !DILocation(line: 1192, column: 30, scope: !5700)
!5705 = !DILocalVariable(name: "prop_name", arg: 2, scope: !5700, file: !3, line: 1192, type: !100)
!5706 = !DILocation(line: 1192, column: 50, scope: !5700)
!5707 = !DILocalVariable(name: "val", arg: 3, scope: !5700, file: !3, line: 1193, type: !7)
!5708 = !DILocation(line: 1193, column: 15, scope: !5700)
!5709 = !DILocalVariable(name: "child", scope: !5700, file: !3, line: 1195, type: !195)
!5710 = !DILocation(line: 1195, column: 24, scope: !5700)
!5711 = !DILocation(line: 1197, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 1197, column: 2)
!5713 = !DILocation(line: 1197, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 1197, column: 2)
!5715 = !DILocalVariable(name: "nr", scope: !5716, file: !3, line: 1198, type: !128)
!5716 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 1197, column: 44)
!5717 = !DILocation(line: 1198, column: 7, scope: !5716)
!5718 = !DILocation(line: 1200, column: 32, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 1200, column: 7)
!5720 = !DILocation(line: 1200, column: 39, scope: !5719)
!5721 = !DILocation(line: 1200, column: 7, scope: !5719)
!5722 = !DILocation(line: 1200, column: 7, scope: !5716)
!5723 = !DILocation(line: 1201, column: 4, scope: !5719)
!5724 = !DILocation(line: 1203, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 1203, column: 7)
!5726 = !DILocation(line: 1203, column: 14, scope: !5725)
!5727 = !DILocation(line: 1203, column: 11, scope: !5725)
!5728 = !DILocation(line: 1203, column: 7, scope: !5716)
!5729 = !DILocation(line: 1204, column: 11, scope: !5725)
!5730 = !DILocation(line: 1204, column: 4, scope: !5725)
!5731 = !DILocation(line: 1205, column: 2, scope: !5716)
!5732 = distinct !{!5732, !5711, !5733}
!5733 = !DILocation(line: 1205, column: 2, scope: !5712)
!5734 = !DILocation(line: 1207, column: 2, scope: !5700)
!5735 = !DILocation(line: 1208, column: 1, scope: !5700)
!5736 = distinct !DISubprogram(name: "fwnode_property_read_u32", scope: !70, file: !70, line: 197, type: !5737, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!188, !215, !100, !745}
!5739 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5736, file: !70, line: 197, type: !215)
!5740 = !DILocation(line: 197, column: 72, scope: !5736)
!5741 = !DILocalVariable(name: "propname", arg: 2, scope: !5736, file: !70, line: 198, type: !100)
!5742 = !DILocation(line: 198, column: 21, scope: !5736)
!5743 = !DILocalVariable(name: "val", arg: 3, scope: !5736, file: !70, line: 198, type: !745)
!5744 = !DILocation(line: 198, column: 36, scope: !5736)
!5745 = !DILocation(line: 200, column: 40, scope: !5736)
!5746 = !DILocation(line: 200, column: 48, scope: !5736)
!5747 = !DILocation(line: 200, column: 58, scope: !5736)
!5748 = !DILocation(line: 200, column: 9, scope: !5736)
!5749 = !DILocation(line: 200, column: 2, scope: !5736)
