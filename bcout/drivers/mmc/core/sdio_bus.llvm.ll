; ModuleID = '../bcout/drivers/mmc/core/sdio_bus.llvm.bc'
source_filename = "drivers/mmc/core/sdio_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.pm_domain_data = type { %struct.list_head, %struct.device* }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.sdio_driver = type { i8*, %struct.sdio_device_id*, i32 (%struct.sdio_func*, %struct.sdio_device_id*)*, void (%struct.sdio_func*)*, %struct.device_driver }
%struct.sdio_device_id = type { i8, i16, i16, i64 }
%struct.sdio_func = type { %struct.mmc_card*, %struct.device, void (%struct.sdio_func*)*, i32, i8, i16, i16, i32, i32, i32, i32, i8*, i8, i8, i32, i8**, %struct.sdio_func_tuple* }
%struct.mmc_card = type { %struct.mmc_host*, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x %struct.sdio_func*], %struct.sdio_func*, i8, i8, i32, i8**, %struct.sdio_func_tuple*, i32, i32, i32, %struct.dentry*, [7 x %struct.mmc_part], i32, i32, %struct.workqueue_struct* }
%struct.mmc_host = type { %struct.device*, %struct.device, i32, %struct.mmc_host_ops*, %struct.mmc_pwrseq*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.wakeup_source*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, %struct.mmc_card*, %struct.wait_queue_head, %struct.mmc_ctx*, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, %struct.mmc_bus_ops*, i32, i32, %struct.task_struct*, %struct.delayed_work, i8, %struct.atomic_t, i32, %struct.led_trigger*, %struct.mmc_supply, %struct.dentry*, %struct.mmc_request*, i32, i32, i32, i32, %struct.mmc_cqe_ops*, i8*, i32, i8, i8, i8, [41 x i8], [0 x i64] }
%struct.mmc_host_ops = type { void (%struct.mmc_host*, %struct.mmc_request*, i32)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_card*, i32, i32)* }
%struct.mmc_pwrseq = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type { void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.led_trigger = type opaque
%struct.mmc_supply = type { %struct.regulator*, %struct.regulator* }
%struct.regulator = type opaque
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command*, %struct.completion, %struct.completion, void (%struct.mmc_request*)*, void (%struct.mmc_request*)*, %struct.mmc_host*, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_command*, %struct.mmc_request*, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type opaque
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, %struct.mmc_data*, %struct.mmc_request* }
%struct.mmc_cqe_ops = type { i32 (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i1 (%struct.mmc_host*, %struct.mmc_request*, i8*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)* }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.dentry = type opaque
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.workqueue_struct = type opaque
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple*, i8, i8, [0 x i8] }
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
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque

@sdio_bus_type = internal global %struct.bus_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @sdio_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @sdio_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @sdio_bus_uevent, i32 (%struct.device*)* @sdio_bus_probe, void (%struct.device*)* null, i32 (%struct.device*)* @sdio_bus_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* @sdio_bus_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@sdio_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @sdio_dev_group, %struct.attribute_group* null], align 16, !dbg !2982
@sdio_bus_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @pm_generic_suspend, i32 (%struct.device*)* @pm_generic_resume, i32 (%struct.device*)* @pm_generic_suspend, i32 (%struct.device*)* @pm_generic_resume, i32 (%struct.device*)* @pm_generic_suspend, i32 (%struct.device*)* @pm_generic_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @pm_generic_runtime_suspend, i32 (%struct.device*)* @pm_generic_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !3022
@sdio_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([10 x %struct.attribute*], [10 x %struct.attribute*]* @sdio_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2985
@sdio_dev_attrs = internal global [10 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_class, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_vendor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_device, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_revision, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info1, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info2, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info3, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_info4, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2987
@dev_attr_class = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @class_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2992
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @vendor_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3006
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @device_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3008
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @revision_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3010
@dev_attr_info1 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info1_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3012
@dev_attr_info2 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info2_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3014
@dev_attr_info3 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info3_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3016
@dev_attr_info4 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @info4_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3018
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3020
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"info3\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"info4\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"sdio:c%02Xv%04Xd%04X\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"SDIO_CLASS=%02X\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"SDIO_ID=%04X:%04X\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"SDIO_REVISION=%u.%u\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"SDIO_INFO%u=%s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"MODALIAS=sdio:c%02Xv%04Xd%04X\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"\014WARNING: driver %s did not remove its interrupt handler!\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.22 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_register_bus() #0 !dbg !3029 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @sdio_bus_type) #7, !dbg !3032
  ret i32 %call, !dbg !3033
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_unregister_bus() #0 !dbg !3034 {
entry:
  call void @bus_unregister(%struct.bus_type* @sdio_bus_type) #7, !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_register_driver(%struct.sdio_driver* %drv) #0 !dbg !3039 {
entry:
  %drv.addr = alloca %struct.sdio_driver*, align 8
  store %struct.sdio_driver* %drv, %struct.sdio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %drv.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  %0 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3044
  %name = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %0, i32 0, i32 0, !dbg !3045
  %1 = load i8*, i8** %name, align 8, !dbg !3045
  %2 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3046
  %drv1 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %2, i32 0, i32 4, !dbg !3047
  %name2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv1, i32 0, i32 0, !dbg !3048
  store i8* %1, i8** %name2, align 8, !dbg !3049
  %3 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3050
  %drv3 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %3, i32 0, i32 4, !dbg !3051
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv3, i32 0, i32 1, !dbg !3052
  store %struct.bus_type* @sdio_bus_type, %struct.bus_type** %bus, align 8, !dbg !3053
  %4 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3054
  %drv4 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %4, i32 0, i32 4, !dbg !3055
  %call = call i32 @driver_register(%struct.device_driver* %drv4) #7, !dbg !3056
  ret i32 %call, !dbg !3057
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_unregister_driver(%struct.sdio_driver* %drv) #0 !dbg !3058 {
entry:
  %drv.addr = alloca %struct.sdio_driver*, align 8
  store %struct.sdio_driver* %drv, %struct.sdio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %drv.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  %0 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3063
  %drv1 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %0, i32 0, i32 4, !dbg !3064
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv1, i32 0, i32 1, !dbg !3065
  store %struct.bus_type* @sdio_bus_type, %struct.bus_type** %bus, align 8, !dbg !3066
  %1 = load %struct.sdio_driver*, %struct.sdio_driver** %drv.addr, align 8, !dbg !3067
  %drv2 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %1, i32 0, i32 4, !dbg !3068
  call void @driver_unregister(%struct.device_driver* %drv2) #7, !dbg !3069
  ret void, !dbg !3070
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %card) #0 !dbg !3071 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3074, metadata !DIExpression()), !dbg !3078
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3086, metadata !DIExpression()), !dbg !3087
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3088, metadata !DIExpression()), !dbg !3089
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3090, metadata !DIExpression()), !dbg !3091
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3092, metadata !DIExpression()), !dbg !3096
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3098, metadata !DIExpression()), !dbg !3102
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3104, metadata !DIExpression()), !dbg !3108
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3113, metadata !DIExpression()), !dbg !3114
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3115, metadata !DIExpression()), !dbg !3116
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3117, metadata !DIExpression()), !dbg !3118
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3119, metadata !DIExpression()), !dbg !3120
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3121, metadata !DIExpression()), !dbg !3122
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3123, metadata !DIExpression()), !dbg !3124
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3125, metadata !DIExpression()), !dbg !3126
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3127, metadata !DIExpression()), !dbg !3128
  %retval = alloca %struct.sdio_func*, align 8
  %card.addr = alloca %struct.mmc_card*, align 8
  %func = alloca %struct.sdio_func*, align 8
  store %struct.mmc_card* %card, %struct.mmc_card** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_card** %card.addr, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3131, metadata !DIExpression()), !dbg !3132
  %call = call i8* @kzalloc(i64 776, i32 3264) #7, !dbg !3133
  %0 = bitcast i8* %call to %struct.sdio_func*, !dbg !3133
  store %struct.sdio_func* %0, %struct.sdio_func** %func, align 8, !dbg !3134
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3135
  %tobool = icmp ne %struct.sdio_func* %1, null, !dbg !3135
  br i1 %tobool, label %if.end, label %if.then, !dbg !3137

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3138
  %2 = bitcast i8* %call1 to %struct.sdio_func*, !dbg !3138
  store %struct.sdio_func* %2, %struct.sdio_func** %retval, align 8, !dbg !3139
  br label %return, !dbg !3139

if.end:                                           ; preds = %entry
  store i64 4, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3140
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #8, !dbg !3141
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !3142

if.then.i:                                        ; preds = %if.end
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3143
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !3144
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3145

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3146
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !3147
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3148
  %call.i.i = call i32 @get_order(i64 %8) #9, !dbg !3149
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3122
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !3150
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3151
  %11 = load i32, i32* %order.i.i, align 4, !dbg !3152
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3153
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3154
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3155
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #10, !dbg !3156
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3156
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3156
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3156
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3156
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3157
  br label %kmalloc.exit, !dbg !3157

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !3158
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3159
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !3159
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3161

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3162
  br label %kmalloc_index.exit.i, !dbg !3162

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3163
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !3165
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3166

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3167
  br label %kmalloc_index.exit.i, !dbg !3167

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3168
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !3170
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3171

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3172
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !3173
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3174

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3175
  br label %kmalloc_index.exit.i, !dbg !3175

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3176
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !3178
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3179

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3180
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !3181
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3182

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3183
  br label %kmalloc_index.exit.i, !dbg !3183

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3184
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !3186
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3187

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3188
  br label %kmalloc_index.exit.i, !dbg !3188

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3189
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !3191
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3192

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3193
  br label %kmalloc_index.exit.i, !dbg !3193

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3194
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !3196
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3197

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3198
  br label %kmalloc_index.exit.i, !dbg !3198

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3199
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !3201
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3202

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3203
  br label %kmalloc_index.exit.i, !dbg !3203

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3204
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !3206
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3207

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !3211
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3212

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3213
  br label %kmalloc_index.exit.i, !dbg !3213

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3214
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !3216
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3217

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3218
  br label %kmalloc_index.exit.i, !dbg !3218

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !3221
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3222

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3223
  br label %kmalloc_index.exit.i, !dbg !3223

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !3226
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3227

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !3231
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3232

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3233
  br label %kmalloc_index.exit.i, !dbg !3233

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !3236
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3237

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3238
  br label %kmalloc_index.exit.i, !dbg !3238

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3239
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !3241
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3242

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3243
  br label %kmalloc_index.exit.i, !dbg !3243

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3244
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !3246
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3247

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !3251
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3252

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3253
  br label %kmalloc_index.exit.i, !dbg !3253

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3254
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !3256
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3257

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3258
  br label %kmalloc_index.exit.i, !dbg !3258

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3259
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !3261
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3262

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3263
  br label %kmalloc_index.exit.i, !dbg !3263

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3264
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !3266
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3267

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !3271
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3272

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3273
  br label %kmalloc_index.exit.i, !dbg !3273

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3274
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !3276
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3277

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3278
  br label %kmalloc_index.exit.i, !dbg !3278

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3279
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !3281
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3282

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3283
  br label %kmalloc_index.exit.i, !dbg !3283

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3284
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !3286
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3287

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3288
  br label %kmalloc_index.exit.i, !dbg !3288

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3289
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !3291
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3292

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3293
  br label %kmalloc_index.exit.i, !dbg !3293

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3294
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !3296
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3297

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3298
  br label %kmalloc_index.exit.i, !dbg !3298

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3299
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !3301
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3302

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3303
  br label %kmalloc_index.exit.i, !dbg !3303

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3304, !srcloc !3307
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !3308, !srcloc !3311
  unreachable, !dbg !3312

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !3313
  store i32 %46, i32* %index.i, align 4, !dbg !3314
  %47 = load i32, i32* %index.i, align 4, !dbg !3315
  %tobool.i = icmp ne i32 %47, 0, !dbg !3315
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3317

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3318
  br label %kmalloc.exit, !dbg !3318

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !3319
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3320
  %and.i.i = and i32 %49, 17, !dbg !3320
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3320
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3320
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3320
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3320
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3322

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3323
  br label %kmalloc_type.exit.i, !dbg !3323

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3324
  %and2.i.i = and i32 %50, 1, !dbg !3325
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3324
  %51 = zext i1 %tobool3.i.i to i64, !dbg !3324
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3324
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3326
  br label %kmalloc_type.exit.i, !dbg !3326

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !3327
  %idxprom.i = zext i32 %52 to i64, !dbg !3328
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3328
  %53 = load i32, i32* %index.i, align 4, !dbg !3329
  %idxprom6.i = zext i32 %53 to i64, !dbg !3328
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3328
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3328
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !3330
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !3331
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3332
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3333
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #10, !dbg !3334
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3334
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3334
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3334
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3334
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3091
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3335
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !3336
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3337
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3338
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #10, !dbg !3339
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3340
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !3341
  store i8* %63, i8** %retval.i, align 8, !dbg !3342
  br label %kmalloc.exit, !dbg !3342

if.end9.i:                                        ; preds = %if.end
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !3343
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !3344
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #10, !dbg !3345
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3345
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3345
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3345
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3345
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3346
  br label %kmalloc.exit, !dbg !3346

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !3347
  %67 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3348
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %67, i32 0, i32 11, !dbg !3349
  store i8* %66, i8** %tmpbuf, align 8, !dbg !3350
  %68 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3351
  %tmpbuf3 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %68, i32 0, i32 11, !dbg !3353
  %69 = load i8*, i8** %tmpbuf3, align 8, !dbg !3353
  %tobool4 = icmp ne i8* %69, null, !dbg !3351
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !3354

if.then5:                                         ; preds = %kmalloc.exit
  %70 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3355
  %71 = bitcast %struct.sdio_func* %70 to i8*, !dbg !3355
  call void @kfree(i8* %71) #7, !dbg !3357
  %call6 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3358
  %72 = bitcast i8* %call6 to %struct.sdio_func*, !dbg !3358
  store %struct.sdio_func* %72, %struct.sdio_func** %retval, align 8, !dbg !3359
  br label %return, !dbg !3359

if.end7:                                          ; preds = %kmalloc.exit
  %73 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3360
  %74 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3361
  %card8 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 0, !dbg !3362
  store %struct.mmc_card* %73, %struct.mmc_card** %card8, align 8, !dbg !3363
  %75 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3364
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %75, i32 0, i32 1, !dbg !3365
  call void @device_initialize(%struct.device* %dev) #7, !dbg !3366
  %76 = load %struct.mmc_card*, %struct.mmc_card** %card.addr, align 8, !dbg !3367
  %dev9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %76, i32 0, i32 1, !dbg !3368
  %77 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3369
  %dev10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %77, i32 0, i32 1, !dbg !3370
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 1, !dbg !3371
  store %struct.device* %dev9, %struct.device** %parent, align 8, !dbg !3372
  %78 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3373
  %dev11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %78, i32 0, i32 1, !dbg !3374
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 5, !dbg !3375
  store %struct.bus_type* @sdio_bus_type, %struct.bus_type** %bus, align 8, !dbg !3376
  %79 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3377
  %dev12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %79, i32 0, i32 1, !dbg !3378
  %release = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 31, !dbg !3379
  store void (%struct.device*)* @sdio_release_func, void (%struct.device*)** %release, align 8, !dbg !3380
  %80 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3381
  store %struct.sdio_func* %80, %struct.sdio_func** %retval, align 8, !dbg !3382
  br label %return, !dbg !3382

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %81 = load %struct.sdio_func*, %struct.sdio_func** %retval, align 8, !dbg !3383
  ret %struct.sdio_func* %81, !dbg !3383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3384 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3074, metadata !DIExpression()), !dbg !3385
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3086, metadata !DIExpression()), !dbg !3388
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3088, metadata !DIExpression()), !dbg !3389
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3090, metadata !DIExpression()), !dbg !3390
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3092, metadata !DIExpression()), !dbg !3391
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3098, metadata !DIExpression()), !dbg !3393
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3104, metadata !DIExpression()), !dbg !3395
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3113, metadata !DIExpression()), !dbg !3398
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3115, metadata !DIExpression()), !dbg !3399
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3117, metadata !DIExpression()), !dbg !3400
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3119, metadata !DIExpression()), !dbg !3401
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3121, metadata !DIExpression()), !dbg !3402
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3123, metadata !DIExpression()), !dbg !3403
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3125, metadata !DIExpression()), !dbg !3404
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3127, metadata !DIExpression()), !dbg !3405
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3408, metadata !DIExpression()), !dbg !3409
  %0 = load i64, i64* %size.addr, align 8, !dbg !3410
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3411
  %or = or i32 %1, 256, !dbg !3412
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3413
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !3414
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3415

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3416
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3417
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3418

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3419
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3420
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3421
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !3422
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3402
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3423
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3424
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3425
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3426
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3427
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3428
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !3429
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3429
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3429
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3429
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3429
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3430
  br label %kmalloc.exit, !dbg !3430

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3431
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3432
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3432
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3433

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3434
  br label %kmalloc_index.exit.i, !dbg !3434

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3435
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3436
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3437

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3438
  br label %kmalloc_index.exit.i, !dbg !3438

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3439
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3440
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3441

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3442
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3443
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3444

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3445
  br label %kmalloc_index.exit.i, !dbg !3445

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3446
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3447
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3448

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3449
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3450
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3451

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3452
  br label %kmalloc_index.exit.i, !dbg !3452

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3453
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3454
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3455

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3456
  br label %kmalloc_index.exit.i, !dbg !3456

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3457
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3458
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3459

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3460
  br label %kmalloc_index.exit.i, !dbg !3460

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3461
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3462
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3463

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3464
  br label %kmalloc_index.exit.i, !dbg !3464

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3465
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3466
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3467

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3468
  br label %kmalloc_index.exit.i, !dbg !3468

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3469
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3470
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3471

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3472
  br label %kmalloc_index.exit.i, !dbg !3472

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3473
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3474
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3475

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3476
  br label %kmalloc_index.exit.i, !dbg !3476

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3477
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3478
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3479

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3480
  br label %kmalloc_index.exit.i, !dbg !3480

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3481
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3482
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3483

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3484
  br label %kmalloc_index.exit.i, !dbg !3484

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3485
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3486
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3487

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3488
  br label %kmalloc_index.exit.i, !dbg !3488

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3489
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3490
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3491

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3492
  br label %kmalloc_index.exit.i, !dbg !3492

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3493
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3494
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3495

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3496
  br label %kmalloc_index.exit.i, !dbg !3496

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3497
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3498
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3499

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3500
  br label %kmalloc_index.exit.i, !dbg !3500

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3501
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3502
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3503

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3504
  br label %kmalloc_index.exit.i, !dbg !3504

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3505
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3506
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3507

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3508
  br label %kmalloc_index.exit.i, !dbg !3508

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3509
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3510
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3511

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3512
  br label %kmalloc_index.exit.i, !dbg !3512

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3513
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3514
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3515

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3516
  br label %kmalloc_index.exit.i, !dbg !3516

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3517
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3518
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3519

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3520
  br label %kmalloc_index.exit.i, !dbg !3520

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3521
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3522
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3523

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3524
  br label %kmalloc_index.exit.i, !dbg !3524

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3525
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3526
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3527

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3528
  br label %kmalloc_index.exit.i, !dbg !3528

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3529
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3530
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3531

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3532
  br label %kmalloc_index.exit.i, !dbg !3532

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3533
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3534
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3535

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3536
  br label %kmalloc_index.exit.i, !dbg !3536

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3537
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3538
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3539

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3540
  br label %kmalloc_index.exit.i, !dbg !3540

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3541
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3542
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3543

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3544
  br label %kmalloc_index.exit.i, !dbg !3544

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3545
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3546
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3547

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3548
  br label %kmalloc_index.exit.i, !dbg !3548

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3549, !srcloc !3307
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !3550, !srcloc !3311
  unreachable, !dbg !3551

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3552
  store i32 %45, i32* %index.i, align 4, !dbg !3553
  %46 = load i32, i32* %index.i, align 4, !dbg !3554
  %tobool.i = icmp ne i32 %46, 0, !dbg !3554
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3555

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3556
  br label %kmalloc.exit, !dbg !3556

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3557
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3558
  %and.i.i = and i32 %48, 17, !dbg !3558
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3558
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3558
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3558
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3558
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3559

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3560
  br label %kmalloc_type.exit.i, !dbg !3560

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3561
  %and2.i.i = and i32 %49, 1, !dbg !3562
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3561
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3561
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3561
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3563
  br label %kmalloc_type.exit.i, !dbg !3563

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3564
  %idxprom.i = zext i32 %51 to i64, !dbg !3565
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3565
  %52 = load i32, i32* %index.i, align 4, !dbg !3566
  %idxprom6.i = zext i32 %52 to i64, !dbg !3565
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3565
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3565
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3567
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3568
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3569
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3570
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !3571
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3571
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3571
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3571
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3571
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3390
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3572
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3573
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3574
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3575
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !3576
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3577
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3578
  store i8* %62, i8** %retval.i, align 8, !dbg !3579
  br label %kmalloc.exit, !dbg !3579

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3580
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3581
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !3582
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3582
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3582
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3582
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3582
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3583
  br label %kmalloc.exit, !dbg !3583

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3584
  ret i8* %65, !dbg !3585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3586 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3590, metadata !DIExpression()), !dbg !3591
  %0 = load i64, i64* %error.addr, align 8, !dbg !3592
  %1 = inttoptr i64 %0 to i8*, !dbg !3593
  ret i8* %1, !dbg !3594
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdio_release_func(%struct.device* %dev) #0 !dbg !3595 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3600, metadata !DIExpression()), !dbg !3602
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3602
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3602
  store i8* %1, i8** %__mptr, align 8, !dbg !3602
  br label %do.body, !dbg !3602

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3603

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3602
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3602
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !3602
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !3603
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !3602
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !3599
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3605
  call void @sdio_free_func_cis(%struct.sdio_func* %5) #7, !dbg !3606
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3607
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 15, !dbg !3608
  %7 = load i8**, i8*** %info, align 8, !dbg !3608
  %8 = bitcast i8** %7 to i8*, !dbg !3607
  call void @kfree(i8* %8) #7, !dbg !3609
  %9 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3610
  %tmpbuf = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 11, !dbg !3611
  %10 = load i8*, i8** %tmpbuf, align 8, !dbg !3611
  call void @kfree(i8* %10) #7, !dbg !3612
  %11 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3613
  %12 = bitcast %struct.sdio_func* %11 to i8*, !dbg !3613
  call void @kfree(i8* %12) #7, !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sdio_add_func(%struct.sdio_func* %func) #0 !dbg !3616 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %ret = alloca i32, align 4
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3621, metadata !DIExpression()), !dbg !3622
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3623
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 1, !dbg !3624
  %1 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3625
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %1, i32 0, i32 0, !dbg !3625
  %2 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3625
  %dev1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %2, i32 0, i32 1, !dbg !3625
  %call = call i8* @dev_name(%struct.device* %dev1) #7, !dbg !3625
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3626
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 3, !dbg !3627
  %4 = load i32, i32* %num, align 8, !dbg !3627
  %call2 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %call, i32 %4) #7, !dbg !3628
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3629
  call void @sdio_set_of_node(%struct.sdio_func* %5) #7, !dbg !3630
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3631
  call void @sdio_acpi_set_handle(%struct.sdio_func* %6) #7, !dbg !3632
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3633
  %dev3 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 1, !dbg !3634
  call void @device_enable_async_suspend(%struct.device* %dev3) #7, !dbg !3635
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3636
  %dev4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 1, !dbg !3637
  %call5 = call i32 @device_add(%struct.device* %dev4) #7, !dbg !3638
  store i32 %call5, i32* %ret, align 4, !dbg !3639
  %9 = load i32, i32* %ret, align 4, !dbg !3640
  %cmp = icmp eq i32 %9, 0, !dbg !3642
  br i1 %cmp, label %if.then, label %if.end, !dbg !3643

if.then:                                          ; preds = %entry
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3644
  %state = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 10, !dbg !3644
  %11 = load i32, i32* %state, align 8, !dbg !3644
  %or = or i32 %11, 1, !dbg !3644
  store i32 %or, i32* %state, align 8, !dbg !3644
  br label %if.end, !dbg !3644

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !3645
  ret i32 %12, !dbg !3646
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3647 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3650, metadata !DIExpression()), !dbg !3651
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3652
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3654
  %1 = load i8*, i8** %init_name, align 8, !dbg !3654
  %tobool = icmp ne i8* %1, null, !dbg !3652
  br i1 %tobool, label %if.then, label %if.end, !dbg !3655

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3656
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3657
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3657
  store i8* %3, i8** %retval, align 8, !dbg !3658
  br label %return, !dbg !3658

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3659
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3660
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !3661
  store i8* %call, i8** %retval, align 8, !dbg !3662
  br label %return, !dbg !3662

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3663
  ret i8* %5, !dbg !3663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdio_set_of_node(%struct.sdio_func* %func) #0 !dbg !3664 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %host = alloca %struct.mmc_host*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3665, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3667, metadata !DIExpression()), !dbg !3668
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3669
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3670
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3670
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3671
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3671
  store %struct.mmc_host* %2, %struct.mmc_host** %host, align 8, !dbg !3668
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3672
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3673
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 3, !dbg !3674
  %5 = load i32, i32* %num, align 8, !dbg !3674
  %call = call %struct.device_node* @mmc_of_find_child_device(%struct.mmc_host* %3, i32 %5) #7, !dbg !3675
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3676
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 1, !dbg !3677
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3678
  store %struct.device_node* %call, %struct.device_node** %of_node, align 8, !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdio_acpi_set_handle(%struct.sdio_func* %func) #0 !dbg !3681 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  %host = alloca %struct.mmc_host*, align 8
  %addr = alloca i64, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_device*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host, metadata !3684, metadata !DIExpression()), !dbg !3685
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3686
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 0, !dbg !3687
  %1 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3687
  %host1 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %1, i32 0, i32 0, !dbg !3688
  %2 = load %struct.mmc_host*, %struct.mmc_host** %host1, align 8, !dbg !3688
  store %struct.mmc_host* %2, %struct.mmc_host** %host, align 8, !dbg !3685
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !3689, metadata !DIExpression()), !dbg !3690
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3691
  %slotno = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 59, !dbg !3692
  %4 = load i32, i32* %slotno, align 4, !dbg !3692
  %conv = zext i32 %4 to i64, !dbg !3693
  %shl = shl i64 %conv, 16, !dbg !3694
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3695
  %num = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 3, !dbg !3696
  %6 = load i32, i32* %num, align 8, !dbg !3696
  %conv2 = zext i32 %6 to i64, !dbg !3695
  %or = or i64 %shl, %conv2, !dbg !3697
  store i64 %or, i64* %addr, align 8, !dbg !3690
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3698
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 1, !dbg !3699
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3700, metadata !DIExpression()), !dbg !3702
  %8 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3702
  %parent = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0, !dbg !3702
  %9 = load %struct.device*, %struct.device** %parent, align 64, !dbg !3702
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 24, !dbg !3702
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3702
  store %struct.fwnode_handle* %10, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3702
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3702
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %11) #7, !dbg !3702
  br i1 %call, label %cond.true, label %cond.false, !dbg !3702

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3703, metadata !DIExpression()), !dbg !3705
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3705
  %13 = bitcast %struct.fwnode_handle* %12 to i8*, !dbg !3705
  store i8* %13, i8** %__mptr, align 8, !dbg !3705
  br label %do.body, !dbg !3705

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3706

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %__mptr, align 8, !dbg !3705
  %add.ptr = getelementptr i8, i8* %14, i64 -16, !dbg !3705
  %15 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3705
  store %struct.acpi_device* %15, %struct.acpi_device** %tmp4, align 8, !dbg !3706
  %16 = load %struct.acpi_device*, %struct.acpi_device** %tmp4, align 8, !dbg !3705
  br label %cond.end, !dbg !3702

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3702

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %16, %do.end ], [ null, %cond.false ], !dbg !3702
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3702
  %17 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3702
  %18 = load i64, i64* %addr, align 8, !dbg !3708
  call void @acpi_preset_companion(%struct.device* %dev, %struct.acpi_device* %17, i64 %18) #7, !dbg !3709
  ret void, !dbg !3710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_enable_async_suspend(%struct.device* %dev) #0 !dbg !3711 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3714
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3716
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !3717
  %bf.load = load i16, i16* %is_prepared, align 4, !dbg !3717
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !3717
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3717
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !3717
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !3718

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3719
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !3720
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 1, !dbg !3721
  %bf.load2 = load i16, i16* %async_suspend, align 4, !dbg !3722
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !3722
  %bf.set = or i16 %bf.clear3, 2, !dbg !3722
  store i16 %bf.set, i16* %async_suspend, align 4, !dbg !3722
  br label %if.end, !dbg !3719

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3723
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sdio_remove_func(%struct.sdio_func* %func) #0 !dbg !3724 {
entry:
  %func.addr = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  %0 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3727
  %state = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %0, i32 0, i32 10, !dbg !3727
  %1 = load i32, i32* %state, align 8, !dbg !3727
  %and = and i32 %1, 1, !dbg !3727
  %tobool = icmp ne i32 %and, 0, !dbg !3727
  br i1 %tobool, label %if.end, label %if.then, !dbg !3729

if.then:                                          ; preds = %entry
  br label %return, !dbg !3730

if.end:                                           ; preds = %entry
  %2 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3731
  %dev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %2, i32 0, i32 1, !dbg !3732
  call void @device_del(%struct.device* %dev) #7, !dbg !3733
  %3 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3734
  %dev1 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %3, i32 0, i32 1, !dbg !3735
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !3736
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3736
  call void @of_node_put(%struct.device_node* %4) #7, !dbg !3737
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !3738
  %dev2 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 1, !dbg !3739
  call void @put_device(%struct.device* %dev2) #7, !dbg !3740
  br label %return, !dbg !3741

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3741
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3742 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3745, metadata !DIExpression()), !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3748 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  %sdrv = alloca %struct.sdio_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.sdio_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3755, metadata !DIExpression()), !dbg !3757
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3757
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3757
  store i8* %1, i8** %__mptr, align 8, !dbg !3757
  br label %do.body, !dbg !3757

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3758

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3757
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3757
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !3757
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !3758
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !3757
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !3754
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %sdrv, metadata !3760, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3762, metadata !DIExpression()), !dbg !3764
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3764
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !3764
  store i8* %6, i8** %__mptr1, align 8, !dbg !3764
  br label %do.body2, !dbg !3764

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3765

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !3764
  %add.ptr5 = getelementptr i8, i8* %7, i64 -32, !dbg !3764
  %8 = bitcast i8* %add.ptr5 to %struct.sdio_driver*, !dbg !3764
  store %struct.sdio_driver* %8, %struct.sdio_driver** %tmp4, align 8, !dbg !3765
  %9 = load %struct.sdio_driver*, %struct.sdio_driver** %tmp4, align 8, !dbg !3764
  store %struct.sdio_driver* %9, %struct.sdio_driver** %sdrv, align 8, !dbg !3761
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3767
  %11 = load %struct.sdio_driver*, %struct.sdio_driver** %sdrv, align 8, !dbg !3769
  %call = call %struct.sdio_device_id* @sdio_match_device(%struct.sdio_func* %10, %struct.sdio_driver* %11) #7, !dbg !3770
  %tobool = icmp ne %struct.sdio_device_id* %call, null, !dbg !3770
  br i1 %tobool, label %if.then, label %if.end, !dbg !3771

if.then:                                          ; preds = %do.end3
  store i32 1, i32* %retval, align 4, !dbg !3772
  br label %return, !dbg !3772

if.end:                                           ; preds = %do.end3
  store i32 0, i32* %retval, align 4, !dbg !3773
  br label %return, !dbg !3773

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3774
  ret i32 %12, !dbg !3774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_bus_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !3775 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3782, metadata !DIExpression()), !dbg !3784
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3784
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3784
  store i8* %1, i8** %__mptr, align 8, !dbg !3784
  br label %do.body, !dbg !3784

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3785

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3784
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3784
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !3784
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !3785
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !3784
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !3781
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3787, metadata !DIExpression()), !dbg !3788
  %5 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3789
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3791
  %class = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 4, !dbg !3792
  %7 = load i8, i8* %class, align 4, !dbg !3792
  %conv = zext i8 %7 to i32, !dbg !3791
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %conv) #7, !dbg !3793
  %tobool = icmp ne i32 %call, 0, !dbg !3793
  br i1 %tobool, label %if.then, label %if.end, !dbg !3794

if.then:                                          ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !3795
  br label %return, !dbg !3795

if.end:                                           ; preds = %do.end
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3796
  %9 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3798
  %vendor = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 5, !dbg !3799
  %10 = load i16, i16* %vendor, align 2, !dbg !3799
  %conv1 = zext i16 %10 to i32, !dbg !3798
  %11 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3800
  %device = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 6, !dbg !3801
  %12 = load i16, i16* %device, align 8, !dbg !3801
  %conv2 = zext i16 %12 to i32, !dbg !3800
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %conv1, i32 %conv2) #7, !dbg !3802
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3802
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3803

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3804
  br label %return, !dbg !3804

if.end6:                                          ; preds = %if.end
  %13 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3805
  %14 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3807
  %major_rev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 12, !dbg !3808
  %15 = load i8, i8* %major_rev, align 8, !dbg !3808
  %conv7 = zext i8 %15 to i32, !dbg !3807
  %16 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3809
  %minor_rev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 13, !dbg !3810
  %17 = load i8, i8* %minor_rev, align 1, !dbg !3810
  %conv8 = zext i8 %17 to i32, !dbg !3809
  %call9 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %conv7, i32 %conv8) #7, !dbg !3811
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3811
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3812

if.then11:                                        ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !3813
  br label %return, !dbg !3813

if.end12:                                         ; preds = %if.end6
  store i32 0, i32* %i, align 4, !dbg !3814
  br label %for.cond, !dbg !3816

for.cond:                                         ; preds = %for.inc, %if.end12
  %18 = load i32, i32* %i, align 4, !dbg !3817
  %19 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3819
  %num_info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 14, !dbg !3820
  %20 = load i32, i32* %num_info, align 4, !dbg !3820
  %cmp = icmp ult i32 %18, %20, !dbg !3821
  br i1 %cmp, label %for.body, label %for.end, !dbg !3822

for.body:                                         ; preds = %for.cond
  %21 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3823
  %22 = load i32, i32* %i, align 4, !dbg !3826
  %add = add i32 %22, 1, !dbg !3827
  %23 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3828
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 15, !dbg !3829
  %24 = load i8**, i8*** %info, align 8, !dbg !3829
  %25 = load i32, i32* %i, align 4, !dbg !3830
  %idxprom = zext i32 %25 to i64, !dbg !3828
  %arrayidx = getelementptr i8*, i8** %24, i64 %idxprom, !dbg !3828
  %26 = load i8*, i8** %arrayidx, align 8, !dbg !3828
  %call14 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %add, i8* %26) #7, !dbg !3831
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3831
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3832

if.then16:                                        ; preds = %for.body
  store i32 -12, i32* %retval, align 4, !dbg !3833
  br label %return, !dbg !3833

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !3834

for.inc:                                          ; preds = %if.end17
  %27 = load i32, i32* %i, align 4, !dbg !3835
  %inc = add i32 %27, 1, !dbg !3835
  store i32 %inc, i32* %i, align 4, !dbg !3835
  br label %for.cond, !dbg !3836, !llvm.loop !3837

for.end:                                          ; preds = %for.cond
  %28 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3839
  %29 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3841
  %class18 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 4, !dbg !3842
  %30 = load i8, i8* %class18, align 4, !dbg !3842
  %conv19 = zext i8 %30 to i32, !dbg !3841
  %31 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3843
  %vendor20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 5, !dbg !3844
  %32 = load i16, i16* %vendor20, align 2, !dbg !3844
  %conv21 = zext i16 %32 to i32, !dbg !3843
  %33 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3845
  %device22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %33, i32 0, i32 6, !dbg !3846
  %34 = load i16, i16* %device22, align 8, !dbg !3846
  %conv23 = zext i16 %34 to i32, !dbg !3845
  %call24 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %conv19, i32 %conv21, i32 %conv23) #7, !dbg !3847
  %tobool25 = icmp ne i32 %call24, 0, !dbg !3847
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3848

if.then26:                                        ; preds = %for.end
  store i32 -12, i32* %retval, align 4, !dbg !3849
  br label %return, !dbg !3849

if.end27:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !3850
  br label %return, !dbg !3850

return:                                           ; preds = %if.end27, %if.then26, %if.then16, %if.then11, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !3851
  ret i32 %35, !dbg !3851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_bus_probe(%struct.device* %dev) #0 !dbg !3852 {
entry:
  %v.addr.i1.i41 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i41, metadata !3853, metadata !DIExpression()), !dbg !3859
  %v.addr.i.i42 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i42, metadata !3864, metadata !DIExpression()), !dbg !3872
  %size.addr.i.i43 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i43, metadata !3874, metadata !DIExpression()), !dbg !3875
  %v.addr.i44 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i44, metadata !3876, metadata !DIExpression()), !dbg !3877
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3878, metadata !DIExpression()), !dbg !3880
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3864, metadata !DIExpression()), !dbg !3884
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3874, metadata !DIExpression()), !dbg !3886
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3887, metadata !DIExpression()), !dbg !3888
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.sdio_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_driver*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.sdio_func*, align 8
  %id = alloca %struct.sdio_device_id*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %drv, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3893, metadata !DIExpression()), !dbg !3895
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3895
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3895
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3895
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3895
  store i8* %2, i8** %__mptr, align 8, !dbg !3895
  br label %do.body, !dbg !3895

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3896

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3895
  %add.ptr = getelementptr i8, i8* %3, i64 -32, !dbg !3895
  %4 = bitcast i8* %add.ptr to %struct.sdio_driver*, !dbg !3895
  store %struct.sdio_driver* %4, %struct.sdio_driver** %tmp, align 8, !dbg !3896
  %5 = load %struct.sdio_driver*, %struct.sdio_driver** %tmp, align 8, !dbg !3895
  store %struct.sdio_driver* %5, %struct.sdio_driver** %drv, align 8, !dbg !3892
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !3898, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3900, metadata !DIExpression()), !dbg !3902
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3902
  %7 = bitcast %struct.device* %6 to i8*, !dbg !3902
  store i8* %7, i8** %__mptr1, align 8, !dbg !3902
  br label %do.body2, !dbg !3902

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3903

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3902
  %add.ptr5 = getelementptr i8, i8* %8, i64 -8, !dbg !3902
  %9 = bitcast i8* %add.ptr5 to %struct.sdio_func*, !dbg !3902
  store %struct.sdio_func* %9, %struct.sdio_func** %tmp4, align 8, !dbg !3903
  %10 = load %struct.sdio_func*, %struct.sdio_func** %tmp4, align 8, !dbg !3902
  store %struct.sdio_func* %10, %struct.sdio_func** %func, align 8, !dbg !3899
  call void @llvm.dbg.declare(metadata %struct.sdio_device_id** %id, metadata !3905, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3907, metadata !DIExpression()), !dbg !3908
  %11 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3909
  %12 = load %struct.sdio_driver*, %struct.sdio_driver** %drv, align 8, !dbg !3910
  %call = call %struct.sdio_device_id* @sdio_match_device(%struct.sdio_func* %11, %struct.sdio_driver* %12) #7, !dbg !3911
  store %struct.sdio_device_id* %call, %struct.sdio_device_id** %id, align 8, !dbg !3912
  %13 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id, align 8, !dbg !3913
  %tobool = icmp ne %struct.sdio_device_id* %13, null, !dbg !3913
  br i1 %tobool, label %if.end, label %if.then, !dbg !3915

if.then:                                          ; preds = %do.end3
  store i32 -19, i32* %retval, align 4, !dbg !3916
  br label %return, !dbg !3916

if.end:                                           ; preds = %do.end3
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3917
  %call6 = call i32 @dev_pm_domain_attach(%struct.device* %14, i1 zeroext false) #7, !dbg !3918
  store i32 %call6, i32* %ret, align 4, !dbg !3919
  %15 = load i32, i32* %ret, align 4, !dbg !3920
  %tobool7 = icmp ne i32 %15, 0, !dbg !3920
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3922

if.then8:                                         ; preds = %if.end
  %16 = load i32, i32* %ret, align 4, !dbg !3923
  store i32 %16, i32* %retval, align 4, !dbg !3924
  br label %return, !dbg !3924

if.end9:                                          ; preds = %if.end
  %17 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3925
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %17, i32 0, i32 0, !dbg !3926
  %18 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !3926
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 26, !dbg !3927
  store %struct.atomic_t* %sdio_funcs_probed, %struct.atomic_t** %v.addr.i, align 8
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3928
  %20 = bitcast %struct.atomic_t* %19 to i8*, !dbg !3928
  store i8* %20, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %21 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3929
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3930
  %conv.i.i = trunc i64 %22 to i32, !dbg !3930
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %21, i32 %conv.i.i) #10, !dbg !3931
  %23 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3932
  %24 = load i64, i64* %size.addr.i.i, align 8, !dbg !3932
  call void @kcsan_check_access(i8* %23, i64 %24, i32 7) #10, !dbg !3932
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3933
  store %struct.atomic_t* %25, %struct.atomic_t** %v.addr.i1.i, align 8
  %26 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3934
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %26, i32 0, i32 0, !dbg !3935
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #8, !dbg !3936, !srcloc !3937
  %27 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3938
  %card10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %27, i32 0, i32 0, !dbg !3940
  %28 = load %struct.mmc_card*, %struct.mmc_card** %card10, align 8, !dbg !3940
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 0, !dbg !3941
  %29 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !3941
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 17, !dbg !3942
  %30 = load i32, i32* %caps, align 4, !dbg !3942
  %and = and i32 %30, 16384, !dbg !3943
  %tobool11 = icmp ne i32 %and, 0, !dbg !3943
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !3944

if.then12:                                        ; preds = %if.end9
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3945
  %call13 = call i32 @pm_runtime_get_sync(%struct.device* %31) #7, !dbg !3947
  store i32 %call13, i32* %ret, align 4, !dbg !3948
  %32 = load i32, i32* %ret, align 4, !dbg !3949
  %cmp = icmp slt i32 %32, 0, !dbg !3951
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !3952

if.then14:                                        ; preds = %if.then12
  br label %disable_runtimepm, !dbg !3953

if.end15:                                         ; preds = %if.then12
  br label %if.end16, !dbg !3954

if.end16:                                         ; preds = %if.end15, %if.end9
  %33 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3955
  call void @sdio_claim_host(%struct.sdio_func* %33) #7, !dbg !3956
  %34 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3957
  %card17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 0, !dbg !3957
  %35 = load %struct.mmc_card*, %struct.mmc_card** %card17, align 8, !dbg !3957
  %tobool18 = icmp ne %struct.mmc_card* %35, null, !dbg !3957
  br i1 %tobool18, label %land.lhs.true, label %if.else, !dbg !3957

land.lhs.true:                                    ; preds = %if.end16
  %36 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3957
  %card19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %36, i32 0, i32 0, !dbg !3957
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card19, align 8, !dbg !3957
  %state = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 5, !dbg !3957
  %38 = load i32, i32* %state, align 4, !dbg !3957
  %and20 = and i32 %38, 16, !dbg !3957
  %tobool21 = icmp ne i32 %and20, 0, !dbg !3957
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !3959

if.then22:                                        ; preds = %land.lhs.true
  store i32 -123, i32* %ret, align 4, !dbg !3960
  br label %if.end24, !dbg !3961

if.else:                                          ; preds = %land.lhs.true, %if.end16
  %39 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3962
  %call23 = call i32 @sdio_set_block_size(%struct.sdio_func* %39, i32 0) #7, !dbg !3963
  store i32 %call23, i32* %ret, align 4, !dbg !3964
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %40 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3965
  call void @sdio_release_host(%struct.sdio_func* %40) #7, !dbg !3966
  %41 = load i32, i32* %ret, align 4, !dbg !3967
  %tobool25 = icmp ne i32 %41, 0, !dbg !3967
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3969

if.then26:                                        ; preds = %if.end24
  br label %disable_runtimepm, !dbg !3970

if.end27:                                         ; preds = %if.end24
  %42 = load %struct.sdio_driver*, %struct.sdio_driver** %drv, align 8, !dbg !3971
  %probe = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %42, i32 0, i32 2, !dbg !3972
  %43 = load i32 (%struct.sdio_func*, %struct.sdio_device_id*)*, i32 (%struct.sdio_func*, %struct.sdio_device_id*)** %probe, align 8, !dbg !3972
  %44 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3973
  %45 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id, align 8, !dbg !3974
  %call28 = call i32 %43(%struct.sdio_func* %44, %struct.sdio_device_id* %45) #7, !dbg !3971
  store i32 %call28, i32* %ret, align 4, !dbg !3975
  %46 = load i32, i32* %ret, align 4, !dbg !3976
  %tobool29 = icmp ne i32 %46, 0, !dbg !3976
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !3978

if.then30:                                        ; preds = %if.end27
  br label %disable_runtimepm, !dbg !3979

if.end31:                                         ; preds = %if.end27
  store i32 0, i32* %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

disable_runtimepm:                                ; preds = %if.then30, %if.then26, %if.then14
  call void @llvm.dbg.label(metadata !3981), !dbg !3982
  %47 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3983
  %card32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0, !dbg !3984
  %48 = load %struct.mmc_card*, %struct.mmc_card** %card32, align 8, !dbg !3984
  %sdio_funcs_probed33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 26, !dbg !3985
  store %struct.atomic_t* %sdio_funcs_probed33, %struct.atomic_t** %v.addr.i44, align 8
  %49 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i44, align 8, !dbg !3986
  %50 = bitcast %struct.atomic_t* %49 to i8*, !dbg !3986
  store i8* %50, i8** %v.addr.i.i42, align 8
  store i64 4, i64* %size.addr.i.i43, align 8
  %51 = load i8*, i8** %v.addr.i.i42, align 8, !dbg !3987
  %52 = load i64, i64* %size.addr.i.i43, align 8, !dbg !3988
  %conv.i.i45 = trunc i64 %52 to i32, !dbg !3988
  %call.i.i46 = call zeroext i1 @kasan_check_write(i8* %51, i32 %conv.i.i45) #10, !dbg !3989
  %53 = load i8*, i8** %v.addr.i.i42, align 8, !dbg !3990
  %54 = load i64, i64* %size.addr.i.i43, align 8, !dbg !3990
  call void @kcsan_check_access(i8* %53, i64 %54, i32 7) #10, !dbg !3990
  %55 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i44, align 8, !dbg !3991
  store %struct.atomic_t* %55, %struct.atomic_t** %v.addr.i1.i41, align 8
  %56 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i41, align 8, !dbg !3992
  %counter.i.i47 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %56, i32 0, i32 0, !dbg !3993
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i47, i32* %counter.i.i47) #8, !dbg !3994, !srcloc !3995
  %57 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !3996
  %card34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %57, i32 0, i32 0, !dbg !3998
  %58 = load %struct.mmc_card*, %struct.mmc_card** %card34, align 8, !dbg !3998
  %host35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 0, !dbg !3999
  %59 = load %struct.mmc_host*, %struct.mmc_host** %host35, align 8, !dbg !3999
  %caps36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 17, !dbg !4000
  %60 = load i32, i32* %caps36, align 4, !dbg !4000
  %and37 = and i32 %60, 16384, !dbg !4001
  %tobool38 = icmp ne i32 %and37, 0, !dbg !4001
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4002

if.then39:                                        ; preds = %disable_runtimepm
  %61 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4003
  call void @pm_runtime_put_noidle(%struct.device* %61) #7, !dbg !4004
  br label %if.end40, !dbg !4004

if.end40:                                         ; preds = %if.then39, %disable_runtimepm
  %62 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4005
  call void @dev_pm_domain_detach(%struct.device* %62, i1 zeroext false) #7, !dbg !4006
  %63 = load i32, i32* %ret, align 4, !dbg !4007
  store i32 %63, i32* %retval, align 4, !dbg !4008
  br label %return, !dbg !4008

return:                                           ; preds = %if.end40, %if.end31, %if.then8, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !4009
  ret i32 %64, !dbg !4009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sdio_bus_remove(%struct.device* %dev) #0 !dbg !4010 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !3853, metadata !DIExpression()), !dbg !4011
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3864, metadata !DIExpression()), !dbg !4014
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3874, metadata !DIExpression()), !dbg !4016
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !3876, metadata !DIExpression()), !dbg !4017
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.sdio_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_driver*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %drv, metadata !4020, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4022, metadata !DIExpression()), !dbg !4024
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4024
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !4024
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4024
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !4024
  store i8* %2, i8** %__mptr, align 8, !dbg !4024
  br label %do.body, !dbg !4024

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4025

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4024
  %add.ptr = getelementptr i8, i8* %3, i64 -32, !dbg !4024
  %4 = bitcast i8* %add.ptr to %struct.sdio_driver*, !dbg !4024
  store %struct.sdio_driver* %4, %struct.sdio_driver** %tmp, align 8, !dbg !4025
  %5 = load %struct.sdio_driver*, %struct.sdio_driver** %tmp, align 8, !dbg !4024
  store %struct.sdio_driver* %5, %struct.sdio_driver** %drv, align 8, !dbg !4021
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4029, metadata !DIExpression()), !dbg !4031
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4031
  %7 = bitcast %struct.device* %6 to i8*, !dbg !4031
  store i8* %7, i8** %__mptr1, align 8, !dbg !4031
  br label %do.body2, !dbg !4031

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4032

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !4031
  %add.ptr5 = getelementptr i8, i8* %8, i64 -8, !dbg !4031
  %9 = bitcast i8* %add.ptr5 to %struct.sdio_func*, !dbg !4031
  store %struct.sdio_func* %9, %struct.sdio_func** %tmp4, align 8, !dbg !4032
  %10 = load %struct.sdio_func*, %struct.sdio_func** %tmp4, align 8, !dbg !4031
  store %struct.sdio_func* %10, %struct.sdio_func** %func, align 8, !dbg !4028
  %11 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4034
  %card = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 0, !dbg !4036
  %12 = load %struct.mmc_card*, %struct.mmc_card** %card, align 8, !dbg !4036
  %host = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 0, !dbg !4037
  %13 = load %struct.mmc_host*, %struct.mmc_host** %host, align 8, !dbg !4037
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 17, !dbg !4038
  %14 = load i32, i32* %caps, align 4, !dbg !4038
  %and = and i32 %14, 16384, !dbg !4039
  %tobool = icmp ne i32 %and, 0, !dbg !4039
  br i1 %tobool, label %if.then, label %if.end, !dbg !4040

if.then:                                          ; preds = %do.end3
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4041
  %call = call i32 @pm_runtime_get_sync(%struct.device* %15) #7, !dbg !4042
  br label %if.end, !dbg !4042

if.end:                                           ; preds = %if.then, %do.end3
  %16 = load %struct.sdio_driver*, %struct.sdio_driver** %drv, align 8, !dbg !4043
  %remove = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %16, i32 0, i32 3, !dbg !4044
  %17 = load void (%struct.sdio_func*)*, void (%struct.sdio_func*)** %remove, align 8, !dbg !4044
  %18 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4045
  call void %17(%struct.sdio_func* %18) #7, !dbg !4043
  %19 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4046
  %card6 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 0, !dbg !4047
  %20 = load %struct.mmc_card*, %struct.mmc_card** %card6, align 8, !dbg !4047
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 26, !dbg !4048
  store %struct.atomic_t* %sdio_funcs_probed, %struct.atomic_t** %v.addr.i, align 8
  %21 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4049
  %22 = bitcast %struct.atomic_t* %21 to i8*, !dbg !4049
  store i8* %22, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %23 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4050
  %24 = load i64, i64* %size.addr.i.i, align 8, !dbg !4051
  %conv.i.i = trunc i64 %24 to i32, !dbg !4051
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %23, i32 %conv.i.i) #10, !dbg !4052
  %25 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4053
  %26 = load i64, i64* %size.addr.i.i, align 8, !dbg !4053
  call void @kcsan_check_access(i8* %25, i64 %26, i32 7) #10, !dbg !4053
  %27 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4054
  store %struct.atomic_t* %27, %struct.atomic_t** %v.addr.i1.i, align 8
  %28 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4055
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %28, i32 0, i32 0, !dbg !4056
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #8, !dbg !4057, !srcloc !3995
  %29 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4058
  %irq_handler = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 2, !dbg !4060
  %30 = load void (%struct.sdio_func*)*, void (%struct.sdio_func*)** %irq_handler, align 8, !dbg !4060
  %tobool7 = icmp ne void (%struct.sdio_func*)* %30, null, !dbg !4058
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !4061

if.then8:                                         ; preds = %if.end
  %31 = load %struct.sdio_driver*, %struct.sdio_driver** %drv, align 8, !dbg !4062
  %name = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %31, i32 0, i32 0, !dbg !4062
  %32 = load i8*, i8** %name, align 8, !dbg !4062
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0), i8* %32) #11, !dbg !4062
  %33 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4064
  call void @sdio_claim_host(%struct.sdio_func* %33) #7, !dbg !4065
  %34 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4066
  %call10 = call i32 @sdio_release_irq(%struct.sdio_func* %34) #7, !dbg !4067
  %35 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4068
  call void @sdio_release_host(%struct.sdio_func* %35) #7, !dbg !4069
  br label %if.end11, !dbg !4070

if.end11:                                         ; preds = %if.then8, %if.end
  %36 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4071
  %card12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %36, i32 0, i32 0, !dbg !4073
  %37 = load %struct.mmc_card*, %struct.mmc_card** %card12, align 8, !dbg !4073
  %host13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 0, !dbg !4074
  %38 = load %struct.mmc_host*, %struct.mmc_host** %host13, align 8, !dbg !4074
  %caps14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 17, !dbg !4075
  %39 = load i32, i32* %caps14, align 4, !dbg !4075
  %and15 = and i32 %39, 16384, !dbg !4076
  %tobool16 = icmp ne i32 %and15, 0, !dbg !4076
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4077

if.then17:                                        ; preds = %if.end11
  %40 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4078
  call void @pm_runtime_put_noidle(%struct.device* %40) #7, !dbg !4079
  br label %if.end18, !dbg !4079

if.end18:                                         ; preds = %if.then17, %if.end11
  %41 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4080
  %card19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0, !dbg !4082
  %42 = load %struct.mmc_card*, %struct.mmc_card** %card19, align 8, !dbg !4082
  %host20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 0, !dbg !4083
  %43 = load %struct.mmc_host*, %struct.mmc_host** %host20, align 8, !dbg !4083
  %caps21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 17, !dbg !4084
  %44 = load i32, i32* %caps21, align 4, !dbg !4084
  %and22 = and i32 %44, 16384, !dbg !4085
  %tobool23 = icmp ne i32 %and22, 0, !dbg !4085
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !4086

if.then24:                                        ; preds = %if.end18
  %45 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4087
  %call25 = call i32 @pm_runtime_put_sync(%struct.device* %45) #7, !dbg !4088
  br label %if.end26, !dbg !4088

if.end26:                                         ; preds = %if.then24, %if.end18
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4089
  call void @dev_pm_domain_detach(%struct.device* %46, i1 zeroext false) #7, !dbg !4090
  ret i32 0, !dbg !4091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @class_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4092 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4095, metadata !DIExpression()), !dbg !4094
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4096, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4097, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4098, metadata !DIExpression()), !dbg !4100
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4100
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4100
  store i8* %1, i8** %__mptr, align 8, !dbg !4100
  br label %do.body, !dbg !4100

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4101

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4100
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4100
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4100
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4101
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4100
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4094
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4094
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4094
  %class = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 4, !dbg !4094
  %7 = load i8, i8* %class, align 4, !dbg !4094
  %conv = zext i8 %7 to i32, !dbg !4094
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %conv) #7, !dbg !4094
  %conv1 = sext i32 %call to i64, !dbg !4094
  ret i64 %conv1, !dbg !4094
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vendor_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4103 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4106, metadata !DIExpression()), !dbg !4105
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4107, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4108, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4109, metadata !DIExpression()), !dbg !4111
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4111
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4111
  store i8* %1, i8** %__mptr, align 8, !dbg !4111
  br label %do.body, !dbg !4111

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4112

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4111
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4111
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4111
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4112
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4111
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4105
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4105
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4105
  %vendor = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 5, !dbg !4105
  %7 = load i16, i16* %vendor, align 2, !dbg !4105
  %conv = zext i16 %7 to i32, !dbg !4105
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %conv) #7, !dbg !4105
  %conv1 = sext i32 %call to i64, !dbg !4105
  ret i64 %conv1, !dbg !4105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @device_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4114 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4115, metadata !DIExpression()), !dbg !4116
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4117, metadata !DIExpression()), !dbg !4116
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4118, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4119, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4120, metadata !DIExpression()), !dbg !4122
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4122
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4122
  store i8* %1, i8** %__mptr, align 8, !dbg !4122
  br label %do.body, !dbg !4122

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4123

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4122
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4122
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4122
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4123
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4122
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4116
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4116
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4116
  %device = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 6, !dbg !4116
  %7 = load i16, i16* %device, align 8, !dbg !4116
  %conv = zext i16 %7 to i32, !dbg !4116
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %conv) #7, !dbg !4116
  %conv1 = sext i32 %call to i64, !dbg !4116
  ret i64 %conv1, !dbg !4116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @revision_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4125 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4126, metadata !DIExpression()), !dbg !4127
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4128, metadata !DIExpression()), !dbg !4127
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4129, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4130, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4131, metadata !DIExpression()), !dbg !4133
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4133
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4133
  store i8* %1, i8** %__mptr, align 8, !dbg !4133
  br label %do.body, !dbg !4133

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4134

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4133
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4133
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4133
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4134
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4133
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4127
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4127
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4127
  %major_rev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 12, !dbg !4127
  %7 = load i8, i8* %major_rev, align 8, !dbg !4127
  %conv = zext i8 %7 to i32, !dbg !4127
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4127
  %minor_rev = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 13, !dbg !4127
  %9 = load i8, i8* %minor_rev, align 1, !dbg !4127
  %conv1 = zext i8 %9 to i32, !dbg !4127
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %conv, i32 %conv1) #7, !dbg !4127
  %conv2 = sext i32 %call to i64, !dbg !4127
  ret i64 %conv2, !dbg !4127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info1_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4136 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4139, metadata !DIExpression()), !dbg !4138
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4140, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4141, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4142, metadata !DIExpression()), !dbg !4144
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4144
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4144
  store i8* %1, i8** %__mptr, align 8, !dbg !4144
  br label %do.body, !dbg !4144

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4145

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4144
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4144
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4144
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4145
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4144
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4138
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4147
  %num_info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 14, !dbg !4147
  %6 = load i32, i32* %num_info, align 4, !dbg !4147
  %cmp = icmp ugt i32 1, %6, !dbg !4147
  br i1 %cmp, label %if.then, label %if.end, !dbg !4138

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4147
  br label %return, !dbg !4147

if.end:                                           ; preds = %do.end
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4149
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 15, !dbg !4149
  %8 = load i8**, i8*** %info, align 8, !dbg !4149
  %arrayidx = getelementptr i8*, i8** %8, i64 0, !dbg !4149
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4149
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4149
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4149
  %tobool = icmp ne i8 %10, 0, !dbg !4149
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4138

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4149
  br label %return, !dbg !4149

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4138
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4138
  %info4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 15, !dbg !4138
  %13 = load i8**, i8*** %info4, align 8, !dbg !4138
  %arrayidx5 = getelementptr i8*, i8** %13, i64 0, !dbg !4138
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4138
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %14) #7, !dbg !4138
  %conv = sext i32 %call to i64, !dbg !4138
  store i64 %conv, i64* %retval, align 8, !dbg !4138
  br label %return, !dbg !4138

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4138
  ret i64 %15, !dbg !4138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info2_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4151 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4154, metadata !DIExpression()), !dbg !4153
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4155, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4156, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4157, metadata !DIExpression()), !dbg !4159
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4159
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4159
  store i8* %1, i8** %__mptr, align 8, !dbg !4159
  br label %do.body, !dbg !4159

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4160

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4159
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4159
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4159
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4160
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4159
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4153
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4162
  %num_info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 14, !dbg !4162
  %6 = load i32, i32* %num_info, align 4, !dbg !4162
  %cmp = icmp ugt i32 2, %6, !dbg !4162
  br i1 %cmp, label %if.then, label %if.end, !dbg !4153

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4162
  br label %return, !dbg !4162

if.end:                                           ; preds = %do.end
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4164
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 15, !dbg !4164
  %8 = load i8**, i8*** %info, align 8, !dbg !4164
  %arrayidx = getelementptr i8*, i8** %8, i64 1, !dbg !4164
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4164
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4164
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4164
  %tobool = icmp ne i8 %10, 0, !dbg !4164
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4153

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4164
  br label %return, !dbg !4164

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4153
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4153
  %info4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 15, !dbg !4153
  %13 = load i8**, i8*** %info4, align 8, !dbg !4153
  %arrayidx5 = getelementptr i8*, i8** %13, i64 1, !dbg !4153
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4153
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %14) #7, !dbg !4153
  %conv = sext i32 %call to i64, !dbg !4153
  store i64 %conv, i64* %retval, align 8, !dbg !4153
  br label %return, !dbg !4153

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4153
  ret i64 %15, !dbg !4153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info3_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4166 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4167, metadata !DIExpression()), !dbg !4168
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4169, metadata !DIExpression()), !dbg !4168
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4170, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4171, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4172, metadata !DIExpression()), !dbg !4174
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4174
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4174
  store i8* %1, i8** %__mptr, align 8, !dbg !4174
  br label %do.body, !dbg !4174

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4175

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4174
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4174
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4174
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4175
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4174
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4168
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4177
  %num_info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 14, !dbg !4177
  %6 = load i32, i32* %num_info, align 4, !dbg !4177
  %cmp = icmp ugt i32 3, %6, !dbg !4177
  br i1 %cmp, label %if.then, label %if.end, !dbg !4168

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4177
  br label %return, !dbg !4177

if.end:                                           ; preds = %do.end
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4179
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 15, !dbg !4179
  %8 = load i8**, i8*** %info, align 8, !dbg !4179
  %arrayidx = getelementptr i8*, i8** %8, i64 2, !dbg !4179
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4179
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4179
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4179
  %tobool = icmp ne i8 %10, 0, !dbg !4179
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4168

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4179
  br label %return, !dbg !4179

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4168
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4168
  %info4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 15, !dbg !4168
  %13 = load i8**, i8*** %info4, align 8, !dbg !4168
  %arrayidx5 = getelementptr i8*, i8** %13, i64 2, !dbg !4168
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4168
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %14) #7, !dbg !4168
  %conv = sext i32 %call to i64, !dbg !4168
  store i64 %conv, i64* %retval, align 8, !dbg !4168
  br label %return, !dbg !4168

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4168
  ret i64 %15, !dbg !4168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @info4_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4181 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4182, metadata !DIExpression()), !dbg !4183
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4184, metadata !DIExpression()), !dbg !4183
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4185, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4186, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4187, metadata !DIExpression()), !dbg !4189
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4189
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4189
  store i8* %1, i8** %__mptr, align 8, !dbg !4189
  br label %do.body, !dbg !4189

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4190

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4189
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4189
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4189
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4190
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4189
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4183
  %5 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4192
  %num_info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 14, !dbg !4192
  %6 = load i32, i32* %num_info, align 4, !dbg !4192
  %cmp = icmp ugt i32 4, %6, !dbg !4192
  br i1 %cmp, label %if.then, label %if.end, !dbg !4183

if.then:                                          ; preds = %do.end
  store i64 -61, i64* %retval, align 8, !dbg !4192
  br label %return, !dbg !4192

if.end:                                           ; preds = %do.end
  %7 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4194
  %info = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 15, !dbg !4194
  %8 = load i8**, i8*** %info, align 8, !dbg !4194
  %arrayidx = getelementptr i8*, i8** %8, i64 3, !dbg !4194
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !4194
  %arrayidx1 = getelementptr i8, i8* %9, i64 0, !dbg !4194
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !4194
  %tobool = icmp ne i8 %10, 0, !dbg !4194
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4183

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4194
  br label %return, !dbg !4194

if.end3:                                          ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4183
  %12 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4183
  %info4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 15, !dbg !4183
  %13 = load i8**, i8*** %info4, align 8, !dbg !4183
  %arrayidx5 = getelementptr i8*, i8** %13, i64 3, !dbg !4183
  %14 = load i8*, i8** %arrayidx5, align 8, !dbg !4183
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %14) #7, !dbg !4183
  %conv = sext i32 %call to i64, !dbg !4183
  store i64 %conv, i64* %retval, align 8, !dbg !4183
  br label %return, !dbg !4183

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4183
  ret i64 %15, !dbg !4183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4196 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %func = alloca %struct.sdio_func*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sdio_func*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4199, metadata !DIExpression()), !dbg !4198
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4200, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func, metadata !4201, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4202, metadata !DIExpression()), !dbg !4204
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4204
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4204
  store i8* %1, i8** %__mptr, align 8, !dbg !4204
  br label %do.body, !dbg !4204

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4205

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4204
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4204
  %3 = bitcast i8* %add.ptr to %struct.sdio_func*, !dbg !4204
  store %struct.sdio_func* %3, %struct.sdio_func** %tmp, align 8, !dbg !4205
  %4 = load %struct.sdio_func*, %struct.sdio_func** %tmp, align 8, !dbg !4204
  store %struct.sdio_func* %4, %struct.sdio_func** %func, align 8, !dbg !4198
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4198
  %6 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4198
  %class = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 4, !dbg !4198
  %7 = load i8, i8* %class, align 4, !dbg !4198
  %conv = zext i8 %7 to i32, !dbg !4198
  %8 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4198
  %vendor = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 5, !dbg !4198
  %9 = load i16, i16* %vendor, align 2, !dbg !4198
  %conv1 = zext i16 %9 to i32, !dbg !4198
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func, align 8, !dbg !4198
  %device = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 6, !dbg !4198
  %11 = load i16, i16* %device, align 8, !dbg !4198
  %conv2 = zext i16 %11 to i32, !dbg !4198
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %conv, i32 %conv1, i32 %conv2) #7, !dbg !4198
  %conv3 = sext i32 %call to i64, !dbg !4198
  ret i64 %conv3, !dbg !4198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sdio_device_id* @sdio_match_device(%struct.sdio_func* %func, %struct.sdio_driver* %sdrv) #0 !dbg !4207 {
entry:
  %retval = alloca %struct.sdio_device_id*, align 8
  %func.addr = alloca %struct.sdio_func*, align 8
  %sdrv.addr = alloca %struct.sdio_driver*, align 8
  %ids = alloca %struct.sdio_device_id*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  store %struct.sdio_driver* %sdrv, %struct.sdio_driver** %sdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_driver** %sdrv.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.sdio_device_id** %ids, metadata !4214, metadata !DIExpression()), !dbg !4215
  %0 = load %struct.sdio_driver*, %struct.sdio_driver** %sdrv.addr, align 8, !dbg !4216
  %id_table = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %0, i32 0, i32 1, !dbg !4217
  %1 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id_table, align 8, !dbg !4217
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %ids, align 8, !dbg !4218
  %2 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4219
  %tobool = icmp ne %struct.sdio_device_id* %2, null, !dbg !4219
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4221

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !4222

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4224
  %class = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %3, i32 0, i32 0, !dbg !4225
  %4 = load i8, i8* %class, align 8, !dbg !4225
  %conv = zext i8 %4 to i32, !dbg !4224
  %tobool1 = icmp ne i32 %conv, 0, !dbg !4224
  br i1 %tobool1, label %lor.end, label %lor.lhs.false, !dbg !4226

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4227
  %vendor = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %5, i32 0, i32 1, !dbg !4228
  %6 = load i16, i16* %vendor, align 2, !dbg !4228
  %conv2 = zext i16 %6 to i32, !dbg !4227
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !4227
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4229

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4230
  %device = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %7, i32 0, i32 2, !dbg !4231
  %8 = load i16, i16* %device, align 4, !dbg !4231
  %conv4 = zext i16 %8 to i32, !dbg !4230
  %tobool5 = icmp ne i32 %conv4, 0, !dbg !4229
  br label %lor.end, !dbg !4229

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %9 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %tobool5, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end, !dbg !4222

while.body:                                       ; preds = %lor.end
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !4232
  %11 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4235
  %call = call %struct.sdio_device_id* @sdio_match_one(%struct.sdio_func* %10, %struct.sdio_device_id* %11) #7, !dbg !4236
  %tobool6 = icmp ne %struct.sdio_device_id* %call, null, !dbg !4236
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4237

if.then7:                                         ; preds = %while.body
  %12 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4238
  store %struct.sdio_device_id* %12, %struct.sdio_device_id** %retval, align 8, !dbg !4239
  br label %return, !dbg !4239

if.end:                                           ; preds = %while.body
  %13 = load %struct.sdio_device_id*, %struct.sdio_device_id** %ids, align 8, !dbg !4240
  %incdec.ptr = getelementptr %struct.sdio_device_id, %struct.sdio_device_id* %13, i32 1, !dbg !4240
  store %struct.sdio_device_id* %incdec.ptr, %struct.sdio_device_id** %ids, align 8, !dbg !4240
  br label %while.cond, !dbg !4222, !llvm.loop !4241

while.end:                                        ; preds = %lor.end
  br label %if.end8, !dbg !4243

if.end8:                                          ; preds = %while.end, %entry
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %retval, align 8, !dbg !4244
  br label %return, !dbg !4244

return:                                           ; preds = %if.end8, %if.then7
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %retval, align 8, !dbg !4245
  ret %struct.sdio_device_id* %14, !dbg !4245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sdio_device_id* @sdio_match_one(%struct.sdio_func* %func, %struct.sdio_device_id* %id) #0 !dbg !4246 {
entry:
  %retval = alloca %struct.sdio_device_id*, align 8
  %func.addr = alloca %struct.sdio_func*, align 8
  %id.addr = alloca %struct.sdio_device_id*, align 8
  store %struct.sdio_func* %func, %struct.sdio_func** %func.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_func** %func.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  store %struct.sdio_device_id* %id, %struct.sdio_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sdio_device_id** %id.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4253
  %class = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %0, i32 0, i32 0, !dbg !4255
  %1 = load i8, i8* %class, align 8, !dbg !4255
  %conv = zext i8 %1 to i32, !dbg !4253
  %cmp = icmp ne i32 %conv, 255, !dbg !4256
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4257

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4258
  %class2 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %2, i32 0, i32 0, !dbg !4259
  %3 = load i8, i8* %class2, align 8, !dbg !4259
  %conv3 = zext i8 %3 to i32, !dbg !4258
  %4 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !4260
  %class4 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 4, !dbg !4261
  %5 = load i8, i8* %class4, align 4, !dbg !4261
  %conv5 = zext i8 %5 to i32, !dbg !4260
  %cmp6 = icmp ne i32 %conv3, %conv5, !dbg !4262
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4263

if.then:                                          ; preds = %land.lhs.true
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %retval, align 8, !dbg !4264
  br label %return, !dbg !4264

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4265
  %vendor = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %6, i32 0, i32 1, !dbg !4267
  %7 = load i16, i16* %vendor, align 2, !dbg !4267
  %conv8 = zext i16 %7 to i32, !dbg !4265
  %cmp9 = icmp ne i32 %conv8, 65535, !dbg !4268
  br i1 %cmp9, label %land.lhs.true11, label %if.end19, !dbg !4269

land.lhs.true11:                                  ; preds = %if.end
  %8 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4270
  %vendor12 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %8, i32 0, i32 1, !dbg !4271
  %9 = load i16, i16* %vendor12, align 2, !dbg !4271
  %conv13 = zext i16 %9 to i32, !dbg !4270
  %10 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !4272
  %vendor14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 5, !dbg !4273
  %11 = load i16, i16* %vendor14, align 2, !dbg !4273
  %conv15 = zext i16 %11 to i32, !dbg !4272
  %cmp16 = icmp ne i32 %conv13, %conv15, !dbg !4274
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !4275

if.then18:                                        ; preds = %land.lhs.true11
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %retval, align 8, !dbg !4276
  br label %return, !dbg !4276

if.end19:                                         ; preds = %land.lhs.true11, %if.end
  %12 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4277
  %device = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %12, i32 0, i32 2, !dbg !4279
  %13 = load i16, i16* %device, align 4, !dbg !4279
  %conv20 = zext i16 %13 to i32, !dbg !4277
  %cmp21 = icmp ne i32 %conv20, 65535, !dbg !4280
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !4281

land.lhs.true23:                                  ; preds = %if.end19
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4282
  %device24 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %14, i32 0, i32 2, !dbg !4283
  %15 = load i16, i16* %device24, align 4, !dbg !4283
  %conv25 = zext i16 %15 to i32, !dbg !4282
  %16 = load %struct.sdio_func*, %struct.sdio_func** %func.addr, align 8, !dbg !4284
  %device26 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 6, !dbg !4285
  %17 = load i16, i16* %device26, align 8, !dbg !4285
  %conv27 = zext i16 %17 to i32, !dbg !4284
  %cmp28 = icmp ne i32 %conv25, %conv27, !dbg !4286
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4287

if.then30:                                        ; preds = %land.lhs.true23
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %retval, align 8, !dbg !4288
  br label %return, !dbg !4288

if.end31:                                         ; preds = %land.lhs.true23, %if.end19
  %18 = load %struct.sdio_device_id*, %struct.sdio_device_id** %id.addr, align 8, !dbg !4289
  store %struct.sdio_device_id* %18, %struct.sdio_device_id** %retval, align 8, !dbg !4290
  br label %return, !dbg !4290

return:                                           ; preds = %if.end31, %if.then30, %if.then18, %if.then
  %19 = load %struct.sdio_device_id*, %struct.sdio_device_id** %retval, align 8, !dbg !4291
  ret %struct.sdio_device_id* %19, !dbg !4291
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_domain_attach(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !4292 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4296
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #7, !dbg !4297
  ret i32 %call, !dbg !4298
}

; Function Attrs: noredzone
declare dso_local void @sdio_claim_host(%struct.sdio_func*) #1

; Function Attrs: noredzone
declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

; Function Attrs: noredzone
declare dso_local void @sdio_release_host(%struct.sdio_func*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #0 !dbg !4299 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !4300, metadata !DIExpression()), !dbg !4304
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !4317, metadata !DIExpression()), !dbg !4318
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !4319, metadata !DIExpression()), !dbg !4320
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !4321, metadata !DIExpression()), !dbg !4323
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !4324, metadata !DIExpression()), !dbg !4323
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !4325, metadata !DIExpression()), !dbg !4323
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !4326, metadata !DIExpression()), !dbg !4323
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !4327, metadata !DIExpression()), !dbg !4323
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !4328, metadata !DIExpression()), !dbg !4334
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4336, metadata !DIExpression()), !dbg !4337
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !4338, metadata !DIExpression()), !dbg !4339
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !4340, metadata !DIExpression()), !dbg !4341
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !4342, metadata !DIExpression()), !dbg !4343
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4344, metadata !DIExpression()), !dbg !4345
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !4346, metadata !DIExpression()), !dbg !4347
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !4348, metadata !DIExpression()), !dbg !4349
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3864, metadata !DIExpression()), !dbg !4350
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3874, metadata !DIExpression()), !dbg !4352
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4353, metadata !DIExpression()), !dbg !4354
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !4355, metadata !DIExpression()), !dbg !4356
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !4357, metadata !DIExpression()), !dbg !4358
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4361
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !4362
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !4363
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4364
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4364
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4365
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4366
  %conv.i.i = trunc i64 %4 to i32, !dbg !4366
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #10, !dbg !4367
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4368
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4368
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #10, !dbg !4368
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4369
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !4370
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !4371
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4372
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !4373
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !4374
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4375
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !4376
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !4376
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !4376
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !4343
  br label %do.body.i.i.i, !dbg !4377

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !4378
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !4378
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !4378
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !4378
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !4378
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !4378
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !4381

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !4382

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4383
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !4384
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !4385
  %add.i.i.i = add i32 %19, %20, !dbg !4386
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !4323
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !4323
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !4323
  %23 = load i32, i32* %22, align 4, !dbg !4323
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !4323
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !4323
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !4323
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !4323
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !4323
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !4323
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !4323
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !4323
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !4323
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #8, !dbg !4323, !srcloc !4387
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !4323
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !4323
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !4323
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !4323
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !4388
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !4388
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !4388
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !4388
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !4388
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !4388
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !4323

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !4388
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !4388
  store i32 %31, i32* %32, align 4, !dbg !4388
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !4388

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !4323
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !4323
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !4323
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !4323
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !4323
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !4388
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !4323
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !4390
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !4391
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !4392, !llvm.loop !4393

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !4395
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !4396
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !4397
  ret void, !dbg !4398
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_domain_detach(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4399 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4403, metadata !DIExpression()), !dbg !4404
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  ret i1 true, !dbg !4407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4408 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4414, metadata !DIExpression()), !dbg !4415
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4416, metadata !DIExpression()), !dbg !4417
  ret void, !dbg !4418
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #0 !dbg !4419 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4422
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #7, !dbg !4423
  ret i32 %call, !dbg !4424
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_resume(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_suspend(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_resume(%struct.device*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4425 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4429, metadata !DIExpression()), !dbg !4434
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4436, metadata !DIExpression()), !dbg !4437
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  %0 = load i64, i64* %size.addr, align 8, !dbg !4440
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4442
  br i1 %1, label %if.then, label %if.end447, !dbg !4443

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4444
  %tobool = icmp ne i64 %2, 0, !dbg !4444
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4447

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4448
  br label %return, !dbg !4448

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4449
  %cmp = icmp ult i64 %3, 4096, !dbg !4451
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4452

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4453
  br label %return, !dbg !4453

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub = sub i64 %4, 1, !dbg !4454
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4454
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4454

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub4 = sub i64 %6, 1, !dbg !4454
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4454
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4454

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub6 = sub i64 %8, 1, !dbg !4454
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4454
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4454

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4454

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub9 = sub i64 %9, 1, !dbg !4454
  %and = and i64 %sub9, -9223372036854775808, !dbg !4454
  %tobool10 = icmp ne i64 %and, 0, !dbg !4454
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4454

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4454

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub13 = sub i64 %10, 1, !dbg !4454
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4454
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4454
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4454

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4454

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub18 = sub i64 %11, 1, !dbg !4454
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4454
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4454
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4454

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4454

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub23 = sub i64 %12, 1, !dbg !4454
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4454
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4454
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4454

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4454

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub28 = sub i64 %13, 1, !dbg !4454
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4454
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4454
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4454

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4454

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub33 = sub i64 %14, 1, !dbg !4454
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4454
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4454
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4454

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4454

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub38 = sub i64 %15, 1, !dbg !4454
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4454
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4454
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4454

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4454

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub43 = sub i64 %16, 1, !dbg !4454
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4454
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4454
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4454

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4454

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub48 = sub i64 %17, 1, !dbg !4454
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4454
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4454
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4454

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4454

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub53 = sub i64 %18, 1, !dbg !4454
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4454
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4454
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4454

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4454

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub58 = sub i64 %19, 1, !dbg !4454
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4454
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4454
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4454

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4454

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub63 = sub i64 %20, 1, !dbg !4454
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4454
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4454
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4454

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4454

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub68 = sub i64 %21, 1, !dbg !4454
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4454
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4454
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4454

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4454

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub73 = sub i64 %22, 1, !dbg !4454
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4454
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4454
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4454

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4454

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub78 = sub i64 %23, 1, !dbg !4454
  %and79 = and i64 %sub78, 562949953421312, !dbg !4454
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4454
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4454

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4454

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub83 = sub i64 %24, 1, !dbg !4454
  %and84 = and i64 %sub83, 281474976710656, !dbg !4454
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4454
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4454

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4454

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub88 = sub i64 %25, 1, !dbg !4454
  %and89 = and i64 %sub88, 140737488355328, !dbg !4454
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4454
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4454

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4454

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub93 = sub i64 %26, 1, !dbg !4454
  %and94 = and i64 %sub93, 70368744177664, !dbg !4454
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4454
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4454

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4454

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub98 = sub i64 %27, 1, !dbg !4454
  %and99 = and i64 %sub98, 35184372088832, !dbg !4454
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4454
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4454

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4454

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub103 = sub i64 %28, 1, !dbg !4454
  %and104 = and i64 %sub103, 17592186044416, !dbg !4454
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4454
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4454

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4454

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub108 = sub i64 %29, 1, !dbg !4454
  %and109 = and i64 %sub108, 8796093022208, !dbg !4454
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4454
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4454

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4454

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub113 = sub i64 %30, 1, !dbg !4454
  %and114 = and i64 %sub113, 4398046511104, !dbg !4454
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4454
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4454

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4454

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub118 = sub i64 %31, 1, !dbg !4454
  %and119 = and i64 %sub118, 2199023255552, !dbg !4454
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4454
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4454

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4454

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub123 = sub i64 %32, 1, !dbg !4454
  %and124 = and i64 %sub123, 1099511627776, !dbg !4454
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4454
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4454

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4454

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub128 = sub i64 %33, 1, !dbg !4454
  %and129 = and i64 %sub128, 549755813888, !dbg !4454
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4454
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4454

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4454

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub133 = sub i64 %34, 1, !dbg !4454
  %and134 = and i64 %sub133, 274877906944, !dbg !4454
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4454
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4454

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4454

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub138 = sub i64 %35, 1, !dbg !4454
  %and139 = and i64 %sub138, 137438953472, !dbg !4454
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4454
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4454

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4454

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub143 = sub i64 %36, 1, !dbg !4454
  %and144 = and i64 %sub143, 68719476736, !dbg !4454
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4454
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4454

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4454

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub148 = sub i64 %37, 1, !dbg !4454
  %and149 = and i64 %sub148, 34359738368, !dbg !4454
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4454
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4454

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4454

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub153 = sub i64 %38, 1, !dbg !4454
  %and154 = and i64 %sub153, 17179869184, !dbg !4454
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4454
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4454

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4454

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub158 = sub i64 %39, 1, !dbg !4454
  %and159 = and i64 %sub158, 8589934592, !dbg !4454
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4454
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4454

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4454

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub163 = sub i64 %40, 1, !dbg !4454
  %and164 = and i64 %sub163, 4294967296, !dbg !4454
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4454
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4454

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4454

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub168 = sub i64 %41, 1, !dbg !4454
  %and169 = and i64 %sub168, 2147483648, !dbg !4454
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4454
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4454

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4454

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub173 = sub i64 %42, 1, !dbg !4454
  %and174 = and i64 %sub173, 1073741824, !dbg !4454
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4454
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4454

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4454

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub178 = sub i64 %43, 1, !dbg !4454
  %and179 = and i64 %sub178, 536870912, !dbg !4454
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4454
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4454

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4454

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub183 = sub i64 %44, 1, !dbg !4454
  %and184 = and i64 %sub183, 268435456, !dbg !4454
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4454
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4454

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4454

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub188 = sub i64 %45, 1, !dbg !4454
  %and189 = and i64 %sub188, 134217728, !dbg !4454
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4454
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4454

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4454

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub193 = sub i64 %46, 1, !dbg !4454
  %and194 = and i64 %sub193, 67108864, !dbg !4454
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4454
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4454

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4454

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub198 = sub i64 %47, 1, !dbg !4454
  %and199 = and i64 %sub198, 33554432, !dbg !4454
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4454
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4454

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4454

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub203 = sub i64 %48, 1, !dbg !4454
  %and204 = and i64 %sub203, 16777216, !dbg !4454
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4454
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4454

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4454

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub208 = sub i64 %49, 1, !dbg !4454
  %and209 = and i64 %sub208, 8388608, !dbg !4454
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4454
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4454

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4454

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub213 = sub i64 %50, 1, !dbg !4454
  %and214 = and i64 %sub213, 4194304, !dbg !4454
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4454
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4454

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4454

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub218 = sub i64 %51, 1, !dbg !4454
  %and219 = and i64 %sub218, 2097152, !dbg !4454
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4454
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4454

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4454

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub223 = sub i64 %52, 1, !dbg !4454
  %and224 = and i64 %sub223, 1048576, !dbg !4454
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4454
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4454

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4454

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub228 = sub i64 %53, 1, !dbg !4454
  %and229 = and i64 %sub228, 524288, !dbg !4454
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4454
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4454

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4454

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub233 = sub i64 %54, 1, !dbg !4454
  %and234 = and i64 %sub233, 262144, !dbg !4454
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4454
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4454

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4454

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub238 = sub i64 %55, 1, !dbg !4454
  %and239 = and i64 %sub238, 131072, !dbg !4454
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4454
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4454

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4454

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub243 = sub i64 %56, 1, !dbg !4454
  %and244 = and i64 %sub243, 65536, !dbg !4454
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4454
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4454

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4454

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub248 = sub i64 %57, 1, !dbg !4454
  %and249 = and i64 %sub248, 32768, !dbg !4454
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4454
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4454

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4454

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub253 = sub i64 %58, 1, !dbg !4454
  %and254 = and i64 %sub253, 16384, !dbg !4454
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4454
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4454

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4454

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub258 = sub i64 %59, 1, !dbg !4454
  %and259 = and i64 %sub258, 8192, !dbg !4454
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4454
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4454

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4454

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub263 = sub i64 %60, 1, !dbg !4454
  %and264 = and i64 %sub263, 4096, !dbg !4454
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4454
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4454

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4454

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub268 = sub i64 %61, 1, !dbg !4454
  %and269 = and i64 %sub268, 2048, !dbg !4454
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4454
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4454

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4454

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub273 = sub i64 %62, 1, !dbg !4454
  %and274 = and i64 %sub273, 1024, !dbg !4454
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4454
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4454

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4454

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub278 = sub i64 %63, 1, !dbg !4454
  %and279 = and i64 %sub278, 512, !dbg !4454
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4454
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4454

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4454

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub283 = sub i64 %64, 1, !dbg !4454
  %and284 = and i64 %sub283, 256, !dbg !4454
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4454
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4454

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4454

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub288 = sub i64 %65, 1, !dbg !4454
  %and289 = and i64 %sub288, 128, !dbg !4454
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4454
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4454

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4454

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub293 = sub i64 %66, 1, !dbg !4454
  %and294 = and i64 %sub293, 64, !dbg !4454
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4454
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4454

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4454

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub298 = sub i64 %67, 1, !dbg !4454
  %and299 = and i64 %sub298, 32, !dbg !4454
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4454
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4454

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4454

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub303 = sub i64 %68, 1, !dbg !4454
  %and304 = and i64 %sub303, 16, !dbg !4454
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4454
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4454

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4454

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub308 = sub i64 %69, 1, !dbg !4454
  %and309 = and i64 %sub308, 8, !dbg !4454
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4454
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4454

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4454

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub313 = sub i64 %70, 1, !dbg !4454
  %and314 = and i64 %sub313, 4, !dbg !4454
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4454
  %71 = zext i1 %tobool315 to i64, !dbg !4454
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4454
  br label %cond.end, !dbg !4454

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4454
  br label %cond.end317, !dbg !4454

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4454
  br label %cond.end319, !dbg !4454

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4454
  br label %cond.end321, !dbg !4454

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4454
  br label %cond.end323, !dbg !4454

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4454
  br label %cond.end325, !dbg !4454

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4454
  br label %cond.end327, !dbg !4454

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4454
  br label %cond.end329, !dbg !4454

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4454
  br label %cond.end331, !dbg !4454

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4454
  br label %cond.end333, !dbg !4454

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4454
  br label %cond.end335, !dbg !4454

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4454
  br label %cond.end337, !dbg !4454

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4454
  br label %cond.end339, !dbg !4454

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4454
  br label %cond.end341, !dbg !4454

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4454
  br label %cond.end343, !dbg !4454

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4454
  br label %cond.end345, !dbg !4454

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4454
  br label %cond.end347, !dbg !4454

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4454
  br label %cond.end349, !dbg !4454

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4454
  br label %cond.end351, !dbg !4454

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4454
  br label %cond.end353, !dbg !4454

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4454
  br label %cond.end355, !dbg !4454

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4454
  br label %cond.end357, !dbg !4454

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4454
  br label %cond.end359, !dbg !4454

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4454
  br label %cond.end361, !dbg !4454

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4454
  br label %cond.end363, !dbg !4454

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4454
  br label %cond.end365, !dbg !4454

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4454
  br label %cond.end367, !dbg !4454

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4454
  br label %cond.end369, !dbg !4454

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4454
  br label %cond.end371, !dbg !4454

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4454
  br label %cond.end373, !dbg !4454

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4454
  br label %cond.end375, !dbg !4454

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4454
  br label %cond.end377, !dbg !4454

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4454
  br label %cond.end379, !dbg !4454

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4454
  br label %cond.end381, !dbg !4454

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4454
  br label %cond.end383, !dbg !4454

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4454
  br label %cond.end385, !dbg !4454

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4454
  br label %cond.end387, !dbg !4454

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4454
  br label %cond.end389, !dbg !4454

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4454
  br label %cond.end391, !dbg !4454

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4454
  br label %cond.end393, !dbg !4454

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4454
  br label %cond.end395, !dbg !4454

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4454
  br label %cond.end397, !dbg !4454

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4454
  br label %cond.end399, !dbg !4454

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4454
  br label %cond.end401, !dbg !4454

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4454
  br label %cond.end403, !dbg !4454

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4454
  br label %cond.end405, !dbg !4454

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4454
  br label %cond.end407, !dbg !4454

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4454
  br label %cond.end409, !dbg !4454

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4454
  br label %cond.end411, !dbg !4454

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4454
  br label %cond.end413, !dbg !4454

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4454
  br label %cond.end415, !dbg !4454

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4454
  br label %cond.end417, !dbg !4454

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4454
  br label %cond.end419, !dbg !4454

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4454
  br label %cond.end421, !dbg !4454

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4454
  br label %cond.end423, !dbg !4454

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4454
  br label %cond.end425, !dbg !4454

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4454
  br label %cond.end427, !dbg !4454

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4454
  br label %cond.end429, !dbg !4454

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4454
  br label %cond.end431, !dbg !4454

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4454
  br label %cond.end433, !dbg !4454

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4454
  br label %cond.end435, !dbg !4454

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4454
  br label %cond.end437, !dbg !4454

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4454
  br label %cond.end440, !dbg !4454

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4454

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4454
  br label %cond.end444, !dbg !4454

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4454
  %sub443 = sub i64 %72, 1, !dbg !4454
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !4454
  br label %cond.end444, !dbg !4454

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4454
  %sub446 = sub i32 %cond445, 12, !dbg !4455
  %add = add i32 %sub446, 1, !dbg !4456
  store i32 %add, i32* %retval, align 4, !dbg !4457
  br label %return, !dbg !4457

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4458
  %dec = add i64 %73, -1, !dbg !4458
  store i64 %dec, i64* %size.addr, align 8, !dbg !4458
  %74 = load i64, i64* %size.addr, align 8, !dbg !4459
  %shr = lshr i64 %74, 12, !dbg !4459
  store i64 %shr, i64* %size.addr, align 8, !dbg !4459
  %75 = load i64, i64* %size.addr, align 8, !dbg !4460
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4437
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4461
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4462
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4461, !srcloc !4463
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4461
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4464
  %add.i = add i32 %79, 1, !dbg !4465
  store i32 %add.i, i32* %retval, align 4, !dbg !4466
  br label %return, !dbg !4466

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4467
  ret i32 %80, !dbg !4467
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4468 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4429, metadata !DIExpression()), !dbg !4472
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4436, metadata !DIExpression()), !dbg !4474
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  %0 = load i64, i64* %n.addr, align 8, !dbg !4477
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4474
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4478
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4479
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4478, !srcloc !4463
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4478
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4480
  %add.i = add i32 %4, 1, !dbg !4481
  %sub = sub i32 %add.i, 1, !dbg !4482
  ret i32 %sub, !dbg !4483
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4484 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4488, metadata !DIExpression()), !dbg !4489
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4490, metadata !DIExpression()), !dbg !4491
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4496
  ret i8* %0, !dbg !4497
}

; Function Attrs: noredzone
declare dso_local void @sdio_free_func_cis(%struct.sdio_func*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4498 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4505
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4506
  %1 = load i8*, i8** %name, align 8, !dbg !4506
  ret i8* %1, !dbg !4507
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @mmc_of_find_child_device(%struct.mmc_host*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_preset_companion(%struct.device* %dev, %struct.acpi_device* %parent, i64 %addr) #0 !dbg !4508 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %parent.addr = alloca %struct.acpi_device*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  store %struct.acpi_device* %parent, %struct.acpi_device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %parent.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4518
  %1 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !4518
  %2 = load i64, i64* %addr.addr, align 8, !dbg !4518
  %call = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %1, i64 %2, i1 zeroext false) #7, !dbg !4518
  %tobool = icmp ne %struct.acpi_device* %call, null, !dbg !4518
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4518

cond.true:                                        ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !4518
  %4 = load i64, i64* %addr.addr, align 8, !dbg !4518
  %call1 = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %3, i64 %4, i1 zeroext false) #7, !dbg !4518
  %call2 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %call1) #7, !dbg !4518
  br label %cond.end, !dbg !4518

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call2, %cond.true ], [ null, %cond.false ], !dbg !4518
  call void @set_primary_fwnode(%struct.device* %0, %struct.fwnode_handle* %cond) #7, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device*, i64, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !4520 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4525
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !4526
  ret %struct.fwnode_handle* %fwnode, !dbg !4527
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3024, !3025, !3026, !3027}
!llvm.ident = !{!3028}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sdio_bus_type", scope: !2, file: !3, line: 248, type: !1662, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !2981, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mmc/core/sdio_bus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69}
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
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !70, line: 305, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!76 = !{!77, !79, !80, !2676, !573, !410, !2696, !752, !2699, !281, !2701}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !78, line: 148, baseType: !7)
!78 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !82, line: 34, size: 6208, elements: !83)
!82 = !DIFile(filename: "./include/linux/mmc/sdio_func.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !2655, !2656, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2671, !2672, !2673, !2674, !2675}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !81, file: !82, line: 35, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !87, line: 244, size: 12672, elements: !88)
!87 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2463, !2464, !2476, !2496, !2577, !2586, !2592, !2600, !2601, !2602, !2613, !2620, !2624, !2625, !2626, !2627, !2628, !2629, !2638, !2639, !2640, !2641, !2642, !2652, !2653, !2654}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !86, file: !87, line: 245, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !92, line: 275, size: 10752, elements: !93)
!92 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !2163, !2164, !2165, !2292, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2358, !2359, !2360, !2369, !2370, !2376, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2403, !2410, !2413, !2414, !2415, !2416, !2417, !2418, !2439, !2440, !2441, !2442, !2443, !2444}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !92, line: 276, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !97)
!97 = !{!98, !1604, !1605, !1608, !1609, !1660, !1757, !1758, !1759, !1760, !1761, !1770, !1879, !1892, !2088, !2089, !2093, !2095, !2096, !2097, !2101, !2107, !2108, !2111, !2112, !2113, !2116, !2117, !2118, !2119, !2151, !2152, !2153, !2156, !2159, !2160, !2161, !2162}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !96, file: !30, line: 462, baseType: !99, size: 512)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !100, line: 64, size: 512, elements: !101)
!100 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !106, !112, !114, !175, !1441, !1594, !1599, !1600, !1601, !1602, !1603}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !100, line: 65, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !99, file: !100, line: 66, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !78, line: 178, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !78, line: 179, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !78, line: 179, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !100, line: 67, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !99, file: !100, line: 68, baseType: !115, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !100, line: 192, size: 704, elements: !117)
!117 = !{!118, !119, !135, !136}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !116, file: !100, line: 193, baseType: !107, size: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !116, file: !100, line: 194, baseType: !120, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !121, line: 83, baseType: !122)
!121 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !121, line: 71, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 72, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 72, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !125, file: !121, line: 73, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !121, line: 20, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !128, file: !121, line: 21, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !132, line: 25, baseType: !133)
!132 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 25, elements: !134)
!134 = !{}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !116, file: !100, line: 195, baseType: !99, size: 512, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !116, file: !100, line: 196, baseType: !137, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !100, line: 156, size: 192, elements: !140)
!140 = !{!141, !147, !152}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !139, file: !100, line: 157, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !115, !113}
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !100, line: 158, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!103, !115, !113}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !139, file: !100, line: 159, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!146, !115, !113, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !100, line: 148, size: 20736, elements: !159)
!159 = !{!160, !165, !169, !170, !174}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !158, file: !100, line: 149, baseType: !161, size: 192)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 192, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!163 = !{!164}
!164 = !DISubrange(count: 3)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !158, file: !100, line: 150, baseType: !166, size: 4096, offset: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 4096, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !158, file: !100, line: 151, baseType: !146, size: 32, offset: 4288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !158, file: !100, line: 152, baseType: !171, size: 16384, offset: 4320)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 16384, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !158, file: !100, line: 153, baseType: !146, size: 32, offset: 20704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !99, file: !100, line: 69, baseType: !176, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !100, line: 138, size: 448, elements: !178)
!178 = !{!179, !183, !213, !215, !1389, !1420, !1424}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !177, file: !100, line: 139, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !113}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !177, file: !100, line: 140, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !187, line: 230, size: 128, elements: !188)
!187 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !186, file: !187, line: 231, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !113, !198, !162}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !78, line: 60, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !195, line: 73, baseType: !196)
!195 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !195, line: 15, baseType: !197)
!197 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !187, line: 30, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !187, line: 31, baseType: !103, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !199, file: !187, line: 32, baseType: !203, size: 16, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !78, line: 19, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !186, file: !187, line: 232, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!193, !113, !198, !103, !209}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 55, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !195, line: 72, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !195, line: 16, baseType: !212)
!212 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !177, file: !100, line: 141, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !177, file: !100, line: 142, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !187, line: 84, size: 320, elements: !220)
!220 = !{!221, !222, !226, !1386, !1387}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !187, line: 85, baseType: !103, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !219, file: !187, line: 86, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!203, !113, !198, !146}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !219, file: !187, line: 88, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!203, !113, !230, !146}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !187, line: 168, size: 448, elements: !232)
!232 = !{!233, !234, !235, !236, !246, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !231, file: !187, line: 169, baseType: !199, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !231, file: !187, line: 170, baseType: !209, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !231, file: !187, line: 171, baseType: !79, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !231, file: !187, line: 172, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!193, !240, !113, !230, !162, !243, !209}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !242, line: 526, flags: DIFlagFwdDecl)
!242 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !78, line: 46, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !195, line: 88, baseType: !245)
!245 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !231, file: !187, line: 174, baseType: !237, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !231, file: !187, line: 176, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!146, !240, !113, !230, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !253, line: 305, size: 1472, elements: !254)
!253 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256, !257, !258, !259, !267, !268, !1360, !1366, !1367, !1372, !1373, !1376, !1380, !1381, !1382, !1383, !1384}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !252, file: !253, line: 308, baseType: !212, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !252, file: !253, line: 309, baseType: !212, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !252, file: !253, line: 313, baseType: !251, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !252, file: !253, line: 313, baseType: !251, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !252, file: !253, line: 315, baseType: !260, size: 192, align: 64, offset: 256)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !261, line: 24, size: 192, align: 64, elements: !262)
!261 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!262 = !{!263, !264, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !260, file: !261, line: 25, baseType: !212, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !260, file: !261, line: 26, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !260, file: !261, line: 27, baseType: !265, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !252, file: !253, line: 323, baseType: !212, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !252, file: !253, line: 327, baseType: !269, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !253, line: 388, size: 7296, elements: !271)
!271 = !{!272, !1356}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !253, line: 389, baseType: !273, size: 7296)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !253, line: 389, size: 7296, elements: !274)
!274 = !{!275, !276, !280, !286, !290, !291, !292, !293, !294, !302, !307, !308, !309, !310, !319, !320, !321, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !356, !364, !367, !415, !416, !1326, !1327, !1330, !1334, !1335, !1338, !1339, !1340, !1343, !1355}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !273, file: !253, line: 390, baseType: !251, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !273, file: !253, line: 391, baseType: !277, size: 64, offset: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !261, line: 31, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !277, file: !261, line: 32, baseType: !265, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !273, file: !253, line: 392, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !282, line: 23, baseType: !283)
!282 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !284, line: 31, baseType: !285)
!284 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !273, file: !253, line: 394, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!212, !240, !212, !212, !212, !212}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !273, file: !253, line: 398, baseType: !212, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !273, file: !253, line: 399, baseType: !212, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !273, file: !253, line: 405, baseType: !212, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !273, file: !253, line: 406, baseType: !212, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !273, file: !253, line: 407, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !242, line: 286, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 286, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !297, file: !242, line: 286, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !301, line: 18, baseType: !212)
!301 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !273, file: !253, line: 416, baseType: !303, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !78, line: 168, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 166, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !304, file: !78, line: 167, baseType: !146, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !273, file: !253, line: 428, baseType: !303, size: 32, offset: 608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !273, file: !253, line: 437, baseType: !303, size: 32, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !273, file: !253, line: 447, baseType: !303, size: 32, offset: 672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !273, file: !253, line: 450, baseType: !311, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !312, line: 13, baseType: !313)
!312 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !78, line: 175, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 173, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !78, line: 174, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !282, line: 22, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !284, line: 30, baseType: !245)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !273, file: !253, line: 452, baseType: !146, size: 32, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !273, file: !253, line: 454, baseType: !120, offset: 800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !273, file: !253, line: 457, baseType: !322, size: 256, offset: 832)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !323, line: 35, size: 256, elements: !324)
!323 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !326, !327, !329}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !322, file: !323, line: 36, baseType: !311, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !322, file: !323, line: 42, baseType: !311, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !322, file: !323, line: 46, baseType: !328, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !121, line: 29, baseType: !128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !322, file: !323, line: 47, baseType: !107, size: 128, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !273, file: !253, line: 459, baseType: !107, size: 128, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !273, file: !253, line: 466, baseType: !212, size: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !273, file: !253, line: 467, baseType: !212, size: 64, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !273, file: !253, line: 469, baseType: !212, size: 64, offset: 1344)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !273, file: !253, line: 470, baseType: !212, size: 64, offset: 1408)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !273, file: !253, line: 471, baseType: !313, size: 64, offset: 1472)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !273, file: !253, line: 472, baseType: !212, size: 64, offset: 1536)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !273, file: !253, line: 473, baseType: !212, size: 64, offset: 1600)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !273, file: !253, line: 474, baseType: !212, size: 64, offset: 1664)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !273, file: !253, line: 475, baseType: !212, size: 64, offset: 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !273, file: !253, line: 477, baseType: !120, offset: 1792)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !273, file: !253, line: 478, baseType: !212, size: 64, offset: 1792)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !273, file: !253, line: 478, baseType: !212, size: 64, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !273, file: !253, line: 478, baseType: !212, size: 64, offset: 1920)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !273, file: !253, line: 478, baseType: !212, size: 64, offset: 1984)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !273, file: !253, line: 479, baseType: !212, size: 64, offset: 2048)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !273, file: !253, line: 479, baseType: !212, size: 64, offset: 2112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !273, file: !253, line: 479, baseType: !212, size: 64, offset: 2176)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !273, file: !253, line: 480, baseType: !212, size: 64, offset: 2240)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !273, file: !253, line: 480, baseType: !212, size: 64, offset: 2304)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !273, file: !253, line: 480, baseType: !212, size: 64, offset: 2368)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !273, file: !253, line: 480, baseType: !212, size: 64, offset: 2432)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !273, file: !253, line: 482, baseType: !353, size: 2816, offset: 2496)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 2816, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 44)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !273, file: !253, line: 488, baseType: !357, size: 256, offset: 5312)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !358, line: 60, size: 256, elements: !359)
!358 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !357, file: !358, line: 61, baseType: !361, size: 256)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 4)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !273, file: !253, line: 490, baseType: !365, size: 64, offset: 5568)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !253, line: 490, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !273, file: !253, line: 493, baseType: !368, size: 896, offset: 5632)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !369, line: 53, baseType: !370)
!369 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 13, size: 896, elements: !371)
!371 = !{!372, !373, !374, !375, !378, !379, !386, !387, !407, !408, !411}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !370, file: !369, line: 18, baseType: !281, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !370, file: !369, line: 28, baseType: !313, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !370, file: !369, line: 31, baseType: !322, size: 256, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !370, file: !369, line: 32, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !369, line: 32, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !370, file: !369, line: 37, baseType: !204, size: 16, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !369, line: 40, baseType: !380, size: 192, offset: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !381, line: 53, size: 192, elements: !382)
!381 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !384, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !380, file: !381, line: 54, baseType: !311, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !380, file: !381, line: 55, baseType: !120, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !380, file: !381, line: 59, baseType: !107, size: 128, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !370, file: !369, line: 41, baseType: !79, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !370, file: !369, line: 42, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !391, line: 13, size: 896, elements: !392)
!391 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !390, file: !391, line: 14, baseType: !79, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !391, line: 15, baseType: !212, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !390, file: !391, line: 17, baseType: !212, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !390, file: !391, line: 17, baseType: !212, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !390, file: !391, line: 19, baseType: !197, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !390, file: !391, line: 21, baseType: !197, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !390, file: !391, line: 22, baseType: !197, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !390, file: !391, line: 23, baseType: !197, size: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !390, file: !391, line: 24, baseType: !197, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !390, file: !391, line: 25, baseType: !197, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !390, file: !391, line: 26, baseType: !197, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !390, file: !391, line: 27, baseType: !197, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !390, file: !391, line: 28, baseType: !197, size: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !390, file: !391, line: 29, baseType: !197, size: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !370, file: !369, line: 44, baseType: !303, size: 32, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !370, file: !369, line: 50, baseType: !409, size: 16, offset: 864)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !282, line: 19, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !284, line: 24, baseType: !204)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !370, file: !369, line: 51, baseType: !412, size: 16, offset: 880)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !282, line: 18, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !284, line: 23, baseType: !414)
!414 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !253, line: 495, baseType: !212, size: 64, offset: 6528)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !273, file: !253, line: 497, baseType: !417, size: 64, offset: 6592)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !253, line: 381, size: 384, elements: !419)
!419 = !{!420, !421, !1325}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !418, file: !253, line: 382, baseType: !303, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !418, file: !253, line: 383, baseType: !422, size: 128, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !253, line: 376, size: 128, elements: !423)
!423 = !{!424, !1323}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !422, file: !253, line: 377, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !427, line: 640, size: 48640, elements: !428)
!427 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!428 = !{!429, !437, !439, !440, !446, !447, !448, !449, !450, !451, !452, !453, !457, !475, !486, !581, !582, !583, !594, !595, !597, !598, !599, !600, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !679, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !735, !737, !738, !739, !751, !753, !754, !755, !756, !757, !763, !764, !765, !766, !767, !768, !769, !781, !786, !790, !791, !792, !795, !799, !802, !805, !808, !811, !814, !817, !820, !826, !827, !828, !834, !835, !836, !837, !838, !847, !848, !849, !850, !851, !856, !857, !858, !861, !862, !865, !868, !871, !874, !877, !880, !881, !961, !964, !967, !968, !971, !972, !973, !979, !980, !981, !994, !995, !996, !1008, !1013, !1016, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !426, file: !427, line: 646, baseType: !430, size: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !431, line: 56, size: 128, elements: !432)
!431 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !431, line: 57, baseType: !212, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !430, file: !431, line: 58, baseType: !435, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !282, line: 21, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !284, line: 27, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !427, line: 649, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !197)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !426, file: !427, line: 657, baseType: !79, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !426, file: !427, line: 658, baseType: !441, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !442, line: 113, baseType: !443)
!442 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !442, line: 111, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !443, file: !442, line: 112, baseType: !303, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !427, line: 660, baseType: !7, size: 32, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !426, file: !427, line: 661, baseType: !7, size: 32, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !426, file: !427, line: 684, baseType: !146, size: 32, offset: 352)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !426, file: !427, line: 686, baseType: !146, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !426, file: !427, line: 687, baseType: !146, size: 32, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !426, file: !427, line: 688, baseType: !146, size: 32, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !426, file: !427, line: 689, baseType: !7, size: 32, offset: 480)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !426, file: !427, line: 691, baseType: !454, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !427, line: 691, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !426, file: !427, line: 692, baseType: !458, size: 832, offset: 576)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !427, line: 451, size: 832, elements: !459)
!459 = !{!460, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !458, file: !427, line: 453, baseType: !461, size: 128)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !427, line: 325, size: 128, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !461, file: !427, line: 326, baseType: !212, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !461, file: !427, line: 327, baseType: !435, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !458, file: !427, line: 454, baseType: !260, size: 192, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !458, file: !427, line: 455, baseType: !107, size: 128, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !458, file: !427, line: 456, baseType: !7, size: 32, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !458, file: !427, line: 458, baseType: !281, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !458, file: !427, line: 459, baseType: !281, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !458, file: !427, line: 460, baseType: !281, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !458, file: !427, line: 461, baseType: !281, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !458, file: !427, line: 463, baseType: !281, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !458, file: !427, line: 465, baseType: !474, offset: 832)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !427, line: 415, elements: !134)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !426, file: !427, line: 693, baseType: !476, size: 384, offset: 1408)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !427, line: 489, size: 384, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !476, file: !427, line: 490, baseType: !107, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !476, file: !427, line: 491, baseType: !212, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !476, file: !427, line: 492, baseType: !212, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !476, file: !427, line: 493, baseType: !7, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !476, file: !427, line: 494, baseType: !204, size: 16, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !476, file: !427, line: 495, baseType: !204, size: 16, offset: 304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !476, file: !427, line: 497, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !426, file: !427, line: 697, baseType: !487, size: 1792, offset: 1792)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !427, line: 507, size: 1792, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !578, !579}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !487, file: !427, line: 508, baseType: !260, size: 192, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !487, file: !427, line: 515, baseType: !281, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !487, file: !427, line: 516, baseType: !281, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !487, file: !427, line: 517, baseType: !281, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !487, file: !427, line: 518, baseType: !281, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !487, file: !427, line: 519, baseType: !281, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !487, file: !427, line: 526, baseType: !317, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !487, file: !427, line: 527, baseType: !281, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !427, line: 528, baseType: !7, size: 32, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !487, file: !427, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !487, file: !427, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !487, file: !427, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !487, file: !427, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !487, file: !427, line: 563, baseType: !503, size: 512, offset: 704)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !504)
!504 = !{!505, !513, !514, !519, !571, !575, !576, !577}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !6, line: 119, baseType: !506, size: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !507, line: 9, size: 256, elements: !508)
!507 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !507, line: 10, baseType: !260, size: 192, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !506, file: !507, line: 11, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !512, line: 29, baseType: !317)
!512 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !503, file: !6, line: 120, baseType: !511, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !503, file: !6, line: 121, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!5, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !503, file: !6, line: 122, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !522)
!522 = !{!523, !543, !544, !547, !557, !558, !566, !570}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !521, file: !6, line: 160, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !525, file: !6, line: 215, baseType: !328)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !525, file: !6, line: 216, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !525, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !525, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !525, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !525, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !525, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !525, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !525, file: !6, line: 233, baseType: !511, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !525, file: !6, line: 234, baseType: !518, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !525, file: !6, line: 235, baseType: !511, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !525, file: !6, line: 236, baseType: !518, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !525, file: !6, line: 237, baseType: !540, size: 4096, offset: 512)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 4096, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !521, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !521, file: !6, line: 162, baseType: !545, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !78, line: 27, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !195, line: 96, baseType: !146)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !521, file: !6, line: 163, baseType: !548, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !549, line: 276, baseType: !550)
!549 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !549, line: 276, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !550, file: !549, line: 276, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !549, line: 70, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !549, line: 65, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !554, file: !549, line: 66, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !521, file: !6, line: 164, baseType: !518, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !521, file: !6, line: 165, baseType: !559, size: 128, offset: 256)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !507, line: 14, size: 128, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !559, file: !507, line: 15, baseType: !562, size: 128)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !261, line: 125, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !562, file: !261, line: 126, baseType: !277, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !562, file: !261, line: 127, baseType: !265, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !521, file: !6, line: 166, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!511}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !521, file: !6, line: 167, baseType: !511, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !503, file: !6, line: 123, baseType: !572, size: 8, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !282, line: 17, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !284, line: 21, baseType: !574)
!574 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !503, file: !6, line: 124, baseType: !572, size: 8, offset: 456)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !503, file: !6, line: 125, baseType: !572, size: 8, offset: 464)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !503, file: !6, line: 126, baseType: !572, size: 8, offset: 472)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !487, file: !427, line: 572, baseType: !503, size: 512, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !487, file: !427, line: 580, baseType: !580, size: 64, offset: 1728)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !426, file: !427, line: 721, baseType: !7, size: 32, offset: 3584)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !426, file: !427, line: 722, baseType: !146, size: 32, offset: 3616)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !426, file: !427, line: 723, baseType: !584, size: 64, offset: 3648)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !587, line: 17, baseType: !588)
!587 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !587, line: 17, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !588, file: !587, line: 17, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 1)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !426, file: !427, line: 724, baseType: !586, size: 64, offset: 3712)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !426, file: !427, line: 749, baseType: !596, offset: 3776)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !427, line: 290, elements: !134)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !426, file: !427, line: 751, baseType: !107, size: 128, offset: 3776)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !426, file: !427, line: 757, baseType: !269, size: 64, offset: 3904)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !426, file: !427, line: 758, baseType: !269, size: 64, offset: 3968)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !426, file: !427, line: 761, baseType: !601, size: 320, offset: 4032)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !358, line: 34, size: 320, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !601, file: !358, line: 35, baseType: !281, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !601, file: !358, line: 36, baseType: !605, size: 256, offset: 64)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !362)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !426, file: !427, line: 766, baseType: !146, size: 32, offset: 4352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !426, file: !427, line: 767, baseType: !146, size: 32, offset: 4384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !426, file: !427, line: 768, baseType: !146, size: 32, offset: 4416)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !426, file: !427, line: 770, baseType: !146, size: 32, offset: 4448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !426, file: !427, line: 772, baseType: !212, size: 64, offset: 4480)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !426, file: !427, line: 775, baseType: !7, size: 32, offset: 4544)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !426, file: !427, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !426, file: !427, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !426, file: !427, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !426, file: !427, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !426, file: !427, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !426, file: !427, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !426, file: !427, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !426, file: !427, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !426, file: !427, line: 831, baseType: !212, size: 64, offset: 4672)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !426, file: !427, line: 833, baseType: !622, size: 384, offset: 4736)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !623)
!623 = !{!624, !629}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !622, file: !12, line: 26, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!197, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !12, line: 27, baseType: !630, size: 320, offset: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !12, line: 27, size: 320, elements: !631)
!631 = !{!632, !642, !669}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !630, file: !12, line: 36, baseType: !633, size: 320)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 29, size: 320, elements: !634)
!634 = !{!635, !637, !638, !639, !640, !641}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !633, file: !12, line: 30, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !12, line: 31, baseType: !435, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !12, line: 32, baseType: !435, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !633, file: !12, line: 33, baseType: !435, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !633, file: !12, line: 34, baseType: !281, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !633, file: !12, line: 35, baseType: !636, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !630, file: !12, line: 46, baseType: !643, size: 192)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 38, size: 192, elements: !644)
!644 = !{!645, !646, !647, !668}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !643, file: !12, line: 39, baseType: !545, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !12, line: 41, baseType: !648, size: 64, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !12, line: 41, size: 64, elements: !649)
!649 = !{!650, !658}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !648, file: !12, line: 42, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !653, line: 7, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !652, file: !653, line: 8, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !195, line: 93, baseType: !245)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !652, file: !653, line: 9, baseType: !245, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !648, file: !12, line: 43, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !661, line: 7, size: 64, elements: !662)
!661 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !660, file: !661, line: 8, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !661, line: 5, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !282, line: 20, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !284, line: 26, baseType: !146)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !660, file: !661, line: 9, baseType: !665, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !643, file: !12, line: 45, baseType: !281, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !630, file: !12, line: 54, baseType: !670, size: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 48, size: 256, elements: !671)
!671 = !{!672, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !670, file: !12, line: 49, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !670, file: !12, line: 50, baseType: !146, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !670, file: !12, line: 51, baseType: !146, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !670, file: !12, line: 52, baseType: !212, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !670, file: !12, line: 53, baseType: !212, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !426, file: !427, line: 835, baseType: !680, size: 32, offset: 5120)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !78, line: 22, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !195, line: 28, baseType: !146)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !426, file: !427, line: 836, baseType: !680, size: 32, offset: 5152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !426, file: !427, line: 840, baseType: !212, size: 64, offset: 5184)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !426, file: !427, line: 849, baseType: !425, size: 64, offset: 5248)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !426, file: !427, line: 852, baseType: !425, size: 64, offset: 5312)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !426, file: !427, line: 857, baseType: !107, size: 128, offset: 5376)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !426, file: !427, line: 858, baseType: !107, size: 128, offset: 5504)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !426, file: !427, line: 859, baseType: !425, size: 64, offset: 5632)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !426, file: !427, line: 867, baseType: !107, size: 128, offset: 5696)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !426, file: !427, line: 868, baseType: !107, size: 128, offset: 5824)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !426, file: !427, line: 871, baseType: !692, size: 64, offset: 5952)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !694, line: 59, size: 768, elements: !695)
!694 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !697, !698, !699, !710, !711, !718, !727}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !694, line: 61, baseType: !441, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !693, file: !694, line: 62, baseType: !7, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !694, line: 63, baseType: !120, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !693, file: !694, line: 65, baseType: !700, size: 256, offset: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 256, elements: !362)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !78, line: 182, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !701, file: !78, line: 183, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !78, line: 186, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !78, line: 187, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !705, file: !78, line: 187, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !693, file: !694, line: 66, baseType: !701, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !693, file: !694, line: 68, baseType: !712, size: 128, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !713, line: 40, baseType: !714)
!713 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !713, line: 36, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !714, file: !713, line: 37, baseType: !120)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !714, file: !713, line: 38, baseType: !107, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !694, line: 69, baseType: !719, size: 128, align: 64, offset: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !78, line: 216, size: 128, align: 64, elements: !720)
!720 = !{!721, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !78, line: 217, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !719, file: !78, line: 218, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !722}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !693, file: !694, line: 70, baseType: !728, size: 128, offset: 640)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 128, elements: !592)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !694, line: 54, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !729, file: !694, line: 55, baseType: !146, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !729, file: !694, line: 56, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !694, line: 56, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !426, file: !427, line: 872, baseType: !736, size: 512, offset: 6016)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 512, elements: !362)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !426, file: !427, line: 873, baseType: !107, size: 128, offset: 6528)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !426, file: !427, line: 874, baseType: !107, size: 128, offset: 6656)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !426, file: !427, line: 876, baseType: !740, size: 64, offset: 6784)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !742, line: 26, size: 192, elements: !743)
!742 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !741, file: !742, line: 27, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !741, file: !742, line: 28, baseType: !746, size: 128, offset: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !747, line: 43, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !746, file: !747, line: 44, baseType: !328)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !746, file: !747, line: 45, baseType: !107, size: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !426, file: !427, line: 879, baseType: !752, size: 64, offset: 6848)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !426, file: !427, line: 882, baseType: !752, size: 64, offset: 6912)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !426, file: !427, line: 884, baseType: !281, size: 64, offset: 6976)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !426, file: !427, line: 885, baseType: !281, size: 64, offset: 7040)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !426, file: !427, line: 890, baseType: !281, size: 64, offset: 7104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !426, file: !427, line: 891, baseType: !758, size: 128, offset: 7168)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !427, line: 242, size: 128, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !758, file: !427, line: 244, baseType: !281, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !758, file: !427, line: 245, baseType: !281, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !427, line: 246, baseType: !328, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !426, file: !427, line: 900, baseType: !212, size: 64, offset: 7296)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !426, file: !427, line: 901, baseType: !212, size: 64, offset: 7360)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !426, file: !427, line: 904, baseType: !281, size: 64, offset: 7424)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !426, file: !427, line: 907, baseType: !281, size: 64, offset: 7488)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !426, file: !427, line: 910, baseType: !212, size: 64, offset: 7552)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !426, file: !427, line: 911, baseType: !212, size: 64, offset: 7616)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !426, file: !427, line: 914, baseType: !770, size: 640, offset: 7680)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !771, line: 123, size: 640, elements: !772)
!771 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !779, !780}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !770, file: !771, line: 124, baseType: !774, size: 576)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 576, elements: !163)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !771, line: 108, size: 192, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !775, file: !771, line: 109, baseType: !281, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !775, file: !771, line: 110, baseType: !559, size: 128, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !770, file: !771, line: 125, baseType: !7, size: 32, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !770, file: !771, line: 126, baseType: !7, size: 32, offset: 608)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !426, file: !427, line: 917, baseType: !782, size: 192, offset: 8320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !771, line: 134, size: 192, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !782, file: !771, line: 135, baseType: !719, size: 128, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !782, file: !771, line: 136, baseType: !7, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !426, file: !427, line: 923, baseType: !787, size: 64, offset: 8512)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !427, line: 923, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !426, file: !427, line: 926, baseType: !787, size: 64, offset: 8576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !426, file: !427, line: 929, baseType: !787, size: 64, offset: 8640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !426, file: !427, line: 933, baseType: !793, size: 64, offset: 8704)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !427, line: 933, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !426, file: !427, line: 943, baseType: !796, size: 128, offset: 8768)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 16)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !426, file: !427, line: 945, baseType: !800, size: 64, offset: 8896)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !427, line: 49, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !426, file: !427, line: 956, baseType: !803, size: 64, offset: 8960)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !427, line: 45, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !426, file: !427, line: 959, baseType: !806, size: 64, offset: 9024)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !427, line: 959, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !426, file: !427, line: 962, baseType: !809, size: 64, offset: 9088)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !427, line: 66, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !426, file: !427, line: 966, baseType: !812, size: 64, offset: 9152)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !427, line: 50, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !426, file: !427, line: 969, baseType: !815, size: 64, offset: 9216)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !771, line: 223, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !426, file: !427, line: 970, baseType: !818, size: 64, offset: 9280)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !427, line: 62, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !426, file: !427, line: 971, baseType: !821, size: 64, offset: 9344)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !822, line: 25, baseType: !823)
!822 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !822, line: 23, size: 64, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !823, file: !822, line: 24, baseType: !591, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !426, file: !427, line: 972, baseType: !821, size: 64, offset: 9408)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !426, file: !427, line: 974, baseType: !821, size: 64, offset: 9472)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !426, file: !427, line: 975, baseType: !829, size: 192, offset: 9536)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !830, line: 30, size: 192, elements: !831)
!830 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !829, file: !830, line: 31, baseType: !107, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !829, file: !830, line: 32, baseType: !821, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !426, file: !427, line: 976, baseType: !212, size: 64, offset: 9728)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !426, file: !427, line: 977, baseType: !209, size: 64, offset: 9792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !426, file: !427, line: 978, baseType: !7, size: 32, offset: 9856)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !426, file: !427, line: 980, baseType: !722, size: 64, offset: 9920)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !426, file: !427, line: 989, baseType: !839, size: 128, offset: 9984)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !840, line: 35, size: 128, elements: !841)
!840 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !839, file: !840, line: 36, baseType: !146, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !839, file: !840, line: 37, baseType: !303, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !839, file: !840, line: 38, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !840, line: 23, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !426, file: !427, line: 992, baseType: !281, size: 64, offset: 10112)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !426, file: !427, line: 993, baseType: !281, size: 64, offset: 10176)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !426, file: !427, line: 996, baseType: !120, offset: 10240)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !426, file: !427, line: 999, baseType: !328, offset: 10240)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !426, file: !427, line: 1001, baseType: !852, size: 64, offset: 10240)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !427, line: 636, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !427, line: 637, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !426, file: !427, line: 1005, baseType: !562, size: 128, offset: 10304)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !426, file: !427, line: 1007, baseType: !425, size: 64, offset: 10432)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !426, file: !427, line: 1009, baseType: !859, size: 64, offset: 10496)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !427, line: 1009, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !426, file: !427, line: 1043, baseType: !79, size: 64, offset: 10560)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !426, file: !427, line: 1046, baseType: !863, size: 64, offset: 10624)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !427, line: 41, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !426, file: !427, line: 1050, baseType: !866, size: 64, offset: 10688)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !427, line: 42, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !426, file: !427, line: 1054, baseType: !869, size: 64, offset: 10752)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !427, line: 55, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !426, file: !427, line: 1056, baseType: !872, size: 64, offset: 10816)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !427, line: 40, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !426, file: !427, line: 1058, baseType: !875, size: 64, offset: 10880)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !427, line: 47, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !426, file: !427, line: 1061, baseType: !878, size: 64, offset: 10944)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !427, line: 43, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !426, file: !427, line: 1064, baseType: !212, size: 64, offset: 11008)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !426, file: !427, line: 1065, baseType: !882, size: 64, offset: 11072)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !830, line: 14, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !830, line: 12, size: 384, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !830, line: 13, baseType: !887, size: 384)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !830, line: 13, size: 384, elements: !888)
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !887, file: !830, line: 13, baseType: !146, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !887, file: !830, line: 13, baseType: !146, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !887, file: !830, line: 13, baseType: !146, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !887, file: !830, line: 13, baseType: !893, size: 256, offset: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !894, line: 32, size: 256, elements: !895)
!894 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !902, !915, !921, !930, !950, !955}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !893, file: !894, line: 37, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 34, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !897, file: !894, line: 35, baseType: !681, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !897, file: !894, line: 36, baseType: !901, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !195, line: 49, baseType: !7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !893, file: !894, line: 45, baseType: !903, size: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 40, size: 192, elements: !904)
!904 = !{!905, !907, !908, !914}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !903, file: !894, line: 41, baseType: !906, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !195, line: 95, baseType: !146)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !903, file: !894, line: 42, baseType: !146, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !903, file: !894, line: 43, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !894, line: 11, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !894, line: 8, size: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !910, file: !894, line: 9, baseType: !146, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !910, file: !894, line: 10, baseType: !79, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !903, file: !894, line: 44, baseType: !146, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !893, file: !894, line: 52, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 48, size: 128, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !916, file: !894, line: 49, baseType: !681, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !916, file: !894, line: 50, baseType: !901, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !916, file: !894, line: 51, baseType: !909, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !893, file: !894, line: 61, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 55, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927, !929}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !922, file: !894, line: 56, baseType: !681, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !922, file: !894, line: 57, baseType: !901, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !922, file: !894, line: 58, baseType: !146, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !922, file: !894, line: 59, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !195, line: 94, baseType: !196)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !922, file: !894, line: 60, baseType: !928, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !893, file: !894, line: 95, baseType: !931, size: 256)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 64, size: 256, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !931, file: !894, line: 65, baseType: !79, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !894, line: 77, baseType: !935, size: 192, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !894, line: 77, size: 192, elements: !936)
!936 = !{!937, !938, !945}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !935, file: !894, line: 82, baseType: !414, size: 16)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !935, file: !894, line: 88, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !894, line: 84, size: 192, elements: !940)
!940 = !{!941, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !939, file: !894, line: 85, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !541)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !939, file: !894, line: 86, baseType: !79, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !939, file: !894, line: 87, baseType: !79, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !935, file: !894, line: 93, baseType: !946, size: 96)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !894, line: 90, size: 96, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !946, file: !894, line: 91, baseType: !942, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !946, file: !894, line: 92, baseType: !436, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !893, file: !894, line: 101, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 98, size: 128, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !951, file: !894, line: 99, baseType: !197, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !951, file: !894, line: 100, baseType: !146, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !893, file: !894, line: 108, baseType: !956, size: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !894, line: 104, size: 128, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !956, file: !894, line: 105, baseType: !79, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !956, file: !894, line: 106, baseType: !146, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !956, file: !894, line: 107, baseType: !7, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !426, file: !427, line: 1067, baseType: !962, offset: 11136)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !963, line: 12, elements: !134)
!963 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !426, file: !427, line: 1099, baseType: !965, size: 64, offset: 11136)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !427, line: 56, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !426, file: !427, line: 1103, baseType: !107, size: 128, offset: 11200)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !426, file: !427, line: 1104, baseType: !969, size: 64, offset: 11328)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !427, line: 46, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !426, file: !427, line: 1105, baseType: !380, size: 192, offset: 11392)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !426, file: !427, line: 1106, baseType: !7, size: 32, offset: 11584)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !426, file: !427, line: 1109, baseType: !974, size: 128, offset: 11648)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 128, elements: !977)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !427, line: 51, flags: DIFlagFwdDecl)
!977 = !{!978}
!978 = !DISubrange(count: 2)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !426, file: !427, line: 1110, baseType: !380, size: 192, offset: 11776)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !426, file: !427, line: 1111, baseType: !107, size: 128, offset: 11968)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !426, file: !427, line: 1173, baseType: !982, size: 64, offset: 12096)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !984, line: 62, size: 256, align: 256, elements: !985)
!984 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!985 = !{!986, !987, !988, !993}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !983, file: !984, line: 75, baseType: !436, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !983, file: !984, line: 90, baseType: !436, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !983, file: !984, line: 124, baseType: !989, size: 64, offset: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !984, line: 109, size: 64, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !989, file: !984, line: 110, baseType: !283, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !989, file: !984, line: 112, baseType: !283, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !984, line: 144, baseType: !436, size: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !426, file: !427, line: 1174, baseType: !435, size: 32, offset: 12160)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !426, file: !427, line: 1179, baseType: !212, size: 64, offset: 12224)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !426, file: !427, line: 1182, baseType: !997, size: 128, offset: 12288)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !358, line: 76, size: 128, elements: !998)
!998 = !{!999, !1004, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !997, file: !358, line: 85, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1001, line: 7, size: 64, elements: !1002)
!1001 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1000, file: !1001, line: 12, baseType: !588, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !997, file: !358, line: 88, baseType: !1005, size: 8, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !78, line: 30, baseType: !1006)
!1006 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !997, file: !358, line: 95, baseType: !1005, size: 8, offset: 72)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 1184, baseType: !1009, size: 128, offset: 12416)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 1184, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1009, file: !427, line: 1185, baseType: !441, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1009, file: !427, line: 1186, baseType: !719, size: 128, align: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !426, file: !427, line: 1190, baseType: !1014, size: 64, offset: 12544)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !427, line: 53, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !426, file: !427, line: 1192, baseType: !1017, size: 128, offset: 12608)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !358, line: 64, size: 128, elements: !1018)
!1018 = !{!1019, !1112, !1113}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1017, file: !358, line: 65, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !253, line: 68, size: 512, align: 128, elements: !1022)
!1022 = !{!1023, !1024, !1104, !1111}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !253, line: 69, baseType: !212, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !253, line: 77, baseType: !1025, size: 320, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !253, line: 77, size: 320, elements: !1026)
!1026 = !{!1027, !1036, !1041, !1069, !1077, !1083, !1096, !1103}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 78, baseType: !1028, size: 320)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 78, size: 320, elements: !1029)
!1029 = !{!1030, !1031, !1034, !1035}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1028, file: !253, line: 84, baseType: !107, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1028, file: !253, line: 86, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !253, line: 26, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1028, file: !253, line: 87, baseType: !212, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1028, file: !253, line: 94, baseType: !212, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 96, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 96, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1037, file: !253, line: 101, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !78, line: 143, baseType: !281)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 103, baseType: !1042, size: 320)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 103, size: 320, elements: !1043)
!1043 = !{!1044, !1054, !1057, !1058}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !253, line: 104, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !253, line: 104, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1045, file: !253, line: 105, baseType: !107, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !253, line: 106, baseType: !1049, size: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !253, line: 106, size: 128, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !253, line: 107, baseType: !1020, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1049, file: !253, line: 109, baseType: !146, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1049, file: !253, line: 110, baseType: !146, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1042, file: !253, line: 117, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !253, line: 117, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1042, file: !253, line: 119, baseType: !79, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !253, line: 120, baseType: !1059, size: 64, offset: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !253, line: 120, size: 64, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1059, file: !253, line: 121, baseType: !79, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1059, file: !253, line: 122, baseType: !212, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !253, line: 123, baseType: !1064, size: 32)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !253, line: 123, size: 32, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1064, file: !253, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1064, file: !253, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1064, file: !253, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 130, baseType: !1070, size: 192)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 130, size: 192, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1070, file: !253, line: 131, baseType: !212, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1070, file: !253, line: 134, baseType: !574, size: 8, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1070, file: !253, line: 135, baseType: !574, size: 8, offset: 72)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1070, file: !253, line: 136, baseType: !303, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1070, file: !253, line: 137, baseType: !7, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 139, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 139, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1078, file: !253, line: 140, baseType: !212, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1078, file: !253, line: 141, baseType: !303, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1078, file: !253, line: 143, baseType: !107, size: 128, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 145, baseType: !1084, size: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 145, size: 256, elements: !1085)
!1085 = !{!1086, !1087, !1089, !1090, !1095}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1084, file: !253, line: 146, baseType: !212, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1084, file: !253, line: 147, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !242, line: 509, baseType: !1020)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1084, file: !253, line: 148, baseType: !212, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !253, line: 149, baseType: !1091, size: 64, offset: 192)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !253, line: 149, size: 64, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1091, file: !253, line: 150, baseType: !269, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1091, file: !253, line: 151, baseType: !303, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1084, file: !253, line: 156, baseType: !120, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !253, line: 159, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !253, line: 159, size: 128, elements: !1098)
!1098 = !{!1099, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1097, file: !253, line: 161, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !253, line: 161, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1097, file: !253, line: 162, baseType: !79, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1025, file: !253, line: 176, baseType: !719, size: 128, align: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !253, line: 179, baseType: !1105, size: 32, offset: 384)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !253, line: 179, size: 32, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1105, file: !253, line: 184, baseType: !303, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1105, file: !253, line: 192, baseType: !7, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1105, file: !253, line: 194, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1105, file: !253, line: 195, baseType: !146, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1021, file: !253, line: 199, baseType: !303, size: 32, offset: 416)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1017, file: !358, line: 67, baseType: !436, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !358, line: 68, baseType: !436, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !426, file: !427, line: 1206, baseType: !146, size: 32, offset: 12736)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !426, file: !427, line: 1207, baseType: !146, size: 32, offset: 12768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !426, file: !427, line: 1209, baseType: !212, size: 64, offset: 12800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !426, file: !427, line: 1219, baseType: !281, size: 64, offset: 12864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !426, file: !427, line: 1220, baseType: !281, size: 64, offset: 12928)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !426, file: !427, line: 1317, baseType: !146, size: 32, offset: 12992)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !426, file: !427, line: 1319, baseType: !425, size: 64, offset: 13056)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !426, file: !427, line: 1322, baseType: !1122, size: 64, offset: 13120)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1124, line: 56, size: 512, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1132, !1133, !1135}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1123, file: !1124, line: 57, baseType: !1122, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1123, file: !1124, line: 58, baseType: !79, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1123, file: !1124, line: 59, baseType: !212, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !1124, line: 60, baseType: !212, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1123, file: !1124, line: 61, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1123, file: !1124, line: 62, baseType: !7, size: 32, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1123, file: !1124, line: 63, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !78, line: 153, baseType: !281)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1123, file: !1124, line: 64, baseType: !1136, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !426, file: !427, line: 1326, baseType: !441, size: 32, offset: 13184)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !426, file: !427, line: 1342, baseType: !79, size: 64, offset: 13248)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !426, file: !427, line: 1343, baseType: !283, size: 64, offset: 13312)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !426, file: !427, line: 1344, baseType: !281, size: 64, offset: 13376)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !426, file: !427, line: 1345, baseType: !283, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !426, file: !427, line: 1346, baseType: !283, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !426, file: !427, line: 1347, baseType: !283, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !426, file: !427, line: 1348, baseType: !719, size: 128, align: 64, offset: 13504)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !426, file: !427, line: 1358, baseType: !1147, size: 34816, offset: 13824)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1148, line: 485, size: 34816, elements: !1149)
!1148 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1179, !1180, !1181, !1182, !1183, !1184, !1187, !1188, !1189}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1147, file: !1148, line: 487, baseType: !1151, size: 192)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 192, elements: !163)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1153, line: 16, size: 64, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1152, file: !1153, line: 17, baseType: !409, size: 16)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1152, file: !1153, line: 18, baseType: !409, size: 16, offset: 16)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1152, file: !1153, line: 19, baseType: !409, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1152, file: !1153, line: 19, baseType: !409, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1152, file: !1153, line: 19, baseType: !409, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1152, file: !1153, line: 19, baseType: !409, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1152, file: !1153, line: 19, baseType: !409, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1152, file: !1153, line: 20, baseType: !409, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1152, file: !1153, line: 20, baseType: !409, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1152, file: !1153, line: 20, baseType: !409, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1152, file: !1153, line: 20, baseType: !409, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1152, file: !1153, line: 20, baseType: !409, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1152, file: !1153, line: 20, baseType: !409, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1147, file: !1148, line: 491, baseType: !212, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1147, file: !1148, line: 495, baseType: !204, size: 16, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1147, file: !1148, line: 496, baseType: !204, size: 16, offset: 272)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1147, file: !1148, line: 497, baseType: !204, size: 16, offset: 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1147, file: !1148, line: 498, baseType: !204, size: 16, offset: 304)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1147, file: !1148, line: 502, baseType: !212, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1147, file: !1148, line: 503, baseType: !212, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1147, file: !1148, line: 514, baseType: !1176, size: 256, offset: 448)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 256, elements: !362)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1148, line: 483, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1147, file: !1148, line: 516, baseType: !212, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1147, file: !1148, line: 518, baseType: !212, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1147, file: !1148, line: 520, baseType: !212, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1147, file: !1148, line: 521, baseType: !212, size: 64, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1147, file: !1148, line: 522, baseType: !212, size: 64, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1147, file: !1148, line: 528, baseType: !1185, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1148, line: 10, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1147, file: !1148, line: 535, baseType: !212, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1147, file: !1148, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1147, file: !1148, line: 540, baseType: !1190, size: 33280, offset: 1536)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1191, line: 317, size: 33280, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1190, file: !1191, line: 330, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1190, file: !1191, line: 337, baseType: !212, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1190, file: !1191, line: 348, baseType: !1196, size: 32768, offset: 512)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1191, line: 304, size: 32768, elements: !1197)
!1197 = !{!1198, !1213, !1252, !1302, !1319}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1196, file: !1191, line: 305, baseType: !1199, size: 896)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1191, line: 12, size: 896, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1212}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1199, file: !1191, line: 13, baseType: !435, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1199, file: !1191, line: 14, baseType: !435, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1199, file: !1191, line: 15, baseType: !435, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1199, file: !1191, line: 16, baseType: !435, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1199, file: !1191, line: 17, baseType: !435, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1199, file: !1191, line: 18, baseType: !435, size: 32, offset: 160)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1199, file: !1191, line: 19, baseType: !435, size: 32, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1199, file: !1191, line: 22, baseType: !1209, size: 640, offset: 224)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 640, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 20)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1199, file: !1191, line: 25, baseType: !435, size: 32, offset: 864)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1196, file: !1191, line: 306, baseType: !1214, size: 4096, align: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1191, line: 34, size: 4096, align: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1235, !1236, !1237, !1241, !1243, !1247}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1214, file: !1191, line: 35, baseType: !409, size: 16)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1214, file: !1191, line: 36, baseType: !409, size: 16, offset: 16)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1214, file: !1191, line: 37, baseType: !409, size: 16, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1214, file: !1191, line: 38, baseType: !409, size: 16, offset: 48)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1191, line: 39, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1191, line: 39, size: 128, elements: !1222)
!1222 = !{!1223, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1191, line: 40, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1191, line: 40, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1224, file: !1191, line: 41, baseType: !281, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1224, file: !1191, line: 42, baseType: !281, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1191, line: 44, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1191, line: 44, size: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1191, line: 45, baseType: !435, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1191, line: 46, baseType: !435, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1191, line: 47, baseType: !435, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1191, line: 48, baseType: !435, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1214, file: !1191, line: 51, baseType: !435, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1214, file: !1191, line: 52, baseType: !435, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1214, file: !1191, line: 55, baseType: !1238, size: 1024, offset: 256)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1214, file: !1191, line: 58, baseType: !1242, size: 2048, offset: 1280)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !167)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1214, file: !1191, line: 60, baseType: !1244, size: 384, offset: 3328)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 12)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1191, line: 62, baseType: !1248, size: 384, offset: 3712)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1191, line: 62, size: 384, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1248, file: !1191, line: 63, baseType: !1244, size: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1248, file: !1191, line: 64, baseType: !1244, size: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1196, file: !1191, line: 307, baseType: !1253, size: 1088)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1191, line: 79, size: 1088, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1301}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1253, file: !1191, line: 80, baseType: !435, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1253, file: !1191, line: 81, baseType: !435, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1253, file: !1191, line: 82, baseType: !435, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1253, file: !1191, line: 83, baseType: !435, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1253, file: !1191, line: 84, baseType: !435, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1253, file: !1191, line: 85, baseType: !435, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1253, file: !1191, line: 86, baseType: !435, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1253, file: !1191, line: 88, baseType: !1209, size: 640, offset: 224)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1253, file: !1191, line: 89, baseType: !572, size: 8, offset: 864)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1253, file: !1191, line: 90, baseType: !572, size: 8, offset: 872)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1253, file: !1191, line: 91, baseType: !572, size: 8, offset: 880)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1253, file: !1191, line: 92, baseType: !572, size: 8, offset: 888)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1253, file: !1191, line: 93, baseType: !572, size: 8, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1253, file: !1191, line: 94, baseType: !572, size: 8, offset: 904)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1253, file: !1191, line: 95, baseType: !1270, size: 64, offset: 960)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1272, line: 11, size: 128, elements: !1273)
!1272 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1271, file: !1272, line: 12, baseType: !197, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1271, file: !1272, line: 13, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1278, line: 56, size: 1344, elements: !1279)
!1278 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1277, file: !1278, line: 61, baseType: !212, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1277, file: !1278, line: 62, baseType: !212, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1277, file: !1278, line: 63, baseType: !212, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1277, file: !1278, line: 64, baseType: !212, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1277, file: !1278, line: 65, baseType: !212, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1277, file: !1278, line: 66, baseType: !212, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1277, file: !1278, line: 68, baseType: !212, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1277, file: !1278, line: 69, baseType: !212, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1277, file: !1278, line: 70, baseType: !212, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1277, file: !1278, line: 71, baseType: !212, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1277, file: !1278, line: 72, baseType: !212, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1277, file: !1278, line: 73, baseType: !212, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1277, file: !1278, line: 74, baseType: !212, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1277, file: !1278, line: 75, baseType: !212, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1277, file: !1278, line: 76, baseType: !212, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1277, file: !1278, line: 81, baseType: !212, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1277, file: !1278, line: 83, baseType: !212, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1277, file: !1278, line: 84, baseType: !212, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 85, baseType: !212, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1277, file: !1278, line: 86, baseType: !212, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1277, file: !1278, line: 87, baseType: !212, size: 64, offset: 1280)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1253, file: !1191, line: 96, baseType: !435, size: 32, offset: 1024)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1196, file: !1191, line: 308, baseType: !1303, size: 4608, align: 512)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1191, line: 289, size: 4608, align: 512, elements: !1304)
!1304 = !{!1305, !1306, !1315}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1303, file: !1191, line: 290, baseType: !1214, size: 4096, align: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1303, file: !1191, line: 291, baseType: !1307, size: 512, offset: 4096)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1191, line: 268, size: 512, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1307, file: !1191, line: 269, baseType: !281, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1307, file: !1191, line: 270, baseType: !281, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1307, file: !1191, line: 271, baseType: !1312, size: 384, offset: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 384, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 6)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1303, file: !1191, line: 292, baseType: !1316, offset: 4608)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1196, file: !1191, line: 309, baseType: !1320, size: 32768)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 32768, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 4096)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !253, line: 378, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !418, file: !253, line: 384, baseType: !741, size: 192, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !273, file: !253, line: 500, baseType: !120, offset: 6656)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !273, file: !253, line: 501, baseType: !1328, size: 64, offset: 6656)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !253, line: 387, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !273, file: !253, line: 516, baseType: !1331, size: 64, offset: 6720)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1333, line: 18, flags: DIFlagFwdDecl)
!1333 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !273, file: !253, line: 519, baseType: !240, size: 64, offset: 6784)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !273, file: !253, line: 521, baseType: !1336, size: 64, offset: 6848)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !253, line: 521, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !273, file: !253, line: 545, baseType: !303, size: 32, offset: 6912)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !273, file: !253, line: 548, baseType: !1005, size: 8, offset: 6944)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !273, file: !253, line: 550, baseType: !1341, offset: 6952)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1342, line: 142, elements: !134)
!1342 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !273, file: !253, line: 554, baseType: !1344, size: 256, offset: 6976)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1345, line: 102, size: 256, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1344, file: !1345, line: 103, baseType: !311, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1344, file: !1345, line: 104, baseType: !107, size: 128, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1344, file: !1345, line: 105, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1345, line: 21, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !273, file: !253, line: 557, baseType: !435, size: 32, offset: 7232)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !270, file: !253, line: 565, baseType: !1357, offset: 7296)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: -1)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !252, file: !253, line: 333, baseType: !1361, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !242, line: 284, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !242, line: 284, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1362, file: !242, line: 284, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !301, line: 19, baseType: !212)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !252, file: !253, line: 334, baseType: !212, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !252, file: !253, line: 343, baseType: !1368, size: 256, offset: 704)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !253, line: 340, size: 256, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1368, file: !253, line: 341, baseType: !260, size: 192, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1368, file: !253, line: 342, baseType: !212, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !252, file: !253, line: 351, baseType: !107, size: 128, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !252, file: !253, line: 353, baseType: !1374, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !253, line: 353, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !252, file: !253, line: 356, baseType: !1377, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !253, line: 356, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !252, file: !253, line: 359, baseType: !212, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !252, file: !253, line: 361, baseType: !240, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !252, file: !253, line: 362, baseType: !79, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !252, file: !253, line: 365, baseType: !311, size: 64, offset: 1408)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !252, file: !253, line: 373, baseType: !1385, offset: 1472)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !253, line: 296, elements: !134)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !219, file: !187, line: 90, baseType: !214, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !219, file: !187, line: 91, baseType: !1388, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !177, file: !100, line: 143, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1393, !113}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1396)
!1396 = !{!1397, !1398, !1402, !1406, !1412, !1416}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !18, line: 40, baseType: !17, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1395, file: !18, line: 41, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1005}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1395, file: !18, line: 42, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!79}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1395, file: !18, line: 43, baseType: !1407, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1136, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1395, file: !18, line: 44, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1136}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1395, file: !18, line: 45, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !79}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !177, file: !100, line: 144, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1136, !113}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !177, file: !100, line: 145, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !113, !1428, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1333, line: 23, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 21, size: 32, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1430, file: !1333, line: 22, baseType: !1433, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !78, line: 32, baseType: !901)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1333, line: 28, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 26, size: 32, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1436, file: !1333, line: 27, baseType: !1439, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !78, line: 33, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !195, line: 50, baseType: !7)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !99, file: !100, line: 70, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1444, line: 123, size: 1024, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1587, !1588, !1589, !1590, !1591}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1443, file: !1444, line: 124, baseType: !303, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1443, file: !1444, line: 125, baseType: !303, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1443, file: !1444, line: 135, baseType: !1442, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !1444, line: 136, baseType: !103, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1443, file: !1444, line: 138, baseType: !260, size: 192, align: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1443, file: !1444, line: 140, baseType: !1136, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1443, file: !1444, line: 141, baseType: !7, size: 32, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 142, baseType: !1454, size: 256, offset: 512)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 142, size: 256, elements: !1455)
!1455 = !{!1456, !1510, !1514}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1454, file: !1444, line: 143, baseType: !1457, size: 192)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1444, line: 91, size: 192, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1457, file: !1444, line: 92, baseType: !212, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1457, file: !1444, line: 94, baseType: !277, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1457, file: !1444, line: 100, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1444, line: 180, size: 704, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1480, !1481, !1482, !1508, !1509}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1463, file: !1444, line: 182, baseType: !1442, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1444, line: 183, baseType: !7, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1463, file: !1444, line: 186, baseType: !1468, size: 192, offset: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1469, line: 19, size: 192, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1478, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1468, file: !1469, line: 20, baseType: !1472, size: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1473, line: 292, size: 128, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1472, file: !1473, line: 293, baseType: !120)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1472, file: !1473, line: 295, baseType: !77, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1472, file: !1473, line: 296, baseType: !79, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1468, file: !1469, line: 21, baseType: !7, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1468, file: !1469, line: 22, baseType: !7, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1463, file: !1444, line: 187, baseType: !435, size: 32, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1463, file: !1444, line: 188, baseType: !435, size: 32, offset: 352)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1463, file: !1444, line: 189, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1444, line: 168, size: 320, elements: !1485)
!1485 = !{!1486, !1492, !1496, !1500, !1504}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1484, file: !1444, line: 169, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!146, !1490, !1462}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !242, line: 539, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1484, file: !1444, line: 171, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!146, !1442, !103, !203}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1484, file: !1444, line: 173, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!146, !1442}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1484, file: !1444, line: 174, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!146, !1442, !1442, !103}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1484, file: !1444, line: 176, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!146, !1490, !1442, !1462}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1463, file: !1444, line: 192, baseType: !107, size: 128, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1463, file: !1444, line: 194, baseType: !712, size: 128, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1454, file: !1444, line: 144, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1444, line: 103, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1511, file: !1444, line: 104, baseType: !1442, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1454, file: !1444, line: 145, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1444, line: 107, size: 256, elements: !1516)
!1516 = !{!1517, !1582, !1585, !1586}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1515, file: !1444, line: 108, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1444, line: 217, size: 768, elements: !1521)
!1521 = !{!1522, !1542, !1546, !1550, !1555, !1559, !1563, !1567, !1568, !1569, !1570, !1578}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1520, file: !1444, line: 222, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!146, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1444, line: 197, size: 1088, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1527, file: !1444, line: 199, baseType: !1442, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1527, file: !1444, line: 200, baseType: !240, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1527, file: !1444, line: 201, baseType: !1490, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1527, file: !1444, line: 202, baseType: !79, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1527, file: !1444, line: 205, baseType: !380, size: 192, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1527, file: !1444, line: 206, baseType: !380, size: 192, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1527, file: !1444, line: 207, baseType: !146, size: 32, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1527, file: !1444, line: 208, baseType: !107, size: 128, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1527, file: !1444, line: 209, baseType: !162, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1527, file: !1444, line: 211, baseType: !209, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1527, file: !1444, line: 212, baseType: !1005, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1527, file: !1444, line: 213, baseType: !1005, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1527, file: !1444, line: 214, baseType: !1377, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1520, file: !1444, line: 223, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1526}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1520, file: !1444, line: 236, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!146, !1490, !79}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1520, file: !1444, line: 238, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!79, !1490, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1520, file: !1444, line: 239, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!79, !1490, !79, !1554}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1520, file: !1444, line: 240, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1490, !79}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1520, file: !1444, line: 242, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!193, !1526, !162, !209, !243}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1520, file: !1444, line: 252, baseType: !209, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1520, file: !1444, line: 259, baseType: !1005, size: 8, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1520, file: !1444, line: 260, baseType: !1564, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1520, file: !1444, line: 263, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1574, !1526, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1575, line: 52, baseType: !7)
!1575 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1444, line: 27, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1520, file: !1444, line: 266, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!146, !1526, !251}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1515, file: !1444, line: 109, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1444, line: 31, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1515, file: !1444, line: 110, baseType: !243, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1515, file: !1444, line: 111, baseType: !1442, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1443, file: !1444, line: 148, baseType: !79, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1443, file: !1444, line: 154, baseType: !281, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1444, line: 156, baseType: !204, size: 16, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1443, file: !1444, line: 157, baseType: !203, size: 16, offset: 912)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1443, file: !1444, line: 158, baseType: !1592, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1444, line: 32, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !99, file: !100, line: 71, baseType: !1595, size: 32, offset: 448)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1596, line: 19, size: 32, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1595, file: !1596, line: 20, baseType: !441, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !99, file: !100, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !99, file: !100, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !99, file: !100, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !99, file: !100, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !99, file: !100, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !30, line: 463, baseType: !95, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !96, file: !30, line: 465, baseType: !1606, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !96, file: !30, line: 467, baseType: !103, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !30, line: 468, baseType: !1610, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1620, !1625, !1629}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !30, line: 88, baseType: !103, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1612, file: !30, line: 89, baseType: !216, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1612, file: !30, line: 90, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!146, !95, !157}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1612, file: !30, line: 91, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!162, !95, !1624, !1428, !1434}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1612, file: !30, line: 93, baseType: !1626, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !95}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1612, file: !30, line: 95, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1633)
!1633 = !{!1634, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1632, file: !37, line: 279, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!146, !95}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1632, file: !37, line: 280, baseType: !1626, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1632, file: !37, line: 281, baseType: !1635, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1632, file: !37, line: 282, baseType: !1635, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1632, file: !37, line: 283, baseType: !1635, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1632, file: !37, line: 284, baseType: !1635, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1632, file: !37, line: 285, baseType: !1635, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1632, file: !37, line: 286, baseType: !1635, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1632, file: !37, line: 287, baseType: !1635, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1632, file: !37, line: 288, baseType: !1635, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1632, file: !37, line: 289, baseType: !1635, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1632, file: !37, line: 290, baseType: !1635, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1632, file: !37, line: 291, baseType: !1635, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1632, file: !37, line: 292, baseType: !1635, size: 64, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1632, file: !37, line: 293, baseType: !1635, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1632, file: !37, line: 294, baseType: !1635, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1632, file: !37, line: 295, baseType: !1635, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1632, file: !37, line: 296, baseType: !1635, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1632, file: !37, line: 297, baseType: !1635, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1632, file: !37, line: 298, baseType: !1635, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1632, file: !37, line: 299, baseType: !1635, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1632, file: !37, line: 300, baseType: !1635, size: 64, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1632, file: !37, line: 301, baseType: !1635, size: 64, offset: 1408)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !96, file: !30, line: 470, baseType: !1661, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1663, line: 82, size: 1408, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1750, !1753, !1756}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1662, file: !1663, line: 83, baseType: !103, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1662, file: !1663, line: 84, baseType: !103, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1662, file: !1663, line: 85, baseType: !95, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1662, file: !1663, line: 86, baseType: !216, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1662, file: !1663, line: 87, baseType: !216, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1662, file: !1663, line: 88, baseType: !216, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1662, file: !1663, line: 90, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!146, !95, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1684, !1685, !1686, !1687, !1701, !1714, !1715, !1716, !1717, !1718, !1726, !1727, !1728, !1729, !1730, !1731}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !24, line: 96, baseType: !103, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1676, file: !24, line: 97, baseType: !1661, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1676, file: !24, line: 99, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1683, line: 76, flags: DIFlagFwdDecl)
!1683 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1676, file: !24, line: 100, baseType: !103, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1676, file: !24, line: 102, baseType: !1005, size: 8, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1676, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1676, file: !24, line: 105, baseType: !1688, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1691, line: 262, size: 1600, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1695, !1696, !1700}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1690, file: !1691, line: 263, baseType: !1694, size: 256)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !1239)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1690, file: !1691, line: 264, baseType: !1694, size: 256, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1690, file: !1691, line: 265, baseType: !1697, size: 1024, offset: 512)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !1691, line: 266, baseType: !1136, size: 64, offset: 1536)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1676, file: !24, line: 106, baseType: !1702, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1691, line: 210, size: 256, elements: !1705)
!1705 = !{!1706, !1710, !1712, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1704, file: !1691, line: 211, baseType: !1707, size: 72)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 72, elements: !1708)
!1708 = !{!1709}
!1709 = !DISubrange(count: 9)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1704, file: !1691, line: 212, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1691, line: 14, baseType: !212)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1704, file: !1691, line: 213, baseType: !436, size: 32, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1704, file: !1691, line: 214, baseType: !436, size: 32, offset: 224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1676, file: !24, line: 108, baseType: !1635, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1676, file: !24, line: 109, baseType: !1626, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1676, file: !24, line: 110, baseType: !1635, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1676, file: !24, line: 111, baseType: !1626, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1676, file: !24, line: 112, baseType: !1719, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!146, !95, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1723, file: !37, line: 51, baseType: !146, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1676, file: !24, line: 113, baseType: !1635, size: 64, offset: 768)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1676, file: !24, line: 114, baseType: !216, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1676, file: !24, line: 115, baseType: !216, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1676, file: !24, line: 117, baseType: !1630, size: 64, offset: 960)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1676, file: !24, line: 118, baseType: !1626, size: 64, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1676, file: !24, line: 120, baseType: !1732, size: 64, offset: 1088)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1662, file: !1663, line: 91, baseType: !1617, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1662, file: !1663, line: 92, baseType: !1635, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1662, file: !1663, line: 93, baseType: !1626, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1662, file: !1663, line: 94, baseType: !1635, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1662, file: !1663, line: 95, baseType: !1626, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1662, file: !1663, line: 97, baseType: !1635, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1662, file: !1663, line: 98, baseType: !1635, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1662, file: !1663, line: 100, baseType: !1719, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1662, file: !1663, line: 101, baseType: !1635, size: 64, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1662, file: !1663, line: 103, baseType: !1635, size: 64, offset: 1024)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1662, file: !1663, line: 105, baseType: !1635, size: 64, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1662, file: !1663, line: 107, baseType: !1630, size: 64, offset: 1152)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1662, file: !1663, line: 109, baseType: !1747, size: 64, offset: 1216)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1663, line: 109, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1662, file: !1663, line: 111, baseType: !1751, size: 64, offset: 1280)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1663, line: 111, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1662, file: !1663, line: 112, baseType: !1754, offset: 1344)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1755, line: 187, elements: !134)
!1755 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1662, file: !1663, line: 114, baseType: !1005, size: 8, offset: 1344)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !96, file: !30, line: 471, baseType: !1675, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !96, file: !30, line: 473, baseType: !79, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !96, file: !30, line: 475, baseType: !79, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !96, file: !30, line: 480, baseType: !380, size: 192, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !96, file: !30, line: 484, baseType: !1762, size: 576, offset: 1216)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1762, file: !30, line: 362, baseType: !107, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1762, file: !30, line: 363, baseType: !107, size: 128, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1762, file: !30, line: 364, baseType: !107, size: 128, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1762, file: !30, line: 365, baseType: !107, size: 128, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1762, file: !30, line: 366, baseType: !1005, size: 8, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1762, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !96, file: !30, line: 485, baseType: !1771, size: 2304, offset: 1792)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1872, !1876}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1771, file: !37, line: 566, baseType: !1722, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1771, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1771, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1771, file: !37, line: 569, baseType: !1005, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1771, file: !37, line: 570, baseType: !1005, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1771, file: !37, line: 571, baseType: !1005, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1771, file: !37, line: 572, baseType: !1005, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1771, file: !37, line: 573, baseType: !1005, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1771, file: !37, line: 574, baseType: !1005, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1771, file: !37, line: 575, baseType: !1005, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1771, file: !37, line: 576, baseType: !1005, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1771, file: !37, line: 577, baseType: !435, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !37, line: 578, baseType: !120, offset: 96)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1771, file: !37, line: 580, baseType: !107, size: 128, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1771, file: !37, line: 581, baseType: !741, size: 192, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1771, file: !37, line: 582, baseType: !1789, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1791, line: 43, size: 1472, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1800, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1791, line: 44, baseType: !103, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1790, file: !1791, line: 45, baseType: !146, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1790, file: !1791, line: 46, baseType: !107, size: 128, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !1791, line: 47, baseType: !120, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1790, file: !1791, line: 48, baseType: !1798, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1790, file: !1791, line: 49, baseType: !1801, size: 320, offset: 320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1802, line: 11, size: 320, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805, !1806, !1811}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1801, file: !1802, line: 16, baseType: !705, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1801, file: !1802, line: 17, baseType: !212, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1801, file: !1802, line: 18, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1810}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1801, file: !1802, line: 19, baseType: !435, size: 32, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1790, file: !1791, line: 50, baseType: !212, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1790, file: !1791, line: 51, baseType: !511, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1790, file: !1791, line: 52, baseType: !511, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1790, file: !1791, line: 53, baseType: !511, size: 64, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1790, file: !1791, line: 54, baseType: !511, size: 64, offset: 896)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1790, file: !1791, line: 55, baseType: !511, size: 64, offset: 960)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1790, file: !1791, line: 56, baseType: !212, size: 64, offset: 1024)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1790, file: !1791, line: 57, baseType: !212, size: 64, offset: 1088)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1790, file: !1791, line: 58, baseType: !212, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1790, file: !1791, line: 59, baseType: !212, size: 64, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1790, file: !1791, line: 60, baseType: !212, size: 64, offset: 1280)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1790, file: !1791, line: 61, baseType: !95, size: 64, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1790, file: !1791, line: 62, baseType: !1005, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1790, file: !1791, line: 63, baseType: !1005, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1771, file: !37, line: 583, baseType: !1005, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1771, file: !37, line: 584, baseType: !1005, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1771, file: !37, line: 585, baseType: !1005, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1771, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1771, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1771, file: !37, line: 592, baseType: !503, size: 512, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1771, file: !37, line: 593, baseType: !281, size: 64, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1771, file: !37, line: 594, baseType: !1344, size: 256, offset: 1152)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1771, file: !37, line: 595, baseType: !712, size: 128, offset: 1408)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1771, file: !37, line: 596, baseType: !1798, size: 64, offset: 1536)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1771, file: !37, line: 597, baseType: !303, size: 32, offset: 1600)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1771, file: !37, line: 598, baseType: !303, size: 32, offset: 1632)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1771, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1771, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1771, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1771, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1771, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1771, file: !37, line: 604, baseType: !1005, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1771, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1771, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1771, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1771, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1771, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1771, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1771, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1771, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1771, file: !37, line: 613, baseType: !146, size: 32, offset: 1792)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1771, file: !37, line: 614, baseType: !146, size: 32, offset: 1824)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1771, file: !37, line: 615, baseType: !281, size: 64, offset: 1856)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1771, file: !37, line: 616, baseType: !281, size: 64, offset: 1920)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1771, file: !37, line: 617, baseType: !281, size: 64, offset: 1984)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1771, file: !37, line: 618, baseType: !281, size: 64, offset: 2048)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1771, file: !37, line: 620, baseType: !1859, size: 64, offset: 2112)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1860, file: !37, line: 537, baseType: !120)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1860, file: !37, line: 538, baseType: !7, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1860, file: !37, line: 540, baseType: !107, size: 128, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1860, file: !37, line: 543, baseType: !1866, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1868, line: 182, size: 192, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1867, file: !1868, line: 183, baseType: !107, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1867, file: !1868, line: 184, baseType: !95, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1771, file: !37, line: 621, baseType: !1873, size: 64, offset: 2176)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !95, !665}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1771, file: !37, line: 622, baseType: !1877, size: 64, offset: 2240)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !96, file: !30, line: 486, baseType: !1880, size: 64, offset: 4096)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1889, !1890, !1891}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1881, file: !37, line: 643, baseType: !1632, size: 1472)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1881, file: !37, line: 644, baseType: !1635, size: 64, offset: 1472)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1881, file: !37, line: 645, baseType: !1886, size: 64, offset: 1536)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !95, !1005}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1881, file: !37, line: 646, baseType: !1635, size: 64, offset: 1600)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1881, file: !37, line: 647, baseType: !1626, size: 64, offset: 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1881, file: !37, line: 648, baseType: !1626, size: 64, offset: 1728)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !96, file: !30, line: 493, baseType: !1893, size: 64, offset: 4160)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1895)
!1895 = !{!1896, !1897, !1898, !2072, !2073, !2074, !2075, !2076, !2077, !2080, !2081, !2082, !2083, !2084, !2085, !2086}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1894, file: !51, line: 163, baseType: !107, size: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1894, file: !51, line: 164, baseType: !103, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !51, line: 165, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1902)
!1902 = !{!1903, !2021, !2032, !2037, !2041, !2049, !2053, !2057, !2064, !2068}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1901, file: !51, line: 106, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!146, !1893, !1907, !50}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1909, line: 51, size: 1344, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1914, !1915, !2005, !2014, !2015, !2016, !2017, !2018, !2019, !2020}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1908, file: !1909, line: 52, baseType: !103, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1908, file: !1909, line: 53, baseType: !1913, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1909, line: 28, baseType: !435)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1908, file: !1909, line: 54, baseType: !103, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1908, file: !1909, line: 55, baseType: !1916, size: 192, offset: 192)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1917, line: 17, size: 192, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1921, !2004}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1916, file: !1917, line: 18, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1916, file: !1917, line: 19, baseType: !1922, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1917, line: 110, size: 1152, elements: !1925)
!1925 = !{!1926, !1930, !1934, !1940, !1946, !1950, !1954, !1959, !1963, !1964, !1968, !1972, !1976, !1987, !1988, !1989, !1990, !2000}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1924, file: !1917, line: 111, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1920, !1920}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1924, file: !1917, line: 112, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1920}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1924, file: !1917, line: 113, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1005, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1924, file: !1917, line: 114, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1136, !1938, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1924, file: !1917, line: 116, baseType: !1947, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1005, !1938, !103}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1924, file: !1917, line: 118, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!146, !1938, !103, !7, !79, !209}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1924, file: !1917, line: 123, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!146, !1938, !103, !1958, !209}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1924, file: !1917, line: 126, baseType: !1960, size: 64, offset: 448)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!103, !1938}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1924, file: !1917, line: 127, baseType: !1960, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1924, file: !1917, line: 128, baseType: !1965, size: 64, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1920, !1938}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1924, file: !1917, line: 130, baseType: !1969, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1920, !1938, !1920}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1924, file: !1917, line: 133, baseType: !1973, size: 64, offset: 704)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1920, !1938, !103}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1924, file: !1917, line: 135, baseType: !1977, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!146, !1938, !103, !103, !7, !7, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1917, line: 43, size: 640, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1981, file: !1917, line: 44, baseType: !1920, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1981, file: !1917, line: 45, baseType: !7, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1981, file: !1917, line: 46, baseType: !1986, size: 512, offset: 128)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 512, elements: !541)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1924, file: !1917, line: 140, baseType: !1969, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1924, file: !1917, line: 143, baseType: !1965, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1924, file: !1917, line: 145, baseType: !1927, size: 64, offset: 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1924, file: !1917, line: 146, baseType: !1991, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!146, !1938, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1917, line: 29, size: 128, elements: !1996)
!1996 = !{!1997, !1998, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1995, file: !1917, line: 30, baseType: !7, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1995, file: !1917, line: 31, baseType: !7, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1995, file: !1917, line: 32, baseType: !1938, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1924, file: !1917, line: 148, baseType: !2001, size: 64, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!146, !1938, !95}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1916, file: !1917, line: 20, baseType: !95, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1908, file: !1909, line: 57, baseType: !2006, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1909, line: 31, size: 704, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2007, file: !1909, line: 32, baseType: !162, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2007, file: !1909, line: 33, baseType: !146, size: 32, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2007, file: !1909, line: 34, baseType: !79, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2007, file: !1909, line: 35, baseType: !2006, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2007, file: !1909, line: 43, baseType: !231, size: 448, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1908, file: !1909, line: 58, baseType: !2006, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1908, file: !1909, line: 59, baseType: !1907, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1908, file: !1909, line: 60, baseType: !1907, size: 64, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1908, file: !1909, line: 61, baseType: !1907, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1908, file: !1909, line: 63, baseType: !99, size: 512, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1908, file: !1909, line: 65, baseType: !212, size: 64, offset: 1216)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1908, file: !1909, line: 66, baseType: !79, size: 64, offset: 1280)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1901, file: !51, line: 108, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!146, !1893, !2025, !50}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2026, file: !51, line: 64, baseType: !1920, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2026, file: !51, line: 65, baseType: !146, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2026, file: !51, line: 66, baseType: !2031, size: 512, offset: 96)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !797)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1901, file: !51, line: 110, baseType: !2033, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!146, !1893, !7, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !78, line: 164, baseType: !212)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1901, file: !51, line: 111, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !1893, !7}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1901, file: !51, line: 112, baseType: !2042, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!146, !1893, !1907, !2045, !7, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1901, file: !51, line: 117, baseType: !2050, size: 64, offset: 320)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!146, !1893, !7, !7, !79}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1901, file: !51, line: 119, baseType: !2054, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1893, !7, !7}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1901, file: !51, line: 121, baseType: !2058, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!146, !1893, !2061, !1005}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2063, line: 11, flags: DIFlagFwdDecl)
!2063 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1901, file: !51, line: 122, baseType: !2065, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !1893, !2061}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1901, file: !51, line: 123, baseType: !2069, size: 64, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!146, !1893, !2025, !2047, !2048}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1894, file: !51, line: 166, baseType: !79, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1894, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1894, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1894, file: !51, line: 171, baseType: !1920, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1894, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1894, file: !51, line: 173, baseType: !2078, size: 64, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1894, file: !51, line: 175, baseType: !1893, size: 64, offset: 576)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1894, file: !51, line: 182, baseType: !2036, size: 64, offset: 640)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1894, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1894, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1894, file: !51, line: 185, baseType: !1472, size: 128, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1894, file: !51, line: 186, baseType: !380, size: 192, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1894, file: !51, line: 187, baseType: !2087, offset: 1088)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1358)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !96, file: !30, line: 499, baseType: !107, size: 128, offset: 4224)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !96, file: !30, line: 502, baseType: !2090, size: 64, offset: 4352)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !96, file: !30, line: 504, baseType: !2094, size: 64, offset: 4416)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !96, file: !30, line: 505, baseType: !281, size: 64, offset: 4480)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !96, file: !30, line: 510, baseType: !281, size: 64, offset: 4544)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !96, file: !30, line: 511, baseType: !2098, size: 64, offset: 4608)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2100)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !96, file: !30, line: 513, baseType: !2102, size: 64, offset: 4672)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2103, file: !30, line: 293, baseType: !7, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2103, file: !30, line: 294, baseType: !212, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !96, file: !30, line: 515, baseType: !107, size: 128, offset: 4736)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !96, file: !30, line: 526, baseType: !2109, offset: 4864)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2110, line: 5, elements: !134)
!2110 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !96, file: !30, line: 528, baseType: !1907, size: 64, offset: 4864)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !96, file: !30, line: 529, baseType: !1920, size: 64, offset: 4928)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !96, file: !30, line: 534, baseType: !2114, size: 32, offset: 4992)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !78, line: 16, baseType: !2115)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !78, line: 13, baseType: !435)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !30, line: 535, baseType: !435, size: 32, offset: 5024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !96, file: !30, line: 537, baseType: !120, offset: 5056)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !96, file: !30, line: 538, baseType: !107, size: 128, offset: 5056)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !96, file: !30, line: 540, baseType: !2120, size: 64, offset: 5184)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2122, line: 54, size: 960, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2134, !2138, !2139, !2140, !2141, !2145, !2149, !2150}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !2122, line: 55, baseType: !103, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2121, file: !2122, line: 56, baseType: !1681, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2121, file: !2122, line: 58, baseType: !216, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2121, file: !2122, line: 59, baseType: !216, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2121, file: !2122, line: 60, baseType: !113, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2121, file: !2122, line: 62, baseType: !1617, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2121, file: !2122, line: 63, baseType: !2131, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!162, !95, !1624}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2121, file: !2122, line: 65, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2120}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2121, file: !2122, line: 66, baseType: !1626, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2121, file: !2122, line: 68, baseType: !1635, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2121, file: !2122, line: 70, baseType: !1393, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2121, file: !2122, line: 71, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!1136, !95}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2121, file: !2122, line: 73, baseType: !2146, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !95, !1428, !1434}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2121, file: !2122, line: 75, baseType: !1630, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2121, file: !2122, line: 77, baseType: !1751, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !96, file: !30, line: 541, baseType: !216, size: 64, offset: 5248)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !96, file: !30, line: 543, baseType: !1626, size: 64, offset: 5312)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !96, file: !30, line: 544, baseType: !2154, size: 64, offset: 5376)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !96, file: !30, line: 545, baseType: !2157, size: 64, offset: 5440)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !96, file: !30, line: 547, baseType: !1005, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !96, file: !30, line: 548, baseType: !1005, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !96, file: !30, line: 549, baseType: !1005, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !96, file: !30, line: 550, baseType: !1005, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !91, file: !92, line: 277, baseType: !96, size: 5568, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !91, file: !92, line: 278, baseType: !146, size: 32, offset: 5632)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !91, file: !92, line: 279, baseType: !2166, size: 64, offset: 5696)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !92, line: 82, size: 1408, elements: !2169)
!2169 = !{!2170, !2224, !2228, !2229, !2233, !2251, !2255, !2256, !2260, !2264, !2268, !2272, !2273, !2277, !2278, !2279, !2280, !2281, !2282, !2286, !2287, !2288}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !2168, file: !92, line: 91, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !90, !2174, !146}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !2176, line: 144, size: 896, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !{!2178, !2211, !2212, !2213, !2214, !2215, !2216, !2220, !2221, !2222, !2223}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !2175, file: !2176, line: 145, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !2176, line: 26, size: 448, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2186, !2187, !2188, !2189, !2190, !2210}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2180, file: !2176, line: 27, baseType: !435, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2180, file: !2176, line: 28, baseType: !435, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !2180, file: !2176, line: 32, baseType: !2185, size: 128, offset: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 128, elements: !362)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2180, file: !2176, line: 33, baseType: !7, size: 32, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2180, file: !2176, line: 92, baseType: !7, size: 32, offset: 224)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2180, file: !2176, line: 93, baseType: !146, size: 32, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !2180, file: !2176, line: 109, baseType: !7, size: 32, offset: 288)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2180, file: !2176, line: 110, baseType: !2191, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !2176, line: 114, size: 576, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2209}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !2192, file: !2176, line: 115, baseType: !7, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !2192, file: !2176, line: 116, baseType: !7, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !2192, file: !2176, line: 117, baseType: !7, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2192, file: !2176, line: 118, baseType: !7, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !2192, file: !2176, line: 119, baseType: !7, size: 32, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2192, file: !2176, line: 120, baseType: !146, size: 32, offset: 160)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !2176, line: 121, baseType: !7, size: 32, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !2192, file: !2176, line: 132, baseType: !7, size: 32, offset: 224)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2192, file: !2176, line: 134, baseType: !2179, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !2192, file: !2176, line: 135, baseType: !2174, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !2192, file: !2176, line: 137, baseType: !7, size: 32, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !2192, file: !2176, line: 138, baseType: !146, size: 32, offset: 416)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !2192, file: !2176, line: 139, baseType: !2207, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !2176, line: 139, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !2192, file: !2176, line: 140, baseType: !665, size: 32, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !2180, file: !2176, line: 111, baseType: !2174, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2175, file: !2176, line: 146, baseType: !2179, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2175, file: !2176, line: 147, baseType: !2191, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2175, file: !2176, line: 148, baseType: !2179, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2175, file: !2176, line: 150, baseType: !741, size: 192, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !2175, file: !2176, line: 151, baseType: !741, size: 192, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2175, file: !2176, line: 152, baseType: !2217, size: 64, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2174}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !2175, file: !2176, line: 158, baseType: !2217, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2175, file: !2176, line: 159, baseType: !90, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !2175, file: !2176, line: 162, baseType: !1005, size: 8, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2175, file: !2176, line: 164, baseType: !146, size: 32, offset: 864)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !2168, file: !92, line: 93, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !90, !2174}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2168, file: !92, line: 94, baseType: !2225, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !2168, file: !92, line: 96, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!146, !90, !2174}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !2168, file: !92, line: 113, baseType: !2234, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !90, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !92, line: 19, size: 160, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2238, file: !92, line: 20, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !2238, file: !92, line: 21, baseType: !204, size: 16, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !2238, file: !92, line: 22, baseType: !7, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !2238, file: !92, line: 26, baseType: !574, size: 8, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !2238, file: !92, line: 31, baseType: !574, size: 8, offset: 104)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !2238, file: !92, line: 37, baseType: !574, size: 8, offset: 112)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !2238, file: !92, line: 44, baseType: !574, size: 8, offset: 120)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !2238, file: !92, line: 50, baseType: !574, size: 8, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !2238, file: !92, line: 64, baseType: !574, size: 8, offset: 136)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !2238, file: !92, line: 70, baseType: !574, size: 8, offset: 144)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !2238, file: !92, line: 77, baseType: !1005, size: 8, offset: 152)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !2168, file: !92, line: 122, baseType: !2252, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!146, !90}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !2168, file: !92, line: 131, baseType: !2252, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !2168, file: !92, line: 133, baseType: !2257, size: 64, offset: 448)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !90, !146}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !2168, file: !92, line: 135, baseType: !2261, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !90}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !2168, file: !92, line: 138, baseType: !2265, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !90, !85}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !2168, file: !92, line: 140, baseType: !2269, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!146, !90, !2237}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !2168, file: !92, line: 143, baseType: !2252, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !2168, file: !92, line: 146, baseType: !2274, size: 64, offset: 768)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!146, !90, !435}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !2168, file: !92, line: 149, baseType: !2269, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !2168, file: !92, line: 152, baseType: !2252, size: 64, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !2168, file: !92, line: 155, baseType: !2261, size: 64, offset: 960)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !2168, file: !92, line: 158, baseType: !2261, size: 64, offset: 1024)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !2168, file: !92, line: 161, baseType: !2234, size: 64, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !2168, file: !92, line: 163, baseType: !2283, size: 64, offset: 1152)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!146, !85, !7, !146, !146, !752}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2168, file: !92, line: 167, baseType: !2261, size: 64, offset: 1216)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !2168, file: !92, line: 168, baseType: !2261, size: 64, offset: 1280)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !2168, file: !92, line: 174, baseType: !2289, size: 64, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!146, !85, !7, !146}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !91, file: !92, line: 280, baseType: !2293, size: 64, offset: 5760)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !92, line: 264, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !91, file: !92, line: 281, baseType: !7, size: 32, offset: 5824)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !91, file: !92, line: 282, baseType: !7, size: 32, offset: 5856)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !91, file: !92, line: 283, baseType: !7, size: 32, offset: 5888)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !91, file: !92, line: 284, baseType: !435, size: 32, offset: 5920)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !91, file: !92, line: 285, baseType: !435, size: 32, offset: 5952)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !91, file: !92, line: 286, baseType: !435, size: 32, offset: 5984)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !91, file: !92, line: 287, baseType: !435, size: 32, offset: 6016)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !91, file: !92, line: 289, baseType: !2303, size: 192, offset: 6080)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2304, line: 54, size: 192, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2305 = !{!2306, !2312, !2313}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2303, file: !2304, line: 55, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2304, line: 51, baseType: !2308)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!146, !2311, !212, !79}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2303, file: !2304, line: 56, baseType: !2311, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2303, file: !2304, line: 57, baseType: !146, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !91, file: !92, line: 291, baseType: !1789, size: 64, offset: 6272)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !91, file: !92, line: 292, baseType: !435, size: 32, offset: 6336)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !91, file: !92, line: 293, baseType: !435, size: 32, offset: 6368)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !91, file: !92, line: 294, baseType: !435, size: 32, offset: 6400)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !91, file: !92, line: 314, baseType: !435, size: 32, offset: 6432)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !91, file: !92, line: 352, baseType: !435, size: 32, offset: 6464)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !91, file: !92, line: 381, baseType: !146, size: 32, offset: 6496)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !91, file: !92, line: 383, baseType: !2322, size: 32, offset: 6528)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !2323, line: 22, baseType: !7)
!2323 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !91, file: !92, line: 386, baseType: !7, size: 32, offset: 6560)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !91, file: !92, line: 387, baseType: !204, size: 16, offset: 6592)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !91, file: !92, line: 388, baseType: !204, size: 16, offset: 6608)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !91, file: !92, line: 389, baseType: !7, size: 32, offset: 6624)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !91, file: !92, line: 390, baseType: !7, size: 32, offset: 6656)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !91, file: !92, line: 391, baseType: !7, size: 32, offset: 6688)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !91, file: !92, line: 392, baseType: !7, size: 32, offset: 6720)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !91, file: !92, line: 395, baseType: !120, offset: 6752)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !91, file: !92, line: 397, baseType: !2238, size: 160, offset: 6752)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !91, file: !92, line: 400, baseType: !7, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !91, file: !92, line: 401, baseType: !7, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !91, file: !92, line: 402, baseType: !7, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !91, file: !92, line: 403, baseType: !7, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !91, file: !92, line: 404, baseType: !7, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !91, file: !92, line: 405, baseType: !7, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !91, file: !92, line: 406, baseType: !7, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !91, file: !92, line: 407, baseType: !7, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !91, file: !92, line: 408, baseType: !7, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !91, file: !92, line: 409, baseType: !7, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !91, file: !92, line: 410, baseType: !7, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !91, file: !92, line: 412, baseType: !146, size: 32, offset: 6944)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !91, file: !92, line: 413, baseType: !146, size: 32, offset: 6976)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !91, file: !92, line: 415, baseType: !146, size: 32, offset: 7008)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !91, file: !92, line: 416, baseType: !146, size: 32, offset: 7040)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !91, file: !92, line: 417, baseType: !7, size: 32, offset: 7072)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !91, file: !92, line: 418, baseType: !1801, size: 320, offset: 7104)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !91, file: !92, line: 420, baseType: !1005, size: 8, offset: 7424)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !91, file: !92, line: 422, baseType: !85, size: 64, offset: 7488)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !91, file: !92, line: 424, baseType: !712, size: 128, offset: 7552)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !91, file: !92, line: 425, baseType: !2354, size: 64, offset: 7680)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !92, line: 271, size: 64, elements: !2356)
!2356 = !{!2357}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2355, file: !92, line: 272, baseType: !425, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !91, file: !92, line: 426, baseType: !146, size: 32, offset: 7744)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !91, file: !92, line: 427, baseType: !2355, size: 64, offset: 7808)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !91, file: !92, line: 429, baseType: !2361, size: 704, offset: 7872)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1345, line: 115, size: 704, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2368}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2361, file: !1345, line: 116, baseType: !1344, size: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2361, file: !1345, line: 117, baseType: !1801, size: 320, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2361, file: !1345, line: 120, baseType: !2366, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1345, line: 18, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2361, file: !1345, line: 121, baseType: !146, size: 32, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !91, file: !92, line: 430, baseType: !146, size: 32, offset: 8576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !91, file: !92, line: 431, baseType: !2371, size: 128, offset: 8640)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !92, line: 243, size: 128, elements: !2372)
!2372 = !{!2373, !2374, !2375}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !2371, file: !92, line: 244, baseType: !146, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !2371, file: !92, line: 245, baseType: !1005, size: 8, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !2371, file: !92, line: 246, baseType: !79, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !91, file: !92, line: 433, baseType: !2377, size: 64, offset: 8768)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !2380, line: 20, size: 704, elements: !2381)
!2380 = !DIFile(filename: "drivers/mmc/core/core.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2379, file: !2380, line: 21, baseType: !2261, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2379, file: !2380, line: 22, baseType: !2261, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pre_suspend", scope: !2379, file: !2380, line: 23, baseType: !2252, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2379, file: !2380, line: 24, baseType: !2252, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2379, file: !2380, line: 25, baseType: !2252, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2379, file: !2380, line: 26, baseType: !2252, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2379, file: !2380, line: 27, baseType: !2252, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !2379, file: !2380, line: 28, baseType: !2252, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2379, file: !2380, line: 29, baseType: !2252, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !2379, file: !2380, line: 30, baseType: !2252, size: 64, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reset", scope: !2379, file: !2380, line: 31, baseType: !2252, size: 64, offset: 640)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !91, file: !92, line: 434, baseType: !7, size: 32, offset: 8832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !91, file: !92, line: 436, baseType: !7, size: 32, offset: 8864)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !91, file: !92, line: 437, baseType: !425, size: 64, offset: 8896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !91, file: !92, line: 438, baseType: !2361, size: 704, offset: 8960)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !91, file: !92, line: 439, baseType: !1005, size: 8, offset: 9664)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !91, file: !92, line: 440, baseType: !303, size: 32, offset: 9696)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !91, file: !92, line: 442, baseType: !2322, size: 32, offset: 9728)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !91, file: !92, line: 444, baseType: !2401, size: 64, offset: 9792)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !92, line: 444, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !91, file: !92, line: 449, baseType: !2404, size: 128, offset: 9856)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !92, line: 266, size: 128, elements: !2405)
!2405 = !{!2406, !2409}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !2404, file: !92, line: 267, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !92, line: 263, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !2404, file: !92, line: 268, baseType: !2407, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !91, file: !92, line: 451, baseType: !2411, size: 64, offset: 9984)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1444, line: 21, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !91, file: !92, line: 454, baseType: !2174, size: 64, offset: 10048)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !91, file: !92, line: 460, baseType: !7, size: 32, offset: 10112)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !91, file: !92, line: 462, baseType: !7, size: 32, offset: 10144)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !91, file: !92, line: 464, baseType: !146, size: 32, offset: 10176)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !91, file: !92, line: 465, baseType: !435, size: 32, offset: 10208)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !91, file: !92, line: 468, baseType: !2419, size: 64, offset: 10240)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !92, line: 178, size: 576, elements: !2422)
!2422 = !{!2423, !2427, !2428, !2429, !2430, !2431, !2432, !2437, !2438}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !2421, file: !92, line: 180, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!146, !90, !85}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !2421, file: !92, line: 182, baseType: !2261, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !2421, file: !92, line: 187, baseType: !2230, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !2421, file: !92, line: 189, baseType: !2225, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !2421, file: !92, line: 195, baseType: !2261, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !2421, file: !92, line: 200, baseType: !2252, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !2421, file: !92, line: 206, baseType: !2433, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!1005, !90, !2174, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !2421, file: !92, line: 212, baseType: !2261, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !2421, file: !92, line: 219, baseType: !2261, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !91, file: !92, line: 469, baseType: !79, size: 64, offset: 10304)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !91, file: !92, line: 470, baseType: !146, size: 32, offset: 10368)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !91, file: !92, line: 471, baseType: !1005, size: 8, offset: 10400)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !91, file: !92, line: 472, baseType: !1005, size: 8, offset: 10408)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !91, file: !92, line: 475, baseType: !1005, size: 8, offset: 10416)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !91, file: !92, line: 477, baseType: !1357, align: 512, offset: 10752)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !86, file: !87, line: 246, baseType: !96, size: 5568, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !86, file: !87, line: 247, baseType: !435, size: 32, offset: 5632)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !86, file: !87, line: 248, baseType: !7, size: 32, offset: 5664)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !87, line: 249, baseType: !7, size: 32, offset: 5696)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !86, file: !87, line: 254, baseType: !7, size: 32, offset: 5728)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !86, file: !87, line: 255, baseType: !7, size: 32, offset: 5760)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !86, file: !87, line: 256, baseType: !7, size: 32, offset: 5792)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !86, file: !87, line: 274, baseType: !1005, size: 8, offset: 5824)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !86, file: !87, line: 276, baseType: !7, size: 32, offset: 5856)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !86, file: !87, line: 277, baseType: !7, size: 32, offset: 5888)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !86, file: !87, line: 278, baseType: !7, size: 32, offset: 5920)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !86, file: !87, line: 279, baseType: !7, size: 32, offset: 5952)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !86, file: !87, line: 280, baseType: !7, size: 32, offset: 5984)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !86, file: !87, line: 281, baseType: !572, size: 8, offset: 6016)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !86, file: !87, line: 283, baseType: !2185, size: 128, offset: 6048)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !86, file: !87, line: 284, baseType: !2185, size: 128, offset: 6176)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !86, file: !87, line: 285, baseType: !2462, size: 64, offset: 6304)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 64, elements: !977)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !86, file: !87, line: 286, baseType: !2031, size: 512, offset: 6368)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !86, file: !87, line: 287, baseType: !2465, size: 224, offset: 6880)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !87, line: 13, size: 224, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !2465, file: !87, line: 14, baseType: !7, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !2465, file: !87, line: 15, baseType: !942, size: 64, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !2465, file: !87, line: 16, baseType: !574, size: 8, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2465, file: !87, line: 17, baseType: !7, size: 32, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !2465, file: !87, line: 18, baseType: !204, size: 16, offset: 160)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !2465, file: !87, line: 19, baseType: !204, size: 16, offset: 176)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !2465, file: !87, line: 20, baseType: !574, size: 8, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2465, file: !87, line: 21, baseType: !574, size: 8, offset: 200)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !2465, file: !87, line: 22, baseType: !574, size: 8, offset: 208)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !86, file: !87, line: 288, baseType: !2477, size: 352, offset: 7104)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !87, line: 25, size: 352, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2477, file: !87, line: 26, baseType: !574, size: 8)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !2477, file: !87, line: 27, baseType: !574, size: 8, offset: 8)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !2477, file: !87, line: 28, baseType: !204, size: 16, offset: 16)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !2477, file: !87, line: 29, baseType: !204, size: 16, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !2477, file: !87, line: 30, baseType: !7, size: 32, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !2477, file: !87, line: 31, baseType: !7, size: 32, offset: 96)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !2477, file: !87, line: 32, baseType: !7, size: 32, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2477, file: !87, line: 33, baseType: !7, size: 32, offset: 160)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !2477, file: !87, line: 34, baseType: !7, size: 32, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !2477, file: !87, line: 35, baseType: !7, size: 32, offset: 224)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !2477, file: !87, line: 36, baseType: !7, size: 32, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2477, file: !87, line: 37, baseType: !7, size: 32, offset: 288)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !2477, file: !87, line: 38, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !2477, file: !87, line: 39, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !2477, file: !87, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !2477, file: !87, line: 41, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !2477, file: !87, line: 42, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !86, file: !87, line: 289, baseType: !2497, size: 1344, offset: 7488)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !87, line: 45, size: 1344, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2573, !2574, !2575, !2576}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2497, file: !87, line: 46, baseType: !572, size: 8)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !2497, file: !87, line: 47, baseType: !572, size: 8, offset: 8)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !2497, file: !87, line: 48, baseType: !572, size: 8, offset: 16)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !2497, file: !87, line: 49, baseType: !572, size: 8, offset: 24)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !2497, file: !87, line: 50, baseType: !572, size: 8, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !2497, file: !87, line: 51, baseType: !1005, size: 8, offset: 40)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !2497, file: !87, line: 52, baseType: !572, size: 8, offset: 48)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !2497, file: !87, line: 53, baseType: !572, size: 8, offset: 56)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !2497, file: !87, line: 54, baseType: !572, size: 8, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !2497, file: !87, line: 55, baseType: !572, size: 8, offset: 72)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !2497, file: !87, line: 56, baseType: !572, size: 8, offset: 80)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !2497, file: !87, line: 57, baseType: !572, size: 8, offset: 88)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !2497, file: !87, line: 58, baseType: !7, size: 32, offset: 96)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !2497, file: !87, line: 59, baseType: !7, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !2497, file: !87, line: 60, baseType: !7, size: 32, offset: 160)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !2497, file: !87, line: 61, baseType: !7, size: 32, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !2497, file: !87, line: 62, baseType: !572, size: 8, offset: 224)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2497, file: !87, line: 63, baseType: !7, size: 32, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !2497, file: !87, line: 64, baseType: !7, size: 32, offset: 288)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2497, file: !87, line: 69, baseType: !7, size: 32, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !2497, file: !87, line: 70, baseType: !7, size: 32, offset: 352)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !2497, file: !87, line: 71, baseType: !7, size: 32, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !2497, file: !87, line: 72, baseType: !7, size: 32, offset: 416)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !2497, file: !87, line: 73, baseType: !7, size: 32, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !2497, file: !87, line: 74, baseType: !7, size: 32, offset: 480)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !2497, file: !87, line: 75, baseType: !1005, size: 8, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !2497, file: !87, line: 76, baseType: !285, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !2497, file: !87, line: 77, baseType: !7, size: 32, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !2497, file: !87, line: 78, baseType: !7, size: 32, offset: 672)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !2497, file: !87, line: 79, baseType: !1005, size: 8, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !2497, file: !87, line: 80, baseType: !1005, size: 8, offset: 712)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !2497, file: !87, line: 81, baseType: !7, size: 32, offset: 736)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !2497, file: !87, line: 82, baseType: !1005, size: 8, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !2497, file: !87, line: 83, baseType: !1005, size: 8, offset: 776)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !2497, file: !87, line: 84, baseType: !1005, size: 8, offset: 784)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !2497, file: !87, line: 85, baseType: !7, size: 32, offset: 800)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !2497, file: !87, line: 86, baseType: !7, size: 32, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !2497, file: !87, line: 87, baseType: !7, size: 32, offset: 864)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !2497, file: !87, line: 88, baseType: !1005, size: 8, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !2497, file: !87, line: 89, baseType: !1005, size: 8, offset: 904)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !2497, file: !87, line: 90, baseType: !1005, size: 8, offset: 912)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !2497, file: !87, line: 91, baseType: !1005, size: 8, offset: 920)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !2497, file: !87, line: 92, baseType: !7, size: 32, offset: 928)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !2497, file: !87, line: 94, baseType: !2543, size: 64, offset: 960)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 64, elements: !541)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !2497, file: !87, line: 95, baseType: !572, size: 8, offset: 1024)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !2497, file: !87, line: 96, baseType: !572, size: 8, offset: 1032)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !2497, file: !87, line: 97, baseType: !572, size: 8, offset: 1040)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !2497, file: !87, line: 98, baseType: !572, size: 8, offset: 1048)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !2497, file: !87, line: 99, baseType: !572, size: 8, offset: 1056)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !2497, file: !87, line: 100, baseType: !572, size: 8, offset: 1064)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !2497, file: !87, line: 101, baseType: !572, size: 8, offset: 1072)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !2497, file: !87, line: 102, baseType: !572, size: 8, offset: 1080)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !2497, file: !87, line: 103, baseType: !572, size: 8, offset: 1088)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !2497, file: !87, line: 104, baseType: !572, size: 8, offset: 1096)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !2497, file: !87, line: 105, baseType: !572, size: 8, offset: 1104)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !2497, file: !87, line: 106, baseType: !572, size: 8, offset: 1112)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !2497, file: !87, line: 107, baseType: !572, size: 8, offset: 1120)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !2497, file: !87, line: 108, baseType: !572, size: 8, offset: 1128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !2497, file: !87, line: 109, baseType: !572, size: 8, offset: 1136)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !2497, file: !87, line: 110, baseType: !572, size: 8, offset: 1144)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !2497, file: !87, line: 111, baseType: !572, size: 8, offset: 1152)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !2497, file: !87, line: 112, baseType: !572, size: 8, offset: 1160)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !2497, file: !87, line: 113, baseType: !572, size: 8, offset: 1168)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !2497, file: !87, line: 114, baseType: !572, size: 8, offset: 1176)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !2497, file: !87, line: 115, baseType: !572, size: 8, offset: 1184)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !2497, file: !87, line: 116, baseType: !572, size: 8, offset: 1192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !2497, file: !87, line: 117, baseType: !572, size: 8, offset: 1200)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !2497, file: !87, line: 118, baseType: !572, size: 8, offset: 1208)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !2497, file: !87, line: 119, baseType: !572, size: 8, offset: 1216)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !2497, file: !87, line: 120, baseType: !572, size: 8, offset: 1224)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !2497, file: !87, line: 121, baseType: !572, size: 8, offset: 1232)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !2497, file: !87, line: 122, baseType: !2572, size: 32, offset: 1240)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 32, elements: !362)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !2497, file: !87, line: 123, baseType: !572, size: 8, offset: 1272)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !2497, file: !87, line: 124, baseType: !572, size: 8, offset: 1280)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !2497, file: !87, line: 125, baseType: !572, size: 8, offset: 1288)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !2497, file: !87, line: 127, baseType: !7, size: 32, offset: 1312)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !86, file: !87, line: 290, baseType: !2578, size: 48, offset: 8832)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !87, line: 131, size: 48, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !2578, file: !87, line: 132, baseType: !574, size: 8)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !2578, file: !87, line: 133, baseType: !574, size: 8, offset: 8)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !2578, file: !87, line: 134, baseType: !574, size: 8, offset: 16)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !2578, file: !87, line: 135, baseType: !574, size: 8, offset: 24)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !2578, file: !87, line: 136, baseType: !574, size: 8, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !2578, file: !87, line: 139, baseType: !574, size: 8, offset: 40)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !86, file: !87, line: 291, baseType: !2587, size: 96, offset: 8896)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !87, line: 144, size: 96, elements: !2588)
!2588 = !{!2589, !2590, !2591}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !2587, file: !87, line: 145, baseType: !7, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !2587, file: !87, line: 146, baseType: !7, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !2587, file: !87, line: 147, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !86, file: !87, line: 292, baseType: !2593, size: 160, offset: 8992)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !87, line: 150, size: 160, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !2593, file: !87, line: 151, baseType: !7, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !2593, file: !87, line: 152, baseType: !7, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !2593, file: !87, line: 160, baseType: !7, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !2593, file: !87, line: 174, baseType: !7, size: 32, offset: 96)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !2593, file: !87, line: 179, baseType: !7, size: 32, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !86, file: !87, line: 294, baseType: !7, size: 32, offset: 9152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !86, file: !87, line: 295, baseType: !303, size: 32, offset: 9184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !86, file: !87, line: 296, baseType: !2603, size: 96, offset: 9216)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !87, line: 192, size: 96, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !2603, file: !87, line: 193, baseType: !7, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !2603, file: !87, line: 194, baseType: !7, size: 32, offset: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !2603, file: !87, line: 195, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !2603, file: !87, line: 196, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !2603, file: !87, line: 197, baseType: !7, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !2603, file: !87, line: 198, baseType: !7, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !2603, file: !87, line: 199, baseType: !7, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !2603, file: !87, line: 200, baseType: !7, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !86, file: !87, line: 297, baseType: !2614, size: 96, offset: 9312)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !87, line: 203, size: 96, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2614, file: !87, line: 204, baseType: !204, size: 16)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2614, file: !87, line: 205, baseType: !204, size: 16, offset: 16)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2614, file: !87, line: 206, baseType: !204, size: 16, offset: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !2614, file: !87, line: 207, baseType: !7, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !86, file: !87, line: 298, baseType: !2621, size: 448, offset: 9408)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 448, elements: !2622)
!2622 = !{!2623}
!2623 = !DISubrange(count: 7)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !86, file: !87, line: 299, baseType: !80, size: 64, offset: 9856)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !86, file: !87, line: 300, baseType: !572, size: 8, offset: 9920)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !86, file: !87, line: 301, baseType: !572, size: 8, offset: 9928)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !86, file: !87, line: 302, baseType: !7, size: 32, offset: 9952)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !86, file: !87, line: 303, baseType: !1958, size: 64, offset: 9984)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !86, file: !87, line: 304, baseType: !2630, size: 64, offset: 10048)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !82, line: 24, size: 128, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2631, file: !82, line: 25, baseType: !2630, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2631, file: !82, line: 26, baseType: !574, size: 8, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2631, file: !82, line: 27, baseType: !574, size: 8, offset: 72)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2631, file: !82, line: 28, baseType: !2637, offset: 80)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, elements: !1358)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !86, file: !87, line: 306, baseType: !7, size: 32, offset: 10112)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !86, file: !87, line: 307, baseType: !7, size: 32, offset: 10144)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !86, file: !87, line: 308, baseType: !7, size: 32, offset: 10176)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !86, file: !87, line: 310, baseType: !2411, size: 64, offset: 10240)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !86, file: !87, line: 311, baseType: !2643, size: 2240, offset: 10304)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 2240, elements: !2622)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !87, line: 229, size: 320, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2650, !2651}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2644, file: !87, line: 230, baseType: !281, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !2644, file: !87, line: 231, baseType: !7, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2644, file: !87, line: 232, baseType: !2649, size: 160, offset: 96)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 160, elements: !1210)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !2644, file: !87, line: 233, baseType: !1005, size: 8, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !2644, file: !87, line: 234, baseType: !7, size: 32, offset: 288)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !86, file: !87, line: 312, baseType: !7, size: 32, offset: 12544)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !86, file: !87, line: 314, baseType: !7, size: 32, offset: 12576)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !86, file: !87, line: 315, baseType: !2366, size: 64, offset: 12608)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !81, file: !82, line: 36, baseType: !96, size: 5568, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !81, file: !82, line: 37, baseType: !2657, size: 64, offset: 5632)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdio_irq_handler_t", file: !82, line: 19, baseType: !2659)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !80}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !81, file: !82, line: 38, baseType: !7, size: 32, offset: 5696)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !81, file: !82, line: 40, baseType: !574, size: 8, offset: 5728)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !81, file: !82, line: 41, baseType: !204, size: 16, offset: 5744)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !81, file: !82, line: 42, baseType: !204, size: 16, offset: 5760)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "max_blksize", scope: !81, file: !82, line: 44, baseType: !7, size: 32, offset: 5792)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blksize", scope: !81, file: !82, line: 45, baseType: !7, size: 32, offset: 5824)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "enable_timeout", scope: !81, file: !82, line: 47, baseType: !7, size: 32, offset: 5856)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !81, file: !82, line: 49, baseType: !7, size: 32, offset: 5888)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tmpbuf", scope: !81, file: !82, line: 52, baseType: !2670, size: 64, offset: 5952)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !81, file: !82, line: 54, baseType: !572, size: 8, offset: 6016)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !81, file: !82, line: 55, baseType: !572, size: 8, offset: 6024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !81, file: !82, line: 56, baseType: !7, size: 32, offset: 6048)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !81, file: !82, line: 57, baseType: !1958, size: 64, offset: 6080)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !81, file: !82, line: 59, baseType: !2630, size: 64, offset: 6144)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_driver", file: !82, line: 75, size: 1408, elements: !2678)
!2678 = !{!2679, !2680, !2689, !2693, !2695}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2677, file: !82, line: 76, baseType: !162, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2677, file: !82, line: 77, baseType: !2681, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_device_id", file: !1691, line: 393, size: 128, elements: !2684)
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2683, file: !1691, line: 394, baseType: !573, size: 8)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2683, file: !1691, line: 395, baseType: !410, size: 16, offset: 16)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2683, file: !1691, line: 396, baseType: !410, size: 16, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2683, file: !1691, line: 397, baseType: !1711, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2677, file: !82, line: 79, baseType: !2690, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!146, !80, !2681}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2677, file: !82, line: 80, baseType: !2694, size: 64, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2677, file: !82, line: 82, baseType: !1676, size: 1152, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !435)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2703, line: 351, size: 10880, elements: !2704)
!2703 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2706, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2724, !2741, !2813, !2842, !2866, !2887, !2893, !2902, !2934, !2948, !2970, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2702, file: !2703, line: 352, baseType: !146, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2702, file: !2703, line: 353, baseType: !2707, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !2708, line: 424, baseType: !79)
!2708 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2702, file: !2703, line: 354, baseType: !1916, size: 192, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2702, file: !2703, line: 355, baseType: !2701, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2702, file: !2703, line: 356, baseType: !107, size: 128, offset: 384)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2702, file: !2703, line: 357, baseType: !107, size: 128, offset: 512)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2702, file: !2703, line: 358, baseType: !107, size: 128, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2702, file: !2703, line: 359, baseType: !107, size: 128, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2702, file: !2703, line: 360, baseType: !2716, size: 32, offset: 896)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2703, line: 179, size: 32, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2716, file: !2703, line: 180, baseType: !435, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2716, file: !2703, line: 181, baseType: !435, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2716, file: !2703, line: 182, baseType: !435, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2716, file: !2703, line: 183, baseType: !435, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2716, file: !2703, line: 184, baseType: !435, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2716, file: !2703, line: 185, baseType: !435, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2702, file: !2703, line: 361, baseType: !2725, size: 32, offset: 928)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2703, line: 190, size: 32, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2725, file: !2703, line: 191, baseType: !435, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2725, file: !2703, line: 192, baseType: !435, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2725, file: !2703, line: 193, baseType: !435, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2725, file: !2703, line: 194, baseType: !435, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2725, file: !2703, line: 195, baseType: !435, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2725, file: !2703, line: 196, baseType: !435, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2725, file: !2703, line: 197, baseType: !435, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2725, file: !2703, line: 198, baseType: !435, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2725, file: !2703, line: 199, baseType: !435, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2725, file: !2703, line: 200, baseType: !435, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2725, file: !2703, line: 201, baseType: !435, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2725, file: !2703, line: 202, baseType: !435, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2725, file: !2703, line: 203, baseType: !435, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2725, file: !2703, line: 204, baseType: !435, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2702, file: !2703, line: 362, baseType: !2742, size: 960, offset: 960)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2703, line: 234, size: 960, elements: !2743)
!2743 = !{!2744, !2746, !2753, !2755, !2756, !2757, !2762, !2764}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2742, file: !2703, line: 235, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2703, line: 217, baseType: !942)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2742, file: !2703, line: 236, baseType: !2747, size: 32, offset: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2703, line: 227, size: 32, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2747, file: !2703, line: 228, baseType: !435, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2747, file: !2703, line: 229, baseType: !435, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2747, file: !2703, line: 230, baseType: !435, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2747, file: !2703, line: 231, baseType: !435, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2742, file: !2703, line: 237, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2703, line: 218, baseType: !281)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2742, file: !2703, line: 238, baseType: !162, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2742, file: !2703, line: 239, baseType: !107, size: 128, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2742, file: !2703, line: 240, baseType: !2758, size: 320, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2703, line: 219, baseType: !2759)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 320, elements: !2760)
!2760 = !{!2761}
!2761 = !DISubrange(count: 40)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2742, file: !2703, line: 241, baseType: !2763, size: 160, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2703, line: 220, baseType: !2649)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2742, file: !2703, line: 242, baseType: !2765, size: 64, offset: 896)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !2708, line: 899, size: 192, elements: !2767)
!2767 = !{!2768, !2770, !2775, !2781, !2787, !2793, !2799, !2807}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2766, file: !2708, line: 900, baseType: !2769, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !2708, line: 635, baseType: !435)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2766, file: !2708, line: 904, baseType: !2771, size: 128)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 901, size: 128, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2771, file: !2708, line: 902, baseType: !2769, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2771, file: !2708, line: 903, baseType: !281, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2766, file: !2708, line: 910, baseType: !2776, size: 128)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 906, size: 128, elements: !2777)
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2776, file: !2708, line: 907, baseType: !2769, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2776, file: !2708, line: 908, baseType: !435, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2776, file: !2708, line: 909, baseType: !162, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2766, file: !2708, line: 916, baseType: !2782, size: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 912, size: 128, elements: !2783)
!2783 = !{!2784, !2785, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2782, file: !2708, line: 913, baseType: !2769, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2782, file: !2708, line: 914, baseType: !435, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2782, file: !2708, line: 915, baseType: !2670, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2766, file: !2708, line: 922, baseType: !2788, size: 128)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 918, size: 128, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2788, file: !2708, line: 919, baseType: !2769, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2788, file: !2708, line: 920, baseType: !435, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2788, file: !2708, line: 921, baseType: !2765, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2766, file: !2708, line: 928, baseType: !2794, size: 128)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 924, size: 128, elements: !2795)
!2795 = !{!2796, !2797, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2794, file: !2708, line: 925, baseType: !2769, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2794, file: !2708, line: 926, baseType: !2769, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2794, file: !2708, line: 927, baseType: !2707, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2766, file: !2708, line: 935, baseType: !2800, size: 192)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 930, size: 192, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2806}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2800, file: !2708, line: 931, baseType: !2769, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2800, file: !2708, line: 932, baseType: !435, size: 32, offset: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2800, file: !2708, line: 933, baseType: !2805, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !2708, line: 128, baseType: !281)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2800, file: !2708, line: 934, baseType: !435, size: 32, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2766, file: !2708, line: 941, baseType: !2808, size: 96)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !2708, line: 937, size: 96, elements: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2808, file: !2708, line: 938, baseType: !2769, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2808, file: !2708, line: 939, baseType: !435, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2808, file: !2708, line: 940, baseType: !435, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2702, file: !2703, line: 363, baseType: !2814, size: 1344, offset: 1920)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2703, line: 275, size: 1344, elements: !2815)
!2815 = !{!2816, !2817, !2827}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2814, file: !2703, line: 276, baseType: !146, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2814, file: !2703, line: 277, baseType: !2818, size: 32, offset: 32)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2703, line: 254, size: 32, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825, !2826}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2818, file: !2703, line: 255, baseType: !435, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2818, file: !2703, line: 256, baseType: !435, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2818, file: !2703, line: 257, baseType: !435, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2818, file: !2703, line: 258, baseType: !435, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2818, file: !2703, line: 259, baseType: !435, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2818, file: !2703, line: 260, baseType: !435, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2818, file: !2703, line: 261, baseType: !435, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2814, file: !2703, line: 278, baseType: !2828, size: 1280, offset: 64)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2829, size: 1280, elements: !2840)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2703, line: 264, size: 256, elements: !2830)
!2830 = !{!2831, !2837, !2838, !2839}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2829, file: !2703, line: 269, baseType: !2832, size: 8)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !2703, line: 265, size: 8, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2832, file: !2703, line: 266, baseType: !572, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2832, file: !2703, line: 267, baseType: !572, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2832, file: !2703, line: 268, baseType: !572, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2829, file: !2703, line: 270, baseType: !146, size: 32, offset: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2829, file: !2703, line: 271, baseType: !146, size: 32, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2829, file: !2703, line: 272, baseType: !107, size: 128, offset: 128)
!2840 = !{!2841}
!2841 = !DISubrange(count: 5)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2702, file: !2703, line: 364, baseType: !2843, size: 640, offset: 3264)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2703, line: 315, size: 640, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2854, !2863, !2864, !2865}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2843, file: !2703, line: 316, baseType: !2707, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2843, file: !2703, line: 317, baseType: !281, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2843, file: !2703, line: 318, baseType: !281, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2843, file: !2703, line: 319, baseType: !107, size: 128, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2843, file: !2703, line: 320, baseType: !2850, size: 8, offset: 320)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2703, line: 305, size: 8, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2850, file: !2703, line: 306, baseType: !572, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2850, file: !2703, line: 307, baseType: !572, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2843, file: !2703, line: 321, baseType: !2855, size: 128, offset: 384)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2703, line: 310, size: 128, elements: !2856)
!2856 = !{!2857, !2862}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2855, file: !2703, line: 311, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2855, file: !2703, line: 312, baseType: !95, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2843, file: !2703, line: 322, baseType: !1789, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2843, file: !2703, line: 323, baseType: !146, size: 32, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2843, file: !2703, line: 324, baseType: !146, size: 32, offset: 608)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2702, file: !2703, line: 365, baseType: !2867, size: 192, offset: 3904)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2703, line: 297, size: 192, elements: !2868)
!2868 = !{!2869, !2870, !2874, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2867, file: !2703, line: 298, baseType: !146, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !2703, line: 299, baseType: !2871, size: 8, offset: 32)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2703, line: 283, size: 8, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2871, file: !2703, line: 284, baseType: !572, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2867, file: !2703, line: 300, baseType: !146, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2867, file: !2703, line: 301, baseType: !2876, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2703, line: 287, size: 64, elements: !2878)
!2878 = !{!2879, !2884, !2885, !2886}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2877, file: !2703, line: 291, baseType: !2880, size: 8)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2877, file: !2703, line: 288, size: 8, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2880, file: !2703, line: 289, baseType: !572, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2880, file: !2703, line: 290, baseType: !572, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2877, file: !2703, line: 292, baseType: !572, size: 8, offset: 8)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2877, file: !2703, line: 293, baseType: !572, size: 8, offset: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2877, file: !2703, line: 294, baseType: !146, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2702, file: !2703, line: 366, baseType: !2888, size: 64, offset: 4096)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2703, line: 209, size: 64, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2888, file: !2703, line: 210, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2703, line: 84, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2702, file: !2703, line: 367, baseType: !2894, size: 384, offset: 4160)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2703, line: 341, size: 384, elements: !2895)
!2895 = !{!2896, !2899, !2900, !2901}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2894, file: !2703, line: 342, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2766)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2894, file: !2703, line: 343, baseType: !107, size: 128, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2894, file: !2703, line: 344, baseType: !2897, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2894, file: !2703, line: 345, baseType: !107, size: 128, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2702, file: !2703, line: 368, baseType: !2903, size: 64, offset: 4544)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2703, line: 122, size: 1216, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2913, !2917, !2921, !2922, !2923}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2904, file: !2703, line: 123, baseType: !1702, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2904, file: !2703, line: 124, baseType: !107, size: 128, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2904, file: !2703, line: 125, baseType: !2909, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!1005, !103, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2904, file: !2703, line: 126, baseType: !2914, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!146, !2701, !1702}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2904, file: !2703, line: 127, baseType: !2918, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2701}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2904, file: !2703, line: 128, baseType: !1626, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2904, file: !2703, line: 129, baseType: !1626, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2904, file: !2703, line: 130, baseType: !2924, size: 704, offset: 512)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2703, line: 108, size: 704, elements: !2925)
!2925 = !{!2926, !2927, !2931, !2932, !2933}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2924, file: !2703, line: 109, baseType: !99, size: 512)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2924, file: !2703, line: 110, baseType: !2928, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!146, !2701}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2924, file: !2703, line: 111, baseType: !2918, size: 64, offset: 576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2924, file: !2703, line: 112, baseType: !1005, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2924, file: !2703, line: 113, baseType: !1005, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2702, file: !2703, line: 369, baseType: !2935, size: 64, offset: 4608)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2703, line: 138, size: 256, elements: !2937)
!2937 = !{!2938, !2939, !2943, !2947}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2936, file: !2703, line: 139, baseType: !2701, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2936, file: !2703, line: 140, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!146, !2701, !435}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2936, file: !2703, line: 141, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2701, !435}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2936, file: !2703, line: 142, baseType: !2918, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2702, file: !2703, line: 370, baseType: !2949, size: 64, offset: 4672)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2703, line: 162, size: 2816, elements: !2951)
!2951 = !{!2952, !2956, !2957, !2958, !2959, !2968, !2969}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2950, file: !2703, line: 163, baseType: !2953, size: 640)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !2954)
!2954 = !{!2955}
!2955 = !DISubrange(count: 80)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2950, file: !2703, line: 164, baseType: !2953, size: 640, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2950, file: !2703, line: 165, baseType: !1702, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2950, file: !2703, line: 166, baseType: !7, size: 32, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2950, file: !2703, line: 167, baseType: !2960, size: 192, offset: 1408)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2703, line: 154, size: 192, elements: !2961)
!2961 = !{!2962, !2964, !2966}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2960, file: !2703, line: 155, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2703, line: 150, baseType: !2928)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2960, file: !2703, line: 156, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2703, line: 151, baseType: !2928)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2960, file: !2703, line: 157, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2703, line: 152, baseType: !2944)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2950, file: !2703, line: 168, baseType: !1676, size: 1152, offset: 1600)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2950, file: !2703, line: 169, baseType: !1681, size: 64, offset: 2752)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2702, file: !2703, line: 371, baseType: !2971, size: 64, offset: 4736)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2973)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2703, line: 348, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2702, file: !2703, line: 372, baseType: !79, size: 64, offset: 4800)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2702, file: !2703, line: 373, baseType: !96, size: 5568, offset: 4864)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2702, file: !2703, line: 374, baseType: !7, size: 32, offset: 10432)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2702, file: !2703, line: 375, baseType: !7, size: 32, offset: 10464)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2702, file: !2703, line: 376, baseType: !107, size: 128, offset: 10496)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2702, file: !2703, line: 377, baseType: !380, size: 192, offset: 10624)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2702, file: !2703, line: 378, baseType: !2918, size: 64, offset: 10816)
!2981 = !{!0, !2982, !2985, !2987, !2992, !3006, !3008, !3010, !3012, !3014, !3016, !3018, !3020, !3022}
!2982 = !DIGlobalVariableExpression(var: !2983, expr: !DIExpression())
!2983 = distinct !DIGlobalVariable(name: "sdio_dev_groups", scope: !2, file: !3, line: 78, type: !2984, isLocal: true, isDefinition: true)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !977)
!2985 = !DIGlobalVariableExpression(var: !2986, expr: !DIExpression())
!2986 = distinct !DIGlobalVariable(name: "sdio_dev_group", scope: !2, file: !3, line: 78, type: !218, isLocal: true, isDefinition: true)
!2987 = !DIGlobalVariableExpression(var: !2988, expr: !DIExpression())
!2988 = distinct !DIGlobalVariable(name: "sdio_dev_attrs", scope: !2, file: !3, line: 66, type: !2989, isLocal: true, isDefinition: true)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 640, elements: !2990)
!2990 = !{!2991}
!2991 = !DISubrange(count: 10)
!2992 = !DIGlobalVariableExpression(var: !2993, expr: !DIExpression())
!2993 = distinct !DIGlobalVariable(name: "dev_attr_class", scope: !2, file: !3, line: 42, type: !2994, isLocal: true, isDefinition: true)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2995)
!2995 = !{!2996, !2997, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2994, file: !30, line: 100, baseType: !199, size: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2994, file: !30, line: 101, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!193, !95, !3001, !162}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2994, file: !30, line: 103, baseType: !3003, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!193, !95, !3001, !103, !209}
!3006 = !DIGlobalVariableExpression(var: !3007, expr: !DIExpression())
!3007 = distinct !DIGlobalVariable(name: "dev_attr_vendor", scope: !2, file: !3, line: 43, type: !2994, isLocal: true, isDefinition: true)
!3008 = !DIGlobalVariableExpression(var: !3009, expr: !DIExpression())
!3009 = distinct !DIGlobalVariable(name: "dev_attr_device", scope: !2, file: !3, line: 44, type: !2994, isLocal: true, isDefinition: true)
!3010 = !DIGlobalVariableExpression(var: !3011, expr: !DIExpression())
!3011 = distinct !DIGlobalVariable(name: "dev_attr_revision", scope: !2, file: !3, line: 45, type: !2994, isLocal: true, isDefinition: true)
!3012 = !DIGlobalVariableExpression(var: !3013, expr: !DIExpression())
!3013 = distinct !DIGlobalVariable(name: "dev_attr_info1", scope: !2, file: !3, line: 61, type: !2994, isLocal: true, isDefinition: true)
!3014 = !DIGlobalVariableExpression(var: !3015, expr: !DIExpression())
!3015 = distinct !DIGlobalVariable(name: "dev_attr_info2", scope: !2, file: !3, line: 62, type: !2994, isLocal: true, isDefinition: true)
!3016 = !DIGlobalVariableExpression(var: !3017, expr: !DIExpression())
!3017 = distinct !DIGlobalVariable(name: "dev_attr_info3", scope: !2, file: !3, line: 63, type: !2994, isLocal: true, isDefinition: true)
!3018 = !DIGlobalVariableExpression(var: !3019, expr: !DIExpression())
!3019 = distinct !DIGlobalVariable(name: "dev_attr_info4", scope: !2, file: !3, line: 64, type: !2994, isLocal: true, isDefinition: true)
!3020 = !DIGlobalVariableExpression(var: !3021, expr: !DIExpression())
!3021 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 46, type: !2994, isLocal: true, isDefinition: true)
!3022 = !DIGlobalVariableExpression(var: !3023, expr: !DIExpression())
!3023 = distinct !DIGlobalVariable(name: "sdio_bus_pm_ops", scope: !2, file: !3, line: 239, type: !1631, isLocal: true, isDefinition: true)
!3024 = !{i32 7, !"Dwarf Version", i32 4}
!3025 = !{i32 2, !"Debug Info Version", i32 3}
!3026 = !{i32 1, !"wchar_size", i32 2}
!3027 = !{i32 1, !"Code Model", i32 2}
!3028 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3029 = distinct !DISubprogram(name: "sdio_register_bus", scope: !3, file: !3, line: 258, type: !3030, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!146}
!3032 = !DILocation(line: 260, column: 9, scope: !3029)
!3033 = !DILocation(line: 260, column: 2, scope: !3029)
!3034 = distinct !DISubprogram(name: "sdio_unregister_bus", scope: !3, file: !3, line: 263, type: !3035, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null}
!3037 = !DILocation(line: 265, column: 2, scope: !3034)
!3038 = !DILocation(line: 266, column: 1, scope: !3034)
!3039 = distinct !DISubprogram(name: "sdio_register_driver", scope: !3, file: !3, line: 272, type: !3040, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!146, !2676}
!3042 = !DILocalVariable(name: "drv", arg: 1, scope: !3039, file: !3, line: 272, type: !2676)
!3043 = !DILocation(line: 272, column: 46, scope: !3039)
!3044 = !DILocation(line: 274, column: 18, scope: !3039)
!3045 = !DILocation(line: 274, column: 23, scope: !3039)
!3046 = !DILocation(line: 274, column: 2, scope: !3039)
!3047 = !DILocation(line: 274, column: 7, scope: !3039)
!3048 = !DILocation(line: 274, column: 11, scope: !3039)
!3049 = !DILocation(line: 274, column: 16, scope: !3039)
!3050 = !DILocation(line: 275, column: 2, scope: !3039)
!3051 = !DILocation(line: 275, column: 7, scope: !3039)
!3052 = !DILocation(line: 275, column: 11, scope: !3039)
!3053 = !DILocation(line: 275, column: 15, scope: !3039)
!3054 = !DILocation(line: 276, column: 26, scope: !3039)
!3055 = !DILocation(line: 276, column: 31, scope: !3039)
!3056 = !DILocation(line: 276, column: 9, scope: !3039)
!3057 = !DILocation(line: 276, column: 2, scope: !3039)
!3058 = distinct !DISubprogram(name: "sdio_unregister_driver", scope: !3, file: !3, line: 284, type: !3059, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2676}
!3061 = !DILocalVariable(name: "drv", arg: 1, scope: !3058, file: !3, line: 284, type: !2676)
!3062 = !DILocation(line: 284, column: 49, scope: !3058)
!3063 = !DILocation(line: 286, column: 2, scope: !3058)
!3064 = !DILocation(line: 286, column: 7, scope: !3058)
!3065 = !DILocation(line: 286, column: 11, scope: !3058)
!3066 = !DILocation(line: 286, column: 15, scope: !3058)
!3067 = !DILocation(line: 287, column: 21, scope: !3058)
!3068 = !DILocation(line: 287, column: 26, scope: !3058)
!3069 = !DILocation(line: 287, column: 2, scope: !3058)
!3070 = !DILocation(line: 288, column: 1, scope: !3058)
!3071 = distinct !DISubprogram(name: "sdio_alloc_func", scope: !3, file: !3, line: 305, type: !3072, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!80, !85}
!3074 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !70, line: 445, type: !1055)
!3075 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !70, file: !70, line: 445, type: !3076, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!79, !1055, !77, !209}
!3078 = !DILocation(line: 445, column: 72, scope: !3075, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 552, column: 10, scope: !3080, inlinedAt: !3085)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !70, line: 540, column: 34)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !70, line: 540, column: 6)
!3082 = distinct !DISubprogram(name: "kmalloc", scope: !70, file: !70, line: 538, type: !3083, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!79, !209, !77}
!3085 = distinct !DILocation(line: 317, column: 17, scope: !3071)
!3086 = !DILocalVariable(name: "flags", arg: 2, scope: !3075, file: !70, line: 446, type: !77)
!3087 = !DILocation(line: 446, column: 9, scope: !3075, inlinedAt: !3079)
!3088 = !DILocalVariable(name: "size", arg: 3, scope: !3075, file: !70, line: 446, type: !209)
!3089 = !DILocation(line: 446, column: 23, scope: !3075, inlinedAt: !3079)
!3090 = !DILocalVariable(name: "ret", scope: !3075, file: !70, line: 448, type: !79)
!3091 = !DILocation(line: 448, column: 8, scope: !3075, inlinedAt: !3079)
!3092 = !DILocalVariable(name: "flags", arg: 1, scope: !3093, file: !70, line: 318, type: !77)
!3093 = distinct !DISubprogram(name: "kmalloc_type", scope: !70, file: !70, line: 318, type: !3094, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!69, !77}
!3096 = !DILocation(line: 318, column: 67, scope: !3093, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 553, column: 20, scope: !3080, inlinedAt: !3085)
!3098 = !DILocalVariable(name: "size", arg: 1, scope: !3099, file: !70, line: 346, type: !209)
!3099 = distinct !DISubprogram(name: "kmalloc_index", scope: !70, file: !70, line: 346, type: !3100, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!7, !209}
!3102 = !DILocation(line: 346, column: 58, scope: !3099, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 547, column: 11, scope: !3080, inlinedAt: !3085)
!3104 = !DILocalVariable(name: "size", arg: 1, scope: !3105, file: !70, line: 472, type: !209)
!3105 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !70, file: !70, line: 472, type: !3106, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!79, !209, !77, !7}
!3108 = !DILocation(line: 472, column: 28, scope: !3105, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 481, column: 9, scope: !3110, inlinedAt: !3111)
!3110 = distinct !DISubprogram(name: "kmalloc_large", scope: !70, file: !70, line: 478, type: !3083, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3111 = distinct !DILocation(line: 545, column: 11, scope: !3112, inlinedAt: !3085)
!3112 = distinct !DILexicalBlock(scope: !3080, file: !70, line: 544, column: 7)
!3113 = !DILocalVariable(name: "flags", arg: 2, scope: !3105, file: !70, line: 472, type: !77)
!3114 = !DILocation(line: 472, column: 40, scope: !3105, inlinedAt: !3109)
!3115 = !DILocalVariable(name: "order", arg: 3, scope: !3105, file: !70, line: 472, type: !7)
!3116 = !DILocation(line: 472, column: 60, scope: !3105, inlinedAt: !3109)
!3117 = !DILocalVariable(name: "size", arg: 1, scope: !3110, file: !70, line: 478, type: !209)
!3118 = !DILocation(line: 478, column: 51, scope: !3110, inlinedAt: !3111)
!3119 = !DILocalVariable(name: "flags", arg: 2, scope: !3110, file: !70, line: 478, type: !77)
!3120 = !DILocation(line: 478, column: 63, scope: !3110, inlinedAt: !3111)
!3121 = !DILocalVariable(name: "order", scope: !3110, file: !70, line: 480, type: !7)
!3122 = !DILocation(line: 480, column: 15, scope: !3110, inlinedAt: !3111)
!3123 = !DILocalVariable(name: "size", arg: 1, scope: !3082, file: !70, line: 538, type: !209)
!3124 = !DILocation(line: 538, column: 45, scope: !3082, inlinedAt: !3085)
!3125 = !DILocalVariable(name: "flags", arg: 2, scope: !3082, file: !70, line: 538, type: !77)
!3126 = !DILocation(line: 538, column: 57, scope: !3082, inlinedAt: !3085)
!3127 = !DILocalVariable(name: "index", scope: !3080, file: !70, line: 542, type: !7)
!3128 = !DILocation(line: 542, column: 16, scope: !3080, inlinedAt: !3085)
!3129 = !DILocalVariable(name: "card", arg: 1, scope: !3071, file: !3, line: 305, type: !85)
!3130 = !DILocation(line: 305, column: 52, scope: !3071)
!3131 = !DILocalVariable(name: "func", scope: !3071, file: !3, line: 307, type: !80)
!3132 = !DILocation(line: 307, column: 20, scope: !3071)
!3133 = !DILocation(line: 309, column: 9, scope: !3071)
!3134 = !DILocation(line: 309, column: 7, scope: !3071)
!3135 = !DILocation(line: 310, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 310, column: 6)
!3137 = !DILocation(line: 310, column: 6, scope: !3071)
!3138 = !DILocation(line: 311, column: 10, scope: !3136)
!3139 = !DILocation(line: 311, column: 3, scope: !3136)
!3140 = !DILocation(line: 540, column: 27, scope: !3081, inlinedAt: !3085)
!3141 = !DILocation(line: 540, column: 6, scope: !3081, inlinedAt: !3085)
!3142 = !DILocation(line: 540, column: 6, scope: !3082, inlinedAt: !3085)
!3143 = !DILocation(line: 544, column: 7, scope: !3112, inlinedAt: !3085)
!3144 = !DILocation(line: 544, column: 12, scope: !3112, inlinedAt: !3085)
!3145 = !DILocation(line: 544, column: 7, scope: !3080, inlinedAt: !3085)
!3146 = !DILocation(line: 545, column: 25, scope: !3112, inlinedAt: !3085)
!3147 = !DILocation(line: 545, column: 31, scope: !3112, inlinedAt: !3085)
!3148 = !DILocation(line: 480, column: 33, scope: !3110, inlinedAt: !3111)
!3149 = !DILocation(line: 480, column: 23, scope: !3110, inlinedAt: !3111)
!3150 = !DILocation(line: 481, column: 29, scope: !3110, inlinedAt: !3111)
!3151 = !DILocation(line: 481, column: 35, scope: !3110, inlinedAt: !3111)
!3152 = !DILocation(line: 481, column: 42, scope: !3110, inlinedAt: !3111)
!3153 = !DILocation(line: 474, column: 23, scope: !3105, inlinedAt: !3109)
!3154 = !DILocation(line: 474, column: 29, scope: !3105, inlinedAt: !3109)
!3155 = !DILocation(line: 474, column: 36, scope: !3105, inlinedAt: !3109)
!3156 = !DILocation(line: 474, column: 9, scope: !3105, inlinedAt: !3109)
!3157 = !DILocation(line: 545, column: 4, scope: !3112, inlinedAt: !3085)
!3158 = !DILocation(line: 547, column: 25, scope: !3080, inlinedAt: !3085)
!3159 = !DILocation(line: 348, column: 7, scope: !3160, inlinedAt: !3103)
!3160 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 348, column: 6)
!3161 = !DILocation(line: 348, column: 6, scope: !3099, inlinedAt: !3103)
!3162 = !DILocation(line: 349, column: 3, scope: !3160, inlinedAt: !3103)
!3163 = !DILocation(line: 351, column: 6, scope: !3164, inlinedAt: !3103)
!3164 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 351, column: 6)
!3165 = !DILocation(line: 351, column: 11, scope: !3164, inlinedAt: !3103)
!3166 = !DILocation(line: 351, column: 6, scope: !3099, inlinedAt: !3103)
!3167 = !DILocation(line: 352, column: 3, scope: !3164, inlinedAt: !3103)
!3168 = !DILocation(line: 354, column: 32, scope: !3169, inlinedAt: !3103)
!3169 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 354, column: 6)
!3170 = !DILocation(line: 354, column: 37, scope: !3169, inlinedAt: !3103)
!3171 = !DILocation(line: 354, column: 42, scope: !3169, inlinedAt: !3103)
!3172 = !DILocation(line: 354, column: 45, scope: !3169, inlinedAt: !3103)
!3173 = !DILocation(line: 354, column: 50, scope: !3169, inlinedAt: !3103)
!3174 = !DILocation(line: 354, column: 6, scope: !3099, inlinedAt: !3103)
!3175 = !DILocation(line: 355, column: 3, scope: !3169, inlinedAt: !3103)
!3176 = !DILocation(line: 356, column: 32, scope: !3177, inlinedAt: !3103)
!3177 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 356, column: 6)
!3178 = !DILocation(line: 356, column: 37, scope: !3177, inlinedAt: !3103)
!3179 = !DILocation(line: 356, column: 43, scope: !3177, inlinedAt: !3103)
!3180 = !DILocation(line: 356, column: 46, scope: !3177, inlinedAt: !3103)
!3181 = !DILocation(line: 356, column: 51, scope: !3177, inlinedAt: !3103)
!3182 = !DILocation(line: 356, column: 6, scope: !3099, inlinedAt: !3103)
!3183 = !DILocation(line: 357, column: 3, scope: !3177, inlinedAt: !3103)
!3184 = !DILocation(line: 358, column: 6, scope: !3185, inlinedAt: !3103)
!3185 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 358, column: 6)
!3186 = !DILocation(line: 358, column: 11, scope: !3185, inlinedAt: !3103)
!3187 = !DILocation(line: 358, column: 6, scope: !3099, inlinedAt: !3103)
!3188 = !DILocation(line: 358, column: 26, scope: !3185, inlinedAt: !3103)
!3189 = !DILocation(line: 359, column: 6, scope: !3190, inlinedAt: !3103)
!3190 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 359, column: 6)
!3191 = !DILocation(line: 359, column: 11, scope: !3190, inlinedAt: !3103)
!3192 = !DILocation(line: 359, column: 6, scope: !3099, inlinedAt: !3103)
!3193 = !DILocation(line: 359, column: 26, scope: !3190, inlinedAt: !3103)
!3194 = !DILocation(line: 360, column: 6, scope: !3195, inlinedAt: !3103)
!3195 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 360, column: 6)
!3196 = !DILocation(line: 360, column: 11, scope: !3195, inlinedAt: !3103)
!3197 = !DILocation(line: 360, column: 6, scope: !3099, inlinedAt: !3103)
!3198 = !DILocation(line: 360, column: 26, scope: !3195, inlinedAt: !3103)
!3199 = !DILocation(line: 361, column: 6, scope: !3200, inlinedAt: !3103)
!3200 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 361, column: 6)
!3201 = !DILocation(line: 361, column: 11, scope: !3200, inlinedAt: !3103)
!3202 = !DILocation(line: 361, column: 6, scope: !3099, inlinedAt: !3103)
!3203 = !DILocation(line: 361, column: 26, scope: !3200, inlinedAt: !3103)
!3204 = !DILocation(line: 362, column: 6, scope: !3205, inlinedAt: !3103)
!3205 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 362, column: 6)
!3206 = !DILocation(line: 362, column: 11, scope: !3205, inlinedAt: !3103)
!3207 = !DILocation(line: 362, column: 6, scope: !3099, inlinedAt: !3103)
!3208 = !DILocation(line: 362, column: 26, scope: !3205, inlinedAt: !3103)
!3209 = !DILocation(line: 363, column: 6, scope: !3210, inlinedAt: !3103)
!3210 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 363, column: 6)
!3211 = !DILocation(line: 363, column: 11, scope: !3210, inlinedAt: !3103)
!3212 = !DILocation(line: 363, column: 6, scope: !3099, inlinedAt: !3103)
!3213 = !DILocation(line: 363, column: 26, scope: !3210, inlinedAt: !3103)
!3214 = !DILocation(line: 364, column: 6, scope: !3215, inlinedAt: !3103)
!3215 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 364, column: 6)
!3216 = !DILocation(line: 364, column: 11, scope: !3215, inlinedAt: !3103)
!3217 = !DILocation(line: 364, column: 6, scope: !3099, inlinedAt: !3103)
!3218 = !DILocation(line: 364, column: 26, scope: !3215, inlinedAt: !3103)
!3219 = !DILocation(line: 365, column: 6, scope: !3220, inlinedAt: !3103)
!3220 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 365, column: 6)
!3221 = !DILocation(line: 365, column: 11, scope: !3220, inlinedAt: !3103)
!3222 = !DILocation(line: 365, column: 6, scope: !3099, inlinedAt: !3103)
!3223 = !DILocation(line: 365, column: 26, scope: !3220, inlinedAt: !3103)
!3224 = !DILocation(line: 366, column: 6, scope: !3225, inlinedAt: !3103)
!3225 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 366, column: 6)
!3226 = !DILocation(line: 366, column: 11, scope: !3225, inlinedAt: !3103)
!3227 = !DILocation(line: 366, column: 6, scope: !3099, inlinedAt: !3103)
!3228 = !DILocation(line: 366, column: 26, scope: !3225, inlinedAt: !3103)
!3229 = !DILocation(line: 367, column: 6, scope: !3230, inlinedAt: !3103)
!3230 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 367, column: 6)
!3231 = !DILocation(line: 367, column: 11, scope: !3230, inlinedAt: !3103)
!3232 = !DILocation(line: 367, column: 6, scope: !3099, inlinedAt: !3103)
!3233 = !DILocation(line: 367, column: 26, scope: !3230, inlinedAt: !3103)
!3234 = !DILocation(line: 368, column: 6, scope: !3235, inlinedAt: !3103)
!3235 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 368, column: 6)
!3236 = !DILocation(line: 368, column: 11, scope: !3235, inlinedAt: !3103)
!3237 = !DILocation(line: 368, column: 6, scope: !3099, inlinedAt: !3103)
!3238 = !DILocation(line: 368, column: 26, scope: !3235, inlinedAt: !3103)
!3239 = !DILocation(line: 369, column: 6, scope: !3240, inlinedAt: !3103)
!3240 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 369, column: 6)
!3241 = !DILocation(line: 369, column: 11, scope: !3240, inlinedAt: !3103)
!3242 = !DILocation(line: 369, column: 6, scope: !3099, inlinedAt: !3103)
!3243 = !DILocation(line: 369, column: 26, scope: !3240, inlinedAt: !3103)
!3244 = !DILocation(line: 370, column: 6, scope: !3245, inlinedAt: !3103)
!3245 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 370, column: 6)
!3246 = !DILocation(line: 370, column: 11, scope: !3245, inlinedAt: !3103)
!3247 = !DILocation(line: 370, column: 6, scope: !3099, inlinedAt: !3103)
!3248 = !DILocation(line: 370, column: 26, scope: !3245, inlinedAt: !3103)
!3249 = !DILocation(line: 371, column: 6, scope: !3250, inlinedAt: !3103)
!3250 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 371, column: 6)
!3251 = !DILocation(line: 371, column: 11, scope: !3250, inlinedAt: !3103)
!3252 = !DILocation(line: 371, column: 6, scope: !3099, inlinedAt: !3103)
!3253 = !DILocation(line: 371, column: 26, scope: !3250, inlinedAt: !3103)
!3254 = !DILocation(line: 372, column: 6, scope: !3255, inlinedAt: !3103)
!3255 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 372, column: 6)
!3256 = !DILocation(line: 372, column: 11, scope: !3255, inlinedAt: !3103)
!3257 = !DILocation(line: 372, column: 6, scope: !3099, inlinedAt: !3103)
!3258 = !DILocation(line: 372, column: 26, scope: !3255, inlinedAt: !3103)
!3259 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !3103)
!3260 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 373, column: 6)
!3261 = !DILocation(line: 373, column: 11, scope: !3260, inlinedAt: !3103)
!3262 = !DILocation(line: 373, column: 6, scope: !3099, inlinedAt: !3103)
!3263 = !DILocation(line: 373, column: 26, scope: !3260, inlinedAt: !3103)
!3264 = !DILocation(line: 374, column: 6, scope: !3265, inlinedAt: !3103)
!3265 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 374, column: 6)
!3266 = !DILocation(line: 374, column: 11, scope: !3265, inlinedAt: !3103)
!3267 = !DILocation(line: 374, column: 6, scope: !3099, inlinedAt: !3103)
!3268 = !DILocation(line: 374, column: 26, scope: !3265, inlinedAt: !3103)
!3269 = !DILocation(line: 375, column: 6, scope: !3270, inlinedAt: !3103)
!3270 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 375, column: 6)
!3271 = !DILocation(line: 375, column: 11, scope: !3270, inlinedAt: !3103)
!3272 = !DILocation(line: 375, column: 6, scope: !3099, inlinedAt: !3103)
!3273 = !DILocation(line: 375, column: 27, scope: !3270, inlinedAt: !3103)
!3274 = !DILocation(line: 376, column: 6, scope: !3275, inlinedAt: !3103)
!3275 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 376, column: 6)
!3276 = !DILocation(line: 376, column: 11, scope: !3275, inlinedAt: !3103)
!3277 = !DILocation(line: 376, column: 6, scope: !3099, inlinedAt: !3103)
!3278 = !DILocation(line: 376, column: 32, scope: !3275, inlinedAt: !3103)
!3279 = !DILocation(line: 377, column: 6, scope: !3280, inlinedAt: !3103)
!3280 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 377, column: 6)
!3281 = !DILocation(line: 377, column: 11, scope: !3280, inlinedAt: !3103)
!3282 = !DILocation(line: 377, column: 6, scope: !3099, inlinedAt: !3103)
!3283 = !DILocation(line: 377, column: 32, scope: !3280, inlinedAt: !3103)
!3284 = !DILocation(line: 378, column: 6, scope: !3285, inlinedAt: !3103)
!3285 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 378, column: 6)
!3286 = !DILocation(line: 378, column: 11, scope: !3285, inlinedAt: !3103)
!3287 = !DILocation(line: 378, column: 6, scope: !3099, inlinedAt: !3103)
!3288 = !DILocation(line: 378, column: 32, scope: !3285, inlinedAt: !3103)
!3289 = !DILocation(line: 379, column: 6, scope: !3290, inlinedAt: !3103)
!3290 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 379, column: 6)
!3291 = !DILocation(line: 379, column: 11, scope: !3290, inlinedAt: !3103)
!3292 = !DILocation(line: 379, column: 6, scope: !3099, inlinedAt: !3103)
!3293 = !DILocation(line: 379, column: 33, scope: !3290, inlinedAt: !3103)
!3294 = !DILocation(line: 380, column: 6, scope: !3295, inlinedAt: !3103)
!3295 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 380, column: 6)
!3296 = !DILocation(line: 380, column: 11, scope: !3295, inlinedAt: !3103)
!3297 = !DILocation(line: 380, column: 6, scope: !3099, inlinedAt: !3103)
!3298 = !DILocation(line: 380, column: 33, scope: !3295, inlinedAt: !3103)
!3299 = !DILocation(line: 381, column: 6, scope: !3300, inlinedAt: !3103)
!3300 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 381, column: 6)
!3301 = !DILocation(line: 381, column: 11, scope: !3300, inlinedAt: !3103)
!3302 = !DILocation(line: 381, column: 6, scope: !3099, inlinedAt: !3103)
!3303 = !DILocation(line: 381, column: 33, scope: !3300, inlinedAt: !3103)
!3304 = !DILocation(line: 382, column: 2, scope: !3305, inlinedAt: !3103)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !70, line: 382, column: 2)
!3306 = distinct !DILexicalBlock(scope: !3099, file: !70, line: 382, column: 2)
!3307 = !{i32 -2143729415, i32 -2143729386, i32 -2143729340, i32 -2143729282, i32 -2143729228, i32 -2143729174, i32 -2143729119, i32 -2143729088}
!3308 = !DILocation(line: 382, column: 2, scope: !3309, inlinedAt: !3103)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !70, line: 382, column: 2)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !70, line: 382, column: 2)
!3311 = !{i32 -2143728645, i32 -2143728638, i32 -2143728584, i32 -2143728553, i32 -2143728523}
!3312 = !DILocation(line: 382, column: 2, scope: !3310, inlinedAt: !3103)
!3313 = !DILocation(line: 386, column: 1, scope: !3099, inlinedAt: !3103)
!3314 = !DILocation(line: 547, column: 9, scope: !3080, inlinedAt: !3085)
!3315 = !DILocation(line: 549, column: 8, scope: !3316, inlinedAt: !3085)
!3316 = distinct !DILexicalBlock(scope: !3080, file: !70, line: 549, column: 7)
!3317 = !DILocation(line: 549, column: 7, scope: !3080, inlinedAt: !3085)
!3318 = !DILocation(line: 550, column: 4, scope: !3316, inlinedAt: !3085)
!3319 = !DILocation(line: 553, column: 33, scope: !3080, inlinedAt: !3085)
!3320 = !DILocation(line: 325, column: 6, scope: !3321, inlinedAt: !3097)
!3321 = distinct !DILexicalBlock(scope: !3093, file: !70, line: 325, column: 6)
!3322 = !DILocation(line: 325, column: 6, scope: !3093, inlinedAt: !3097)
!3323 = !DILocation(line: 326, column: 3, scope: !3321, inlinedAt: !3097)
!3324 = !DILocation(line: 332, column: 9, scope: !3093, inlinedAt: !3097)
!3325 = !DILocation(line: 332, column: 15, scope: !3093, inlinedAt: !3097)
!3326 = !DILocation(line: 332, column: 2, scope: !3093, inlinedAt: !3097)
!3327 = !DILocation(line: 336, column: 1, scope: !3093, inlinedAt: !3097)
!3328 = !DILocation(line: 553, column: 5, scope: !3080, inlinedAt: !3085)
!3329 = !DILocation(line: 553, column: 41, scope: !3080, inlinedAt: !3085)
!3330 = !DILocation(line: 554, column: 5, scope: !3080, inlinedAt: !3085)
!3331 = !DILocation(line: 554, column: 12, scope: !3080, inlinedAt: !3085)
!3332 = !DILocation(line: 448, column: 31, scope: !3075, inlinedAt: !3079)
!3333 = !DILocation(line: 448, column: 34, scope: !3075, inlinedAt: !3079)
!3334 = !DILocation(line: 448, column: 14, scope: !3075, inlinedAt: !3079)
!3335 = !DILocation(line: 450, column: 22, scope: !3075, inlinedAt: !3079)
!3336 = !DILocation(line: 450, column: 25, scope: !3075, inlinedAt: !3079)
!3337 = !DILocation(line: 450, column: 30, scope: !3075, inlinedAt: !3079)
!3338 = !DILocation(line: 450, column: 36, scope: !3075, inlinedAt: !3079)
!3339 = !DILocation(line: 450, column: 8, scope: !3075, inlinedAt: !3079)
!3340 = !DILocation(line: 450, column: 6, scope: !3075, inlinedAt: !3079)
!3341 = !DILocation(line: 451, column: 9, scope: !3075, inlinedAt: !3079)
!3342 = !DILocation(line: 552, column: 3, scope: !3080, inlinedAt: !3085)
!3343 = !DILocation(line: 557, column: 19, scope: !3082, inlinedAt: !3085)
!3344 = !DILocation(line: 557, column: 25, scope: !3082, inlinedAt: !3085)
!3345 = !DILocation(line: 557, column: 9, scope: !3082, inlinedAt: !3085)
!3346 = !DILocation(line: 557, column: 2, scope: !3082, inlinedAt: !3085)
!3347 = !DILocation(line: 558, column: 1, scope: !3082, inlinedAt: !3085)
!3348 = !DILocation(line: 317, column: 2, scope: !3071)
!3349 = !DILocation(line: 317, column: 8, scope: !3071)
!3350 = !DILocation(line: 317, column: 15, scope: !3071)
!3351 = !DILocation(line: 318, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 318, column: 6)
!3353 = !DILocation(line: 318, column: 13, scope: !3352)
!3354 = !DILocation(line: 318, column: 6, scope: !3071)
!3355 = !DILocation(line: 319, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 318, column: 21)
!3357 = !DILocation(line: 319, column: 3, scope: !3356)
!3358 = !DILocation(line: 320, column: 10, scope: !3356)
!3359 = !DILocation(line: 320, column: 3, scope: !3356)
!3360 = !DILocation(line: 323, column: 15, scope: !3071)
!3361 = !DILocation(line: 323, column: 2, scope: !3071)
!3362 = !DILocation(line: 323, column: 8, scope: !3071)
!3363 = !DILocation(line: 323, column: 13, scope: !3071)
!3364 = !DILocation(line: 325, column: 21, scope: !3071)
!3365 = !DILocation(line: 325, column: 27, scope: !3071)
!3366 = !DILocation(line: 325, column: 2, scope: !3071)
!3367 = !DILocation(line: 327, column: 22, scope: !3071)
!3368 = !DILocation(line: 327, column: 28, scope: !3071)
!3369 = !DILocation(line: 327, column: 2, scope: !3071)
!3370 = !DILocation(line: 327, column: 8, scope: !3071)
!3371 = !DILocation(line: 327, column: 12, scope: !3071)
!3372 = !DILocation(line: 327, column: 19, scope: !3071)
!3373 = !DILocation(line: 328, column: 2, scope: !3071)
!3374 = !DILocation(line: 328, column: 8, scope: !3071)
!3375 = !DILocation(line: 328, column: 12, scope: !3071)
!3376 = !DILocation(line: 328, column: 16, scope: !3071)
!3377 = !DILocation(line: 329, column: 2, scope: !3071)
!3378 = !DILocation(line: 329, column: 8, scope: !3071)
!3379 = !DILocation(line: 329, column: 12, scope: !3071)
!3380 = !DILocation(line: 329, column: 20, scope: !3071)
!3381 = !DILocation(line: 331, column: 9, scope: !3071)
!3382 = !DILocation(line: 331, column: 2, scope: !3071)
!3383 = !DILocation(line: 332, column: 1, scope: !3071)
!3384 = distinct !DISubprogram(name: "kzalloc", scope: !70, file: !70, line: 662, type: !3083, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3385 = !DILocation(line: 445, column: 72, scope: !3075, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 552, column: 10, scope: !3080, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 664, column: 9, scope: !3384)
!3388 = !DILocation(line: 446, column: 9, scope: !3075, inlinedAt: !3386)
!3389 = !DILocation(line: 446, column: 23, scope: !3075, inlinedAt: !3386)
!3390 = !DILocation(line: 448, column: 8, scope: !3075, inlinedAt: !3386)
!3391 = !DILocation(line: 318, column: 67, scope: !3093, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 553, column: 20, scope: !3080, inlinedAt: !3387)
!3393 = !DILocation(line: 346, column: 58, scope: !3099, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 547, column: 11, scope: !3080, inlinedAt: !3387)
!3395 = !DILocation(line: 472, column: 28, scope: !3105, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 481, column: 9, scope: !3110, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 545, column: 11, scope: !3112, inlinedAt: !3387)
!3398 = !DILocation(line: 472, column: 40, scope: !3105, inlinedAt: !3396)
!3399 = !DILocation(line: 472, column: 60, scope: !3105, inlinedAt: !3396)
!3400 = !DILocation(line: 478, column: 51, scope: !3110, inlinedAt: !3397)
!3401 = !DILocation(line: 478, column: 63, scope: !3110, inlinedAt: !3397)
!3402 = !DILocation(line: 480, column: 15, scope: !3110, inlinedAt: !3397)
!3403 = !DILocation(line: 538, column: 45, scope: !3082, inlinedAt: !3387)
!3404 = !DILocation(line: 538, column: 57, scope: !3082, inlinedAt: !3387)
!3405 = !DILocation(line: 542, column: 16, scope: !3080, inlinedAt: !3387)
!3406 = !DILocalVariable(name: "size", arg: 1, scope: !3384, file: !70, line: 662, type: !209)
!3407 = !DILocation(line: 662, column: 36, scope: !3384)
!3408 = !DILocalVariable(name: "flags", arg: 2, scope: !3384, file: !70, line: 662, type: !77)
!3409 = !DILocation(line: 662, column: 48, scope: !3384)
!3410 = !DILocation(line: 664, column: 17, scope: !3384)
!3411 = !DILocation(line: 664, column: 23, scope: !3384)
!3412 = !DILocation(line: 664, column: 29, scope: !3384)
!3413 = !DILocation(line: 540, column: 27, scope: !3081, inlinedAt: !3387)
!3414 = !DILocation(line: 540, column: 6, scope: !3081, inlinedAt: !3387)
!3415 = !DILocation(line: 540, column: 6, scope: !3082, inlinedAt: !3387)
!3416 = !DILocation(line: 544, column: 7, scope: !3112, inlinedAt: !3387)
!3417 = !DILocation(line: 544, column: 12, scope: !3112, inlinedAt: !3387)
!3418 = !DILocation(line: 544, column: 7, scope: !3080, inlinedAt: !3387)
!3419 = !DILocation(line: 545, column: 25, scope: !3112, inlinedAt: !3387)
!3420 = !DILocation(line: 545, column: 31, scope: !3112, inlinedAt: !3387)
!3421 = !DILocation(line: 480, column: 33, scope: !3110, inlinedAt: !3397)
!3422 = !DILocation(line: 480, column: 23, scope: !3110, inlinedAt: !3397)
!3423 = !DILocation(line: 481, column: 29, scope: !3110, inlinedAt: !3397)
!3424 = !DILocation(line: 481, column: 35, scope: !3110, inlinedAt: !3397)
!3425 = !DILocation(line: 481, column: 42, scope: !3110, inlinedAt: !3397)
!3426 = !DILocation(line: 474, column: 23, scope: !3105, inlinedAt: !3396)
!3427 = !DILocation(line: 474, column: 29, scope: !3105, inlinedAt: !3396)
!3428 = !DILocation(line: 474, column: 36, scope: !3105, inlinedAt: !3396)
!3429 = !DILocation(line: 474, column: 9, scope: !3105, inlinedAt: !3396)
!3430 = !DILocation(line: 545, column: 4, scope: !3112, inlinedAt: !3387)
!3431 = !DILocation(line: 547, column: 25, scope: !3080, inlinedAt: !3387)
!3432 = !DILocation(line: 348, column: 7, scope: !3160, inlinedAt: !3394)
!3433 = !DILocation(line: 348, column: 6, scope: !3099, inlinedAt: !3394)
!3434 = !DILocation(line: 349, column: 3, scope: !3160, inlinedAt: !3394)
!3435 = !DILocation(line: 351, column: 6, scope: !3164, inlinedAt: !3394)
!3436 = !DILocation(line: 351, column: 11, scope: !3164, inlinedAt: !3394)
!3437 = !DILocation(line: 351, column: 6, scope: !3099, inlinedAt: !3394)
!3438 = !DILocation(line: 352, column: 3, scope: !3164, inlinedAt: !3394)
!3439 = !DILocation(line: 354, column: 32, scope: !3169, inlinedAt: !3394)
!3440 = !DILocation(line: 354, column: 37, scope: !3169, inlinedAt: !3394)
!3441 = !DILocation(line: 354, column: 42, scope: !3169, inlinedAt: !3394)
!3442 = !DILocation(line: 354, column: 45, scope: !3169, inlinedAt: !3394)
!3443 = !DILocation(line: 354, column: 50, scope: !3169, inlinedAt: !3394)
!3444 = !DILocation(line: 354, column: 6, scope: !3099, inlinedAt: !3394)
!3445 = !DILocation(line: 355, column: 3, scope: !3169, inlinedAt: !3394)
!3446 = !DILocation(line: 356, column: 32, scope: !3177, inlinedAt: !3394)
!3447 = !DILocation(line: 356, column: 37, scope: !3177, inlinedAt: !3394)
!3448 = !DILocation(line: 356, column: 43, scope: !3177, inlinedAt: !3394)
!3449 = !DILocation(line: 356, column: 46, scope: !3177, inlinedAt: !3394)
!3450 = !DILocation(line: 356, column: 51, scope: !3177, inlinedAt: !3394)
!3451 = !DILocation(line: 356, column: 6, scope: !3099, inlinedAt: !3394)
!3452 = !DILocation(line: 357, column: 3, scope: !3177, inlinedAt: !3394)
!3453 = !DILocation(line: 358, column: 6, scope: !3185, inlinedAt: !3394)
!3454 = !DILocation(line: 358, column: 11, scope: !3185, inlinedAt: !3394)
!3455 = !DILocation(line: 358, column: 6, scope: !3099, inlinedAt: !3394)
!3456 = !DILocation(line: 358, column: 26, scope: !3185, inlinedAt: !3394)
!3457 = !DILocation(line: 359, column: 6, scope: !3190, inlinedAt: !3394)
!3458 = !DILocation(line: 359, column: 11, scope: !3190, inlinedAt: !3394)
!3459 = !DILocation(line: 359, column: 6, scope: !3099, inlinedAt: !3394)
!3460 = !DILocation(line: 359, column: 26, scope: !3190, inlinedAt: !3394)
!3461 = !DILocation(line: 360, column: 6, scope: !3195, inlinedAt: !3394)
!3462 = !DILocation(line: 360, column: 11, scope: !3195, inlinedAt: !3394)
!3463 = !DILocation(line: 360, column: 6, scope: !3099, inlinedAt: !3394)
!3464 = !DILocation(line: 360, column: 26, scope: !3195, inlinedAt: !3394)
!3465 = !DILocation(line: 361, column: 6, scope: !3200, inlinedAt: !3394)
!3466 = !DILocation(line: 361, column: 11, scope: !3200, inlinedAt: !3394)
!3467 = !DILocation(line: 361, column: 6, scope: !3099, inlinedAt: !3394)
!3468 = !DILocation(line: 361, column: 26, scope: !3200, inlinedAt: !3394)
!3469 = !DILocation(line: 362, column: 6, scope: !3205, inlinedAt: !3394)
!3470 = !DILocation(line: 362, column: 11, scope: !3205, inlinedAt: !3394)
!3471 = !DILocation(line: 362, column: 6, scope: !3099, inlinedAt: !3394)
!3472 = !DILocation(line: 362, column: 26, scope: !3205, inlinedAt: !3394)
!3473 = !DILocation(line: 363, column: 6, scope: !3210, inlinedAt: !3394)
!3474 = !DILocation(line: 363, column: 11, scope: !3210, inlinedAt: !3394)
!3475 = !DILocation(line: 363, column: 6, scope: !3099, inlinedAt: !3394)
!3476 = !DILocation(line: 363, column: 26, scope: !3210, inlinedAt: !3394)
!3477 = !DILocation(line: 364, column: 6, scope: !3215, inlinedAt: !3394)
!3478 = !DILocation(line: 364, column: 11, scope: !3215, inlinedAt: !3394)
!3479 = !DILocation(line: 364, column: 6, scope: !3099, inlinedAt: !3394)
!3480 = !DILocation(line: 364, column: 26, scope: !3215, inlinedAt: !3394)
!3481 = !DILocation(line: 365, column: 6, scope: !3220, inlinedAt: !3394)
!3482 = !DILocation(line: 365, column: 11, scope: !3220, inlinedAt: !3394)
!3483 = !DILocation(line: 365, column: 6, scope: !3099, inlinedAt: !3394)
!3484 = !DILocation(line: 365, column: 26, scope: !3220, inlinedAt: !3394)
!3485 = !DILocation(line: 366, column: 6, scope: !3225, inlinedAt: !3394)
!3486 = !DILocation(line: 366, column: 11, scope: !3225, inlinedAt: !3394)
!3487 = !DILocation(line: 366, column: 6, scope: !3099, inlinedAt: !3394)
!3488 = !DILocation(line: 366, column: 26, scope: !3225, inlinedAt: !3394)
!3489 = !DILocation(line: 367, column: 6, scope: !3230, inlinedAt: !3394)
!3490 = !DILocation(line: 367, column: 11, scope: !3230, inlinedAt: !3394)
!3491 = !DILocation(line: 367, column: 6, scope: !3099, inlinedAt: !3394)
!3492 = !DILocation(line: 367, column: 26, scope: !3230, inlinedAt: !3394)
!3493 = !DILocation(line: 368, column: 6, scope: !3235, inlinedAt: !3394)
!3494 = !DILocation(line: 368, column: 11, scope: !3235, inlinedAt: !3394)
!3495 = !DILocation(line: 368, column: 6, scope: !3099, inlinedAt: !3394)
!3496 = !DILocation(line: 368, column: 26, scope: !3235, inlinedAt: !3394)
!3497 = !DILocation(line: 369, column: 6, scope: !3240, inlinedAt: !3394)
!3498 = !DILocation(line: 369, column: 11, scope: !3240, inlinedAt: !3394)
!3499 = !DILocation(line: 369, column: 6, scope: !3099, inlinedAt: !3394)
!3500 = !DILocation(line: 369, column: 26, scope: !3240, inlinedAt: !3394)
!3501 = !DILocation(line: 370, column: 6, scope: !3245, inlinedAt: !3394)
!3502 = !DILocation(line: 370, column: 11, scope: !3245, inlinedAt: !3394)
!3503 = !DILocation(line: 370, column: 6, scope: !3099, inlinedAt: !3394)
!3504 = !DILocation(line: 370, column: 26, scope: !3245, inlinedAt: !3394)
!3505 = !DILocation(line: 371, column: 6, scope: !3250, inlinedAt: !3394)
!3506 = !DILocation(line: 371, column: 11, scope: !3250, inlinedAt: !3394)
!3507 = !DILocation(line: 371, column: 6, scope: !3099, inlinedAt: !3394)
!3508 = !DILocation(line: 371, column: 26, scope: !3250, inlinedAt: !3394)
!3509 = !DILocation(line: 372, column: 6, scope: !3255, inlinedAt: !3394)
!3510 = !DILocation(line: 372, column: 11, scope: !3255, inlinedAt: !3394)
!3511 = !DILocation(line: 372, column: 6, scope: !3099, inlinedAt: !3394)
!3512 = !DILocation(line: 372, column: 26, scope: !3255, inlinedAt: !3394)
!3513 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !3394)
!3514 = !DILocation(line: 373, column: 11, scope: !3260, inlinedAt: !3394)
!3515 = !DILocation(line: 373, column: 6, scope: !3099, inlinedAt: !3394)
!3516 = !DILocation(line: 373, column: 26, scope: !3260, inlinedAt: !3394)
!3517 = !DILocation(line: 374, column: 6, scope: !3265, inlinedAt: !3394)
!3518 = !DILocation(line: 374, column: 11, scope: !3265, inlinedAt: !3394)
!3519 = !DILocation(line: 374, column: 6, scope: !3099, inlinedAt: !3394)
!3520 = !DILocation(line: 374, column: 26, scope: !3265, inlinedAt: !3394)
!3521 = !DILocation(line: 375, column: 6, scope: !3270, inlinedAt: !3394)
!3522 = !DILocation(line: 375, column: 11, scope: !3270, inlinedAt: !3394)
!3523 = !DILocation(line: 375, column: 6, scope: !3099, inlinedAt: !3394)
!3524 = !DILocation(line: 375, column: 27, scope: !3270, inlinedAt: !3394)
!3525 = !DILocation(line: 376, column: 6, scope: !3275, inlinedAt: !3394)
!3526 = !DILocation(line: 376, column: 11, scope: !3275, inlinedAt: !3394)
!3527 = !DILocation(line: 376, column: 6, scope: !3099, inlinedAt: !3394)
!3528 = !DILocation(line: 376, column: 32, scope: !3275, inlinedAt: !3394)
!3529 = !DILocation(line: 377, column: 6, scope: !3280, inlinedAt: !3394)
!3530 = !DILocation(line: 377, column: 11, scope: !3280, inlinedAt: !3394)
!3531 = !DILocation(line: 377, column: 6, scope: !3099, inlinedAt: !3394)
!3532 = !DILocation(line: 377, column: 32, scope: !3280, inlinedAt: !3394)
!3533 = !DILocation(line: 378, column: 6, scope: !3285, inlinedAt: !3394)
!3534 = !DILocation(line: 378, column: 11, scope: !3285, inlinedAt: !3394)
!3535 = !DILocation(line: 378, column: 6, scope: !3099, inlinedAt: !3394)
!3536 = !DILocation(line: 378, column: 32, scope: !3285, inlinedAt: !3394)
!3537 = !DILocation(line: 379, column: 6, scope: !3290, inlinedAt: !3394)
!3538 = !DILocation(line: 379, column: 11, scope: !3290, inlinedAt: !3394)
!3539 = !DILocation(line: 379, column: 6, scope: !3099, inlinedAt: !3394)
!3540 = !DILocation(line: 379, column: 33, scope: !3290, inlinedAt: !3394)
!3541 = !DILocation(line: 380, column: 6, scope: !3295, inlinedAt: !3394)
!3542 = !DILocation(line: 380, column: 11, scope: !3295, inlinedAt: !3394)
!3543 = !DILocation(line: 380, column: 6, scope: !3099, inlinedAt: !3394)
!3544 = !DILocation(line: 380, column: 33, scope: !3295, inlinedAt: !3394)
!3545 = !DILocation(line: 381, column: 6, scope: !3300, inlinedAt: !3394)
!3546 = !DILocation(line: 381, column: 11, scope: !3300, inlinedAt: !3394)
!3547 = !DILocation(line: 381, column: 6, scope: !3099, inlinedAt: !3394)
!3548 = !DILocation(line: 381, column: 33, scope: !3300, inlinedAt: !3394)
!3549 = !DILocation(line: 382, column: 2, scope: !3305, inlinedAt: !3394)
!3550 = !DILocation(line: 382, column: 2, scope: !3309, inlinedAt: !3394)
!3551 = !DILocation(line: 382, column: 2, scope: !3310, inlinedAt: !3394)
!3552 = !DILocation(line: 386, column: 1, scope: !3099, inlinedAt: !3394)
!3553 = !DILocation(line: 547, column: 9, scope: !3080, inlinedAt: !3387)
!3554 = !DILocation(line: 549, column: 8, scope: !3316, inlinedAt: !3387)
!3555 = !DILocation(line: 549, column: 7, scope: !3080, inlinedAt: !3387)
!3556 = !DILocation(line: 550, column: 4, scope: !3316, inlinedAt: !3387)
!3557 = !DILocation(line: 553, column: 33, scope: !3080, inlinedAt: !3387)
!3558 = !DILocation(line: 325, column: 6, scope: !3321, inlinedAt: !3392)
!3559 = !DILocation(line: 325, column: 6, scope: !3093, inlinedAt: !3392)
!3560 = !DILocation(line: 326, column: 3, scope: !3321, inlinedAt: !3392)
!3561 = !DILocation(line: 332, column: 9, scope: !3093, inlinedAt: !3392)
!3562 = !DILocation(line: 332, column: 15, scope: !3093, inlinedAt: !3392)
!3563 = !DILocation(line: 332, column: 2, scope: !3093, inlinedAt: !3392)
!3564 = !DILocation(line: 336, column: 1, scope: !3093, inlinedAt: !3392)
!3565 = !DILocation(line: 553, column: 5, scope: !3080, inlinedAt: !3387)
!3566 = !DILocation(line: 553, column: 41, scope: !3080, inlinedAt: !3387)
!3567 = !DILocation(line: 554, column: 5, scope: !3080, inlinedAt: !3387)
!3568 = !DILocation(line: 554, column: 12, scope: !3080, inlinedAt: !3387)
!3569 = !DILocation(line: 448, column: 31, scope: !3075, inlinedAt: !3386)
!3570 = !DILocation(line: 448, column: 34, scope: !3075, inlinedAt: !3386)
!3571 = !DILocation(line: 448, column: 14, scope: !3075, inlinedAt: !3386)
!3572 = !DILocation(line: 450, column: 22, scope: !3075, inlinedAt: !3386)
!3573 = !DILocation(line: 450, column: 25, scope: !3075, inlinedAt: !3386)
!3574 = !DILocation(line: 450, column: 30, scope: !3075, inlinedAt: !3386)
!3575 = !DILocation(line: 450, column: 36, scope: !3075, inlinedAt: !3386)
!3576 = !DILocation(line: 450, column: 8, scope: !3075, inlinedAt: !3386)
!3577 = !DILocation(line: 450, column: 6, scope: !3075, inlinedAt: !3386)
!3578 = !DILocation(line: 451, column: 9, scope: !3075, inlinedAt: !3386)
!3579 = !DILocation(line: 552, column: 3, scope: !3080, inlinedAt: !3387)
!3580 = !DILocation(line: 557, column: 19, scope: !3082, inlinedAt: !3387)
!3581 = !DILocation(line: 557, column: 25, scope: !3082, inlinedAt: !3387)
!3582 = !DILocation(line: 557, column: 9, scope: !3082, inlinedAt: !3387)
!3583 = !DILocation(line: 557, column: 2, scope: !3082, inlinedAt: !3387)
!3584 = !DILocation(line: 558, column: 1, scope: !3082, inlinedAt: !3387)
!3585 = !DILocation(line: 664, column: 2, scope: !3384)
!3586 = distinct !DISubprogram(name: "ERR_PTR", scope: !3587, file: !3587, line: 24, type: !3588, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3587 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!79, !197}
!3590 = !DILocalVariable(name: "error", arg: 1, scope: !3586, file: !3587, line: 24, type: !197)
!3591 = !DILocation(line: 24, column: 48, scope: !3586)
!3592 = !DILocation(line: 26, column: 18, scope: !3586)
!3593 = !DILocation(line: 26, column: 9, scope: !3586)
!3594 = !DILocation(line: 26, column: 2, scope: !3586)
!3595 = distinct !DISubprogram(name: "sdio_release_func", scope: !3, file: !3, line: 291, type: !1627, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3596 = !DILocalVariable(name: "dev", arg: 1, scope: !3595, file: !3, line: 291, type: !95)
!3597 = !DILocation(line: 291, column: 46, scope: !3595)
!3598 = !DILocalVariable(name: "func", scope: !3595, file: !3, line: 293, type: !80)
!3599 = !DILocation(line: 293, column: 20, scope: !3595)
!3600 = !DILocalVariable(name: "__mptr", scope: !3601, file: !3, line: 293, type: !79)
!3601 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 293, column: 27)
!3602 = !DILocation(line: 293, column: 27, scope: !3601)
!3603 = !DILocation(line: 293, column: 27, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 293, column: 27)
!3605 = !DILocation(line: 295, column: 21, scope: !3595)
!3606 = !DILocation(line: 295, column: 2, scope: !3595)
!3607 = !DILocation(line: 297, column: 8, scope: !3595)
!3608 = !DILocation(line: 297, column: 14, scope: !3595)
!3609 = !DILocation(line: 297, column: 2, scope: !3595)
!3610 = !DILocation(line: 298, column: 8, scope: !3595)
!3611 = !DILocation(line: 298, column: 14, scope: !3595)
!3612 = !DILocation(line: 298, column: 2, scope: !3595)
!3613 = !DILocation(line: 299, column: 8, scope: !3595)
!3614 = !DILocation(line: 299, column: 2, scope: !3595)
!3615 = !DILocation(line: 300, column: 1, scope: !3595)
!3616 = distinct !DISubprogram(name: "sdio_add_func", scope: !3, file: !3, line: 356, type: !3617, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!146, !80}
!3619 = !DILocalVariable(name: "func", arg: 1, scope: !3616, file: !3, line: 356, type: !80)
!3620 = !DILocation(line: 356, column: 37, scope: !3616)
!3621 = !DILocalVariable(name: "ret", scope: !3616, file: !3, line: 358, type: !146)
!3622 = !DILocation(line: 358, column: 6, scope: !3616)
!3623 = !DILocation(line: 360, column: 16, scope: !3616)
!3624 = !DILocation(line: 360, column: 22, scope: !3616)
!3625 = !DILocation(line: 360, column: 36, scope: !3616)
!3626 = !DILocation(line: 360, column: 61, scope: !3616)
!3627 = !DILocation(line: 360, column: 67, scope: !3616)
!3628 = !DILocation(line: 360, column: 2, scope: !3616)
!3629 = !DILocation(line: 362, column: 19, scope: !3616)
!3630 = !DILocation(line: 362, column: 2, scope: !3616)
!3631 = !DILocation(line: 363, column: 23, scope: !3616)
!3632 = !DILocation(line: 363, column: 2, scope: !3616)
!3633 = !DILocation(line: 364, column: 31, scope: !3616)
!3634 = !DILocation(line: 364, column: 37, scope: !3616)
!3635 = !DILocation(line: 364, column: 2, scope: !3616)
!3636 = !DILocation(line: 365, column: 20, scope: !3616)
!3637 = !DILocation(line: 365, column: 26, scope: !3616)
!3638 = !DILocation(line: 365, column: 8, scope: !3616)
!3639 = !DILocation(line: 365, column: 6, scope: !3616)
!3640 = !DILocation(line: 366, column: 6, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 366, column: 6)
!3642 = !DILocation(line: 366, column: 10, scope: !3641)
!3643 = !DILocation(line: 366, column: 6, scope: !3616)
!3644 = !DILocation(line: 367, column: 3, scope: !3641)
!3645 = !DILocation(line: 369, column: 9, scope: !3616)
!3646 = !DILocation(line: 369, column: 2, scope: !3616)
!3647 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !3648, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!103, !1944}
!3650 = !DILocalVariable(name: "dev", arg: 1, scope: !3647, file: !30, line: 609, type: !1944)
!3651 = !DILocation(line: 609, column: 57, scope: !3647)
!3652 = !DILocation(line: 612, column: 6, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3647, file: !30, line: 612, column: 6)
!3654 = !DILocation(line: 612, column: 11, scope: !3653)
!3655 = !DILocation(line: 612, column: 6, scope: !3647)
!3656 = !DILocation(line: 613, column: 10, scope: !3653)
!3657 = !DILocation(line: 613, column: 15, scope: !3653)
!3658 = !DILocation(line: 613, column: 3, scope: !3653)
!3659 = !DILocation(line: 615, column: 23, scope: !3647)
!3660 = !DILocation(line: 615, column: 28, scope: !3647)
!3661 = !DILocation(line: 615, column: 9, scope: !3647)
!3662 = !DILocation(line: 615, column: 2, scope: !3647)
!3663 = !DILocation(line: 616, column: 1, scope: !3647)
!3664 = distinct !DISubprogram(name: "sdio_set_of_node", scope: !3, file: !3, line: 346, type: !2659, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3665 = !DILocalVariable(name: "func", arg: 1, scope: !3664, file: !3, line: 346, type: !80)
!3666 = !DILocation(line: 346, column: 48, scope: !3664)
!3667 = !DILocalVariable(name: "host", scope: !3664, file: !3, line: 348, type: !90)
!3668 = !DILocation(line: 348, column: 19, scope: !3664)
!3669 = !DILocation(line: 348, column: 26, scope: !3664)
!3670 = !DILocation(line: 348, column: 32, scope: !3664)
!3671 = !DILocation(line: 348, column: 38, scope: !3664)
!3672 = !DILocation(line: 350, column: 47, scope: !3664)
!3673 = !DILocation(line: 350, column: 53, scope: !3664)
!3674 = !DILocation(line: 350, column: 59, scope: !3664)
!3675 = !DILocation(line: 350, column: 22, scope: !3664)
!3676 = !DILocation(line: 350, column: 2, scope: !3664)
!3677 = !DILocation(line: 350, column: 8, scope: !3664)
!3678 = !DILocation(line: 350, column: 12, scope: !3664)
!3679 = !DILocation(line: 350, column: 20, scope: !3664)
!3680 = !DILocation(line: 351, column: 1, scope: !3664)
!3681 = distinct !DISubprogram(name: "sdio_acpi_set_handle", scope: !3, file: !3, line: 335, type: !2659, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3682 = !DILocalVariable(name: "func", arg: 1, scope: !3681, file: !3, line: 335, type: !80)
!3683 = !DILocation(line: 335, column: 52, scope: !3681)
!3684 = !DILocalVariable(name: "host", scope: !3681, file: !3, line: 337, type: !90)
!3685 = !DILocation(line: 337, column: 19, scope: !3681)
!3686 = !DILocation(line: 337, column: 26, scope: !3681)
!3687 = !DILocation(line: 337, column: 32, scope: !3681)
!3688 = !DILocation(line: 337, column: 38, scope: !3681)
!3689 = !DILocalVariable(name: "addr", scope: !3681, file: !3, line: 338, type: !281)
!3690 = !DILocation(line: 338, column: 6, scope: !3681)
!3691 = !DILocation(line: 338, column: 19, scope: !3681)
!3692 = !DILocation(line: 338, column: 25, scope: !3681)
!3693 = !DILocation(line: 338, column: 14, scope: !3681)
!3694 = !DILocation(line: 338, column: 32, scope: !3681)
!3695 = !DILocation(line: 338, column: 41, scope: !3681)
!3696 = !DILocation(line: 338, column: 47, scope: !3681)
!3697 = !DILocation(line: 338, column: 39, scope: !3681)
!3698 = !DILocation(line: 340, column: 25, scope: !3681)
!3699 = !DILocation(line: 340, column: 31, scope: !3681)
!3700 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3701, file: !3, line: 340, type: !1920)
!3701 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 340, column: 36)
!3702 = !DILocation(line: 340, column: 36, scope: !3701)
!3703 = !DILocalVariable(name: "__mptr", scope: !3704, file: !3, line: 340, type: !79)
!3704 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 340, column: 36)
!3705 = !DILocation(line: 340, column: 36, scope: !3704)
!3706 = !DILocation(line: 340, column: 36, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 340, column: 36)
!3708 = !DILocation(line: 340, column: 66, scope: !3681)
!3709 = !DILocation(line: 340, column: 2, scope: !3681)
!3710 = !DILocation(line: 341, column: 1, scope: !3681)
!3711 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !30, file: !30, line: 685, type: !1627, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3712 = !DILocalVariable(name: "dev", arg: 1, scope: !3711, file: !30, line: 685, type: !95)
!3713 = !DILocation(line: 685, column: 63, scope: !3711)
!3714 = !DILocation(line: 687, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !30, line: 687, column: 6)
!3716 = !DILocation(line: 687, column: 12, scope: !3715)
!3717 = !DILocation(line: 687, column: 18, scope: !3715)
!3718 = !DILocation(line: 687, column: 6, scope: !3711)
!3719 = !DILocation(line: 688, column: 3, scope: !3715)
!3720 = !DILocation(line: 688, column: 8, scope: !3715)
!3721 = !DILocation(line: 688, column: 14, scope: !3715)
!3722 = !DILocation(line: 688, column: 28, scope: !3715)
!3723 = !DILocation(line: 689, column: 1, scope: !3711)
!3724 = distinct !DISubprogram(name: "sdio_remove_func", scope: !3, file: !3, line: 378, type: !2659, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3725 = !DILocalVariable(name: "func", arg: 1, scope: !3724, file: !3, line: 378, type: !80)
!3726 = !DILocation(line: 378, column: 41, scope: !3724)
!3727 = !DILocation(line: 380, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 380, column: 6)
!3729 = !DILocation(line: 380, column: 6, scope: !3724)
!3730 = !DILocation(line: 381, column: 3, scope: !3728)
!3731 = !DILocation(line: 383, column: 14, scope: !3724)
!3732 = !DILocation(line: 383, column: 20, scope: !3724)
!3733 = !DILocation(line: 383, column: 2, scope: !3724)
!3734 = !DILocation(line: 384, column: 14, scope: !3724)
!3735 = !DILocation(line: 384, column: 20, scope: !3724)
!3736 = !DILocation(line: 384, column: 24, scope: !3724)
!3737 = !DILocation(line: 384, column: 2, scope: !3724)
!3738 = !DILocation(line: 385, column: 14, scope: !3724)
!3739 = !DILocation(line: 385, column: 20, scope: !3724)
!3740 = !DILocation(line: 385, column: 2, scope: !3724)
!3741 = !DILocation(line: 386, column: 1, scope: !3724)
!3742 = distinct !DISubprogram(name: "of_node_put", scope: !1909, file: !1909, line: 129, type: !3743, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !1907}
!3745 = !DILocalVariable(name: "node", arg: 1, scope: !3742, file: !1909, line: 129, type: !1907)
!3746 = !DILocation(line: 129, column: 52, scope: !3742)
!3747 = !DILocation(line: 129, column: 60, scope: !3742)
!3748 = distinct !DISubprogram(name: "sdio_bus_match", scope: !3, file: !3, line: 110, type: !1673, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3749 = !DILocalVariable(name: "dev", arg: 1, scope: !3748, file: !3, line: 110, type: !95)
!3750 = !DILocation(line: 110, column: 42, scope: !3748)
!3751 = !DILocalVariable(name: "drv", arg: 2, scope: !3748, file: !3, line: 110, type: !1675)
!3752 = !DILocation(line: 110, column: 69, scope: !3748)
!3753 = !DILocalVariable(name: "func", scope: !3748, file: !3, line: 112, type: !80)
!3754 = !DILocation(line: 112, column: 20, scope: !3748)
!3755 = !DILocalVariable(name: "__mptr", scope: !3756, file: !3, line: 112, type: !79)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 112, column: 27)
!3757 = !DILocation(line: 112, column: 27, scope: !3756)
!3758 = !DILocation(line: 112, column: 27, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 112, column: 27)
!3760 = !DILocalVariable(name: "sdrv", scope: !3748, file: !3, line: 113, type: !2676)
!3761 = !DILocation(line: 113, column: 22, scope: !3748)
!3762 = !DILocalVariable(name: "__mptr", scope: !3763, file: !3, line: 113, type: !79)
!3763 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 113, column: 29)
!3764 = !DILocation(line: 113, column: 29, scope: !3763)
!3765 = !DILocation(line: 113, column: 29, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 113, column: 29)
!3767 = !DILocation(line: 115, column: 24, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 115, column: 6)
!3769 = !DILocation(line: 115, column: 30, scope: !3768)
!3770 = !DILocation(line: 115, column: 6, scope: !3768)
!3771 = !DILocation(line: 115, column: 6, scope: !3748)
!3772 = !DILocation(line: 116, column: 3, scope: !3768)
!3773 = !DILocation(line: 118, column: 2, scope: !3748)
!3774 = !DILocation(line: 119, column: 1, scope: !3748)
!3775 = distinct !DISubprogram(name: "sdio_bus_uevent", scope: !3, file: !3, line: 122, type: !1618, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3776 = !DILocalVariable(name: "dev", arg: 1, scope: !3775, file: !3, line: 122, type: !95)
!3777 = !DILocation(line: 122, column: 32, scope: !3775)
!3778 = !DILocalVariable(name: "env", arg: 2, scope: !3775, file: !3, line: 122, type: !157)
!3779 = !DILocation(line: 122, column: 61, scope: !3775)
!3780 = !DILocalVariable(name: "func", scope: !3775, file: !3, line: 124, type: !80)
!3781 = !DILocation(line: 124, column: 20, scope: !3775)
!3782 = !DILocalVariable(name: "__mptr", scope: !3783, file: !3, line: 124, type: !79)
!3783 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 124, column: 27)
!3784 = !DILocation(line: 124, column: 27, scope: !3783)
!3785 = !DILocation(line: 124, column: 27, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 124, column: 27)
!3787 = !DILocalVariable(name: "i", scope: !3775, file: !3, line: 125, type: !7)
!3788 = !DILocation(line: 125, column: 15, scope: !3775)
!3789 = !DILocation(line: 127, column: 21, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 127, column: 6)
!3791 = !DILocation(line: 128, column: 23, scope: !3790)
!3792 = !DILocation(line: 128, column: 29, scope: !3790)
!3793 = !DILocation(line: 127, column: 6, scope: !3790)
!3794 = !DILocation(line: 127, column: 6, scope: !3775)
!3795 = !DILocation(line: 129, column: 3, scope: !3790)
!3796 = !DILocation(line: 131, column: 21, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 131, column: 6)
!3798 = !DILocation(line: 132, column: 25, scope: !3797)
!3799 = !DILocation(line: 132, column: 31, scope: !3797)
!3800 = !DILocation(line: 132, column: 39, scope: !3797)
!3801 = !DILocation(line: 132, column: 45, scope: !3797)
!3802 = !DILocation(line: 131, column: 6, scope: !3797)
!3803 = !DILocation(line: 131, column: 6, scope: !3775)
!3804 = !DILocation(line: 133, column: 3, scope: !3797)
!3805 = !DILocation(line: 135, column: 21, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 135, column: 6)
!3807 = !DILocation(line: 136, column: 27, scope: !3806)
!3808 = !DILocation(line: 136, column: 33, scope: !3806)
!3809 = !DILocation(line: 136, column: 44, scope: !3806)
!3810 = !DILocation(line: 136, column: 50, scope: !3806)
!3811 = !DILocation(line: 135, column: 6, scope: !3806)
!3812 = !DILocation(line: 135, column: 6, scope: !3775)
!3813 = !DILocation(line: 137, column: 3, scope: !3806)
!3814 = !DILocation(line: 139, column: 9, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 139, column: 2)
!3816 = !DILocation(line: 139, column: 7, scope: !3815)
!3817 = !DILocation(line: 139, column: 14, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 139, column: 2)
!3819 = !DILocation(line: 139, column: 18, scope: !3818)
!3820 = !DILocation(line: 139, column: 24, scope: !3818)
!3821 = !DILocation(line: 139, column: 16, scope: !3818)
!3822 = !DILocation(line: 139, column: 2, scope: !3815)
!3823 = !DILocation(line: 140, column: 22, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 140, column: 7)
!3825 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 139, column: 39)
!3826 = !DILocation(line: 140, column: 45, scope: !3824)
!3827 = !DILocation(line: 140, column: 46, scope: !3824)
!3828 = !DILocation(line: 140, column: 50, scope: !3824)
!3829 = !DILocation(line: 140, column: 56, scope: !3824)
!3830 = !DILocation(line: 140, column: 61, scope: !3824)
!3831 = !DILocation(line: 140, column: 7, scope: !3824)
!3832 = !DILocation(line: 140, column: 7, scope: !3825)
!3833 = !DILocation(line: 141, column: 4, scope: !3824)
!3834 = !DILocation(line: 142, column: 2, scope: !3825)
!3835 = !DILocation(line: 139, column: 35, scope: !3818)
!3836 = !DILocation(line: 139, column: 2, scope: !3818)
!3837 = distinct !{!3837, !3822, !3838}
!3838 = !DILocation(line: 142, column: 2, scope: !3815)
!3839 = !DILocation(line: 144, column: 21, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 144, column: 6)
!3841 = !DILocation(line: 146, column: 4, scope: !3840)
!3842 = !DILocation(line: 146, column: 10, scope: !3840)
!3843 = !DILocation(line: 146, column: 17, scope: !3840)
!3844 = !DILocation(line: 146, column: 23, scope: !3840)
!3845 = !DILocation(line: 146, column: 31, scope: !3840)
!3846 = !DILocation(line: 146, column: 37, scope: !3840)
!3847 = !DILocation(line: 144, column: 6, scope: !3840)
!3848 = !DILocation(line: 144, column: 6, scope: !3775)
!3849 = !DILocation(line: 147, column: 3, scope: !3840)
!3850 = !DILocation(line: 149, column: 2, scope: !3775)
!3851 = !DILocation(line: 150, column: 1, scope: !3775)
!3852 = distinct !DISubprogram(name: "sdio_bus_probe", scope: !3, file: !3, line: 152, type: !1636, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3853 = !DILocalVariable(name: "v", arg: 1, scope: !3854, file: !3855, line: 106, type: !3858)
!3854 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !3855, file: !3855, line: 106, type: !3856, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3855 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3859 = !DILocation(line: 106, column: 55, scope: !3854, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 331, column: 2, scope: !3861, inlinedAt: !3863)
!3861 = distinct !DISubprogram(name: "atomic_dec", scope: !3862, file: !3862, line: 328, type: !3856, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3862 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3863 = distinct !DILocation(line: 199, column: 2, scope: !3852)
!3864 = !DILocalVariable(name: "v", arg: 1, scope: !3865, file: !3866, line: 99, type: !3869)
!3865 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3866, file: !3866, line: 99, type: !3867, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3866 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3869, !209}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3872 = !DILocation(line: 99, column: 79, scope: !3865, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 330, column: 2, scope: !3861, inlinedAt: !3863)
!3874 = !DILocalVariable(name: "size", arg: 2, scope: !3865, file: !3866, line: 99, type: !209)
!3875 = !DILocation(line: 99, column: 89, scope: !3865, inlinedAt: !3873)
!3876 = !DILocalVariable(name: "v", arg: 1, scope: !3861, file: !3862, line: 328, type: !3858)
!3877 = !DILocation(line: 328, column: 22, scope: !3861, inlinedAt: !3863)
!3878 = !DILocalVariable(name: "v", arg: 1, scope: !3879, file: !3855, line: 93, type: !3858)
!3879 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3855, file: !3855, line: 93, type: !3856, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3880 = !DILocation(line: 93, column: 55, scope: !3879, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 241, column: 2, scope: !3882, inlinedAt: !3883)
!3882 = distinct !DISubprogram(name: "atomic_inc", scope: !3862, file: !3862, line: 238, type: !3856, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!3883 = distinct !DILocation(line: 167, column: 2, scope: !3852)
!3884 = !DILocation(line: 99, column: 79, scope: !3865, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 240, column: 2, scope: !3882, inlinedAt: !3883)
!3886 = !DILocation(line: 99, column: 89, scope: !3865, inlinedAt: !3885)
!3887 = !DILocalVariable(name: "v", arg: 1, scope: !3882, file: !3862, line: 238, type: !3858)
!3888 = !DILocation(line: 238, column: 22, scope: !3882, inlinedAt: !3883)
!3889 = !DILocalVariable(name: "dev", arg: 1, scope: !3852, file: !3, line: 152, type: !95)
!3890 = !DILocation(line: 152, column: 42, scope: !3852)
!3891 = !DILocalVariable(name: "drv", scope: !3852, file: !3, line: 154, type: !2676)
!3892 = !DILocation(line: 154, column: 22, scope: !3852)
!3893 = !DILocalVariable(name: "__mptr", scope: !3894, file: !3, line: 154, type: !79)
!3894 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 154, column: 28)
!3895 = !DILocation(line: 154, column: 28, scope: !3894)
!3896 = !DILocation(line: 154, column: 28, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 154, column: 28)
!3898 = !DILocalVariable(name: "func", scope: !3852, file: !3, line: 155, type: !80)
!3899 = !DILocation(line: 155, column: 20, scope: !3852)
!3900 = !DILocalVariable(name: "__mptr", scope: !3901, file: !3, line: 155, type: !79)
!3901 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 155, column: 27)
!3902 = !DILocation(line: 155, column: 27, scope: !3901)
!3903 = !DILocation(line: 155, column: 27, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 155, column: 27)
!3905 = !DILocalVariable(name: "id", scope: !3852, file: !3, line: 156, type: !2681)
!3906 = !DILocation(line: 156, column: 31, scope: !3852)
!3907 = !DILocalVariable(name: "ret", scope: !3852, file: !3, line: 157, type: !146)
!3908 = !DILocation(line: 157, column: 6, scope: !3852)
!3909 = !DILocation(line: 159, column: 25, scope: !3852)
!3910 = !DILocation(line: 159, column: 31, scope: !3852)
!3911 = !DILocation(line: 159, column: 7, scope: !3852)
!3912 = !DILocation(line: 159, column: 5, scope: !3852)
!3913 = !DILocation(line: 160, column: 7, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 160, column: 6)
!3915 = !DILocation(line: 160, column: 6, scope: !3852)
!3916 = !DILocation(line: 161, column: 3, scope: !3914)
!3917 = !DILocation(line: 163, column: 29, scope: !3852)
!3918 = !DILocation(line: 163, column: 8, scope: !3852)
!3919 = !DILocation(line: 163, column: 6, scope: !3852)
!3920 = !DILocation(line: 164, column: 6, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 164, column: 6)
!3922 = !DILocation(line: 164, column: 6, scope: !3852)
!3923 = !DILocation(line: 165, column: 10, scope: !3921)
!3924 = !DILocation(line: 165, column: 3, scope: !3921)
!3925 = !DILocation(line: 167, column: 14, scope: !3852)
!3926 = !DILocation(line: 167, column: 20, scope: !3852)
!3927 = !DILocation(line: 167, column: 26, scope: !3852)
!3928 = !DILocation(line: 240, column: 31, scope: !3882, inlinedAt: !3883)
!3929 = !DILocation(line: 101, column: 20, scope: !3865, inlinedAt: !3885)
!3930 = !DILocation(line: 101, column: 23, scope: !3865, inlinedAt: !3885)
!3931 = !DILocation(line: 101, column: 2, scope: !3865, inlinedAt: !3885)
!3932 = !DILocation(line: 102, column: 2, scope: !3865, inlinedAt: !3885)
!3933 = !DILocation(line: 241, column: 18, scope: !3882, inlinedAt: !3883)
!3934 = !DILocation(line: 96, column: 16, scope: !3879, inlinedAt: !3881)
!3935 = !DILocation(line: 96, column: 19, scope: !3879, inlinedAt: !3881)
!3936 = !DILocation(line: 95, column: 2, scope: !3879, inlinedAt: !3881)
!3937 = !{i32 -2146651098}
!3938 = !DILocation(line: 175, column: 6, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 175, column: 6)
!3940 = !DILocation(line: 175, column: 12, scope: !3939)
!3941 = !DILocation(line: 175, column: 18, scope: !3939)
!3942 = !DILocation(line: 175, column: 24, scope: !3939)
!3943 = !DILocation(line: 175, column: 29, scope: !3939)
!3944 = !DILocation(line: 175, column: 6, scope: !3852)
!3945 = !DILocation(line: 176, column: 29, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 175, column: 55)
!3947 = !DILocation(line: 176, column: 9, scope: !3946)
!3948 = !DILocation(line: 176, column: 7, scope: !3946)
!3949 = !DILocation(line: 177, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 177, column: 7)
!3951 = !DILocation(line: 177, column: 11, scope: !3950)
!3952 = !DILocation(line: 177, column: 7, scope: !3946)
!3953 = !DILocation(line: 178, column: 4, scope: !3950)
!3954 = !DILocation(line: 179, column: 2, scope: !3946)
!3955 = !DILocation(line: 183, column: 18, scope: !3852)
!3956 = !DILocation(line: 183, column: 2, scope: !3852)
!3957 = !DILocation(line: 184, column: 6, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 184, column: 6)
!3959 = !DILocation(line: 184, column: 6, scope: !3852)
!3960 = !DILocation(line: 185, column: 7, scope: !3958)
!3961 = !DILocation(line: 185, column: 3, scope: !3958)
!3962 = !DILocation(line: 187, column: 29, scope: !3958)
!3963 = !DILocation(line: 187, column: 9, scope: !3958)
!3964 = !DILocation(line: 187, column: 7, scope: !3958)
!3965 = !DILocation(line: 188, column: 20, scope: !3852)
!3966 = !DILocation(line: 188, column: 2, scope: !3852)
!3967 = !DILocation(line: 189, column: 6, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 189, column: 6)
!3969 = !DILocation(line: 189, column: 6, scope: !3852)
!3970 = !DILocation(line: 190, column: 3, scope: !3968)
!3971 = !DILocation(line: 192, column: 8, scope: !3852)
!3972 = !DILocation(line: 192, column: 13, scope: !3852)
!3973 = !DILocation(line: 192, column: 19, scope: !3852)
!3974 = !DILocation(line: 192, column: 25, scope: !3852)
!3975 = !DILocation(line: 192, column: 6, scope: !3852)
!3976 = !DILocation(line: 193, column: 6, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 193, column: 6)
!3978 = !DILocation(line: 193, column: 6, scope: !3852)
!3979 = !DILocation(line: 194, column: 3, scope: !3977)
!3980 = !DILocation(line: 196, column: 2, scope: !3852)
!3981 = !DILabel(scope: !3852, name: "disable_runtimepm", file: !3, line: 198)
!3982 = !DILocation(line: 198, column: 1, scope: !3852)
!3983 = !DILocation(line: 199, column: 14, scope: !3852)
!3984 = !DILocation(line: 199, column: 20, scope: !3852)
!3985 = !DILocation(line: 199, column: 26, scope: !3852)
!3986 = !DILocation(line: 330, column: 31, scope: !3861, inlinedAt: !3863)
!3987 = !DILocation(line: 101, column: 20, scope: !3865, inlinedAt: !3873)
!3988 = !DILocation(line: 101, column: 23, scope: !3865, inlinedAt: !3873)
!3989 = !DILocation(line: 101, column: 2, scope: !3865, inlinedAt: !3873)
!3990 = !DILocation(line: 102, column: 2, scope: !3865, inlinedAt: !3873)
!3991 = !DILocation(line: 331, column: 18, scope: !3861, inlinedAt: !3863)
!3992 = !DILocation(line: 109, column: 16, scope: !3854, inlinedAt: !3860)
!3993 = !DILocation(line: 109, column: 19, scope: !3854, inlinedAt: !3860)
!3994 = !DILocation(line: 108, column: 2, scope: !3854, inlinedAt: !3860)
!3995 = !{i32 -2146650888}
!3996 = !DILocation(line: 200, column: 6, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 200, column: 6)
!3998 = !DILocation(line: 200, column: 12, scope: !3997)
!3999 = !DILocation(line: 200, column: 18, scope: !3997)
!4000 = !DILocation(line: 200, column: 24, scope: !3997)
!4001 = !DILocation(line: 200, column: 29, scope: !3997)
!4002 = !DILocation(line: 200, column: 6, scope: !3852)
!4003 = !DILocation(line: 201, column: 25, scope: !3997)
!4004 = !DILocation(line: 201, column: 3, scope: !3997)
!4005 = !DILocation(line: 202, column: 23, scope: !3852)
!4006 = !DILocation(line: 202, column: 2, scope: !3852)
!4007 = !DILocation(line: 203, column: 9, scope: !3852)
!4008 = !DILocation(line: 203, column: 2, scope: !3852)
!4009 = !DILocation(line: 204, column: 1, scope: !3852)
!4010 = distinct !DISubprogram(name: "sdio_bus_remove", scope: !3, file: !3, line: 206, type: !1636, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4011 = !DILocation(line: 106, column: 55, scope: !3854, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 331, column: 2, scope: !3861, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 216, column: 2, scope: !4010)
!4014 = !DILocation(line: 99, column: 79, scope: !3865, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 330, column: 2, scope: !3861, inlinedAt: !4013)
!4016 = !DILocation(line: 99, column: 89, scope: !3865, inlinedAt: !4015)
!4017 = !DILocation(line: 328, column: 22, scope: !3861, inlinedAt: !4013)
!4018 = !DILocalVariable(name: "dev", arg: 1, scope: !4010, file: !3, line: 206, type: !95)
!4019 = !DILocation(line: 206, column: 43, scope: !4010)
!4020 = !DILocalVariable(name: "drv", scope: !4010, file: !3, line: 208, type: !2676)
!4021 = !DILocation(line: 208, column: 22, scope: !4010)
!4022 = !DILocalVariable(name: "__mptr", scope: !4023, file: !3, line: 208, type: !79)
!4023 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 208, column: 28)
!4024 = !DILocation(line: 208, column: 28, scope: !4023)
!4025 = !DILocation(line: 208, column: 28, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 208, column: 28)
!4027 = !DILocalVariable(name: "func", scope: !4010, file: !3, line: 209, type: !80)
!4028 = !DILocation(line: 209, column: 20, scope: !4010)
!4029 = !DILocalVariable(name: "__mptr", scope: !4030, file: !3, line: 209, type: !79)
!4030 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 209, column: 27)
!4031 = !DILocation(line: 209, column: 27, scope: !4030)
!4032 = !DILocation(line: 209, column: 27, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 209, column: 27)
!4034 = !DILocation(line: 212, column: 6, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 212, column: 6)
!4036 = !DILocation(line: 212, column: 12, scope: !4035)
!4037 = !DILocation(line: 212, column: 18, scope: !4035)
!4038 = !DILocation(line: 212, column: 24, scope: !4035)
!4039 = !DILocation(line: 212, column: 29, scope: !4035)
!4040 = !DILocation(line: 212, column: 6, scope: !4010)
!4041 = !DILocation(line: 213, column: 23, scope: !4035)
!4042 = !DILocation(line: 213, column: 3, scope: !4035)
!4043 = !DILocation(line: 215, column: 2, scope: !4010)
!4044 = !DILocation(line: 215, column: 7, scope: !4010)
!4045 = !DILocation(line: 215, column: 14, scope: !4010)
!4046 = !DILocation(line: 216, column: 14, scope: !4010)
!4047 = !DILocation(line: 216, column: 20, scope: !4010)
!4048 = !DILocation(line: 216, column: 26, scope: !4010)
!4049 = !DILocation(line: 330, column: 31, scope: !3861, inlinedAt: !4013)
!4050 = !DILocation(line: 101, column: 20, scope: !3865, inlinedAt: !4015)
!4051 = !DILocation(line: 101, column: 23, scope: !3865, inlinedAt: !4015)
!4052 = !DILocation(line: 101, column: 2, scope: !3865, inlinedAt: !4015)
!4053 = !DILocation(line: 102, column: 2, scope: !3865, inlinedAt: !4015)
!4054 = !DILocation(line: 331, column: 18, scope: !3861, inlinedAt: !4013)
!4055 = !DILocation(line: 109, column: 16, scope: !3854, inlinedAt: !4012)
!4056 = !DILocation(line: 109, column: 19, scope: !3854, inlinedAt: !4012)
!4057 = !DILocation(line: 108, column: 2, scope: !3854, inlinedAt: !4012)
!4058 = !DILocation(line: 218, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 218, column: 6)
!4060 = !DILocation(line: 218, column: 12, scope: !4059)
!4061 = !DILocation(line: 218, column: 6, scope: !4010)
!4062 = !DILocation(line: 219, column: 3, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 218, column: 25)
!4064 = !DILocation(line: 221, column: 19, scope: !4063)
!4065 = !DILocation(line: 221, column: 3, scope: !4063)
!4066 = !DILocation(line: 222, column: 20, scope: !4063)
!4067 = !DILocation(line: 222, column: 3, scope: !4063)
!4068 = !DILocation(line: 223, column: 21, scope: !4063)
!4069 = !DILocation(line: 223, column: 3, scope: !4063)
!4070 = !DILocation(line: 224, column: 2, scope: !4063)
!4071 = !DILocation(line: 227, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 227, column: 6)
!4073 = !DILocation(line: 227, column: 12, scope: !4072)
!4074 = !DILocation(line: 227, column: 18, scope: !4072)
!4075 = !DILocation(line: 227, column: 24, scope: !4072)
!4076 = !DILocation(line: 227, column: 29, scope: !4072)
!4077 = !DILocation(line: 227, column: 6, scope: !4010)
!4078 = !DILocation(line: 228, column: 25, scope: !4072)
!4079 = !DILocation(line: 228, column: 3, scope: !4072)
!4080 = !DILocation(line: 231, column: 6, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 231, column: 6)
!4082 = !DILocation(line: 231, column: 12, scope: !4081)
!4083 = !DILocation(line: 231, column: 18, scope: !4081)
!4084 = !DILocation(line: 231, column: 24, scope: !4081)
!4085 = !DILocation(line: 231, column: 29, scope: !4081)
!4086 = !DILocation(line: 231, column: 6, scope: !4010)
!4087 = !DILocation(line: 232, column: 23, scope: !4081)
!4088 = !DILocation(line: 232, column: 3, scope: !4081)
!4089 = !DILocation(line: 234, column: 23, scope: !4010)
!4090 = !DILocation(line: 234, column: 2, scope: !4010)
!4091 = !DILocation(line: 236, column: 2, scope: !4010)
!4092 = distinct !DISubprogram(name: "class_show", scope: !3, file: !3, line: 42, type: !2999, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4093 = !DILocalVariable(name: "dev", arg: 1, scope: !4092, file: !3, line: 42, type: !95)
!4094 = !DILocation(line: 42, column: 1, scope: !4092)
!4095 = !DILocalVariable(name: "attr", arg: 2, scope: !4092, file: !3, line: 42, type: !3001)
!4096 = !DILocalVariable(name: "buf", arg: 3, scope: !4092, file: !3, line: 42, type: !162)
!4097 = !DILocalVariable(name: "func", scope: !4092, file: !3, line: 42, type: !80)
!4098 = !DILocalVariable(name: "__mptr", scope: !4099, file: !3, line: 42, type: !79)
!4099 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 42, column: 1)
!4100 = !DILocation(line: 42, column: 1, scope: !4099)
!4101 = !DILocation(line: 42, column: 1, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 42, column: 1)
!4103 = distinct !DISubprogram(name: "vendor_show", scope: !3, file: !3, line: 43, type: !2999, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4104 = !DILocalVariable(name: "dev", arg: 1, scope: !4103, file: !3, line: 43, type: !95)
!4105 = !DILocation(line: 43, column: 1, scope: !4103)
!4106 = !DILocalVariable(name: "attr", arg: 2, scope: !4103, file: !3, line: 43, type: !3001)
!4107 = !DILocalVariable(name: "buf", arg: 3, scope: !4103, file: !3, line: 43, type: !162)
!4108 = !DILocalVariable(name: "func", scope: !4103, file: !3, line: 43, type: !80)
!4109 = !DILocalVariable(name: "__mptr", scope: !4110, file: !3, line: 43, type: !79)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 43, column: 1)
!4111 = !DILocation(line: 43, column: 1, scope: !4110)
!4112 = !DILocation(line: 43, column: 1, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 43, column: 1)
!4114 = distinct !DISubprogram(name: "device_show", scope: !3, file: !3, line: 44, type: !2999, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4115 = !DILocalVariable(name: "dev", arg: 1, scope: !4114, file: !3, line: 44, type: !95)
!4116 = !DILocation(line: 44, column: 1, scope: !4114)
!4117 = !DILocalVariable(name: "attr", arg: 2, scope: !4114, file: !3, line: 44, type: !3001)
!4118 = !DILocalVariable(name: "buf", arg: 3, scope: !4114, file: !3, line: 44, type: !162)
!4119 = !DILocalVariable(name: "func", scope: !4114, file: !3, line: 44, type: !80)
!4120 = !DILocalVariable(name: "__mptr", scope: !4121, file: !3, line: 44, type: !79)
!4121 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 44, column: 1)
!4122 = !DILocation(line: 44, column: 1, scope: !4121)
!4123 = !DILocation(line: 44, column: 1, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 44, column: 1)
!4125 = distinct !DISubprogram(name: "revision_show", scope: !3, file: !3, line: 45, type: !2999, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4126 = !DILocalVariable(name: "dev", arg: 1, scope: !4125, file: !3, line: 45, type: !95)
!4127 = !DILocation(line: 45, column: 1, scope: !4125)
!4128 = !DILocalVariable(name: "attr", arg: 2, scope: !4125, file: !3, line: 45, type: !3001)
!4129 = !DILocalVariable(name: "buf", arg: 3, scope: !4125, file: !3, line: 45, type: !162)
!4130 = !DILocalVariable(name: "func", scope: !4125, file: !3, line: 45, type: !80)
!4131 = !DILocalVariable(name: "__mptr", scope: !4132, file: !3, line: 45, type: !79)
!4132 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 45, column: 1)
!4133 = !DILocation(line: 45, column: 1, scope: !4132)
!4134 = !DILocation(line: 45, column: 1, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 45, column: 1)
!4136 = distinct !DISubprogram(name: "info1_show", scope: !3, file: !3, line: 61, type: !2999, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4137 = !DILocalVariable(name: "dev", arg: 1, scope: !4136, file: !3, line: 61, type: !95)
!4138 = !DILocation(line: 61, column: 1, scope: !4136)
!4139 = !DILocalVariable(name: "attr", arg: 2, scope: !4136, file: !3, line: 61, type: !3001)
!4140 = !DILocalVariable(name: "buf", arg: 3, scope: !4136, file: !3, line: 61, type: !162)
!4141 = !DILocalVariable(name: "func", scope: !4136, file: !3, line: 61, type: !80)
!4142 = !DILocalVariable(name: "__mptr", scope: !4143, file: !3, line: 61, type: !79)
!4143 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 61, column: 1)
!4144 = !DILocation(line: 61, column: 1, scope: !4143)
!4145 = !DILocation(line: 61, column: 1, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 61, column: 1)
!4147 = !DILocation(line: 61, column: 1, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 61, column: 1)
!4149 = !DILocation(line: 61, column: 1, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 61, column: 1)
!4151 = distinct !DISubprogram(name: "info2_show", scope: !3, file: !3, line: 62, type: !2999, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4152 = !DILocalVariable(name: "dev", arg: 1, scope: !4151, file: !3, line: 62, type: !95)
!4153 = !DILocation(line: 62, column: 1, scope: !4151)
!4154 = !DILocalVariable(name: "attr", arg: 2, scope: !4151, file: !3, line: 62, type: !3001)
!4155 = !DILocalVariable(name: "buf", arg: 3, scope: !4151, file: !3, line: 62, type: !162)
!4156 = !DILocalVariable(name: "func", scope: !4151, file: !3, line: 62, type: !80)
!4157 = !DILocalVariable(name: "__mptr", scope: !4158, file: !3, line: 62, type: !79)
!4158 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 62, column: 1)
!4159 = !DILocation(line: 62, column: 1, scope: !4158)
!4160 = !DILocation(line: 62, column: 1, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 62, column: 1)
!4162 = !DILocation(line: 62, column: 1, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 62, column: 1)
!4164 = !DILocation(line: 62, column: 1, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 62, column: 1)
!4166 = distinct !DISubprogram(name: "info3_show", scope: !3, file: !3, line: 63, type: !2999, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4167 = !DILocalVariable(name: "dev", arg: 1, scope: !4166, file: !3, line: 63, type: !95)
!4168 = !DILocation(line: 63, column: 1, scope: !4166)
!4169 = !DILocalVariable(name: "attr", arg: 2, scope: !4166, file: !3, line: 63, type: !3001)
!4170 = !DILocalVariable(name: "buf", arg: 3, scope: !4166, file: !3, line: 63, type: !162)
!4171 = !DILocalVariable(name: "func", scope: !4166, file: !3, line: 63, type: !80)
!4172 = !DILocalVariable(name: "__mptr", scope: !4173, file: !3, line: 63, type: !79)
!4173 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 63, column: 1)
!4174 = !DILocation(line: 63, column: 1, scope: !4173)
!4175 = !DILocation(line: 63, column: 1, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 63, column: 1)
!4177 = !DILocation(line: 63, column: 1, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 63, column: 1)
!4179 = !DILocation(line: 63, column: 1, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 63, column: 1)
!4181 = distinct !DISubprogram(name: "info4_show", scope: !3, file: !3, line: 64, type: !2999, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4182 = !DILocalVariable(name: "dev", arg: 1, scope: !4181, file: !3, line: 64, type: !95)
!4183 = !DILocation(line: 64, column: 1, scope: !4181)
!4184 = !DILocalVariable(name: "attr", arg: 2, scope: !4181, file: !3, line: 64, type: !3001)
!4185 = !DILocalVariable(name: "buf", arg: 3, scope: !4181, file: !3, line: 64, type: !162)
!4186 = !DILocalVariable(name: "func", scope: !4181, file: !3, line: 64, type: !80)
!4187 = !DILocalVariable(name: "__mptr", scope: !4188, file: !3, line: 64, type: !79)
!4188 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 64, column: 1)
!4189 = !DILocation(line: 64, column: 1, scope: !4188)
!4190 = !DILocation(line: 64, column: 1, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 64, column: 1)
!4192 = !DILocation(line: 64, column: 1, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 64, column: 1)
!4194 = !DILocation(line: 64, column: 1, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 64, column: 1)
!4196 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 46, type: !2999, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4197 = !DILocalVariable(name: "dev", arg: 1, scope: !4196, file: !3, line: 46, type: !95)
!4198 = !DILocation(line: 46, column: 1, scope: !4196)
!4199 = !DILocalVariable(name: "attr", arg: 2, scope: !4196, file: !3, line: 46, type: !3001)
!4200 = !DILocalVariable(name: "buf", arg: 3, scope: !4196, file: !3, line: 46, type: !162)
!4201 = !DILocalVariable(name: "func", scope: !4196, file: !3, line: 46, type: !80)
!4202 = !DILocalVariable(name: "__mptr", scope: !4203, file: !3, line: 46, type: !79)
!4203 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 46, column: 1)
!4204 = !DILocation(line: 46, column: 1, scope: !4203)
!4205 = !DILocation(line: 46, column: 1, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 46, column: 1)
!4207 = distinct !DISubprogram(name: "sdio_match_device", scope: !3, file: !3, line: 92, type: !4208, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!2681, !80, !2676}
!4210 = !DILocalVariable(name: "func", arg: 1, scope: !4207, file: !3, line: 92, type: !80)
!4211 = !DILocation(line: 92, column: 73, scope: !4207)
!4212 = !DILocalVariable(name: "sdrv", arg: 2, scope: !4207, file: !3, line: 93, type: !2676)
!4213 = !DILocation(line: 93, column: 22, scope: !4207)
!4214 = !DILocalVariable(name: "ids", scope: !4207, file: !3, line: 95, type: !2681)
!4215 = !DILocation(line: 95, column: 31, scope: !4207)
!4216 = !DILocation(line: 97, column: 8, scope: !4207)
!4217 = !DILocation(line: 97, column: 14, scope: !4207)
!4218 = !DILocation(line: 97, column: 6, scope: !4207)
!4219 = !DILocation(line: 99, column: 6, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 99, column: 6)
!4221 = !DILocation(line: 99, column: 6, scope: !4207)
!4222 = !DILocation(line: 100, column: 3, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 99, column: 11)
!4224 = !DILocation(line: 100, column: 10, scope: !4223)
!4225 = !DILocation(line: 100, column: 15, scope: !4223)
!4226 = !DILocation(line: 100, column: 21, scope: !4223)
!4227 = !DILocation(line: 100, column: 24, scope: !4223)
!4228 = !DILocation(line: 100, column: 29, scope: !4223)
!4229 = !DILocation(line: 100, column: 36, scope: !4223)
!4230 = !DILocation(line: 100, column: 39, scope: !4223)
!4231 = !DILocation(line: 100, column: 44, scope: !4223)
!4232 = !DILocation(line: 101, column: 23, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 101, column: 8)
!4234 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 100, column: 52)
!4235 = !DILocation(line: 101, column: 29, scope: !4233)
!4236 = !DILocation(line: 101, column: 8, scope: !4233)
!4237 = !DILocation(line: 101, column: 8, scope: !4234)
!4238 = !DILocation(line: 102, column: 12, scope: !4233)
!4239 = !DILocation(line: 102, column: 5, scope: !4233)
!4240 = !DILocation(line: 103, column: 7, scope: !4234)
!4241 = distinct !{!4241, !4222, !4242}
!4242 = !DILocation(line: 104, column: 3, scope: !4223)
!4243 = !DILocation(line: 105, column: 2, scope: !4223)
!4244 = !DILocation(line: 107, column: 2, scope: !4207)
!4245 = !DILocation(line: 108, column: 1, scope: !4207)
!4246 = distinct !DISubprogram(name: "sdio_match_one", scope: !3, file: !3, line: 80, type: !4247, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!2681, !80, !2681}
!4249 = !DILocalVariable(name: "func", arg: 1, scope: !4246, file: !3, line: 80, type: !80)
!4250 = !DILocation(line: 80, column: 70, scope: !4246)
!4251 = !DILocalVariable(name: "id", arg: 2, scope: !4246, file: !3, line: 81, type: !2681)
!4252 = !DILocation(line: 81, column: 31, scope: !4246)
!4253 = !DILocation(line: 83, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 83, column: 6)
!4255 = !DILocation(line: 83, column: 10, scope: !4254)
!4256 = !DILocation(line: 83, column: 16, scope: !4254)
!4257 = !DILocation(line: 83, column: 37, scope: !4254)
!4258 = !DILocation(line: 83, column: 40, scope: !4254)
!4259 = !DILocation(line: 83, column: 44, scope: !4254)
!4260 = !DILocation(line: 83, column: 53, scope: !4254)
!4261 = !DILocation(line: 83, column: 59, scope: !4254)
!4262 = !DILocation(line: 83, column: 50, scope: !4254)
!4263 = !DILocation(line: 83, column: 6, scope: !4246)
!4264 = !DILocation(line: 84, column: 3, scope: !4254)
!4265 = !DILocation(line: 85, column: 6, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 85, column: 6)
!4267 = !DILocation(line: 85, column: 10, scope: !4266)
!4268 = !DILocation(line: 85, column: 17, scope: !4266)
!4269 = !DILocation(line: 85, column: 39, scope: !4266)
!4270 = !DILocation(line: 85, column: 42, scope: !4266)
!4271 = !DILocation(line: 85, column: 46, scope: !4266)
!4272 = !DILocation(line: 85, column: 56, scope: !4266)
!4273 = !DILocation(line: 85, column: 62, scope: !4266)
!4274 = !DILocation(line: 85, column: 53, scope: !4266)
!4275 = !DILocation(line: 85, column: 6, scope: !4246)
!4276 = !DILocation(line: 86, column: 3, scope: !4266)
!4277 = !DILocation(line: 87, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 87, column: 6)
!4279 = !DILocation(line: 87, column: 10, scope: !4278)
!4280 = !DILocation(line: 87, column: 17, scope: !4278)
!4281 = !DILocation(line: 87, column: 39, scope: !4278)
!4282 = !DILocation(line: 87, column: 42, scope: !4278)
!4283 = !DILocation(line: 87, column: 46, scope: !4278)
!4284 = !DILocation(line: 87, column: 56, scope: !4278)
!4285 = !DILocation(line: 87, column: 62, scope: !4278)
!4286 = !DILocation(line: 87, column: 53, scope: !4278)
!4287 = !DILocation(line: 87, column: 6, scope: !4246)
!4288 = !DILocation(line: 88, column: 3, scope: !4278)
!4289 = !DILocation(line: 89, column: 9, scope: !4246)
!4290 = !DILocation(line: 89, column: 2, scope: !4246)
!4291 = !DILocation(line: 90, column: 1, scope: !4246)
!4292 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !4293, file: !4293, line: 384, type: !1636, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4293 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !DILocalVariable(name: "dev", arg: 1, scope: !4292, file: !4293, line: 384, type: !95)
!4295 = !DILocation(line: 384, column: 54, scope: !4292)
!4296 = !DILocation(line: 386, column: 29, scope: !4292)
!4297 = !DILocation(line: 386, column: 9, scope: !4292)
!4298 = !DILocation(line: 386, column: 2, scope: !4292)
!4299 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !4293, file: !4293, line: 103, type: !1627, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4300 = !DILocalVariable(name: "v", arg: 1, scope: !4301, file: !3855, line: 200, type: !3858)
!4301 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !3855, file: !3855, line: 200, type: !4302, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!1005, !3858, !752, !146}
!4304 = !DILocation(line: 200, column: 63, scope: !4301, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 1093, column: 12, scope: !4306, inlinedAt: !4310)
!4306 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !4307, file: !4307, line: 1086, type: !4308, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4307 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!146, !3858, !146, !146}
!4310 = distinct !DILocation(line: 1113, column: 9, scope: !4311, inlinedAt: !4314)
!4311 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !4307, file: !4307, line: 1111, type: !4312, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!1005, !3858, !146, !146}
!4314 = distinct !DILocation(line: 789, column: 9, scope: !4315, inlinedAt: !4316)
!4315 = distinct !DISubprogram(name: "atomic_add_unless", scope: !3862, file: !3862, line: 786, type: !4312, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4316 = distinct !DILocation(line: 105, column: 2, scope: !4299)
!4317 = !DILocalVariable(name: "old", arg: 2, scope: !4301, file: !3855, line: 200, type: !752)
!4318 = !DILocation(line: 200, column: 71, scope: !4301, inlinedAt: !4305)
!4319 = !DILocalVariable(name: "new", arg: 3, scope: !4301, file: !3855, line: 200, type: !146)
!4320 = !DILocation(line: 200, column: 80, scope: !4301, inlinedAt: !4305)
!4321 = !DILocalVariable(name: "success", scope: !4322, file: !3855, line: 202, type: !1005)
!4322 = distinct !DILexicalBlock(scope: !4301, file: !3855, line: 202, column: 9)
!4323 = !DILocation(line: 202, column: 9, scope: !4322, inlinedAt: !4305)
!4324 = !DILocalVariable(name: "_old", scope: !4322, file: !3855, line: 202, type: !752)
!4325 = !DILocalVariable(name: "__old", scope: !4322, file: !3855, line: 202, type: !146)
!4326 = !DILocalVariable(name: "__new", scope: !4322, file: !3855, line: 202, type: !146)
!4327 = !DILocalVariable(name: "__ptr", scope: !4322, file: !3855, line: 202, type: !2699)
!4328 = !DILocalVariable(name: "v", arg: 1, scope: !4329, file: !3855, line: 23, type: !4332)
!4329 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3855, file: !3855, line: 23, type: !4330, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!146, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!4334 = !DILocation(line: 23, column: 61, scope: !4329, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 1088, column: 10, scope: !4306, inlinedAt: !4310)
!4336 = !DILocalVariable(name: "v", arg: 1, scope: !4306, file: !4307, line: 1086, type: !3858)
!4337 = !DILocation(line: 1086, column: 40, scope: !4306, inlinedAt: !4310)
!4338 = !DILocalVariable(name: "a", arg: 2, scope: !4306, file: !4307, line: 1086, type: !146)
!4339 = !DILocation(line: 1086, column: 47, scope: !4306, inlinedAt: !4310)
!4340 = !DILocalVariable(name: "u", arg: 3, scope: !4306, file: !4307, line: 1086, type: !146)
!4341 = !DILocation(line: 1086, column: 54, scope: !4306, inlinedAt: !4310)
!4342 = !DILocalVariable(name: "c", scope: !4306, file: !4307, line: 1088, type: !146)
!4343 = !DILocation(line: 1088, column: 6, scope: !4306, inlinedAt: !4310)
!4344 = !DILocalVariable(name: "v", arg: 1, scope: !4311, file: !4307, line: 1111, type: !3858)
!4345 = !DILocation(line: 1111, column: 34, scope: !4311, inlinedAt: !4314)
!4346 = !DILocalVariable(name: "a", arg: 2, scope: !4311, file: !4307, line: 1111, type: !146)
!4347 = !DILocation(line: 1111, column: 41, scope: !4311, inlinedAt: !4314)
!4348 = !DILocalVariable(name: "u", arg: 3, scope: !4311, file: !4307, line: 1111, type: !146)
!4349 = !DILocation(line: 1111, column: 48, scope: !4311, inlinedAt: !4314)
!4350 = !DILocation(line: 99, column: 79, scope: !3865, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 788, column: 2, scope: !4315, inlinedAt: !4316)
!4352 = !DILocation(line: 99, column: 89, scope: !3865, inlinedAt: !4351)
!4353 = !DILocalVariable(name: "v", arg: 1, scope: !4315, file: !3862, line: 786, type: !3858)
!4354 = !DILocation(line: 786, column: 29, scope: !4315, inlinedAt: !4316)
!4355 = !DILocalVariable(name: "a", arg: 2, scope: !4315, file: !3862, line: 786, type: !146)
!4356 = !DILocation(line: 786, column: 36, scope: !4315, inlinedAt: !4316)
!4357 = !DILocalVariable(name: "u", arg: 3, scope: !4315, file: !3862, line: 786, type: !146)
!4358 = !DILocation(line: 786, column: 43, scope: !4315, inlinedAt: !4316)
!4359 = !DILocalVariable(name: "dev", arg: 1, scope: !4299, file: !4293, line: 103, type: !95)
!4360 = !DILocation(line: 103, column: 57, scope: !4299)
!4361 = !DILocation(line: 105, column: 21, scope: !4299)
!4362 = !DILocation(line: 105, column: 26, scope: !4299)
!4363 = !DILocation(line: 105, column: 32, scope: !4299)
!4364 = !DILocation(line: 788, column: 31, scope: !4315, inlinedAt: !4316)
!4365 = !DILocation(line: 101, column: 20, scope: !3865, inlinedAt: !4351)
!4366 = !DILocation(line: 101, column: 23, scope: !3865, inlinedAt: !4351)
!4367 = !DILocation(line: 101, column: 2, scope: !3865, inlinedAt: !4351)
!4368 = !DILocation(line: 102, column: 2, scope: !3865, inlinedAt: !4351)
!4369 = !DILocation(line: 789, column: 32, scope: !4315, inlinedAt: !4316)
!4370 = !DILocation(line: 789, column: 35, scope: !4315, inlinedAt: !4316)
!4371 = !DILocation(line: 789, column: 38, scope: !4315, inlinedAt: !4316)
!4372 = !DILocation(line: 1113, column: 38, scope: !4311, inlinedAt: !4314)
!4373 = !DILocation(line: 1113, column: 41, scope: !4311, inlinedAt: !4314)
!4374 = !DILocation(line: 1113, column: 44, scope: !4311, inlinedAt: !4314)
!4375 = !DILocation(line: 1088, column: 27, scope: !4306, inlinedAt: !4310)
!4376 = !DILocation(line: 29, column: 9, scope: !4329, inlinedAt: !4335)
!4377 = !DILocation(line: 1090, column: 2, scope: !4306, inlinedAt: !4310)
!4378 = !DILocation(line: 1091, column: 7, scope: !4379, inlinedAt: !4310)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !4307, line: 1091, column: 7)
!4380 = distinct !DILexicalBlock(scope: !4306, file: !4307, line: 1090, column: 5)
!4381 = !DILocation(line: 1091, column: 7, scope: !4380, inlinedAt: !4310)
!4382 = !DILocation(line: 1092, column: 4, scope: !4379, inlinedAt: !4310)
!4383 = !DILocation(line: 1093, column: 36, scope: !4306, inlinedAt: !4310)
!4384 = !DILocation(line: 1093, column: 43, scope: !4306, inlinedAt: !4310)
!4385 = !DILocation(line: 1093, column: 47, scope: !4306, inlinedAt: !4310)
!4386 = !DILocation(line: 1093, column: 45, scope: !4306, inlinedAt: !4310)
!4387 = !{i32 -2146639501, i32 -2146639346}
!4388 = !DILocation(line: 202, column: 9, scope: !4389, inlinedAt: !4305)
!4389 = distinct !DILexicalBlock(scope: !4322, file: !3855, line: 202, column: 9)
!4390 = !DILocation(line: 202, column: 9, scope: !4301, inlinedAt: !4305)
!4391 = !DILocation(line: 1093, column: 11, scope: !4306, inlinedAt: !4310)
!4392 = !DILocation(line: 1093, column: 2, scope: !4380, inlinedAt: !4310)
!4393 = distinct !{!4393, !4377, !4394}
!4394 = !DILocation(line: 1093, column: 49, scope: !4306, inlinedAt: !4310)
!4395 = !DILocation(line: 1095, column: 9, scope: !4306, inlinedAt: !4310)
!4396 = !DILocation(line: 1113, column: 50, scope: !4311, inlinedAt: !4314)
!4397 = !DILocation(line: 1113, column: 47, scope: !4311, inlinedAt: !4314)
!4398 = !DILocation(line: 106, column: 1, scope: !4299)
!4399 = distinct !DISubprogram(name: "kasan_check_write", scope: !4400, file: !4400, line: 38, type: !4401, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4400 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!1005, !3869, !7}
!4403 = !DILocalVariable(name: "p", arg: 1, scope: !4399, file: !4400, line: 38, type: !3869)
!4404 = !DILocation(line: 38, column: 59, scope: !4399)
!4405 = !DILocalVariable(name: "size", arg: 2, scope: !4399, file: !4400, line: 38, type: !7)
!4406 = !DILocation(line: 38, column: 75, scope: !4399)
!4407 = !DILocation(line: 40, column: 2, scope: !4399)
!4408 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4409, file: !4409, line: 178, type: !4410, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4409 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !3869, !209, !146}
!4412 = !DILocalVariable(name: "ptr", arg: 1, scope: !4408, file: !4409, line: 178, type: !3869)
!4413 = !DILocation(line: 178, column: 60, scope: !4408)
!4414 = !DILocalVariable(name: "size", arg: 2, scope: !4408, file: !4409, line: 178, type: !209)
!4415 = !DILocation(line: 178, column: 72, scope: !4408)
!4416 = !DILocalVariable(name: "type", arg: 3, scope: !4408, file: !4409, line: 179, type: !146)
!4417 = !DILocation(line: 179, column: 15, scope: !4408)
!4418 = !DILocation(line: 179, column: 23, scope: !4408)
!4419 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !4293, file: !4293, line: 448, type: !1636, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4420 = !DILocalVariable(name: "dev", arg: 1, scope: !4419, file: !4293, line: 448, type: !95)
!4421 = !DILocation(line: 448, column: 54, scope: !4419)
!4422 = !DILocation(line: 450, column: 27, scope: !4419)
!4423 = !DILocation(line: 450, column: 9, scope: !4419)
!4424 = !DILocation(line: 450, column: 2, scope: !4419)
!4425 = distinct !DISubprogram(name: "get_order", scope: !4426, file: !4426, line: 29, type: !4427, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4426 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!146, !212}
!4429 = !DILocalVariable(name: "x", arg: 1, scope: !4430, file: !4431, line: 366, type: !283)
!4430 = distinct !DISubprogram(name: "fls64", scope: !4431, file: !4431, line: 366, type: !4432, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4431 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!146, !283}
!4434 = !DILocation(line: 366, column: 40, scope: !4430, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 46, column: 9, scope: !4425)
!4436 = !DILocalVariable(name: "bitpos", scope: !4430, file: !4431, line: 368, type: !146)
!4437 = !DILocation(line: 368, column: 6, scope: !4430, inlinedAt: !4435)
!4438 = !DILocalVariable(name: "size", arg: 1, scope: !4425, file: !4426, line: 29, type: !212)
!4439 = !DILocation(line: 29, column: 63, scope: !4425)
!4440 = !DILocation(line: 31, column: 27, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 31, column: 6)
!4442 = !DILocation(line: 31, column: 6, scope: !4441)
!4443 = !DILocation(line: 31, column: 6, scope: !4425)
!4444 = !DILocation(line: 32, column: 8, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 32, column: 7)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !4426, line: 31, column: 34)
!4447 = !DILocation(line: 32, column: 7, scope: !4446)
!4448 = !DILocation(line: 33, column: 4, scope: !4445)
!4449 = !DILocation(line: 35, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 35, column: 7)
!4451 = !DILocation(line: 35, column: 12, scope: !4450)
!4452 = !DILocation(line: 35, column: 7, scope: !4446)
!4453 = !DILocation(line: 36, column: 4, scope: !4450)
!4454 = !DILocation(line: 38, column: 10, scope: !4446)
!4455 = !DILocation(line: 38, column: 28, scope: !4446)
!4456 = !DILocation(line: 38, column: 41, scope: !4446)
!4457 = !DILocation(line: 38, column: 3, scope: !4446)
!4458 = !DILocation(line: 41, column: 6, scope: !4425)
!4459 = !DILocation(line: 42, column: 7, scope: !4425)
!4460 = !DILocation(line: 46, column: 15, scope: !4425)
!4461 = !DILocation(line: 374, column: 2, scope: !4430, inlinedAt: !4435)
!4462 = !DILocation(line: 376, column: 14, scope: !4430, inlinedAt: !4435)
!4463 = !{i32 384484}
!4464 = !DILocation(line: 377, column: 9, scope: !4430, inlinedAt: !4435)
!4465 = !DILocation(line: 377, column: 16, scope: !4430, inlinedAt: !4435)
!4466 = !DILocation(line: 46, column: 2, scope: !4425)
!4467 = !DILocation(line: 48, column: 1, scope: !4425)
!4468 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4469, file: !4469, line: 30, type: !4470, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4469 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!146, !281}
!4472 = !DILocation(line: 366, column: 40, scope: !4430, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 32, column: 9, scope: !4468)
!4474 = !DILocation(line: 368, column: 6, scope: !4430, inlinedAt: !4473)
!4475 = !DILocalVariable(name: "n", arg: 1, scope: !4468, file: !4469, line: 30, type: !281)
!4476 = !DILocation(line: 30, column: 21, scope: !4468)
!4477 = !DILocation(line: 32, column: 15, scope: !4468)
!4478 = !DILocation(line: 374, column: 2, scope: !4430, inlinedAt: !4473)
!4479 = !DILocation(line: 376, column: 14, scope: !4430, inlinedAt: !4473)
!4480 = !DILocation(line: 377, column: 9, scope: !4430, inlinedAt: !4473)
!4481 = !DILocation(line: 377, column: 16, scope: !4430, inlinedAt: !4473)
!4482 = !DILocation(line: 32, column: 18, scope: !4468)
!4483 = !DILocation(line: 32, column: 2, scope: !4468)
!4484 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4485, file: !4485, line: 137, type: !4486, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4485 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!79, !1055, !1136, !209, !77}
!4488 = !DILocalVariable(name: "s", arg: 1, scope: !4484, file: !4485, line: 137, type: !1055)
!4489 = !DILocation(line: 137, column: 54, scope: !4484)
!4490 = !DILocalVariable(name: "object", arg: 2, scope: !4484, file: !4485, line: 137, type: !1136)
!4491 = !DILocation(line: 137, column: 69, scope: !4484)
!4492 = !DILocalVariable(name: "size", arg: 3, scope: !4484, file: !4485, line: 138, type: !209)
!4493 = !DILocation(line: 138, column: 12, scope: !4484)
!4494 = !DILocalVariable(name: "flags", arg: 4, scope: !4484, file: !4485, line: 138, type: !77)
!4495 = !DILocation(line: 138, column: 24, scope: !4484)
!4496 = !DILocation(line: 140, column: 17, scope: !4484)
!4497 = !DILocation(line: 140, column: 2, scope: !4484)
!4498 = distinct !DISubprogram(name: "kobject_name", scope: !100, file: !100, line: 88, type: !4499, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!103, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!4503 = !DILocalVariable(name: "kobj", arg: 1, scope: !4498, file: !100, line: 88, type: !4501)
!4504 = !DILocation(line: 88, column: 62, scope: !4498)
!4505 = !DILocation(line: 90, column: 9, scope: !4498)
!4506 = !DILocation(line: 90, column: 15, scope: !4498)
!4507 = !DILocation(line: 90, column: 2, scope: !4498)
!4508 = distinct !DISubprogram(name: "acpi_preset_companion", scope: !4509, file: !4509, line: 89, type: !4510, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4509 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !95, !2701, !281}
!4512 = !DILocalVariable(name: "dev", arg: 1, scope: !4508, file: !4509, line: 89, type: !95)
!4513 = !DILocation(line: 89, column: 57, scope: !4508)
!4514 = !DILocalVariable(name: "parent", arg: 2, scope: !4508, file: !4509, line: 90, type: !2701)
!4515 = !DILocation(line: 90, column: 27, scope: !4508)
!4516 = !DILocalVariable(name: "addr", arg: 3, scope: !4508, file: !4509, line: 90, type: !281)
!4517 = !DILocation(line: 90, column: 39, scope: !4508)
!4518 = !DILocation(line: 92, column: 2, scope: !4508)
!4519 = !DILocation(line: 93, column: 1, scope: !4508)
!4520 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !2703, file: !2703, line: 438, type: !4521, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!1920, !2701}
!4523 = !DILocalVariable(name: "adev", arg: 1, scope: !4520, file: !2703, line: 438, type: !2701)
!4524 = !DILocation(line: 438, column: 76, scope: !4520)
!4525 = !DILocation(line: 440, column: 10, scope: !4520)
!4526 = !DILocation(line: 440, column: 16, scope: !4520)
!4527 = !DILocation(line: 440, column: 2, scope: !4520)
