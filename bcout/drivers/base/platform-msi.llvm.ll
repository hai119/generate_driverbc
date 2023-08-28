; ModuleID = '../bcout/drivers/base/platform-msi.llvm.bc'
source_filename = "drivers/base/platform-msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kmem_cache = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.irq_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.irq_alloc_info*)*, void (%struct.irq_alloc_info*, i32)*, void (%struct.irq_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.irq_alloc_info = type { i32, i32, i32, i64, %struct.cpumask*, %struct.msi_desc*, i8*, %union.anon.42 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.38 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type opaque
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i32, %struct.anon.40, %union.anon.41 }
%struct.anon.40 = type { i16, i16, i32 }
%union.anon.41 = type { i8* }
%union.anon.42 = type { %struct.ioapic_alloc_info }
%struct.ioapic_alloc_info = type { i32, i32, i8, %struct.IO_APIC_route_entry* }
%struct.IO_APIC_route_entry = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.platform_msi_priv_data = type { %struct.device*, i8*, %struct.irq_alloc_info, void (%struct.msi_desc*, %struct.msi_msg*)*, i32 }
%struct.platform_msi_desc = type { %struct.platform_msi_priv_data*, i16 }

@.str = private unnamed_addr constant [28 x i8] c"drivers/base/platform-msi.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Incompatible msi_domain, giving up\0A\00", align 1
@platform_msi_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* %fwnode, %struct.msi_domain_info* %info, %struct.irq_domain* %parent) #0 !dbg !2484 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %info.addr = alloca %struct.msi_domain_info*, align 8
  %parent.addr = alloca %struct.irq_domain*, align 8
  %domain = alloca %struct.irq_domain*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store %struct.msi_domain_info* %info, %struct.msi_domain_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi_domain_info** %info.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  store %struct.irq_domain* %parent, %struct.irq_domain** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %parent.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain, metadata !2548, metadata !DIExpression()), !dbg !2549
  %0 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2550
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %0, i32 0, i32 0, !dbg !2552
  %1 = load i32, i32* %flags, align 8, !dbg !2552
  %and = and i32 %1, 1, !dbg !2553
  %tobool = icmp ne i32 %and, 0, !dbg !2553
  br i1 %tobool, label %if.then, label %if.end, !dbg !2554

if.then:                                          ; preds = %entry
  %2 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2555
  call void @platform_msi_update_dom_ops(%struct.msi_domain_info* %2) #7, !dbg !2556
  br label %if.end, !dbg !2556

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2557
  %flags1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %3, i32 0, i32 0, !dbg !2559
  %4 = load i32, i32* %flags1, align 8, !dbg !2559
  %and2 = and i32 %4, 2, !dbg !2560
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2560
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2561

if.then4:                                         ; preds = %if.end
  %5 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2562
  call void @platform_msi_update_chip_ops(%struct.msi_domain_info* %5) #7, !dbg !2563
  br label %if.end5, !dbg !2563

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2564
  %7 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2565
  %8 = load %struct.irq_domain*, %struct.irq_domain** %parent.addr, align 8, !dbg !2566
  %call = call %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* %6, %struct.msi_domain_info* %7, %struct.irq_domain* %8) #7, !dbg !2567
  store %struct.irq_domain* %call, %struct.irq_domain** %domain, align 8, !dbg !2568
  %9 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2569
  %tobool6 = icmp ne %struct.irq_domain* %9, null, !dbg !2569
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2571

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2572
  call void @irq_domain_update_bus_token(%struct.irq_domain* %10, i32 4) #7, !dbg !2573
  br label %if.end8, !dbg !2573

if.end8:                                          ; preds = %if.then7, %if.end5
  %11 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !2574
  ret %struct.irq_domain* %11, !dbg !2575
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_msi_update_dom_ops(%struct.msi_domain_info* %info) #0 !dbg !2576 {
entry:
  %info.addr = alloca %struct.msi_domain_info*, align 8
  %ops = alloca %struct.msi_domain_ops*, align 8
  store %struct.msi_domain_info* %info, %struct.msi_domain_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi_domain_info** %info.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.msi_domain_ops** %ops, metadata !2581, metadata !DIExpression()), !dbg !2582
  %0 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2583
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %0, i32 0, i32 1, !dbg !2584
  %1 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8, !dbg !2584
  store %struct.msi_domain_ops* %1, %struct.msi_domain_ops** %ops, align 8, !dbg !2582
  br label %do.body, !dbg !2585

do.body:                                          ; preds = %entry
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8, !dbg !2586
  %tobool = icmp ne %struct.msi_domain_ops* %2, null, !dbg !2586
  %lnot = xor i1 %tobool, true, !dbg !2586
  %lnot2 = xor i1 %lnot, true, !dbg !2586
  %lnot3 = xor i1 %lnot2, true, !dbg !2586
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2586
  %conv = sext i32 %lnot.ext to i64, !dbg !2586
  %tobool4 = icmp ne i64 %conv, 0, !dbg !2586
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2589

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !2586

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2590

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !2592

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !2590

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 71, i32 0, i64 12) #8, !dbg !2594, !srcloc !2596
  br label %do.end8, !dbg !2594

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !2590

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #8, !dbg !2597, !srcloc !2600
  unreachable, !dbg !2601

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !2590

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !2590

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !2589

do.end12:                                         ; preds = %if.end
  %3 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8, !dbg !2602
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %3, i32 0, i32 1, !dbg !2604
  %4 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)** %msi_init, align 8, !dbg !2604
  %cmp = icmp eq i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)* %4, null, !dbg !2605
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !2606

if.then14:                                        ; preds = %do.end12
  %5 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8, !dbg !2607
  %msi_init15 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %5, i32 0, i32 1, !dbg !2608
  store i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.irq_alloc_info*)** %msi_init15, align 8, !dbg !2609
  br label %if.end16, !dbg !2607

if.end16:                                         ; preds = %if.then14, %do.end12
  %6 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8, !dbg !2610
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %6, i32 0, i32 6, !dbg !2612
  %7 = load void (%struct.irq_alloc_info*, %struct.msi_desc*)*, void (%struct.irq_alloc_info*, %struct.msi_desc*)** %set_desc, align 8, !dbg !2612
  %cmp17 = icmp eq void (%struct.irq_alloc_info*, %struct.msi_desc*)* %7, null, !dbg !2613
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2614

if.then19:                                        ; preds = %if.end16
  %8 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8, !dbg !2615
  %set_desc20 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %8, i32 0, i32 6, !dbg !2616
  store void (%struct.irq_alloc_info*, %struct.msi_desc*)* null, void (%struct.irq_alloc_info*, %struct.msi_desc*)** %set_desc20, align 8, !dbg !2617
  br label %if.end21, !dbg !2615

if.end21:                                         ; preds = %if.then19, %if.end16
  ret void, !dbg !2618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_msi_update_chip_ops(%struct.msi_domain_info* %info) #0 !dbg !2619 {
entry:
  %info.addr = alloca %struct.msi_domain_info*, align 8
  %chip = alloca %struct.irq_chip*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.msi_domain_info* %info, %struct.msi_domain_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi_domain_info** %info.addr, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata %struct.irq_chip** %chip, metadata !2622, metadata !DIExpression()), !dbg !2623
  %0 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2624
  %chip1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %0, i32 0, i32 2, !dbg !2625
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8, !dbg !2625
  store %struct.irq_chip* %1, %struct.irq_chip** %chip, align 8, !dbg !2623
  br label %do.body, !dbg !2626

do.body:                                          ; preds = %entry
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2627
  %tobool = icmp ne %struct.irq_chip* %2, null, !dbg !2627
  %lnot = xor i1 %tobool, true, !dbg !2627
  %lnot2 = xor i1 %lnot, true, !dbg !2627
  %lnot3 = xor i1 %lnot2, true, !dbg !2627
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2627
  %conv = sext i32 %lnot.ext to i64, !dbg !2627
  %tobool4 = icmp ne i64 %conv, 0, !dbg !2627
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2630

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !2627

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2631

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !2633

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !2631

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 93, i32 0, i64 12) #8, !dbg !2635, !srcloc !2637
  br label %do.end8, !dbg !2635

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !2631

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #8, !dbg !2638, !srcloc !2641
  unreachable, !dbg !2642

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !2631

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !2631

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !2630

do.end12:                                         ; preds = %if.end
  %3 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2643
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %3, i32 0, i32 7, !dbg !2645
  %4 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8, !dbg !2645
  %tobool13 = icmp ne void (%struct.irq_data*)* %4, null, !dbg !2643
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2646

if.then14:                                        ; preds = %do.end12
  %5 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2647
  %irq_mask15 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %5, i32 0, i32 7, !dbg !2648
  store void (%struct.irq_data*)* @irq_chip_mask_parent, void (%struct.irq_data*)** %irq_mask15, align 8, !dbg !2649
  br label %if.end16, !dbg !2647

if.end16:                                         ; preds = %if.then14, %do.end12
  %6 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2650
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %6, i32 0, i32 9, !dbg !2652
  %7 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8, !dbg !2652
  %tobool17 = icmp ne void (%struct.irq_data*)* %7, null, !dbg !2650
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !2653

if.then18:                                        ; preds = %if.end16
  %8 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2654
  %irq_unmask19 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %8, i32 0, i32 9, !dbg !2655
  store void (%struct.irq_data*)* @irq_chip_unmask_parent, void (%struct.irq_data*)** %irq_unmask19, align 8, !dbg !2656
  br label %if.end20, !dbg !2654

if.end20:                                         ; preds = %if.then18, %if.end16
  %9 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2657
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %9, i32 0, i32 10, !dbg !2659
  %10 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8, !dbg !2659
  %tobool21 = icmp ne void (%struct.irq_data*)* %10, null, !dbg !2657
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !2660

if.then22:                                        ; preds = %if.end20
  %11 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2661
  %irq_eoi23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %11, i32 0, i32 10, !dbg !2662
  store void (%struct.irq_data*)* @irq_chip_eoi_parent, void (%struct.irq_data*)** %irq_eoi23, align 8, !dbg !2663
  br label %if.end24, !dbg !2661

if.end24:                                         ; preds = %if.then22, %if.end20
  %12 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2664
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %12, i32 0, i32 11, !dbg !2666
  %13 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8, !dbg !2666
  %tobool25 = icmp ne i32 (%struct.irq_data*, %struct.cpumask*, i1)* %13, null, !dbg !2664
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !2667

if.then26:                                        ; preds = %if.end24
  %14 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2668
  %irq_set_affinity27 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %14, i32 0, i32 11, !dbg !2669
  store i32 (%struct.irq_data*, %struct.cpumask*, i1)* @msi_domain_set_affinity, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity27, align 8, !dbg !2670
  br label %if.end28, !dbg !2668

if.end28:                                         ; preds = %if.then26, %if.end24
  %15 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2671
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %15, i32 0, i32 27, !dbg !2673
  %16 = load void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)** %irq_write_msi_msg, align 8, !dbg !2673
  %tobool29 = icmp ne void (%struct.irq_data*, %struct.msi_msg*)* %16, null, !dbg !2671
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !2674

if.then30:                                        ; preds = %if.end28
  %17 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2675
  %irq_write_msi_msg31 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %17, i32 0, i32 27, !dbg !2676
  store void (%struct.irq_data*, %struct.msi_msg*)* @platform_msi_write_msg, void (%struct.irq_data*, %struct.msi_msg*)** %irq_write_msi_msg31, align 8, !dbg !2677
  br label %if.end32, !dbg !2675

if.end32:                                         ; preds = %if.then30, %if.end28
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2678, metadata !DIExpression()), !dbg !2681
  %18 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2681
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %18, i32 0, i32 0, !dbg !2681
  %19 = load i32, i32* %flags, align 8, !dbg !2681
  %and = and i32 %19, 64, !dbg !2681
  %tobool33 = icmp ne i32 %and, 0, !dbg !2681
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !2681

land.rhs:                                         ; preds = %if.end32
  %20 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8, !dbg !2681
  %flags34 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %20, i32 0, i32 35, !dbg !2681
  %21 = load i64, i64* %flags34, align 8, !dbg !2681
  %and35 = and i64 %21, 128, !dbg !2681
  %tobool36 = icmp ne i64 %and35, 0, !dbg !2681
  %lnot37 = xor i1 %tobool36, true, !dbg !2681
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end32
  %22 = phi i1 [ false, %if.end32 ], [ %lnot37, %land.rhs ], !dbg !2682
  %lnot39 = xor i1 %22, true, !dbg !2681
  %lnot41 = xor i1 %lnot39, true, !dbg !2681
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !2681
  store i32 %lnot.ext42, i32* %__ret_warn_on, align 4, !dbg !2681
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !2683
  %tobool43 = icmp ne i32 %23, 0, !dbg !2683
  %lnot44 = xor i1 %tobool43, true, !dbg !2683
  %lnot46 = xor i1 %lnot44, true, !dbg !2683
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !2683
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !2683
  %tobool49 = icmp ne i64 %conv48, 0, !dbg !2683
  br i1 %tobool49, label %if.then50, label %if.end59, !dbg !2681

if.then50:                                        ; preds = %land.end
  br label %do.body51, !dbg !2683

do.body51:                                        ; preds = %if.then50
  br label %do.body52, !dbg !2685

do.body52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2687

do.end53:                                         ; preds = %do.body52
  br label %do.body54, !dbg !2685

do.body54:                                        ; preds = %do.end53
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 105, i32 2305, i64 12) #8, !dbg !2689, !srcloc !2691
  br label %do.end55, !dbg !2689

do.end55:                                         ; preds = %do.body54
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #8, !dbg !2692, !srcloc !2694
  br label %do.body56, !dbg !2685

do.body56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !2695

do.end57:                                         ; preds = %do.body56
  br label %do.end58, !dbg !2685

do.end58:                                         ; preds = %do.end57
  br label %if.end59, !dbg !2685

if.end59:                                         ; preds = %do.end58, %land.end
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !2681
  %tobool60 = icmp ne i32 %24, 0, !dbg !2681
  %lnot61 = xor i1 %tobool60, true, !dbg !2681
  %lnot63 = xor i1 %lnot61, true, !dbg !2681
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !2681
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !2681
  store i64 %conv65, i64* %tmp, align 8, !dbg !2683
  %25 = load i64, i64* %tmp, align 8, !dbg !2681
  %tobool66 = icmp ne i64 %25, 0, !dbg !2697
  br i1 %tobool66, label %if.then67, label %if.end70, !dbg !2698

if.then67:                                        ; preds = %if.end59
  %26 = load %struct.msi_domain_info*, %struct.msi_domain_info** %info.addr, align 8, !dbg !2699
  %flags68 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %26, i32 0, i32 0, !dbg !2700
  %27 = load i32, i32* %flags68, align 8, !dbg !2701
  %and69 = and i32 %27, -65, !dbg !2701
  store i32 %and69, i32* %flags68, align 8, !dbg !2701
  br label %if.end70, !dbg !2699

if.end70:                                         ; preds = %if.then67, %if.end59
  ret void, !dbg !2702
}

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle*, %struct.msi_domain_info*, %struct.irq_domain*) #2

; Function Attrs: noredzone
declare dso_local void @irq_domain_update_bus_token(%struct.irq_domain*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @platform_msi_domain_alloc_irqs(%struct.device* %dev, i32 %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg) #0 !dbg !2703 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %nvec.addr = alloca i32, align 4
  %write_msi_msg.addr = alloca void (%struct.msi_desc*, %struct.msi_msg*)*, align 8
  %priv_data = alloca %struct.platform_msi_priv_data*, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  store void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %priv_data, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2714, metadata !DIExpression()), !dbg !2715
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2716
  %1 = load i32, i32* %nvec.addr, align 4, !dbg !2717
  %2 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8, !dbg !2718
  %call = call %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %0, i32 %1, void (%struct.msi_desc*, %struct.msi_msg*)* %2) #7, !dbg !2719
  store %struct.platform_msi_priv_data* %call, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !2720
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !2721
  %4 = bitcast %struct.platform_msi_priv_data* %3 to i8*, !dbg !2721
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #7, !dbg !2723
  br i1 %call1, label %if.then, label %if.end, !dbg !2724

if.then:                                          ; preds = %entry
  %5 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !2725
  %6 = bitcast %struct.platform_msi_priv_data* %5 to i8*, !dbg !2725
  %call2 = call i64 @PTR_ERR(i8* %6) #7, !dbg !2726
  %conv = trunc i64 %call2 to i32, !dbg !2726
  store i32 %conv, i32* %retval, align 4, !dbg !2727
  br label %return, !dbg !2727

if.end:                                           ; preds = %entry
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2728
  %8 = load i32, i32* %nvec.addr, align 4, !dbg !2729
  %9 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !2730
  %call3 = call i32 @platform_msi_alloc_descs(%struct.device* %7, i32 %8, %struct.platform_msi_priv_data* %9) #7, !dbg !2731
  store i32 %call3, i32* %err, align 4, !dbg !2732
  %10 = load i32, i32* %err, align 4, !dbg !2733
  %tobool = icmp ne i32 %10, 0, !dbg !2733
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !2735

if.then4:                                         ; preds = %if.end
  br label %out_free_priv_data, !dbg !2736

if.end5:                                          ; preds = %if.end
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2737
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 13, !dbg !2738
  %12 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8, !dbg !2738
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2739
  %14 = load i32, i32* %nvec.addr, align 4, !dbg !2740
  %call6 = call i32 @msi_domain_alloc_irqs(%struct.irq_domain* %12, %struct.device* %13, i32 %14) #7, !dbg !2741
  store i32 %call6, i32* %err, align 4, !dbg !2742
  %15 = load i32, i32* %err, align 4, !dbg !2743
  %tobool7 = icmp ne i32 %15, 0, !dbg !2743
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2745

if.then8:                                         ; preds = %if.end5
  br label %out_free_desc, !dbg !2746

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !2747
  br label %return, !dbg !2747

out_free_desc:                                    ; preds = %if.then8
  call void @llvm.dbg.label(metadata !2748), !dbg !2749
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2750
  %17 = load i32, i32* %nvec.addr, align 4, !dbg !2751
  call void @platform_msi_free_descs(%struct.device* %16, i32 0, i32 %17) #7, !dbg !2752
  br label %out_free_priv_data, !dbg !2752

out_free_priv_data:                               ; preds = %out_free_desc, %if.then4
  call void @llvm.dbg.label(metadata !2753), !dbg !2754
  %18 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !2755
  call void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %18) #7, !dbg !2756
  %19 = load i32, i32* %err, align 4, !dbg !2757
  store i32 %19, i32* %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

return:                                           ; preds = %out_free_priv_data, %if.end9, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2759
  ret i32 %20, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %dev, i32 %nvec, void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg) #0 !dbg !2760 {
entry:
  %retval = alloca %struct.platform_msi_priv_data*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %nvec.addr = alloca i32, align 4
  %write_msi_msg.addr = alloca void (%struct.msi_desc*, %struct.msi_msg*)*, align 8
  %datap = alloca %struct.platform_msi_priv_data*, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  store void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %datap, metadata !2769, metadata !DIExpression()), !dbg !2770
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2771
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 13, !dbg !2773
  %1 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8, !dbg !2773
  %tobool = icmp ne %struct.irq_domain* %1, null, !dbg !2771
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2774

lor.lhs.false:                                    ; preds = %entry
  %2 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8, !dbg !2775
  %tobool1 = icmp ne void (%struct.msi_desc*, %struct.msi_msg*)* %2, null, !dbg !2775
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2776

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %nvec.addr, align 4, !dbg !2777
  %tobool3 = icmp ne i32 %3, 0, !dbg !2777
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2778

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, i32* %nvec.addr, align 4, !dbg !2779
  %cmp = icmp ugt i32 %4, 2048, !dbg !2780
  br i1 %cmp, label %if.then, label %if.end, !dbg !2781

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -22) #7, !dbg !2782
  %5 = bitcast i8* %call to %struct.platform_msi_priv_data*, !dbg !2782
  store %struct.platform_msi_priv_data* %5, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2783
  br label %return, !dbg !2783

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2784
  %msi_domain5 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 13, !dbg !2786
  %7 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain5, align 8, !dbg !2786
  %bus_token = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %7, i32 0, i32 7, !dbg !2787
  %8 = load i32, i32* %bus_token, align 8, !dbg !2787
  %cmp6 = icmp ne i32 %8, 4, !dbg !2788
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !2789

if.then7:                                         ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2790
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2790
  %call8 = call i8* @ERR_PTR(i64 -22) #7, !dbg !2792
  %10 = bitcast i8* %call8 to %struct.platform_msi_priv_data*, !dbg !2792
  store %struct.platform_msi_priv_data* %10, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2793
  br label %return, !dbg !2793

if.end9:                                          ; preds = %if.end
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2794
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 14, !dbg !2794
  %call10 = call i32 @list_empty(%struct.list_head* %msi_list) #7, !dbg !2796
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2796
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2797

if.then12:                                        ; preds = %if.end9
  %call13 = call i8* @ERR_PTR(i64 -16) #7, !dbg !2798
  %12 = bitcast i8* %call13 to %struct.platform_msi_priv_data*, !dbg !2798
  store %struct.platform_msi_priv_data* %12, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2799
  br label %return, !dbg !2799

if.end14:                                         ; preds = %if.end9
  %call15 = call i8* @kzalloc(i64 104, i32 3264) #7, !dbg !2800
  %13 = bitcast i8* %call15 to %struct.platform_msi_priv_data*, !dbg !2800
  store %struct.platform_msi_priv_data* %13, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2801
  %14 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2802
  %tobool16 = icmp ne %struct.platform_msi_priv_data* %14, null, !dbg !2802
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !2804

if.then17:                                        ; preds = %if.end14
  %call18 = call i8* @ERR_PTR(i64 -12) #7, !dbg !2805
  %15 = bitcast i8* %call18 to %struct.platform_msi_priv_data*, !dbg !2805
  store %struct.platform_msi_priv_data* %15, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2806
  br label %return, !dbg !2806

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @ida_alloc_range(%struct.ida* @platform_msi_devid_ida, i32 0, i32 2097151, i32 3264) #7, !dbg !2807
  %16 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2808
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %16, i32 0, i32 4, !dbg !2809
  store i32 %call20, i32* %devid, align 8, !dbg !2810
  %17 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2811
  %devid21 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %17, i32 0, i32 4, !dbg !2813
  %18 = load i32, i32* %devid21, align 8, !dbg !2813
  %cmp22 = icmp slt i32 %18, 0, !dbg !2814
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !2815

if.then23:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2816, metadata !DIExpression()), !dbg !2818
  %19 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2819
  %devid24 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %19, i32 0, i32 4, !dbg !2820
  %20 = load i32, i32* %devid24, align 8, !dbg !2820
  store i32 %20, i32* %err, align 4, !dbg !2818
  %21 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2821
  %22 = bitcast %struct.platform_msi_priv_data* %21 to i8*, !dbg !2821
  call void @kfree(i8* %22) #7, !dbg !2822
  %23 = load i32, i32* %err, align 4, !dbg !2823
  %conv = sext i32 %23 to i64, !dbg !2823
  %call25 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !2824
  %24 = bitcast i8* %call25 to %struct.platform_msi_priv_data*, !dbg !2824
  store %struct.platform_msi_priv_data* %24, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2825
  br label %return, !dbg !2825

if.end26:                                         ; preds = %if.end19
  %25 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8, !dbg !2826
  %26 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2827
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %26, i32 0, i32 3, !dbg !2828
  store void (%struct.msi_desc*, %struct.msi_msg*)* %25, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msg, align 8, !dbg !2829
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2830
  %28 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2831
  %dev27 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %28, i32 0, i32 0, !dbg !2832
  store %struct.device* %27, %struct.device** %dev27, align 8, !dbg !2833
  %29 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %datap, align 8, !dbg !2834
  store %struct.platform_msi_priv_data* %29, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2835
  br label %return, !dbg !2835

return:                                           ; preds = %if.end26, %if.then23, %if.then17, %if.then12, %if.then7, %if.then
  %30 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %retval, align 8, !dbg !2836
  ret %struct.platform_msi_priv_data* %30, !dbg !2836
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2837 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2843
  %1 = ptrtoint i8* %0 to i64, !dbg !2843
  %2 = inttoptr i64 %1 to i8*, !dbg !2843
  %3 = ptrtoint i8* %2 to i64, !dbg !2843
  %cmp = icmp uge i64 %3, -4095, !dbg !2843
  %lnot = xor i1 %cmp, true, !dbg !2843
  %lnot1 = xor i1 %lnot, true, !dbg !2843
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2843
  %conv = sext i32 %lnot.ext to i64, !dbg !2843
  %tobool = icmp ne i64 %conv, 0, !dbg !2843
  ret i1 %tobool, !dbg !2844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2845 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2848, metadata !DIExpression()), !dbg !2849
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2850
  %1 = ptrtoint i8* %0 to i64, !dbg !2851
  ret i64 %1, !dbg !2852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @platform_msi_alloc_descs(%struct.device* %dev, i32 %nvec, %struct.platform_msi_priv_data* %data) #0 !dbg !2853 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %nvec.addr = alloca i32, align 4
  %data.addr = alloca %struct.platform_msi_priv_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !2858, metadata !DIExpression()), !dbg !2859
  store %struct.platform_msi_priv_data* %data, %struct.platform_msi_priv_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2862
  %1 = load i32, i32* %nvec.addr, align 4, !dbg !2863
  %2 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data.addr, align 8, !dbg !2864
  %call = call i32 @platform_msi_alloc_descs_with_irq(%struct.device* %0, i32 0, i32 %1, %struct.platform_msi_priv_data* %2) #7, !dbg !2865
  ret i32 %call, !dbg !2866
}

; Function Attrs: noredzone
declare dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain*, %struct.device*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_msi_free_descs(%struct.device* %dev, i32 %base, i32 %nvec) #0 !dbg !2867 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %base.addr = alloca i32, align 4
  %nvec.addr = alloca i32, align 4
  %desc = alloca %struct.msi_desc*, align 8
  %tmp = alloca %struct.msi_desc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.msi_desc*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.msi_desc*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp23 = alloca %struct.msi_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %desc, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %tmp, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2880, metadata !DIExpression()), !dbg !2883
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2883
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 14, !dbg !2883
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %msi_list, i32 0, i32 0, !dbg !2883
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2883
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2883
  store i8* %2, i8** %__mptr, align 8, !dbg !2883
  br label %do.body, !dbg !2883

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2884

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2883
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2883
  %4 = bitcast i8* %add.ptr to %struct.msi_desc*, !dbg !2883
  store %struct.msi_desc* %4, %struct.msi_desc** %tmp1, align 8, !dbg !2884
  %5 = load %struct.msi_desc*, %struct.msi_desc** %tmp1, align 8, !dbg !2883
  store %struct.msi_desc* %5, %struct.msi_desc** %desc, align 8, !dbg !2886
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2887, metadata !DIExpression()), !dbg !2889
  %6 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2889
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %6, i32 0, i32 0, !dbg !2889
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !2889
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2889
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2889
  store i8* %8, i8** %__mptr2, align 8, !dbg !2889
  br label %do.body4, !dbg !2889

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2890

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !2889
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !2889
  %10 = bitcast i8* %add.ptr7 to %struct.msi_desc*, !dbg !2889
  store %struct.msi_desc* %10, %struct.msi_desc** %tmp6, align 8, !dbg !2890
  %11 = load %struct.msi_desc*, %struct.msi_desc** %tmp6, align 8, !dbg !2889
  store %struct.msi_desc* %11, %struct.msi_desc** %tmp, align 8, !dbg !2886
  br label %for.cond, !dbg !2886

for.cond:                                         ; preds = %do.end22, %do.end5
  %12 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2892
  %list8 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %12, i32 0, i32 0, !dbg !2892
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2892
  %msi_list9 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 14, !dbg !2892
  %cmp = icmp eq %struct.list_head* %list8, %msi_list9, !dbg !2892
  %lnot = xor i1 %cmp, true, !dbg !2892
  br i1 %lnot, label %for.body, label %for.end, !dbg !2886

for.body:                                         ; preds = %for.cond
  %14 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2894
  %15 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %14, i32 0, i32 8, !dbg !2897
  %platform = bitcast %union.anon.38* %15 to %struct.platform_msi_desc*, !dbg !2897
  %msi_index = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform, i32 0, i32 1, !dbg !2898
  %16 = load i16, i16* %msi_index, align 8, !dbg !2898
  %conv = zext i16 %16 to i32, !dbg !2894
  %17 = load i32, i32* %base.addr, align 4, !dbg !2899
  %cmp10 = icmp sge i32 %conv, %17, !dbg !2900
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !2901

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2902
  %19 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %18, i32 0, i32 8, !dbg !2903
  %platform12 = bitcast %union.anon.38* %19 to %struct.platform_msi_desc*, !dbg !2903
  %msi_index13 = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform12, i32 0, i32 1, !dbg !2904
  %20 = load i16, i16* %msi_index13, align 8, !dbg !2904
  %conv14 = zext i16 %20 to i32, !dbg !2902
  %21 = load i32, i32* %base.addr, align 4, !dbg !2905
  %22 = load i32, i32* %nvec.addr, align 4, !dbg !2906
  %add = add i32 %21, %22, !dbg !2907
  %cmp15 = icmp slt i32 %conv14, %add, !dbg !2908
  br i1 %cmp15, label %if.then, label %if.end, !dbg !2909

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2910
  %list17 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %23, i32 0, i32 0, !dbg !2912
  call void @list_del(%struct.list_head* %list17) #7, !dbg !2913
  %24 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2914
  call void @free_msi_entry(%struct.msi_desc* %24) #7, !dbg !2915
  br label %if.end, !dbg !2916

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2917

for.inc:                                          ; preds = %if.end
  %25 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !2892
  store %struct.msi_desc* %25, %struct.msi_desc** %desc, align 8, !dbg !2892
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !2918, metadata !DIExpression()), !dbg !2920
  %26 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !2920
  %list19 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %26, i32 0, i32 0, !dbg !2920
  %next20 = getelementptr inbounds %struct.list_head, %struct.list_head* %list19, i32 0, i32 0, !dbg !2920
  %27 = load %struct.list_head*, %struct.list_head** %next20, align 8, !dbg !2920
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !2920
  store i8* %28, i8** %__mptr18, align 8, !dbg !2920
  br label %do.body21, !dbg !2920

do.body21:                                        ; preds = %for.inc
  br label %do.end22, !dbg !2921

do.end22:                                         ; preds = %do.body21
  %29 = load i8*, i8** %__mptr18, align 8, !dbg !2920
  %add.ptr24 = getelementptr i8, i8* %29, i64 0, !dbg !2920
  %30 = bitcast i8* %add.ptr24 to %struct.msi_desc*, !dbg !2920
  store %struct.msi_desc* %30, %struct.msi_desc** %tmp23, align 8, !dbg !2921
  %31 = load %struct.msi_desc*, %struct.msi_desc** %tmp23, align 8, !dbg !2920
  store %struct.msi_desc* %31, %struct.msi_desc** %tmp, align 8, !dbg !2892
  br label %for.cond, !dbg !2892, !llvm.loop !2923

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %data) #0 !dbg !2926 {
entry:
  %data.addr = alloca %struct.platform_msi_priv_data*, align 8
  store %struct.platform_msi_priv_data* %data, %struct.platform_msi_priv_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data.addr, metadata !2929, metadata !DIExpression()), !dbg !2930
  %0 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data.addr, align 8, !dbg !2931
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %0, i32 0, i32 4, !dbg !2931
  %1 = load i32, i32* %devid, align 8, !dbg !2931
  call void @ida_free(%struct.ida* @platform_msi_devid_ida, i32 %1) #7, !dbg !2931
  %2 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data.addr, align 8, !dbg !2932
  %3 = bitcast %struct.platform_msi_priv_data* %2 to i8*, !dbg !2932
  call void @kfree(i8* %3) #7, !dbg !2933
  ret void, !dbg !2934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @platform_msi_domain_free_irqs(%struct.device* %dev) #0 !dbg !2935 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %desc = alloca %struct.msi_desc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.msi_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2938
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 14, !dbg !2938
  %call = call i32 @list_empty(%struct.list_head* %msi_list) #7, !dbg !2940
  %tobool = icmp ne i32 %call, 0, !dbg !2940
  br i1 %tobool, label %if.end, label %if.then, !dbg !2941

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %desc, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2945, metadata !DIExpression()), !dbg !2947
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2947
  %msi_list1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 14, !dbg !2947
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %msi_list1, i32 0, i32 0, !dbg !2947
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2947
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !2947
  store i8* %3, i8** %__mptr, align 8, !dbg !2947
  br label %do.body, !dbg !2947

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2948

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2947
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2947
  %5 = bitcast i8* %add.ptr to %struct.msi_desc*, !dbg !2947
  store %struct.msi_desc* %5, %struct.msi_desc** %tmp, align 8, !dbg !2948
  %6 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !2947
  store %struct.msi_desc* %6, %struct.msi_desc** %desc, align 8, !dbg !2950
  %7 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !2951
  %8 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %7, i32 0, i32 8, !dbg !2952
  %platform = bitcast %union.anon.38* %8 to %struct.platform_msi_desc*, !dbg !2952
  %msi_priv_data = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform, i32 0, i32 0, !dbg !2953
  %9 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8, !dbg !2953
  call void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %9) #7, !dbg !2954
  br label %if.end, !dbg !2955

if.end:                                           ; preds = %do.end, %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2956
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 13, !dbg !2957
  %11 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8, !dbg !2957
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2958
  call void @msi_domain_free_irqs(%struct.irq_domain* %11, %struct.device* %12) #7, !dbg !2959
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2960
  call void @platform_msi_free_descs(%struct.device* %13, i32 0, i32 2048) #7, !dbg !2961
  ret void, !dbg !2962
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2963 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  br label %do.body, !dbg !2971

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2973

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2971
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2971
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2971
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2973
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2971
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2975
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2976
  %conv = zext i1 %cmp to i32, !dbg !2976
  ret i32 %conv, !dbg !2977
}

; Function Attrs: noredzone
declare dso_local void @msi_domain_free_irqs(%struct.irq_domain*, %struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @platform_msi_get_host_data(%struct.irq_domain* %domain) #0 !dbg !2978 {
entry:
  %domain.addr = alloca %struct.irq_domain*, align 8
  %data = alloca %struct.platform_msi_priv_data*, align 8
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain.addr, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data, metadata !2983, metadata !DIExpression()), !dbg !2984
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !2985
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !2986
  %1 = load i8*, i8** %host_data, align 8, !dbg !2986
  %2 = bitcast i8* %1 to %struct.platform_msi_priv_data*, !dbg !2985
  store %struct.platform_msi_priv_data* %2, %struct.platform_msi_priv_data** %data, align 8, !dbg !2984
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !2987
  %host_data1 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %3, i32 0, i32 1, !dbg !2988
  %4 = load i8*, i8** %host_data1, align 8, !dbg !2988
  ret i8* %4, !dbg !2989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.irq_domain* @__platform_msi_create_device_domain(%struct.device* %dev, i32 %nvec, i1 zeroext %is_tree, void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, %struct.irq_domain_ops* %ops, i8* %host_data) #0 !dbg !2990 {
entry:
  %retval = alloca %struct.irq_domain*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %nvec.addr = alloca i32, align 4
  %is_tree.addr = alloca i8, align 1
  %write_msi_msg.addr = alloca void (%struct.msi_desc*, %struct.msi_msg*)*, align 8
  %ops.addr = alloca %struct.irq_domain_ops*, align 8
  %host_data.addr = alloca i8*, align 8
  %data = alloca %struct.platform_msi_priv_data*, align 8
  %domain = alloca %struct.irq_domain*, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2993, metadata !DIExpression()), !dbg !2994
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  %frombool = zext i1 %is_tree to i8
  store i8 %frombool, i8* %is_tree.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_tree.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  store void (%struct.msi_desc*, %struct.msi_msg*)* %write_msi_msg, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, metadata !2999, metadata !DIExpression()), !dbg !3000
  store %struct.irq_domain_ops* %ops, %struct.irq_domain_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain_ops** %ops.addr, metadata !3001, metadata !DIExpression()), !dbg !3002
  store i8* %host_data, i8** %host_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_data.addr, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3009, metadata !DIExpression()), !dbg !3010
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3011
  %1 = load i32, i32* %nvec.addr, align 4, !dbg !3012
  %2 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msi_msg.addr, align 8, !dbg !3013
  %call = call %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %0, i32 %1, void (%struct.msi_desc*, %struct.msi_msg*)* %2) #7, !dbg !3014
  store %struct.platform_msi_priv_data* %call, %struct.platform_msi_priv_data** %data, align 8, !dbg !3015
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3016
  %4 = bitcast %struct.platform_msi_priv_data* %3 to i8*, !dbg !3016
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #7, !dbg !3018
  br i1 %call1, label %if.then, label %if.end, !dbg !3019

if.then:                                          ; preds = %entry
  store %struct.irq_domain* null, %struct.irq_domain** %retval, align 8, !dbg !3020
  br label %return, !dbg !3020

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %host_data.addr, align 8, !dbg !3021
  %6 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3022
  %host_data2 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %6, i32 0, i32 1, !dbg !3023
  store i8* %5, i8** %host_data2, align 8, !dbg !3024
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3025
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 13, !dbg !3026
  %8 = load %struct.irq_domain*, %struct.irq_domain** %msi_domain, align 8, !dbg !3026
  %9 = load i8, i8* %is_tree.addr, align 1, !dbg !3027
  %tobool = trunc i8 %9 to i1, !dbg !3027
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3027

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3027

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* %nvec.addr, align 4, !dbg !3028
  br label %cond.end, !dbg !3027

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ], !dbg !3027
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3029
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 24, !dbg !3030
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3030
  %13 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops.addr, align 8, !dbg !3031
  %14 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3032
  %15 = bitcast %struct.platform_msi_priv_data* %14 to i8*, !dbg !3032
  %call3 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* %8, i32 0, i32 %cond, %struct.fwnode_handle* %12, %struct.irq_domain_ops* %13, i8* %15) #7, !dbg !3033
  store %struct.irq_domain* %call3, %struct.irq_domain** %domain, align 8, !dbg !3034
  %16 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !3035
  %tobool4 = icmp ne %struct.irq_domain* %16, null, !dbg !3035
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3037

if.then5:                                         ; preds = %cond.end
  br label %free_priv, !dbg !3038

if.end6:                                          ; preds = %cond.end
  %17 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !3039
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 9, !dbg !3040
  %18 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8, !dbg !3040
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3041
  %20 = load i32, i32* %nvec.addr, align 4, !dbg !3042
  %21 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3043
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %21, i32 0, i32 2, !dbg !3044
  %call7 = call i32 @msi_domain_prepare_irqs(%struct.irq_domain* %18, %struct.device* %19, i32 %20, %struct.irq_alloc_info* %arg) #7, !dbg !3045
  store i32 %call7, i32* %err, align 4, !dbg !3046
  %22 = load i32, i32* %err, align 4, !dbg !3047
  %tobool8 = icmp ne i32 %22, 0, !dbg !3047
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3049

if.then9:                                         ; preds = %if.end6
  br label %free_domain, !dbg !3050

if.end10:                                         ; preds = %if.end6
  %23 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !3051
  store %struct.irq_domain* %23, %struct.irq_domain** %retval, align 8, !dbg !3052
  br label %return, !dbg !3052

free_domain:                                      ; preds = %if.then9
  call void @llvm.dbg.label(metadata !3053), !dbg !3054
  %24 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !3055
  call void @irq_domain_remove(%struct.irq_domain* %24) #7, !dbg !3056
  br label %free_priv, !dbg !3056

free_priv:                                        ; preds = %free_domain, %if.then5
  call void @llvm.dbg.label(metadata !3057), !dbg !3058
  %25 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3059
  call void @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %25) #7, !dbg !3060
  store %struct.irq_domain* null, %struct.irq_domain** %retval, align 8, !dbg !3061
  br label %return, !dbg !3061

return:                                           ; preds = %free_priv, %if.end10, %if.then
  %26 = load %struct.irq_domain*, %struct.irq_domain** %retval, align 8, !dbg !3062
  ret %struct.irq_domain* %26, !dbg !3062
}

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, %struct.fwnode_handle*, %struct.irq_domain_ops*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @msi_domain_prepare_irqs(%struct.irq_domain*, %struct.device*, i32, %struct.irq_alloc_info*) #2

; Function Attrs: noredzone
declare dso_local void @irq_domain_remove(%struct.irq_domain*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @platform_msi_domain_free(%struct.irq_domain* %domain, i32 %virq, i32 %nvec) #0 !dbg !3063 {
entry:
  %domain.addr = alloca %struct.irq_domain*, align 8
  %virq.addr = alloca i32, align 4
  %nvec.addr = alloca i32, align 4
  %data = alloca %struct.platform_msi_priv_data*, align 8
  %desc = alloca %struct.msi_desc*, align 8
  %tmp = alloca %struct.msi_desc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.msi_desc*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.msi_desc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp28 = alloca i64, align 8
  %__mptr48 = alloca i8*, align 8
  %tmp53 = alloca %struct.msi_desc*, align 8
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain.addr, metadata !3064, metadata !DIExpression()), !dbg !3065
  store i32 %virq, i32* %virq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %virq.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data, metadata !3070, metadata !DIExpression()), !dbg !3071
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !3072
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !3073
  %1 = load i8*, i8** %host_data, align 8, !dbg !3073
  %2 = bitcast i8* %1 to %struct.platform_msi_priv_data*, !dbg !3072
  store %struct.platform_msi_priv_data* %2, %struct.platform_msi_priv_data** %data, align 8, !dbg !3071
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %desc, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %tmp, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3078, metadata !DIExpression()), !dbg !3081
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3081
  %dev = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %3, i32 0, i32 0, !dbg !3081
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3081
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 14, !dbg !3081
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %msi_list, i32 0, i32 0, !dbg !3081
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3081
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !3081
  store i8* %6, i8** %__mptr, align 8, !dbg !3081
  br label %do.body, !dbg !3081

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3082

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3081
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !3081
  %8 = bitcast i8* %add.ptr to %struct.msi_desc*, !dbg !3081
  store %struct.msi_desc* %8, %struct.msi_desc** %tmp1, align 8, !dbg !3082
  %9 = load %struct.msi_desc*, %struct.msi_desc** %tmp1, align 8, !dbg !3081
  store %struct.msi_desc* %9, %struct.msi_desc** %desc, align 8, !dbg !3084
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3085, metadata !DIExpression()), !dbg !3087
  %10 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3087
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %10, i32 0, i32 0, !dbg !3087
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !3087
  %11 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !3087
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !3087
  store i8* %12, i8** %__mptr2, align 8, !dbg !3087
  br label %do.body4, !dbg !3087

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !3088

do.end5:                                          ; preds = %do.body4
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !3087
  %add.ptr7 = getelementptr i8, i8* %13, i64 0, !dbg !3087
  %14 = bitcast i8* %add.ptr7 to %struct.msi_desc*, !dbg !3087
  store %struct.msi_desc* %14, %struct.msi_desc** %tmp6, align 8, !dbg !3088
  %15 = load %struct.msi_desc*, %struct.msi_desc** %tmp6, align 8, !dbg !3087
  store %struct.msi_desc* %15, %struct.msi_desc** %tmp, align 8, !dbg !3084
  br label %for.cond, !dbg !3084

for.cond:                                         ; preds = %do.end52, %do.end5
  %16 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3090
  %list8 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %16, i32 0, i32 0, !dbg !3090
  %17 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3090
  %dev9 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %17, i32 0, i32 0, !dbg !3090
  %18 = load %struct.device*, %struct.device** %dev9, align 8, !dbg !3090
  %msi_list10 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 14, !dbg !3090
  %cmp = icmp eq %struct.list_head* %list8, %msi_list10, !dbg !3090
  %lnot = xor i1 %cmp, true, !dbg !3090
  br i1 %lnot, label %for.body, label %for.end, !dbg !3084

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3092, metadata !DIExpression()), !dbg !3096
  %19 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3096
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %19, i32 0, i32 1, !dbg !3096
  %20 = load i32, i32* %irq, align 8, !dbg !3096
  %tobool = icmp ne i32 %20, 0, !dbg !3096
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3096

lor.rhs:                                          ; preds = %for.body
  %21 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3096
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %21, i32 0, i32 2, !dbg !3096
  %22 = load i32, i32* %nvec_used, align 4, !dbg !3096
  %cmp11 = icmp ne i32 %22, 1, !dbg !3096
  br label %lor.end, !dbg !3096

lor.end:                                          ; preds = %lor.rhs, %for.body
  %23 = phi i1 [ true, %for.body ], [ %cmp11, %lor.rhs ]
  %lnot12 = xor i1 %23, true, !dbg !3096
  %lnot13 = xor i1 %lnot12, true, !dbg !3096
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !3096
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3096
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !3097
  %tobool14 = icmp ne i32 %24, 0, !dbg !3097
  %lnot15 = xor i1 %tobool14, true, !dbg !3097
  %lnot17 = xor i1 %lnot15, true, !dbg !3097
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !3097
  %conv = sext i32 %lnot.ext18 to i64, !dbg !3097
  %tobool19 = icmp ne i64 %conv, 0, !dbg !3097
  br i1 %tobool19, label %if.then, label %if.end, !dbg !3096

if.then:                                          ; preds = %lor.end
  br label %do.body20, !dbg !3097

do.body20:                                        ; preds = %if.then
  br label %do.body21, !dbg !3099

do.body21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3101

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !3099

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 373, i32 2305, i64 12) #8, !dbg !3103, !srcloc !3105
  br label %do.end24, !dbg !3103

do.end24:                                         ; preds = %do.body23
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #8, !dbg !3106, !srcloc !3108
  br label %do.body25, !dbg !3099

do.body25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !3109

do.end26:                                         ; preds = %do.body25
  br label %do.end27, !dbg !3099

do.end27:                                         ; preds = %do.end26
  br label %if.end, !dbg !3099

if.end:                                           ; preds = %do.end27, %lor.end
  %25 = load i32, i32* %__ret_warn_on, align 4, !dbg !3096
  %tobool29 = icmp ne i32 %25, 0, !dbg !3096
  %lnot30 = xor i1 %tobool29, true, !dbg !3096
  %lnot32 = xor i1 %lnot30, true, !dbg !3096
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !3096
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !3096
  store i64 %conv34, i64* %tmp28, align 8, !dbg !3097
  %26 = load i64, i64* %tmp28, align 8, !dbg !3096
  %tobool35 = icmp ne i64 %26, 0, !dbg !3111
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !3112

if.then36:                                        ; preds = %if.end
  br label %for.end, !dbg !3113

if.end37:                                         ; preds = %if.end
  %27 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3114
  %irq38 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %27, i32 0, i32 1, !dbg !3116
  %28 = load i32, i32* %irq38, align 8, !dbg !3116
  %29 = load i32, i32* %virq.addr, align 4, !dbg !3117
  %cmp39 = icmp uge i32 %28, %29, !dbg !3118
  br i1 %cmp39, label %land.lhs.true, label %if.then44, !dbg !3119

land.lhs.true:                                    ; preds = %if.end37
  %30 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3120
  %irq41 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %30, i32 0, i32 1, !dbg !3121
  %31 = load i32, i32* %irq41, align 8, !dbg !3121
  %32 = load i32, i32* %virq.addr, align 4, !dbg !3122
  %33 = load i32, i32* %nvec.addr, align 4, !dbg !3123
  %add = add i32 %32, %33, !dbg !3124
  %cmp42 = icmp ult i32 %31, %add, !dbg !3125
  br i1 %cmp42, label %if.end45, label %if.then44, !dbg !3126

if.then44:                                        ; preds = %land.lhs.true, %if.end37
  br label %for.inc, !dbg !3127

if.end45:                                         ; preds = %land.lhs.true
  %34 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !3128
  %35 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3129
  %irq46 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %35, i32 0, i32 1, !dbg !3130
  %36 = load i32, i32* %irq46, align 8, !dbg !3130
  call void @irq_domain_free_irqs_common(%struct.irq_domain* %34, i32 %36, i32 1) #7, !dbg !3131
  %37 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3132
  %list47 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %37, i32 0, i32 0, !dbg !3133
  call void @list_del(%struct.list_head* %list47) #7, !dbg !3134
  %38 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3135
  call void @free_msi_entry(%struct.msi_desc* %38) #7, !dbg !3136
  br label %for.inc, !dbg !3137

for.inc:                                          ; preds = %if.end45, %if.then44
  %39 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !3090
  store %struct.msi_desc* %39, %struct.msi_desc** %desc, align 8, !dbg !3090
  call void @llvm.dbg.declare(metadata i8** %__mptr48, metadata !3138, metadata !DIExpression()), !dbg !3140
  %40 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !3140
  %list49 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %40, i32 0, i32 0, !dbg !3140
  %next50 = getelementptr inbounds %struct.list_head, %struct.list_head* %list49, i32 0, i32 0, !dbg !3140
  %41 = load %struct.list_head*, %struct.list_head** %next50, align 8, !dbg !3140
  %42 = bitcast %struct.list_head* %41 to i8*, !dbg !3140
  store i8* %42, i8** %__mptr48, align 8, !dbg !3140
  br label %do.body51, !dbg !3140

do.body51:                                        ; preds = %for.inc
  br label %do.end52, !dbg !3141

do.end52:                                         ; preds = %do.body51
  %43 = load i8*, i8** %__mptr48, align 8, !dbg !3140
  %add.ptr54 = getelementptr i8, i8* %43, i64 0, !dbg !3140
  %44 = bitcast i8* %add.ptr54 to %struct.msi_desc*, !dbg !3140
  store %struct.msi_desc* %44, %struct.msi_desc** %tmp53, align 8, !dbg !3141
  %45 = load %struct.msi_desc*, %struct.msi_desc** %tmp53, align 8, !dbg !3140
  store %struct.msi_desc* %45, %struct.msi_desc** %tmp, align 8, !dbg !3090
  br label %for.cond, !dbg !3090, !llvm.loop !3143

for.end:                                          ; preds = %if.then36, %for.cond
  ret void, !dbg !3145
}

; Function Attrs: noredzone
declare dso_local void @irq_domain_free_irqs_common(%struct.irq_domain*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3146 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3151
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !3152
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3153
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3154
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3155
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3156
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3157
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3158
  ret void, !dbg !3159
}

; Function Attrs: noredzone
declare dso_local void @free_msi_entry(%struct.msi_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @platform_msi_domain_alloc(%struct.irq_domain* %domain, i32 %virq, i32 %nr_irqs) #0 !dbg !3160 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca %struct.irq_domain*, align 8
  %virq.addr = alloca i32, align 4
  %nr_irqs.addr = alloca i32, align 4
  %data = alloca %struct.platform_msi_priv_data*, align 8
  %err = alloca i32, align 4
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i32 %virq, i32* %virq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %virq.addr, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i32 %nr_irqs, i32* %nr_irqs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_irqs.addr, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data, metadata !3169, metadata !DIExpression()), !dbg !3170
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !3171
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i32 0, i32 3, !dbg !3172
  %1 = load i8*, i8** %host_data, align 8, !dbg !3172
  %2 = bitcast i8* %1 to %struct.platform_msi_priv_data*, !dbg !3171
  store %struct.platform_msi_priv_data* %2, %struct.platform_msi_priv_data** %data, align 8, !dbg !3170
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3173, metadata !DIExpression()), !dbg !3174
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3175
  %dev = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %3, i32 0, i32 0, !dbg !3176
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3176
  %5 = load i32, i32* %virq.addr, align 4, !dbg !3177
  %6 = load i32, i32* %nr_irqs.addr, align 4, !dbg !3178
  %7 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3179
  %call = call i32 @platform_msi_alloc_descs_with_irq(%struct.device* %4, i32 %5, i32 %6, %struct.platform_msi_priv_data* %7) #7, !dbg !3180
  store i32 %call, i32* %err, align 4, !dbg !3181
  %8 = load i32, i32* %err, align 4, !dbg !3182
  %tobool = icmp ne i32 %8, 0, !dbg !3182
  br i1 %tobool, label %if.then, label %if.end, !dbg !3184

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %err, align 4, !dbg !3185
  store i32 %9, i32* %retval, align 4, !dbg !3186
  br label %return, !dbg !3186

if.end:                                           ; preds = %entry
  %10 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !3187
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 9, !dbg !3188
  %11 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8, !dbg !3188
  %12 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3189
  %dev1 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %12, i32 0, i32 0, !dbg !3190
  %13 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !3190
  %14 = load i32, i32* %virq.addr, align 4, !dbg !3191
  %15 = load i32, i32* %nr_irqs.addr, align 4, !dbg !3192
  %16 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data, align 8, !dbg !3193
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %16, i32 0, i32 2, !dbg !3194
  %call2 = call i32 @msi_domain_populate_irqs(%struct.irq_domain* %11, %struct.device* %13, i32 %14, i32 %15, %struct.irq_alloc_info* %arg) #7, !dbg !3195
  store i32 %call2, i32* %err, align 4, !dbg !3196
  %17 = load i32, i32* %err, align 4, !dbg !3197
  %tobool3 = icmp ne i32 %17, 0, !dbg !3197
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3199

if.then4:                                         ; preds = %if.end
  %18 = load %struct.irq_domain*, %struct.irq_domain** %domain.addr, align 8, !dbg !3200
  %19 = load i32, i32* %virq.addr, align 4, !dbg !3201
  %20 = load i32, i32* %nr_irqs.addr, align 4, !dbg !3202
  call void @platform_msi_domain_free(%struct.irq_domain* %18, i32 %19, i32 %20) #7, !dbg !3203
  br label %if.end5, !dbg !3203

if.end5:                                          ; preds = %if.then4, %if.end
  %21 = load i32, i32* %err, align 4, !dbg !3204
  store i32 %21, i32* %retval, align 4, !dbg !3205
  br label %return, !dbg !3205

return:                                           ; preds = %if.end5, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !3206
  ret i32 %22, !dbg !3206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @platform_msi_alloc_descs_with_irq(%struct.device* %dev, i32 %virq, i32 %nvec, %struct.platform_msi_priv_data* %data) #0 !dbg !3207 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %virq.addr = alloca i32, align 4
  %nvec.addr = alloca i32, align 4
  %data.addr = alloca %struct.platform_msi_priv_data*, align 8
  %desc = alloca %struct.msi_desc*, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.msi_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3210, metadata !DIExpression()), !dbg !3211
  store i32 %virq, i32* %virq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %virq.addr, metadata !3212, metadata !DIExpression()), !dbg !3213
  store i32 %nvec, i32* %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvec.addr, metadata !3214, metadata !DIExpression()), !dbg !3215
  store %struct.platform_msi_priv_data* %data, %struct.platform_msi_priv_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %data.addr, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %desc, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.declare(metadata i32* %base, metadata !3222, metadata !DIExpression()), !dbg !3223
  store i32 0, i32* %base, align 4, !dbg !3223
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3224
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 14, !dbg !3224
  %call = call i32 @list_empty(%struct.list_head* %msi_list) #7, !dbg !3226
  %tobool = icmp ne i32 %call, 0, !dbg !3226
  br i1 %tobool, label %if.end, label %if.then, !dbg !3227

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3228, metadata !DIExpression()), !dbg !3231
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3231
  %msi_list1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 14, !dbg !3231
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %msi_list1, i32 0, i32 1, !dbg !3231
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3231
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !3231
  store i8* %3, i8** %__mptr, align 8, !dbg !3231
  br label %do.body, !dbg !3231

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !3232

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3231
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !3231
  %5 = bitcast i8* %add.ptr to %struct.msi_desc*, !dbg !3231
  store %struct.msi_desc* %5, %struct.msi_desc** %tmp, align 8, !dbg !3232
  %6 = load %struct.msi_desc*, %struct.msi_desc** %tmp, align 8, !dbg !3231
  store %struct.msi_desc* %6, %struct.msi_desc** %desc, align 8, !dbg !3234
  %7 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3235
  %8 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %7, i32 0, i32 8, !dbg !3236
  %platform = bitcast %union.anon.38* %8 to %struct.platform_msi_desc*, !dbg !3236
  %msi_index = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform, i32 0, i32 1, !dbg !3237
  %9 = load i16, i16* %msi_index, align 8, !dbg !3237
  %conv = zext i16 %9 to i32, !dbg !3235
  %add = add i32 %conv, 1, !dbg !3238
  store i32 %add, i32* %base, align 4, !dbg !3239
  br label %if.end, !dbg !3240

if.end:                                           ; preds = %do.end, %entry
  store i32 0, i32* %i, align 4, !dbg !3241
  br label %for.cond, !dbg !3243

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !3244
  %11 = load i32, i32* %nvec.addr, align 4, !dbg !3246
  %cmp = icmp slt i32 %10, %11, !dbg !3247
  br i1 %cmp, label %for.body, label %for.end, !dbg !3248

for.body:                                         ; preds = %for.cond
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3249
  %call3 = call %struct.msi_desc* @alloc_msi_entry(%struct.device* %12, i32 1, %struct.irq_affinity_desc* null) #7, !dbg !3251
  store %struct.msi_desc* %call3, %struct.msi_desc** %desc, align 8, !dbg !3252
  %13 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3253
  %tobool4 = icmp ne %struct.msi_desc* %13, null, !dbg !3253
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3255

if.then5:                                         ; preds = %for.body
  br label %for.end, !dbg !3256

if.end6:                                          ; preds = %for.body
  %14 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %data.addr, align 8, !dbg !3257
  %15 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3258
  %16 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %15, i32 0, i32 8, !dbg !3259
  %platform7 = bitcast %union.anon.38* %16 to %struct.platform_msi_desc*, !dbg !3259
  %msi_priv_data = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform7, i32 0, i32 0, !dbg !3260
  store %struct.platform_msi_priv_data* %14, %struct.platform_msi_priv_data** %msi_priv_data, align 8, !dbg !3261
  %17 = load i32, i32* %base, align 4, !dbg !3262
  %18 = load i32, i32* %i, align 4, !dbg !3263
  %add8 = add i32 %17, %18, !dbg !3264
  %conv9 = trunc i32 %add8 to i16, !dbg !3262
  %19 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3265
  %20 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %19, i32 0, i32 8, !dbg !3266
  %platform10 = bitcast %union.anon.38* %20 to %struct.platform_msi_desc*, !dbg !3266
  %msi_index11 = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform10, i32 0, i32 1, !dbg !3267
  store i16 %conv9, i16* %msi_index11, align 8, !dbg !3268
  %21 = load i32, i32* %virq.addr, align 4, !dbg !3269
  %tobool12 = icmp ne i32 %21, 0, !dbg !3269
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !3269

cond.true:                                        ; preds = %if.end6
  %22 = load i32, i32* %virq.addr, align 4, !dbg !3270
  %23 = load i32, i32* %i, align 4, !dbg !3271
  %add13 = add i32 %22, %23, !dbg !3272
  br label %cond.end, !dbg !3269

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !3269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add13, %cond.true ], [ 0, %cond.false ], !dbg !3269
  %24 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3273
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %24, i32 0, i32 1, !dbg !3274
  store i32 %cond, i32* %irq, align 8, !dbg !3275
  %25 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3276
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %25, i32 0, i32 0, !dbg !3277
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3278
  %msi_list14 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 14, !dbg !3278
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %msi_list14) #7, !dbg !3279
  br label %for.inc, !dbg !3280

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4, !dbg !3281
  %inc = add i32 %27, 1, !dbg !3281
  store i32 %inc, i32* %i, align 4, !dbg !3281
  br label %for.cond, !dbg !3282, !llvm.loop !3283

for.end:                                          ; preds = %if.then5, %for.cond
  %28 = load i32, i32* %i, align 4, !dbg !3285
  %29 = load i32, i32* %nvec.addr, align 4, !dbg !3287
  %cmp15 = icmp ne i32 %28, %29, !dbg !3288
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3289

if.then17:                                        ; preds = %for.end
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3290
  %31 = load i32, i32* %base, align 4, !dbg !3292
  %32 = load i32, i32* %nvec.addr, align 4, !dbg !3293
  call void @platform_msi_free_descs(%struct.device* %30, i32 %31, i32 %32) #7, !dbg !3294
  store i32 -12, i32* %retval, align 4, !dbg !3295
  br label %return, !dbg !3295

if.end18:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !3296
  br label %return, !dbg !3296

return:                                           ; preds = %if.end18, %if.then17
  %33 = load i32, i32* %retval, align 4, !dbg !3297
  ret i32 %33, !dbg !3297
}

; Function Attrs: noredzone
declare dso_local i32 @msi_domain_populate_irqs(%struct.irq_domain*, %struct.device*, i32, i32, %struct.irq_alloc_info*) #2

; Function Attrs: noredzone
declare dso_local void @irq_chip_mask_parent(%struct.irq_data*) #2

; Function Attrs: noredzone
declare dso_local void @irq_chip_unmask_parent(%struct.irq_data*) #2

; Function Attrs: noredzone
declare dso_local void @irq_chip_eoi_parent(%struct.irq_data*) #2

; Function Attrs: noredzone
declare dso_local i32 @msi_domain_set_affinity(%struct.irq_data*, %struct.cpumask*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_msi_write_msg(%struct.irq_data* %data, %struct.msi_msg* %msg) #0 !dbg !3298 {
entry:
  %data.addr = alloca %struct.irq_data*, align 8
  %msg.addr = alloca %struct.msi_msg*, align 8
  %desc = alloca %struct.msi_desc*, align 8
  %priv_data = alloca %struct.platform_msi_priv_data*, align 8
  store %struct.irq_data* %data, %struct.irq_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %data.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  store %struct.msi_msg* %msg, %struct.msi_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi_msg** %msg.addr, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.declare(metadata %struct.msi_desc** %desc, metadata !3303, metadata !DIExpression()), !dbg !3304
  %0 = load %struct.irq_data*, %struct.irq_data** %data.addr, align 8, !dbg !3305
  %call = call %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* %0) #7, !dbg !3306
  store %struct.msi_desc* %call, %struct.msi_desc** %desc, align 8, !dbg !3304
  call void @llvm.dbg.declare(metadata %struct.platform_msi_priv_data** %priv_data, metadata !3307, metadata !DIExpression()), !dbg !3308
  %1 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3309
  %2 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %1, i32 0, i32 8, !dbg !3310
  %platform = bitcast %union.anon.38* %2 to %struct.platform_msi_desc*, !dbg !3310
  %msi_priv_data = getelementptr inbounds %struct.platform_msi_desc, %struct.platform_msi_desc* %platform, i32 0, i32 0, !dbg !3311
  %3 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %msi_priv_data, align 8, !dbg !3311
  store %struct.platform_msi_priv_data* %3, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !3312
  %4 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %priv_data, align 8, !dbg !3313
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %4, i32 0, i32 3, !dbg !3314
  %5 = load void (%struct.msi_desc*, %struct.msi_msg*)*, void (%struct.msi_desc*, %struct.msi_msg*)** %write_msg, align 8, !dbg !3314
  %6 = load %struct.msi_desc*, %struct.msi_desc** %desc, align 8, !dbg !3315
  %7 = load %struct.msi_msg*, %struct.msi_msg** %msg.addr, align 8, !dbg !3316
  call void %5(%struct.msi_desc* %6, %struct.msi_msg* %7) #7, !dbg !3313
  ret void, !dbg !3317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* %d) #0 !dbg !3318 {
entry:
  %d.addr = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %d, %struct.irq_data** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %d.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  %0 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3323
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i32 0, i32 3, !dbg !3324
  %1 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8, !dbg !3324
  %msi_desc = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %1, i32 0, i32 2, !dbg !3325
  %2 = load %struct.msi_desc*, %struct.msi_desc** %msi_desc, align 8, !dbg !3325
  ret %struct.msi_desc* %2, !dbg !3326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3327 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3330, metadata !DIExpression()), !dbg !3331
  %0 = load i64, i64* %error.addr, align 8, !dbg !3332
  %1 = inttoptr i64 %0 to i8*, !dbg !3333
  ret i8* %1, !dbg !3334
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3335 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3338, metadata !DIExpression()), !dbg !3342
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3348, metadata !DIExpression()), !dbg !3349
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3350, metadata !DIExpression()), !dbg !3351
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3352, metadata !DIExpression()), !dbg !3353
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3354, metadata !DIExpression()), !dbg !3358
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3360, metadata !DIExpression()), !dbg !3364
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3366, metadata !DIExpression()), !dbg !3370
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3375, metadata !DIExpression()), !dbg !3376
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3377, metadata !DIExpression()), !dbg !3378
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3379, metadata !DIExpression()), !dbg !3380
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3381, metadata !DIExpression()), !dbg !3382
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3383, metadata !DIExpression()), !dbg !3384
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3385, metadata !DIExpression()), !dbg !3386
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3387, metadata !DIExpression()), !dbg !3388
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3389, metadata !DIExpression()), !dbg !3390
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  %0 = load i64, i64* %size.addr, align 8, !dbg !3395
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3396
  %or = or i32 %1, 256, !dbg !3397
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3398
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !3399
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3400

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3401
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3402
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3403

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3404
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3405
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3406
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3407
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3384
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3408
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3409
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3410
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3411
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3412
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3413
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3414
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3414
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3414
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3414
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3414
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3415
  br label %kmalloc.exit, !dbg !3415

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3416
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3417
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3417
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3419

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3420
  br label %kmalloc_index.exit.i, !dbg !3420

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3421
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3423
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3424

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3425
  br label %kmalloc_index.exit.i, !dbg !3425

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3426
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3428
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3429

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3430
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3431
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3432

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3433
  br label %kmalloc_index.exit.i, !dbg !3433

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3434
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3436
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3437

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3438
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3439
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3440

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3441
  br label %kmalloc_index.exit.i, !dbg !3441

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3442
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3444
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3445

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3446
  br label %kmalloc_index.exit.i, !dbg !3446

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3447
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3449
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3450

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3451
  br label %kmalloc_index.exit.i, !dbg !3451

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3452
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3454
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3455

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3456
  br label %kmalloc_index.exit.i, !dbg !3456

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3457
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3459
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3460

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3461
  br label %kmalloc_index.exit.i, !dbg !3461

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3462
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3464
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3465

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3466
  br label %kmalloc_index.exit.i, !dbg !3466

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3467
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3469
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3470

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3471
  br label %kmalloc_index.exit.i, !dbg !3471

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3472
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3474
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3475

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3476
  br label %kmalloc_index.exit.i, !dbg !3476

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3477
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3479
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3480

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3481
  br label %kmalloc_index.exit.i, !dbg !3481

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3482
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3484
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3485

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3486
  br label %kmalloc_index.exit.i, !dbg !3486

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3487
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3489
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3490

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3491
  br label %kmalloc_index.exit.i, !dbg !3491

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3492
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3494
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3495

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3496
  br label %kmalloc_index.exit.i, !dbg !3496

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3497
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3499
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3500

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3501
  br label %kmalloc_index.exit.i, !dbg !3501

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3502
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3504
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3505

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3506
  br label %kmalloc_index.exit.i, !dbg !3506

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3507
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3509
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3510

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3511
  br label %kmalloc_index.exit.i, !dbg !3511

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3512
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3514
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3515

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3516
  br label %kmalloc_index.exit.i, !dbg !3516

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3517
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3519
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3520

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3521
  br label %kmalloc_index.exit.i, !dbg !3521

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3522
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3524
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3525

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3526
  br label %kmalloc_index.exit.i, !dbg !3526

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3527
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3529
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3530

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3531
  br label %kmalloc_index.exit.i, !dbg !3531

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3532
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3534
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3535

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3536
  br label %kmalloc_index.exit.i, !dbg !3536

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3537
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3539
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3540

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3541
  br label %kmalloc_index.exit.i, !dbg !3541

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3542
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3544
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3545

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3546
  br label %kmalloc_index.exit.i, !dbg !3546

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3547
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3549
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3550

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3551
  br label %kmalloc_index.exit.i, !dbg !3551

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3552
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3554
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3555

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3556
  br label %kmalloc_index.exit.i, !dbg !3556

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3557
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3559
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3560

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3561
  br label %kmalloc_index.exit.i, !dbg !3561

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3562, !srcloc !3565
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !3566, !srcloc !3569
  unreachable, !dbg !3570

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3571
  store i32 %45, i32* %index.i, align 4, !dbg !3572
  %46 = load i32, i32* %index.i, align 4, !dbg !3573
  %tobool.i = icmp ne i32 %46, 0, !dbg !3573
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3575

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3576
  br label %kmalloc.exit, !dbg !3576

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3577
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3578
  %and.i.i = and i32 %48, 17, !dbg !3578
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3578
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3578
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3578
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3578
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3580

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3581
  br label %kmalloc_type.exit.i, !dbg !3581

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3582
  %and2.i.i = and i32 %49, 1, !dbg !3583
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3582
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3582
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3582
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3584
  br label %kmalloc_type.exit.i, !dbg !3584

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3585
  %idxprom.i = zext i32 %51 to i64, !dbg !3586
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3586
  %52 = load i32, i32* %index.i, align 4, !dbg !3587
  %idxprom6.i = zext i32 %52 to i64, !dbg !3586
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3586
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3586
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3588
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3589
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3590
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3591
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3592
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3592
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3592
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3592
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3592
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3353
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3593
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3594
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3595
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3596
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3597
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3598
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3599
  store i8* %62, i8** %retval.i, align 8, !dbg !3600
  br label %kmalloc.exit, !dbg !3600

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3601
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3602
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3603
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3603
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3603
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3603
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3603
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3604
  br label %kmalloc.exit, !dbg !3604

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3605
  ret i8* %65, !dbg !3606
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3607 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3611, metadata !DIExpression()), !dbg !3616
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3618, metadata !DIExpression()), !dbg !3619
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  %0 = load i64, i64* %size.addr, align 8, !dbg !3622
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3624
  br i1 %1, label %if.then, label %if.end447, !dbg !3625

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3626
  %tobool = icmp ne i64 %2, 0, !dbg !3626
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3629

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3630
  br label %return, !dbg !3630

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3631
  %cmp = icmp ult i64 %3, 4096, !dbg !3633
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3634

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3635
  br label %return, !dbg !3635

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub = sub i64 %4, 1, !dbg !3636
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3636
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3636

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub4 = sub i64 %6, 1, !dbg !3636
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3636
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3636

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub6 = sub i64 %8, 1, !dbg !3636
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3636
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3636

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3636

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub9 = sub i64 %9, 1, !dbg !3636
  %and = and i64 %sub9, -9223372036854775808, !dbg !3636
  %tobool10 = icmp ne i64 %and, 0, !dbg !3636
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3636

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3636

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub13 = sub i64 %10, 1, !dbg !3636
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3636
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3636
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3636

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3636

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub18 = sub i64 %11, 1, !dbg !3636
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3636
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3636
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3636

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3636

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub23 = sub i64 %12, 1, !dbg !3636
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3636
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3636
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3636

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3636

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub28 = sub i64 %13, 1, !dbg !3636
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3636
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3636
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3636

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3636

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub33 = sub i64 %14, 1, !dbg !3636
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3636
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3636
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3636

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3636

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub38 = sub i64 %15, 1, !dbg !3636
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3636
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3636
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3636

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3636

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub43 = sub i64 %16, 1, !dbg !3636
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3636
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3636
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3636

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3636

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub48 = sub i64 %17, 1, !dbg !3636
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3636
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3636
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3636

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3636

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub53 = sub i64 %18, 1, !dbg !3636
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3636
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3636
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3636

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3636

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub58 = sub i64 %19, 1, !dbg !3636
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3636
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3636
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3636

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3636

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub63 = sub i64 %20, 1, !dbg !3636
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3636
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3636
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3636

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3636

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub68 = sub i64 %21, 1, !dbg !3636
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3636
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3636
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3636

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3636

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub73 = sub i64 %22, 1, !dbg !3636
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3636
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3636
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3636

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3636

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub78 = sub i64 %23, 1, !dbg !3636
  %and79 = and i64 %sub78, 562949953421312, !dbg !3636
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3636
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3636

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3636

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub83 = sub i64 %24, 1, !dbg !3636
  %and84 = and i64 %sub83, 281474976710656, !dbg !3636
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3636
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3636

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3636

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub88 = sub i64 %25, 1, !dbg !3636
  %and89 = and i64 %sub88, 140737488355328, !dbg !3636
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3636
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3636

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3636

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub93 = sub i64 %26, 1, !dbg !3636
  %and94 = and i64 %sub93, 70368744177664, !dbg !3636
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3636
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3636

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3636

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub98 = sub i64 %27, 1, !dbg !3636
  %and99 = and i64 %sub98, 35184372088832, !dbg !3636
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3636
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3636

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3636

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub103 = sub i64 %28, 1, !dbg !3636
  %and104 = and i64 %sub103, 17592186044416, !dbg !3636
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3636
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3636

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3636

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub108 = sub i64 %29, 1, !dbg !3636
  %and109 = and i64 %sub108, 8796093022208, !dbg !3636
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3636
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3636

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3636

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub113 = sub i64 %30, 1, !dbg !3636
  %and114 = and i64 %sub113, 4398046511104, !dbg !3636
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3636
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3636

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3636

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub118 = sub i64 %31, 1, !dbg !3636
  %and119 = and i64 %sub118, 2199023255552, !dbg !3636
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3636
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3636

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3636

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub123 = sub i64 %32, 1, !dbg !3636
  %and124 = and i64 %sub123, 1099511627776, !dbg !3636
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3636
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3636

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3636

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub128 = sub i64 %33, 1, !dbg !3636
  %and129 = and i64 %sub128, 549755813888, !dbg !3636
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3636
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3636

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3636

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub133 = sub i64 %34, 1, !dbg !3636
  %and134 = and i64 %sub133, 274877906944, !dbg !3636
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3636
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3636

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3636

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub138 = sub i64 %35, 1, !dbg !3636
  %and139 = and i64 %sub138, 137438953472, !dbg !3636
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3636
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3636

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3636

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub143 = sub i64 %36, 1, !dbg !3636
  %and144 = and i64 %sub143, 68719476736, !dbg !3636
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3636
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3636

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3636

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub148 = sub i64 %37, 1, !dbg !3636
  %and149 = and i64 %sub148, 34359738368, !dbg !3636
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3636
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3636

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3636

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub153 = sub i64 %38, 1, !dbg !3636
  %and154 = and i64 %sub153, 17179869184, !dbg !3636
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3636
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3636

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3636

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub158 = sub i64 %39, 1, !dbg !3636
  %and159 = and i64 %sub158, 8589934592, !dbg !3636
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3636
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3636

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3636

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub163 = sub i64 %40, 1, !dbg !3636
  %and164 = and i64 %sub163, 4294967296, !dbg !3636
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3636
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3636

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3636

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub168 = sub i64 %41, 1, !dbg !3636
  %and169 = and i64 %sub168, 2147483648, !dbg !3636
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3636
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3636

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3636

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub173 = sub i64 %42, 1, !dbg !3636
  %and174 = and i64 %sub173, 1073741824, !dbg !3636
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3636
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3636

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3636

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub178 = sub i64 %43, 1, !dbg !3636
  %and179 = and i64 %sub178, 536870912, !dbg !3636
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3636
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3636

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3636

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub183 = sub i64 %44, 1, !dbg !3636
  %and184 = and i64 %sub183, 268435456, !dbg !3636
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3636
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3636

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3636

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub188 = sub i64 %45, 1, !dbg !3636
  %and189 = and i64 %sub188, 134217728, !dbg !3636
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3636
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3636

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3636

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub193 = sub i64 %46, 1, !dbg !3636
  %and194 = and i64 %sub193, 67108864, !dbg !3636
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3636
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3636

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3636

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub198 = sub i64 %47, 1, !dbg !3636
  %and199 = and i64 %sub198, 33554432, !dbg !3636
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3636
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3636

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3636

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub203 = sub i64 %48, 1, !dbg !3636
  %and204 = and i64 %sub203, 16777216, !dbg !3636
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3636
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3636

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3636

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub208 = sub i64 %49, 1, !dbg !3636
  %and209 = and i64 %sub208, 8388608, !dbg !3636
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3636
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3636

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3636

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub213 = sub i64 %50, 1, !dbg !3636
  %and214 = and i64 %sub213, 4194304, !dbg !3636
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3636
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3636

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3636

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub218 = sub i64 %51, 1, !dbg !3636
  %and219 = and i64 %sub218, 2097152, !dbg !3636
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3636
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3636

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3636

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub223 = sub i64 %52, 1, !dbg !3636
  %and224 = and i64 %sub223, 1048576, !dbg !3636
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3636
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3636

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3636

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub228 = sub i64 %53, 1, !dbg !3636
  %and229 = and i64 %sub228, 524288, !dbg !3636
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3636
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3636

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3636

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub233 = sub i64 %54, 1, !dbg !3636
  %and234 = and i64 %sub233, 262144, !dbg !3636
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3636
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3636

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3636

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub238 = sub i64 %55, 1, !dbg !3636
  %and239 = and i64 %sub238, 131072, !dbg !3636
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3636
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3636

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3636

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub243 = sub i64 %56, 1, !dbg !3636
  %and244 = and i64 %sub243, 65536, !dbg !3636
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3636
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3636

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3636

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub248 = sub i64 %57, 1, !dbg !3636
  %and249 = and i64 %sub248, 32768, !dbg !3636
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3636
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3636

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3636

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub253 = sub i64 %58, 1, !dbg !3636
  %and254 = and i64 %sub253, 16384, !dbg !3636
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3636
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3636

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3636

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub258 = sub i64 %59, 1, !dbg !3636
  %and259 = and i64 %sub258, 8192, !dbg !3636
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3636
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3636

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3636

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub263 = sub i64 %60, 1, !dbg !3636
  %and264 = and i64 %sub263, 4096, !dbg !3636
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3636
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3636

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3636

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub268 = sub i64 %61, 1, !dbg !3636
  %and269 = and i64 %sub268, 2048, !dbg !3636
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3636
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3636

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3636

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub273 = sub i64 %62, 1, !dbg !3636
  %and274 = and i64 %sub273, 1024, !dbg !3636
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3636
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3636

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3636

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub278 = sub i64 %63, 1, !dbg !3636
  %and279 = and i64 %sub278, 512, !dbg !3636
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3636
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3636

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3636

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub283 = sub i64 %64, 1, !dbg !3636
  %and284 = and i64 %sub283, 256, !dbg !3636
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3636
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3636

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3636

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub288 = sub i64 %65, 1, !dbg !3636
  %and289 = and i64 %sub288, 128, !dbg !3636
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3636
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3636

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3636

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub293 = sub i64 %66, 1, !dbg !3636
  %and294 = and i64 %sub293, 64, !dbg !3636
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3636
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3636

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3636

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub298 = sub i64 %67, 1, !dbg !3636
  %and299 = and i64 %sub298, 32, !dbg !3636
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3636
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3636

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3636

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub303 = sub i64 %68, 1, !dbg !3636
  %and304 = and i64 %sub303, 16, !dbg !3636
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3636
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3636

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3636

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub308 = sub i64 %69, 1, !dbg !3636
  %and309 = and i64 %sub308, 8, !dbg !3636
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3636
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3636

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3636

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub313 = sub i64 %70, 1, !dbg !3636
  %and314 = and i64 %sub313, 4, !dbg !3636
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3636
  %71 = zext i1 %tobool315 to i64, !dbg !3636
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3636
  br label %cond.end, !dbg !3636

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3636
  br label %cond.end317, !dbg !3636

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3636
  br label %cond.end319, !dbg !3636

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3636
  br label %cond.end321, !dbg !3636

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3636
  br label %cond.end323, !dbg !3636

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3636
  br label %cond.end325, !dbg !3636

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3636
  br label %cond.end327, !dbg !3636

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3636
  br label %cond.end329, !dbg !3636

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3636
  br label %cond.end331, !dbg !3636

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3636
  br label %cond.end333, !dbg !3636

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3636
  br label %cond.end335, !dbg !3636

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3636
  br label %cond.end337, !dbg !3636

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3636
  br label %cond.end339, !dbg !3636

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3636
  br label %cond.end341, !dbg !3636

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3636
  br label %cond.end343, !dbg !3636

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3636
  br label %cond.end345, !dbg !3636

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3636
  br label %cond.end347, !dbg !3636

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3636
  br label %cond.end349, !dbg !3636

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3636
  br label %cond.end351, !dbg !3636

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3636
  br label %cond.end353, !dbg !3636

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3636
  br label %cond.end355, !dbg !3636

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3636
  br label %cond.end357, !dbg !3636

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3636
  br label %cond.end359, !dbg !3636

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3636
  br label %cond.end361, !dbg !3636

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3636
  br label %cond.end363, !dbg !3636

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3636
  br label %cond.end365, !dbg !3636

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3636
  br label %cond.end367, !dbg !3636

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3636
  br label %cond.end369, !dbg !3636

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3636
  br label %cond.end371, !dbg !3636

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3636
  br label %cond.end373, !dbg !3636

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3636
  br label %cond.end375, !dbg !3636

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3636
  br label %cond.end377, !dbg !3636

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3636
  br label %cond.end379, !dbg !3636

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3636
  br label %cond.end381, !dbg !3636

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3636
  br label %cond.end383, !dbg !3636

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3636
  br label %cond.end385, !dbg !3636

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3636
  br label %cond.end387, !dbg !3636

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3636
  br label %cond.end389, !dbg !3636

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3636
  br label %cond.end391, !dbg !3636

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3636
  br label %cond.end393, !dbg !3636

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3636
  br label %cond.end395, !dbg !3636

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3636
  br label %cond.end397, !dbg !3636

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3636
  br label %cond.end399, !dbg !3636

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3636
  br label %cond.end401, !dbg !3636

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3636
  br label %cond.end403, !dbg !3636

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3636
  br label %cond.end405, !dbg !3636

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3636
  br label %cond.end407, !dbg !3636

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3636
  br label %cond.end409, !dbg !3636

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3636
  br label %cond.end411, !dbg !3636

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3636
  br label %cond.end413, !dbg !3636

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3636
  br label %cond.end415, !dbg !3636

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3636
  br label %cond.end417, !dbg !3636

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3636
  br label %cond.end419, !dbg !3636

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3636
  br label %cond.end421, !dbg !3636

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3636
  br label %cond.end423, !dbg !3636

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3636
  br label %cond.end425, !dbg !3636

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3636
  br label %cond.end427, !dbg !3636

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3636
  br label %cond.end429, !dbg !3636

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3636
  br label %cond.end431, !dbg !3636

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3636
  br label %cond.end433, !dbg !3636

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3636
  br label %cond.end435, !dbg !3636

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3636
  br label %cond.end437, !dbg !3636

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3636
  br label %cond.end440, !dbg !3636

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3636

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3636
  br label %cond.end444, !dbg !3636

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3636
  %sub443 = sub i64 %72, 1, !dbg !3636
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3636
  br label %cond.end444, !dbg !3636

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3636
  %sub446 = sub i32 %cond445, 12, !dbg !3637
  %add = add i32 %sub446, 1, !dbg !3638
  store i32 %add, i32* %retval, align 4, !dbg !3639
  br label %return, !dbg !3639

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3640
  %dec = add i64 %73, -1, !dbg !3640
  store i64 %dec, i64* %size.addr, align 8, !dbg !3640
  %74 = load i64, i64* %size.addr, align 8, !dbg !3641
  %shr = lshr i64 %74, 12, !dbg !3641
  store i64 %shr, i64* %size.addr, align 8, !dbg !3641
  %75 = load i64, i64* %size.addr, align 8, !dbg !3642
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3619
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3643
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3644
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3643, !srcloc !3645
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3643
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3646
  %add.i = add i32 %79, 1, !dbg !3647
  store i32 %add.i, i32* %retval, align 4, !dbg !3648
  br label %return, !dbg !3648

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3649
  ret i32 %80, !dbg !3649
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3650 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3611, metadata !DIExpression()), !dbg !3654
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3618, metadata !DIExpression()), !dbg !3656
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3657, metadata !DIExpression()), !dbg !3658
  %0 = load i64, i64* %n.addr, align 8, !dbg !3659
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3656
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3660
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3661
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3660, !srcloc !3645
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3660
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3662
  %add.i = add i32 %4, 1, !dbg !3663
  %sub = sub i32 %add.i, 1, !dbg !3664
  ret i32 %sub, !dbg !3665
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3666 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3678
  ret i8* %0, !dbg !3679
}

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3680 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3681, metadata !DIExpression()), !dbg !3682
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3683
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !3685
  br i1 %call, label %if.end, label %if.then, !dbg !3686

if.then:                                          ; preds = %entry
  br label %return, !dbg !3687

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3688
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3689
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3689
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3690
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3691
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3691
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !3692
  br label %return, !dbg !3693

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3694 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3697, metadata !DIExpression()), !dbg !3698
  ret i1 true, !dbg !3699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3700 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3703, metadata !DIExpression()), !dbg !3704
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3705, metadata !DIExpression()), !dbg !3706
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3707
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3708
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3709
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3710
  br label %do.body, !dbg !3711

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3712

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3714

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3712

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3716
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3716
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3716
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3716
  br label %do.end5, !dbg !3716

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3712

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3718
}

; Function Attrs: noredzone
declare dso_local %struct.msi_desc* @alloc_msi_entry(%struct.device*, i32, %struct.irq_affinity_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3719 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3720, metadata !DIExpression()), !dbg !3721
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3722, metadata !DIExpression()), !dbg !3723
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3724
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3725
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3726
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3726
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3727
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !3728
  ret void, !dbg !3729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3730 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3735, metadata !DIExpression()), !dbg !3736
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3737, metadata !DIExpression()), !dbg !3738
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3739
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3741
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3742
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !3743
  br i1 %call, label %if.end, label %if.then, !dbg !3744

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3745

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3746
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3747
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3748
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3749
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3750
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3751
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3752
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3753
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3754
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3755
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3756
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3757
  br label %do.body, !dbg !3758

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3759

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3761

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3759

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3763
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3763
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3763
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3763
  br label %do.end7, !dbg !3763

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3759

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3766 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3769, metadata !DIExpression()), !dbg !3770
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  ret i1 true, !dbg !3775
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2479, !2480, !2481, !2482}
!llvm.ident = !{!2483}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "platform_msi_devid_ida", scope: !2, file: !3, line: 32, type: !2476, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !2475, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/platform-msi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !75, !83, !93, !105, !112}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !65, line: 36, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74}
!67 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3, isUnsigned: true)
!70 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5, isUnsigned: true)
!72 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 6, isUnsigned: true)
!73 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC_GET_PARENT", value: 7, isUnsigned: true)
!74 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET_GET_PARENT", value: 8, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !76, line: 1084, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!80 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!81 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!82 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 343, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_DOM_OPS", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_CHIP_OPS", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "MSI_FLAG_MULTI_PCI_MSI", value: 4, isUnsigned: true)
!89 = !DIEnumerator(name: "MSI_FLAG_PCI_MSIX", value: 8, isUnsigned: true)
!90 = !DIEnumerator(name: "MSI_FLAG_ACTIVATE_EARLY", value: 16, isUnsigned: true)
!91 = !DIEnumerator(name: "MSI_FLAG_MUST_REACTIVATE", value: 32, isUnsigned: true)
!92 = !DIEnumerator(name: "MSI_FLAG_LEVEL_CAPABLE", value: 64, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 571, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!95 = !DIEnumerator(name: "IRQCHIP_SET_TYPE_MASKED", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "IRQCHIP_EOI_IF_HANDLED", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQCHIP_MASK_ON_SUSPEND", value: 4, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQCHIP_ONOFFLINE_ENABLED", value: 8, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQCHIP_SKIP_SET_WAKE", value: 16, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQCHIP_ONESHOT_SAFE", value: 32, isUnsigned: true)
!101 = !DIEnumerator(name: "IRQCHIP_EOI_THREADED", value: 64, isUnsigned: true)
!102 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_LEVEL_MSI", value: 128, isUnsigned: true)
!103 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_NMI", value: 256, isUnsigned: true)
!104 = !DIEnumerator(name: "IRQCHIP_ENABLE_WAKEUP_ON_SUSPEND", value: 512, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !106, line: 305, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 10, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!117 = !{!118, !119, !1493, !244, !229, !2471, !2474}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !84, line: 85, size: 768, elements: !121)
!121 = !{!122, !129, !130, !131, !2382, !2383, !2386, !2390, !2391}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !120, file: !84, line: 87, baseType: !123, size: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 178, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 179, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !124, line: 179, baseType: !127, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !120, file: !84, line: 88, baseType: !7, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !120, file: !84, line: 89, baseType: !7, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !120, file: !84, line: 90, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !134)
!134 = !{!135, !1621, !1622, !1625, !1626, !1677, !1774, !1775, !1776, !1777, !1778, !1787, !1892, !1905, !2307, !2308, !2312, !2314, !2315, !2316, !2320, !2326, !2327, !2330, !2331, !2332, !2335, !2336, !2337, !2338, !2370, !2371, !2372, !2375, !2378, !2379, !2380, !2381}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !30, line: 462, baseType: !136, size: 512)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !137, line: 64, size: 512, elements: !138)
!137 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !143, !144, !146, !207, !1457, !1611, !1616, !1617, !1618, !1619, !1620}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 65, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !136, file: !137, line: 66, baseType: !123, size: 128, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 67, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !136, file: !137, line: 68, baseType: !147, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !137, line: 192, size: 704, elements: !149)
!149 = !{!150, !151, !167, !168}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !137, line: 193, baseType: !123, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !148, file: !137, line: 194, baseType: !152, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !153, line: 83, baseType: !154)
!153 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !153, line: 71, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 72, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 72, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !157, file: !153, line: 73, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !153, line: 20, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !160, file: !153, line: 21, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !164, line: 25, baseType: !165)
!164 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 25, elements: !166)
!166 = !{}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !148, file: !137, line: 195, baseType: !136, size: 512, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !148, file: !137, line: 196, baseType: !169, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !137, line: 156, size: 192, elements: !172)
!172 = !{!173, !179, !184}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !171, file: !137, line: 157, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !147, !145}
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !137, line: 158, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!140, !147, !145}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !171, file: !137, line: 159, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!178, !147, !145, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !137, line: 148, size: 20736, elements: !191)
!191 = !{!192, !197, !201, !202, !206}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !190, file: !137, line: 149, baseType: !193, size: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 192, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!195 = !{!196}
!196 = !DISubrange(count: 3)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !190, file: !137, line: 150, baseType: !198, size: 4096, offset: 192)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 4096, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !190, file: !137, line: 151, baseType: !178, size: 32, offset: 4288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !190, file: !137, line: 152, baseType: !203, size: 16384, offset: 4320)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16384, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 2048)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !190, file: !137, line: 153, baseType: !178, size: 32, offset: 20704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !136, file: !137, line: 69, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !137, line: 138, size: 448, elements: !210)
!210 = !{!211, !215, !245, !247, !1405, !1436, !1440}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !209, file: !137, line: 139, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !145}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !209, file: !137, line: 140, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !219, line: 230, size: 128, elements: !220)
!219 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!220 = !{!221, !237}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !218, file: !219, line: 231, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !145, !230, !194}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 60, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !227, line: 73, baseType: !228)
!227 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !227, line: 15, baseType: !229)
!229 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !219, line: 30, size: 128, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !219, line: 31, baseType: !140, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !231, file: !219, line: 32, baseType: !235, size: 16, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 19, baseType: !236)
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !218, file: !219, line: 232, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!225, !145, !230, !140, !241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 55, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !227, line: 72, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !227, line: 16, baseType: !244)
!244 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !209, file: !137, line: 141, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !209, file: !137, line: 142, baseType: !248, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !219, line: 84, size: 320, elements: !252)
!252 = !{!253, !254, !258, !1402, !1403}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !219, line: 85, baseType: !140, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !251, file: !219, line: 86, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!235, !145, !230, !178}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !251, file: !219, line: 88, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!235, !145, !262, !178}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !219, line: 168, size: 448, elements: !264)
!264 = !{!265, !266, !267, !268, !278, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !263, file: !219, line: 169, baseType: !231, size: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !263, file: !219, line: 170, baseType: !241, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !263, file: !219, line: 171, baseType: !118, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !263, file: !219, line: 172, baseType: !269, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!225, !272, !145, !262, !194, !275, !241}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !274, line: 526, flags: DIFlagFwdDecl)
!274 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 46, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !227, line: 88, baseType: !277)
!277 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !263, file: !219, line: 174, baseType: !269, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !263, file: !219, line: 176, baseType: !280, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!178, !272, !145, !262, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !285, line: 305, size: 1472, elements: !286)
!285 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !288, !289, !290, !291, !299, !300, !1376, !1382, !1383, !1388, !1389, !1392, !1396, !1397, !1398, !1399, !1400}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !284, file: !285, line: 308, baseType: !244, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !284, file: !285, line: 309, baseType: !244, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !284, file: !285, line: 313, baseType: !283, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !284, file: !285, line: 313, baseType: !283, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !284, file: !285, line: 315, baseType: !292, size: 192, align: 64, offset: 256)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !293, line: 24, size: 192, align: 64, elements: !294)
!293 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !296, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !292, file: !293, line: 25, baseType: !244, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !292, file: !293, line: 26, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !292, file: !293, line: 27, baseType: !297, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !284, file: !285, line: 323, baseType: !244, size: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !284, file: !285, line: 327, baseType: !301, size: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !285, line: 388, size: 7296, elements: !303)
!303 = !{!304, !1372}
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !285, line: 389, baseType: !305, size: 7296)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !302, file: !285, line: 389, size: 7296, elements: !306)
!306 = !{!307, !308, !312, !318, !322, !323, !324, !325, !326, !334, !339, !340, !341, !342, !351, !352, !353, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !388, !396, !399, !431, !432, !1342, !1343, !1346, !1350, !1351, !1354, !1355, !1356, !1359, !1371}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !305, file: !285, line: 390, baseType: !283, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !305, file: !285, line: 391, baseType: !309, size: 64, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !293, line: 31, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !309, file: !293, line: 32, baseType: !297, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !305, file: !285, line: 392, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !314, line: 23, baseType: !315)
!314 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !316, line: 31, baseType: !317)
!316 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !305, file: !285, line: 394, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!244, !272, !244, !244, !244, !244}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !305, file: !285, line: 398, baseType: !244, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !305, file: !285, line: 399, baseType: !244, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !305, file: !285, line: 405, baseType: !244, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !305, file: !285, line: 406, baseType: !244, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !305, file: !285, line: 407, baseType: !327, size: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !274, line: 286, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 286, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !329, file: !274, line: 286, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !333, line: 18, baseType: !244)
!333 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !305, file: !285, line: 416, baseType: !335, size: 32, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 168, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 166, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !336, file: !124, line: 167, baseType: !178, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !305, file: !285, line: 428, baseType: !335, size: 32, offset: 608)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !305, file: !285, line: 437, baseType: !335, size: 32, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !305, file: !285, line: 447, baseType: !335, size: 32, offset: 672)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !305, file: !285, line: 450, baseType: !343, size: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !344, line: 13, baseType: !345)
!344 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 175, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 173, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !346, file: !124, line: 174, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !314, line: 22, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !316, line: 30, baseType: !277)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !305, file: !285, line: 452, baseType: !178, size: 32, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !305, file: !285, line: 454, baseType: !152, offset: 800)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !305, file: !285, line: 457, baseType: !354, size: 256, offset: 832)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !355, line: 35, size: 256, elements: !356)
!355 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !358, !359, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !355, line: 36, baseType: !343, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 42, baseType: !343, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 46, baseType: !360, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !153, line: 29, baseType: !160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 47, baseType: !123, size: 128, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !305, file: !285, line: 459, baseType: !123, size: 128, offset: 1088)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !305, file: !285, line: 466, baseType: !244, size: 64, offset: 1216)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !305, file: !285, line: 467, baseType: !244, size: 64, offset: 1280)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !305, file: !285, line: 469, baseType: !244, size: 64, offset: 1344)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !305, file: !285, line: 470, baseType: !244, size: 64, offset: 1408)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !305, file: !285, line: 471, baseType: !345, size: 64, offset: 1472)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !305, file: !285, line: 472, baseType: !244, size: 64, offset: 1536)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !305, file: !285, line: 473, baseType: !244, size: 64, offset: 1600)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !305, file: !285, line: 474, baseType: !244, size: 64, offset: 1664)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !305, file: !285, line: 475, baseType: !244, size: 64, offset: 1728)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !305, file: !285, line: 477, baseType: !152, offset: 1792)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !305, file: !285, line: 478, baseType: !244, size: 64, offset: 1792)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !305, file: !285, line: 478, baseType: !244, size: 64, offset: 1856)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !305, file: !285, line: 478, baseType: !244, size: 64, offset: 1920)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !305, file: !285, line: 478, baseType: !244, size: 64, offset: 1984)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !305, file: !285, line: 479, baseType: !244, size: 64, offset: 2048)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !305, file: !285, line: 479, baseType: !244, size: 64, offset: 2112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !305, file: !285, line: 479, baseType: !244, size: 64, offset: 2176)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !305, file: !285, line: 480, baseType: !244, size: 64, offset: 2240)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !305, file: !285, line: 480, baseType: !244, size: 64, offset: 2304)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !305, file: !285, line: 480, baseType: !244, size: 64, offset: 2368)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !305, file: !285, line: 480, baseType: !244, size: 64, offset: 2432)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !305, file: !285, line: 482, baseType: !385, size: 2816, offset: 2496)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 2816, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 44)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !305, file: !285, line: 488, baseType: !389, size: 256, offset: 5312)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !390, line: 60, size: 256, elements: !391)
!390 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !389, file: !390, line: 61, baseType: !393, size: 256)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 4)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !305, file: !285, line: 490, baseType: !397, size: 64, offset: 5568)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !285, line: 490, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !305, file: !285, line: 493, baseType: !400, size: 896, offset: 5632)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !401, line: 53, baseType: !402)
!401 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 13, size: 896, elements: !403)
!403 = !{!404, !405, !406, !407, !410, !411, !418, !419, !423, !424, !427}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !402, file: !401, line: 18, baseType: !313, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !402, file: !401, line: 28, baseType: !345, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !402, file: !401, line: 31, baseType: !354, size: 256, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !402, file: !401, line: 32, baseType: !408, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !401, line: 32, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !402, file: !401, line: 37, baseType: !236, size: 16, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !402, file: !401, line: 40, baseType: !412, size: 192, offset: 512)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !413, line: 53, size: 192, elements: !414)
!413 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !416, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !412, file: !413, line: 54, baseType: !343, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !412, file: !413, line: 55, baseType: !152, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !412, file: !413, line: 59, baseType: !123, size: 128, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !402, file: !401, line: 41, baseType: !118, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !402, file: !401, line: 42, baseType: !420, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !401, line: 42, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !402, file: !401, line: 44, baseType: !335, size: 32, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !402, file: !401, line: 50, baseType: !425, size: 16, offset: 864)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !314, line: 19, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !316, line: 24, baseType: !236)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !402, file: !401, line: 51, baseType: !428, size: 16, offset: 880)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !314, line: 18, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !316, line: 23, baseType: !430)
!430 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !285, line: 495, baseType: !244, size: 64, offset: 6528)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !305, file: !285, line: 497, baseType: !433, size: 64, offset: 6592)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !285, line: 381, size: 384, elements: !435)
!435 = !{!436, !437, !1341}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !434, file: !285, line: 382, baseType: !335, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !434, file: !285, line: 383, baseType: !438, size: 128, offset: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !285, line: 376, size: 128, elements: !439)
!439 = !{!440, !1339}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !438, file: !285, line: 377, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !443, line: 640, size: 48640, elements: !444)
!443 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!444 = !{!445, !453, !455, !456, !462, !463, !464, !465, !466, !467, !468, !469, !473, !491, !502, !597, !598, !599, !610, !611, !613, !614, !615, !616, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !695, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !751, !753, !754, !755, !767, !769, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !797, !802, !806, !807, !808, !811, !815, !818, !821, !824, !827, !830, !833, !836, !842, !843, !844, !850, !851, !852, !853, !854, !863, !864, !865, !866, !867, !872, !873, !874, !877, !878, !881, !884, !887, !890, !893, !896, !897, !977, !980, !983, !984, !987, !988, !989, !995, !996, !997, !1010, !1011, !1012, !1024, !1029, !1032, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !442, file: !443, line: 646, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !447, line: 56, size: 128, elements: !448)
!447 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !447, line: 57, baseType: !244, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !446, file: !447, line: 58, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !314, line: 21, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !316, line: 27, baseType: !7)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !442, file: !443, line: 649, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !229)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !442, file: !443, line: 657, baseType: !118, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !442, file: !443, line: 658, baseType: !457, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !458, line: 113, baseType: !459)
!458 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !458, line: 111, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !459, file: !458, line: 112, baseType: !335, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 660, baseType: !7, size: 32, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !442, file: !443, line: 661, baseType: !7, size: 32, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !442, file: !443, line: 684, baseType: !178, size: 32, offset: 352)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !442, file: !443, line: 686, baseType: !178, size: 32, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !442, file: !443, line: 687, baseType: !178, size: 32, offset: 416)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !442, file: !443, line: 688, baseType: !178, size: 32, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !442, file: !443, line: 689, baseType: !7, size: 32, offset: 480)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !442, file: !443, line: 691, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !443, line: 691, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !442, file: !443, line: 692, baseType: !474, size: 832, offset: 576)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !443, line: 451, size: 832, elements: !475)
!475 = !{!476, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !474, file: !443, line: 453, baseType: !477, size: 128)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !443, line: 325, size: 128, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !477, file: !443, line: 326, baseType: !244, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !477, file: !443, line: 327, baseType: !451, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !474, file: !443, line: 454, baseType: !292, size: 192, align: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !474, file: !443, line: 455, baseType: !123, size: 128, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !474, file: !443, line: 456, baseType: !7, size: 32, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !474, file: !443, line: 458, baseType: !313, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !474, file: !443, line: 459, baseType: !313, size: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !474, file: !443, line: 460, baseType: !313, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !474, file: !443, line: 461, baseType: !313, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !474, file: !443, line: 463, baseType: !313, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !474, file: !443, line: 465, baseType: !490, offset: 832)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !443, line: 415, elements: !166)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !442, file: !443, line: 693, baseType: !492, size: 384, offset: 1408)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !443, line: 489, size: 384, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !492, file: !443, line: 490, baseType: !123, size: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !492, file: !443, line: 491, baseType: !244, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !492, file: !443, line: 492, baseType: !244, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !492, file: !443, line: 493, baseType: !7, size: 32, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !492, file: !443, line: 494, baseType: !236, size: 16, offset: 288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !492, file: !443, line: 495, baseType: !236, size: 16, offset: 304)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !492, file: !443, line: 497, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !442, file: !443, line: 697, baseType: !503, size: 1792, offset: 1792)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !443, line: 507, size: 1792, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !594, !595}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !503, file: !443, line: 508, baseType: !292, size: 192, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !503, file: !443, line: 515, baseType: !313, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !503, file: !443, line: 516, baseType: !313, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !503, file: !443, line: 517, baseType: !313, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !503, file: !443, line: 518, baseType: !313, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !503, file: !443, line: 519, baseType: !313, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !503, file: !443, line: 526, baseType: !349, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !503, file: !443, line: 527, baseType: !313, size: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !443, line: 528, baseType: !7, size: 32, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !503, file: !443, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !503, file: !443, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !503, file: !443, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !503, file: !443, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !503, file: !443, line: 563, baseType: !519, size: 512, offset: 704)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !520)
!520 = !{!521, !529, !530, !535, !587, !591, !592, !593}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !6, line: 119, baseType: !522, size: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !523, line: 9, size: 256, elements: !524)
!523 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !523, line: 10, baseType: !292, size: 192, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !522, file: !523, line: 11, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !528, line: 29, baseType: !349)
!528 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !519, file: !6, line: 120, baseType: !527, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !519, file: !6, line: 121, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!5, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !519, file: !6, line: 122, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !538)
!538 = !{!539, !559, !560, !563, !573, !574, !582, !586}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !537, file: !6, line: 160, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !6, line: 215, baseType: !360)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !541, file: !6, line: 216, baseType: !7, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !541, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !541, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !541, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !541, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !541, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !541, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !541, file: !6, line: 233, baseType: !527, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !541, file: !6, line: 234, baseType: !534, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !541, file: !6, line: 235, baseType: !527, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !541, file: !6, line: 236, baseType: !534, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !541, file: !6, line: 237, baseType: !556, size: 4096, offset: 512)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 4096, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 8)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !537, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !537, file: !6, line: 162, baseType: !561, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 27, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !227, line: 96, baseType: !178)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !537, file: !6, line: 163, baseType: !564, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !565, line: 276, baseType: !566)
!565 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !565, line: 276, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !566, file: !565, line: 276, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !565, line: 70, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !565, line: 65, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !570, file: !565, line: 66, baseType: !7, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !537, file: !6, line: 164, baseType: !534, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !537, file: !6, line: 165, baseType: !575, size: 128, offset: 256)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !523, line: 14, size: 128, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !575, file: !523, line: 15, baseType: !578, size: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !293, line: 125, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !578, file: !293, line: 126, baseType: !309, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !578, file: !293, line: 127, baseType: !297, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !537, file: !6, line: 166, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!527}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !537, file: !6, line: 167, baseType: !527, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !519, file: !6, line: 123, baseType: !588, size: 8, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !314, line: 17, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !316, line: 21, baseType: !590)
!590 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !519, file: !6, line: 124, baseType: !588, size: 8, offset: 456)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !519, file: !6, line: 125, baseType: !588, size: 8, offset: 464)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !519, file: !6, line: 126, baseType: !588, size: 8, offset: 472)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !503, file: !443, line: 572, baseType: !519, size: 512, offset: 1216)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !503, file: !443, line: 580, baseType: !596, size: 64, offset: 1728)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !442, file: !443, line: 721, baseType: !7, size: 32, offset: 3584)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !442, file: !443, line: 722, baseType: !178, size: 32, offset: 3616)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !442, file: !443, line: 723, baseType: !600, size: 64, offset: 3648)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !603, line: 17, baseType: !604)
!603 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !603, line: 17, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !604, file: !603, line: 17, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 64, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 1)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !442, file: !443, line: 724, baseType: !602, size: 64, offset: 3712)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !442, file: !443, line: 749, baseType: !612, offset: 3776)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !443, line: 290, elements: !166)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !442, file: !443, line: 751, baseType: !123, size: 128, offset: 3776)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !442, file: !443, line: 757, baseType: !301, size: 64, offset: 3904)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !442, file: !443, line: 758, baseType: !301, size: 64, offset: 3968)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !442, file: !443, line: 761, baseType: !617, size: 320, offset: 4032)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !390, line: 34, size: 320, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !617, file: !390, line: 35, baseType: !313, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !617, file: !390, line: 36, baseType: !621, size: 256, offset: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !394)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !442, file: !443, line: 766, baseType: !178, size: 32, offset: 4352)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !442, file: !443, line: 767, baseType: !178, size: 32, offset: 4384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !442, file: !443, line: 768, baseType: !178, size: 32, offset: 4416)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !442, file: !443, line: 770, baseType: !178, size: 32, offset: 4448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !442, file: !443, line: 772, baseType: !244, size: 64, offset: 4480)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !442, file: !443, line: 775, baseType: !7, size: 32, offset: 4544)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !442, file: !443, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !442, file: !443, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !442, file: !443, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !442, file: !443, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !442, file: !443, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !442, file: !443, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !442, file: !443, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !442, file: !443, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !442, file: !443, line: 831, baseType: !244, size: 64, offset: 4672)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !442, file: !443, line: 833, baseType: !638, size: 384, offset: 4736)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !639)
!639 = !{!640, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !638, file: !12, line: 26, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!229, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !12, line: 27, baseType: !646, size: 320, offset: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !12, line: 27, size: 320, elements: !647)
!647 = !{!648, !658, !685}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !646, file: !12, line: 36, baseType: !649, size: 320)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 29, size: 320, elements: !650)
!650 = !{!651, !653, !654, !655, !656, !657}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !649, file: !12, line: 30, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !649, file: !12, line: 31, baseType: !451, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !12, line: 32, baseType: !451, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !649, file: !12, line: 33, baseType: !451, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !649, file: !12, line: 34, baseType: !313, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !649, file: !12, line: 35, baseType: !652, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !646, file: !12, line: 46, baseType: !659, size: 192)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 38, size: 192, elements: !660)
!660 = !{!661, !662, !663, !684}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !659, file: !12, line: 39, baseType: !561, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !12, line: 41, baseType: !664, size: 64, offset: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !12, line: 41, size: 64, elements: !665)
!665 = !{!666, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !664, file: !12, line: 42, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !669, line: 7, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !668, file: !669, line: 8, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !227, line: 93, baseType: !277)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !668, file: !669, line: 9, baseType: !277, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !664, file: !12, line: 43, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !677, line: 7, size: 64, elements: !678)
!677 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !676, file: !677, line: 8, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !677, line: 5, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !314, line: 20, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !316, line: 26, baseType: !178)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !676, file: !677, line: 9, baseType: !681, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !659, file: !12, line: 45, baseType: !313, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !646, file: !12, line: 54, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !12, line: 48, size: 256, elements: !687)
!687 = !{!688, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !686, file: !12, line: 49, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !686, file: !12, line: 50, baseType: !178, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !686, file: !12, line: 51, baseType: !178, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !12, line: 52, baseType: !244, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !12, line: 53, baseType: !244, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !442, file: !443, line: 835, baseType: !696, size: 32, offset: 5120)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 22, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !227, line: 28, baseType: !178)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !442, file: !443, line: 836, baseType: !696, size: 32, offset: 5152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !442, file: !443, line: 840, baseType: !244, size: 64, offset: 5184)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !442, file: !443, line: 849, baseType: !441, size: 64, offset: 5248)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !442, file: !443, line: 852, baseType: !441, size: 64, offset: 5312)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !442, file: !443, line: 857, baseType: !123, size: 128, offset: 5376)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !442, file: !443, line: 858, baseType: !123, size: 128, offset: 5504)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !442, file: !443, line: 859, baseType: !441, size: 64, offset: 5632)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !442, file: !443, line: 867, baseType: !123, size: 128, offset: 5696)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !442, file: !443, line: 868, baseType: !123, size: 128, offset: 5824)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !442, file: !443, line: 871, baseType: !708, size: 64, offset: 5952)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !710, line: 59, size: 768, elements: !711)
!710 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !713, !714, !715, !726, !727, !734, !743}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !710, line: 61, baseType: !457, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !709, file: !710, line: 62, baseType: !7, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !710, line: 63, baseType: !152, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !709, file: !710, line: 65, baseType: !716, size: 256, offset: 64)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !394)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 182, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !717, file: !124, line: 183, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 186, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !124, line: 187, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !721, file: !124, line: 187, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !709, file: !710, line: 66, baseType: !717, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !709, file: !710, line: 68, baseType: !728, size: 128, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !729, line: 40, baseType: !730)
!729 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !729, line: 36, size: 128, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !729, line: 37, baseType: !152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !730, file: !729, line: 38, baseType: !123, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !710, line: 69, baseType: !735, size: 128, align: 64, offset: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 216, size: 128, align: 64, elements: !736)
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !124, line: 217, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !735, file: !124, line: 218, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !738}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !709, file: !710, line: 70, baseType: !744, size: 128, offset: 640)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 128, elements: !608)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !710, line: 54, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !745, file: !710, line: 55, baseType: !178, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !745, file: !710, line: 56, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !710, line: 56, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !442, file: !443, line: 872, baseType: !752, size: 512, offset: 6016)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 512, elements: !394)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !442, file: !443, line: 873, baseType: !123, size: 128, offset: 6528)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !442, file: !443, line: 874, baseType: !123, size: 128, offset: 6656)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !442, file: !443, line: 876, baseType: !756, size: 64, offset: 6784)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !758, line: 26, size: 192, elements: !759)
!758 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !757, file: !758, line: 27, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !757, file: !758, line: 28, baseType: !762, size: 128, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !763, line: 43, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !763, line: 44, baseType: !360)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !762, file: !763, line: 45, baseType: !123, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !442, file: !443, line: 879, baseType: !768, size: 64, offset: 6848)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !442, file: !443, line: 882, baseType: !768, size: 64, offset: 6912)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !442, file: !443, line: 884, baseType: !313, size: 64, offset: 6976)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !442, file: !443, line: 885, baseType: !313, size: 64, offset: 7040)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !442, file: !443, line: 890, baseType: !313, size: 64, offset: 7104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !442, file: !443, line: 891, baseType: !774, size: 128, offset: 7168)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !443, line: 242, size: 128, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !774, file: !443, line: 244, baseType: !313, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !774, file: !443, line: 245, baseType: !313, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !443, line: 246, baseType: !360, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !442, file: !443, line: 900, baseType: !244, size: 64, offset: 7296)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !442, file: !443, line: 901, baseType: !244, size: 64, offset: 7360)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !442, file: !443, line: 904, baseType: !313, size: 64, offset: 7424)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !442, file: !443, line: 907, baseType: !313, size: 64, offset: 7488)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !442, file: !443, line: 910, baseType: !244, size: 64, offset: 7552)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !442, file: !443, line: 911, baseType: !244, size: 64, offset: 7616)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !442, file: !443, line: 914, baseType: !786, size: 640, offset: 7680)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !787, line: 123, size: 640, elements: !788)
!787 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !795, !796}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !786, file: !787, line: 124, baseType: !790, size: 576)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 576, elements: !195)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !787, line: 108, size: 192, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !791, file: !787, line: 109, baseType: !313, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !791, file: !787, line: 110, baseType: !575, size: 128, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !786, file: !787, line: 125, baseType: !7, size: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !786, file: !787, line: 126, baseType: !7, size: 32, offset: 608)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !442, file: !443, line: 917, baseType: !798, size: 192, offset: 8320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !787, line: 134, size: 192, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !798, file: !787, line: 135, baseType: !735, size: 128, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !798, file: !787, line: 136, baseType: !7, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !442, file: !443, line: 923, baseType: !803, size: 64, offset: 8512)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !443, line: 923, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !442, file: !443, line: 926, baseType: !803, size: 64, offset: 8576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !442, file: !443, line: 929, baseType: !803, size: 64, offset: 8640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !442, file: !443, line: 933, baseType: !809, size: 64, offset: 8704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !443, line: 933, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !442, file: !443, line: 943, baseType: !812, size: 128, offset: 8768)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !442, file: !443, line: 945, baseType: !816, size: 64, offset: 8896)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !443, line: 49, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !442, file: !443, line: 956, baseType: !819, size: 64, offset: 8960)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !443, line: 45, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !442, file: !443, line: 959, baseType: !822, size: 64, offset: 9024)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !443, line: 959, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !442, file: !443, line: 962, baseType: !825, size: 64, offset: 9088)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !443, line: 66, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !442, file: !443, line: 966, baseType: !828, size: 64, offset: 9152)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !443, line: 50, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !442, file: !443, line: 969, baseType: !831, size: 64, offset: 9216)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !787, line: 223, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !442, file: !443, line: 970, baseType: !834, size: 64, offset: 9280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !443, line: 62, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !442, file: !443, line: 971, baseType: !837, size: 64, offset: 9344)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !838, line: 25, baseType: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !838, line: 23, size: 64, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !839, file: !838, line: 24, baseType: !607, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !442, file: !443, line: 972, baseType: !837, size: 64, offset: 9408)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !442, file: !443, line: 974, baseType: !837, size: 64, offset: 9472)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !442, file: !443, line: 975, baseType: !845, size: 192, offset: 9536)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !846, line: 30, size: 192, elements: !847)
!846 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !845, file: !846, line: 31, baseType: !123, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !845, file: !846, line: 32, baseType: !837, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !442, file: !443, line: 976, baseType: !244, size: 64, offset: 9728)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !442, file: !443, line: 977, baseType: !241, size: 64, offset: 9792)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !442, file: !443, line: 978, baseType: !7, size: 32, offset: 9856)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !442, file: !443, line: 980, baseType: !738, size: 64, offset: 9920)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !442, file: !443, line: 989, baseType: !855, size: 128, offset: 9984)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !856, line: 35, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !855, file: !856, line: 36, baseType: !178, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !855, file: !856, line: 37, baseType: !335, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !855, file: !856, line: 38, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !856, line: 23, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !442, file: !443, line: 992, baseType: !313, size: 64, offset: 10112)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !442, file: !443, line: 993, baseType: !313, size: 64, offset: 10176)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !442, file: !443, line: 996, baseType: !152, offset: 10240)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !442, file: !443, line: 999, baseType: !360, offset: 10240)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !442, file: !443, line: 1001, baseType: !868, size: 64, offset: 10240)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !443, line: 636, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !443, line: 637, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !442, file: !443, line: 1005, baseType: !578, size: 128, offset: 10304)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !442, file: !443, line: 1007, baseType: !441, size: 64, offset: 10432)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !442, file: !443, line: 1009, baseType: !875, size: 64, offset: 10496)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !443, line: 1009, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !442, file: !443, line: 1043, baseType: !118, size: 64, offset: 10560)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !442, file: !443, line: 1046, baseType: !879, size: 64, offset: 10624)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !443, line: 41, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !442, file: !443, line: 1050, baseType: !882, size: 64, offset: 10688)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !443, line: 42, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !442, file: !443, line: 1054, baseType: !885, size: 64, offset: 10752)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !443, line: 55, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !442, file: !443, line: 1056, baseType: !888, size: 64, offset: 10816)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !443, line: 40, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !442, file: !443, line: 1058, baseType: !891, size: 64, offset: 10880)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !443, line: 47, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !442, file: !443, line: 1061, baseType: !894, size: 64, offset: 10944)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !443, line: 43, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !442, file: !443, line: 1064, baseType: !244, size: 64, offset: 11008)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !442, file: !443, line: 1065, baseType: !898, size: 64, offset: 11072)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !846, line: 14, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !846, line: 12, size: 384, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !846, line: 13, baseType: !903, size: 384)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !846, line: 13, size: 384, elements: !904)
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !903, file: !846, line: 13, baseType: !178, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !903, file: !846, line: 13, baseType: !178, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !903, file: !846, line: 13, baseType: !178, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !903, file: !846, line: 13, baseType: !909, size: 256, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !910, line: 32, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !918, !931, !937, !946, !966, !971}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !909, file: !910, line: 37, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 34, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !913, file: !910, line: 35, baseType: !697, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !913, file: !910, line: 36, baseType: !917, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !227, line: 49, baseType: !7)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !909, file: !910, line: 45, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 40, size: 192, elements: !920)
!920 = !{!921, !923, !924, !930}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !919, file: !910, line: 41, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !227, line: 95, baseType: !178)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !919, file: !910, line: 42, baseType: !178, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !919, file: !910, line: 43, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !910, line: 11, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !910, line: 8, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !926, file: !910, line: 9, baseType: !178, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !926, file: !910, line: 10, baseType: !118, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !919, file: !910, line: 44, baseType: !178, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !909, file: !910, line: 52, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 48, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !932, file: !910, line: 49, baseType: !697, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !932, file: !910, line: 50, baseType: !917, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !932, file: !910, line: 51, baseType: !925, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !909, file: !910, line: 61, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 55, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !938, file: !910, line: 56, baseType: !697, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !938, file: !910, line: 57, baseType: !917, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !938, file: !910, line: 58, baseType: !178, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !938, file: !910, line: 59, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !227, line: 94, baseType: !228)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !938, file: !910, line: 60, baseType: !944, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !909, file: !910, line: 95, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 64, size: 256, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !947, file: !910, line: 65, baseType: !118, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !910, line: 77, baseType: !951, size: 192, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !910, line: 77, size: 192, elements: !952)
!952 = !{!953, !954, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !951, file: !910, line: 82, baseType: !430, size: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !951, file: !910, line: 88, baseType: !955, size: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 84, size: 192, elements: !956)
!956 = !{!957, !959, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !955, file: !910, line: 85, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !557)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !955, file: !910, line: 86, baseType: !118, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !955, file: !910, line: 87, baseType: !118, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !951, file: !910, line: 93, baseType: !962, size: 96)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !910, line: 90, size: 96, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !962, file: !910, line: 91, baseType: !958, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !962, file: !910, line: 92, baseType: !452, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !909, file: !910, line: 101, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 98, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !967, file: !910, line: 99, baseType: !229, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !967, file: !910, line: 100, baseType: !178, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !909, file: !910, line: 108, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 104, size: 128, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !972, file: !910, line: 105, baseType: !118, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !972, file: !910, line: 106, baseType: !178, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !972, file: !910, line: 107, baseType: !7, size: 32, offset: 96)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !442, file: !443, line: 1067, baseType: !978, offset: 11136)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !979, line: 12, elements: !166)
!979 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!980 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !442, file: !443, line: 1099, baseType: !981, size: 64, offset: 11136)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !443, line: 56, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !442, file: !443, line: 1103, baseType: !123, size: 128, offset: 11200)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !442, file: !443, line: 1104, baseType: !985, size: 64, offset: 11328)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !443, line: 46, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !442, file: !443, line: 1105, baseType: !412, size: 192, offset: 11392)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !442, file: !443, line: 1106, baseType: !7, size: 32, offset: 11584)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !442, file: !443, line: 1109, baseType: !990, size: 128, offset: 11648)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 128, elements: !993)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !443, line: 51, flags: DIFlagFwdDecl)
!993 = !{!994}
!994 = !DISubrange(count: 2)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !442, file: !443, line: 1110, baseType: !412, size: 192, offset: 11776)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !442, file: !443, line: 1111, baseType: !123, size: 128, offset: 11968)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !442, file: !443, line: 1173, baseType: !998, size: 64, offset: 12096)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1000, line: 62, size: 256, align: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1003, !1004, !1009}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !999, file: !1000, line: 75, baseType: !452, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !999, file: !1000, line: 90, baseType: !452, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !999, file: !1000, line: 124, baseType: !1005, size: 64, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !1000, line: 109, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1005, file: !1000, line: 110, baseType: !315, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1005, file: !1000, line: 112, baseType: !315, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 144, baseType: !452, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !442, file: !443, line: 1174, baseType: !451, size: 32, offset: 12160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !442, file: !443, line: 1179, baseType: !244, size: 64, offset: 12224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !442, file: !443, line: 1182, baseType: !1013, size: 128, offset: 12288)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !390, line: 76, size: 128, elements: !1014)
!1014 = !{!1015, !1020, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1013, file: !390, line: 85, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1017, line: 7, size: 64, elements: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1016, file: !1017, line: 12, baseType: !604, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1013, file: !390, line: 88, baseType: !1021, size: 8, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 30, baseType: !1022)
!1022 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1013, file: !390, line: 95, baseType: !1021, size: 8, offset: 72)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 1184, baseType: !1025, size: 128, offset: 12416)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 1184, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1025, file: !443, line: 1185, baseType: !457, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1025, file: !443, line: 1186, baseType: !735, size: 128, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !442, file: !443, line: 1190, baseType: !1030, size: 64, offset: 12544)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !443, line: 53, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !442, file: !443, line: 1192, baseType: !1033, size: 128, offset: 12608)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !390, line: 64, size: 128, elements: !1034)
!1034 = !{!1035, !1128, !1129}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1033, file: !390, line: 65, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !285, line: 68, size: 512, align: 128, elements: !1038)
!1038 = !{!1039, !1040, !1120, !1127}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !285, line: 69, baseType: !244, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !285, line: 77, baseType: !1041, size: 320, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !285, line: 77, size: 320, elements: !1042)
!1042 = !{!1043, !1052, !1057, !1085, !1093, !1099, !1112, !1119}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 78, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 78, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1050, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1044, file: !285, line: 84, baseType: !123, size: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1044, file: !285, line: 86, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !285, line: 26, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1044, file: !285, line: 87, baseType: !244, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1044, file: !285, line: 94, baseType: !244, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 96, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 96, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1053, file: !285, line: 101, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !124, line: 143, baseType: !313)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 103, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 103, size: 320, elements: !1059)
!1059 = !{!1060, !1070, !1073, !1074}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !285, line: 104, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !285, line: 104, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1061, file: !285, line: 105, baseType: !123, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !285, line: 106, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !285, line: 106, size: 128, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !285, line: 107, baseType: !1036, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1065, file: !285, line: 109, baseType: !178, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1065, file: !285, line: 110, baseType: !178, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1058, file: !285, line: 117, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !285, line: 117, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1058, file: !285, line: 119, baseType: !118, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !285, line: 120, baseType: !1075, size: 64, offset: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !285, line: 120, size: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1075, file: !285, line: 121, baseType: !118, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1075, file: !285, line: 122, baseType: !244, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !285, line: 123, baseType: !1080, size: 32)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1075, file: !285, line: 123, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1080, file: !285, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1080, file: !285, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1080, file: !285, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 130, baseType: !1086, size: 192)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 130, size: 192, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1086, file: !285, line: 131, baseType: !244, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1086, file: !285, line: 134, baseType: !590, size: 8, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1086, file: !285, line: 135, baseType: !590, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1086, file: !285, line: 136, baseType: !335, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1086, file: !285, line: 137, baseType: !7, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 139, baseType: !1094, size: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 139, size: 256, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1094, file: !285, line: 140, baseType: !244, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1094, file: !285, line: 141, baseType: !335, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1094, file: !285, line: 143, baseType: !123, size: 128, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 145, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 145, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1105, !1106, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1100, file: !285, line: 146, baseType: !244, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1100, file: !285, line: 147, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !274, line: 509, baseType: !1036)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1100, file: !285, line: 148, baseType: !244, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !285, line: 149, baseType: !1107, size: 64, offset: 192)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !285, line: 149, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1107, file: !285, line: 150, baseType: !301, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1107, file: !285, line: 151, baseType: !335, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1100, file: !285, line: 156, baseType: !152, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !285, line: 159, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !285, line: 159, size: 128, elements: !1114)
!1114 = !{!1115, !1118}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1113, file: !285, line: 161, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !285, line: 161, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1113, file: !285, line: 162, baseType: !118, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1041, file: !285, line: 176, baseType: !735, size: 128, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !285, line: 179, baseType: !1121, size: 32, offset: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !285, line: 179, size: 32, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1121, file: !285, line: 184, baseType: !335, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1121, file: !285, line: 192, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1121, file: !285, line: 194, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1121, file: !285, line: 195, baseType: !178, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1037, file: !285, line: 199, baseType: !335, size: 32, offset: 416)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1033, file: !390, line: 67, baseType: !452, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !390, line: 68, baseType: !452, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !442, file: !443, line: 1206, baseType: !178, size: 32, offset: 12736)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !442, file: !443, line: 1207, baseType: !178, size: 32, offset: 12768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !442, file: !443, line: 1209, baseType: !244, size: 64, offset: 12800)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !442, file: !443, line: 1219, baseType: !313, size: 64, offset: 12864)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !442, file: !443, line: 1220, baseType: !313, size: 64, offset: 12928)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !442, file: !443, line: 1317, baseType: !178, size: 32, offset: 12992)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !442, file: !443, line: 1319, baseType: !441, size: 64, offset: 13056)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !442, file: !443, line: 1322, baseType: !1138, size: 64, offset: 13120)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1140, line: 56, size: 512, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1148, !1149, !1151}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1139, file: !1140, line: 57, baseType: !1138, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1139, file: !1140, line: 58, baseType: !118, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1139, file: !1140, line: 59, baseType: !244, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 60, baseType: !244, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1139, file: !1140, line: 61, baseType: !1147, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1139, file: !1140, line: 62, baseType: !7, size: 32, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1139, file: !1140, line: 63, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !124, line: 153, baseType: !313)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1139, file: !1140, line: 64, baseType: !1152, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !442, file: !443, line: 1326, baseType: !457, size: 32, offset: 13184)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !442, file: !443, line: 1342, baseType: !118, size: 64, offset: 13248)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !442, file: !443, line: 1343, baseType: !315, size: 64, offset: 13312)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !442, file: !443, line: 1344, baseType: !313, size: 64, offset: 13376)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !442, file: !443, line: 1345, baseType: !315, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !442, file: !443, line: 1346, baseType: !315, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !442, file: !443, line: 1347, baseType: !315, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !442, file: !443, line: 1348, baseType: !735, size: 128, align: 64, offset: 13504)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !442, file: !443, line: 1358, baseType: !1163, size: 34816, offset: 13824)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1164, line: 485, size: 34816, elements: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1195, !1196, !1197, !1198, !1199, !1200, !1203, !1204, !1205}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1163, file: !1164, line: 487, baseType: !1167, size: 192)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 192, elements: !195)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1169, line: 16, size: 64, elements: !1170)
!1169 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1168, file: !1169, line: 17, baseType: !425, size: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1168, file: !1169, line: 18, baseType: !425, size: 16, offset: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1168, file: !1169, line: 19, baseType: !425, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1168, file: !1169, line: 19, baseType: !425, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1168, file: !1169, line: 19, baseType: !425, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1168, file: !1169, line: 19, baseType: !425, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1168, file: !1169, line: 19, baseType: !425, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1168, file: !1169, line: 20, baseType: !425, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1168, file: !1169, line: 20, baseType: !425, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1168, file: !1169, line: 20, baseType: !425, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1168, file: !1169, line: 20, baseType: !425, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1168, file: !1169, line: 20, baseType: !425, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1168, file: !1169, line: 20, baseType: !425, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1163, file: !1164, line: 491, baseType: !244, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1163, file: !1164, line: 495, baseType: !236, size: 16, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1163, file: !1164, line: 496, baseType: !236, size: 16, offset: 272)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1163, file: !1164, line: 497, baseType: !236, size: 16, offset: 288)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1163, file: !1164, line: 498, baseType: !236, size: 16, offset: 304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1163, file: !1164, line: 502, baseType: !244, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1163, file: !1164, line: 503, baseType: !244, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1163, file: !1164, line: 514, baseType: !1192, size: 256, offset: 448)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 256, elements: !394)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1164, line: 483, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1163, file: !1164, line: 516, baseType: !244, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1163, file: !1164, line: 518, baseType: !244, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1163, file: !1164, line: 520, baseType: !244, size: 64, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1163, file: !1164, line: 521, baseType: !244, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1163, file: !1164, line: 522, baseType: !244, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1163, file: !1164, line: 528, baseType: !1201, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1164, line: 10, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1163, file: !1164, line: 535, baseType: !244, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1163, file: !1164, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1163, file: !1164, line: 540, baseType: !1206, size: 33280, offset: 1536)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1207, line: 317, size: 33280, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1206, file: !1207, line: 330, baseType: !7, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1206, file: !1207, line: 337, baseType: !244, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1206, file: !1207, line: 348, baseType: !1212, size: 32768, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1207, line: 304, size: 32768, elements: !1213)
!1213 = !{!1214, !1229, !1268, !1318, !1335}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1212, file: !1207, line: 305, baseType: !1215, size: 896)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1207, line: 12, size: 896, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1228}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1215, file: !1207, line: 13, baseType: !451, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1215, file: !1207, line: 14, baseType: !451, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1215, file: !1207, line: 15, baseType: !451, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1215, file: !1207, line: 16, baseType: !451, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1215, file: !1207, line: 17, baseType: !451, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1215, file: !1207, line: 18, baseType: !451, size: 32, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1215, file: !1207, line: 19, baseType: !451, size: 32, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1215, file: !1207, line: 22, baseType: !1225, size: 640, offset: 224)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 640, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 20)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1215, file: !1207, line: 25, baseType: !451, size: 32, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1212, file: !1207, line: 306, baseType: !1230, size: 4096, align: 128)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1207, line: 34, size: 4096, align: 128, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1251, !1252, !1253, !1257, !1259, !1263}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1230, file: !1207, line: 35, baseType: !425, size: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1230, file: !1207, line: 36, baseType: !425, size: 16, offset: 16)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1230, file: !1207, line: 37, baseType: !425, size: 16, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1230, file: !1207, line: 38, baseType: !425, size: 16, offset: 48)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1207, line: 39, baseType: !1237, size: 128, offset: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1207, line: 39, size: 128, elements: !1238)
!1238 = !{!1239, !1244}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1207, line: 40, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !1207, line: 40, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1240, file: !1207, line: 41, baseType: !313, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1240, file: !1207, line: 42, baseType: !313, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1207, line: 44, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !1207, line: 44, size: 128, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1245, file: !1207, line: 45, baseType: !451, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1245, file: !1207, line: 46, baseType: !451, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1245, file: !1207, line: 47, baseType: !451, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1245, file: !1207, line: 48, baseType: !451, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1230, file: !1207, line: 51, baseType: !451, size: 32, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1230, file: !1207, line: 52, baseType: !451, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1230, file: !1207, line: 55, baseType: !1254, size: 1024, offset: 256)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 1024, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1230, file: !1207, line: 58, baseType: !1258, size: 2048, offset: 1280)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 2048, elements: !199)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1230, file: !1207, line: 60, baseType: !1260, size: 384, offset: 3328)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 12)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1207, line: 62, baseType: !1264, size: 384, offset: 3712)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1207, line: 62, size: 384, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1264, file: !1207, line: 63, baseType: !1260, size: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1264, file: !1207, line: 64, baseType: !1260, size: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1212, file: !1207, line: 307, baseType: !1269, size: 1088)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1207, line: 79, size: 1088, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1317}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1269, file: !1207, line: 80, baseType: !451, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1269, file: !1207, line: 81, baseType: !451, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1269, file: !1207, line: 82, baseType: !451, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1269, file: !1207, line: 83, baseType: !451, size: 32, offset: 96)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1269, file: !1207, line: 84, baseType: !451, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1269, file: !1207, line: 85, baseType: !451, size: 32, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1269, file: !1207, line: 86, baseType: !451, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1269, file: !1207, line: 88, baseType: !1225, size: 640, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1269, file: !1207, line: 89, baseType: !588, size: 8, offset: 864)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1269, file: !1207, line: 90, baseType: !588, size: 8, offset: 872)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1269, file: !1207, line: 91, baseType: !588, size: 8, offset: 880)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1269, file: !1207, line: 92, baseType: !588, size: 8, offset: 888)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1269, file: !1207, line: 93, baseType: !588, size: 8, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1269, file: !1207, line: 94, baseType: !588, size: 8, offset: 904)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1269, file: !1207, line: 95, baseType: !1286, size: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1288, line: 11, size: 128, elements: !1289)
!1288 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1287, file: !1288, line: 12, baseType: !229, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1287, file: !1288, line: 13, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1294, line: 56, size: 1344, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1293, file: !1294, line: 61, baseType: !244, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1293, file: !1294, line: 62, baseType: !244, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1293, file: !1294, line: 63, baseType: !244, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1293, file: !1294, line: 64, baseType: !244, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1293, file: !1294, line: 65, baseType: !244, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1293, file: !1294, line: 66, baseType: !244, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1293, file: !1294, line: 68, baseType: !244, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1293, file: !1294, line: 69, baseType: !244, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1293, file: !1294, line: 70, baseType: !244, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1293, file: !1294, line: 71, baseType: !244, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1293, file: !1294, line: 72, baseType: !244, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1293, file: !1294, line: 73, baseType: !244, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1293, file: !1294, line: 74, baseType: !244, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1293, file: !1294, line: 75, baseType: !244, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1293, file: !1294, line: 76, baseType: !244, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1293, file: !1294, line: 81, baseType: !244, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1293, file: !1294, line: 83, baseType: !244, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1293, file: !1294, line: 84, baseType: !244, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1294, line: 85, baseType: !244, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1293, file: !1294, line: 86, baseType: !244, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1293, file: !1294, line: 87, baseType: !244, size: 64, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1269, file: !1207, line: 96, baseType: !451, size: 32, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1212, file: !1207, line: 308, baseType: !1319, size: 4608, align: 512)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1207, line: 289, size: 4608, align: 512, elements: !1320)
!1320 = !{!1321, !1322, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1319, file: !1207, line: 290, baseType: !1230, size: 4096, align: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1319, file: !1207, line: 291, baseType: !1323, size: 512, offset: 4096)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1207, line: 268, size: 512, elements: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1323, file: !1207, line: 269, baseType: !313, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1323, file: !1207, line: 270, baseType: !313, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1323, file: !1207, line: 271, baseType: !1328, size: 384, offset: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 384, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 6)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1319, file: !1207, line: 292, baseType: !1332, offset: 4608)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 0)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1212, file: !1207, line: 309, baseType: !1336, size: 32768)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 32768, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 4096)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !285, line: 378, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !434, file: !285, line: 384, baseType: !757, size: 192, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !305, file: !285, line: 500, baseType: !152, offset: 6656)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !305, file: !285, line: 501, baseType: !1344, size: 64, offset: 6656)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !285, line: 387, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !305, file: !285, line: 516, baseType: !1347, size: 64, offset: 6720)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1349, line: 18, flags: DIFlagFwdDecl)
!1349 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !305, file: !285, line: 519, baseType: !272, size: 64, offset: 6784)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !305, file: !285, line: 521, baseType: !1352, size: 64, offset: 6848)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !285, line: 521, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !305, file: !285, line: 545, baseType: !335, size: 32, offset: 6912)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !305, file: !285, line: 548, baseType: !1021, size: 8, offset: 6944)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !305, file: !285, line: 550, baseType: !1357, offset: 6952)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1358, line: 142, elements: !166)
!1358 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !305, file: !285, line: 554, baseType: !1360, size: 256, offset: 6976)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1361, line: 102, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1360, file: !1361, line: 103, baseType: !343, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1360, file: !1361, line: 104, baseType: !123, size: 128, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1360, file: !1361, line: 105, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1361, line: 21, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !305, file: !285, line: 557, baseType: !451, size: 32, offset: 7232)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !302, file: !285, line: 565, baseType: !1373, offset: 7296)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: -1)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !284, file: !285, line: 333, baseType: !1377, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !274, line: 284, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !274, line: 284, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1378, file: !274, line: 284, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !333, line: 19, baseType: !244)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !284, file: !285, line: 334, baseType: !244, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !284, file: !285, line: 343, baseType: !1384, size: 256, offset: 704)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !285, line: 340, size: 256, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1384, file: !285, line: 341, baseType: !292, size: 192, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1384, file: !285, line: 342, baseType: !244, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !284, file: !285, line: 351, baseType: !123, size: 128, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !284, file: !285, line: 353, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !285, line: 353, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !284, file: !285, line: 356, baseType: !1393, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !285, line: 356, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !284, file: !285, line: 359, baseType: !244, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !284, file: !285, line: 361, baseType: !272, size: 64, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !284, file: !285, line: 362, baseType: !118, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !284, file: !285, line: 365, baseType: !343, size: 64, offset: 1408)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !284, file: !285, line: 373, baseType: !1401, offset: 1472)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !285, line: 296, elements: !166)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !251, file: !219, line: 90, baseType: !246, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !251, file: !219, line: 91, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !209, file: !137, line: 143, baseType: !1406, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1409, !145}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1418, !1422, !1428, !1432}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1411, file: !18, line: 40, baseType: !17, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1411, file: !18, line: 41, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1021}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1411, file: !18, line: 42, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!118}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1411, file: !18, line: 43, baseType: !1423, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1152, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1411, file: !18, line: 44, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1152}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1411, file: !18, line: 45, baseType: !1433, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !118}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !209, file: !137, line: 144, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1152, !145}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !209, file: !137, line: 145, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !145, !1444, !1450}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1349, line: 23, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1349, line: 21, size: 32, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1446, file: !1349, line: 22, baseType: !1449, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 32, baseType: !917)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1349, line: 28, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1349, line: 26, size: 32, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1452, file: !1349, line: 27, baseType: !1455, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 33, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !227, line: 50, baseType: !7)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !136, file: !137, line: 70, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1460, line: 123, size: 1024, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1604, !1605, !1606, !1607, !1608}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1459, file: !1460, line: 124, baseType: !335, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1459, file: !1460, line: 125, baseType: !335, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1459, file: !1460, line: 135, baseType: !1458, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1459, file: !1460, line: 136, baseType: !140, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1459, file: !1460, line: 138, baseType: !292, size: 192, align: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1459, file: !1460, line: 140, baseType: !1152, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1459, file: !1460, line: 141, baseType: !7, size: 32, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1460, line: 142, baseType: !1470, size: 256, offset: 512)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !1460, line: 142, size: 256, elements: !1471)
!1471 = !{!1472, !1527, !1531}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1470, file: !1460, line: 143, baseType: !1473, size: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1460, line: 91, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1473, file: !1460, line: 92, baseType: !244, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1473, file: !1460, line: 94, baseType: !309, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1473, file: !1460, line: 100, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1460, line: 180, size: 704, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1497, !1498, !1499, !1525, !1526}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1479, file: !1460, line: 182, baseType: !1458, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1460, line: 183, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1479, file: !1460, line: 186, baseType: !1484, size: 192, offset: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1485, line: 19, size: 192, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1495, !1496}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1484, file: !1485, line: 20, baseType: !1488, size: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1489, line: 292, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1492, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1488, file: !1489, line: 293, baseType: !152)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1488, file: !1489, line: 295, baseType: !1493, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 148, baseType: !7)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1488, file: !1489, line: 296, baseType: !118, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1484, file: !1485, line: 21, baseType: !7, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1484, file: !1485, line: 22, baseType: !7, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1479, file: !1460, line: 187, baseType: !451, size: 32, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1479, file: !1460, line: 188, baseType: !451, size: 32, offset: 352)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1479, file: !1460, line: 189, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1460, line: 168, size: 320, elements: !1502)
!1502 = !{!1503, !1509, !1513, !1517, !1521}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1501, file: !1460, line: 169, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!178, !1507, !1478}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !274, line: 539, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1501, file: !1460, line: 171, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!178, !1458, !140, !235}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1501, file: !1460, line: 173, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!178, !1458}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1501, file: !1460, line: 174, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!178, !1458, !1458, !140}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1501, file: !1460, line: 176, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!178, !1507, !1458, !1478}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1479, file: !1460, line: 192, baseType: !123, size: 128, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1479, file: !1460, line: 194, baseType: !728, size: 128, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1470, file: !1460, line: 144, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1460, line: 103, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1528, file: !1460, line: 104, baseType: !1458, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1470, file: !1460, line: 145, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1460, line: 107, size: 256, elements: !1533)
!1533 = !{!1534, !1599, !1602, !1603}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1532, file: !1460, line: 108, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1460, line: 217, size: 768, elements: !1538)
!1538 = !{!1539, !1559, !1563, !1567, !1572, !1576, !1580, !1584, !1585, !1586, !1587, !1595}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !1460, line: 222, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!178, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1460, line: 197, size: 1088, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1544, file: !1460, line: 199, baseType: !1458, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1544, file: !1460, line: 200, baseType: !272, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1544, file: !1460, line: 201, baseType: !1507, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1544, file: !1460, line: 202, baseType: !118, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1544, file: !1460, line: 205, baseType: !412, size: 192, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1544, file: !1460, line: 206, baseType: !412, size: 192, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1544, file: !1460, line: 207, baseType: !178, size: 32, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1544, file: !1460, line: 208, baseType: !123, size: 128, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1544, file: !1460, line: 209, baseType: !194, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1544, file: !1460, line: 211, baseType: !241, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1544, file: !1460, line: 212, baseType: !1021, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1544, file: !1460, line: 213, baseType: !1021, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1544, file: !1460, line: 214, baseType: !1393, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !1460, line: 223, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1543}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1537, file: !1460, line: 236, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!178, !1507, !118}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1537, file: !1460, line: 238, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!118, !1507, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1537, file: !1460, line: 239, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!118, !1507, !118, !1571}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1537, file: !1460, line: 240, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1507, !118}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1460, line: 242, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!225, !1543, !194, !241, !275}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1537, file: !1460, line: 252, baseType: !241, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1537, file: !1460, line: 259, baseType: !1021, size: 8, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1460, line: 260, baseType: !1581, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1537, file: !1460, line: 263, baseType: !1588, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1543, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1592, line: 52, baseType: !7)
!1592 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1460, line: 27, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1460, line: 266, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!178, !1543, !283}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1460, line: 109, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1460, line: 31, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1532, file: !1460, line: 110, baseType: !275, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1532, file: !1460, line: 111, baseType: !1458, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1459, file: !1460, line: 148, baseType: !118, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1459, file: !1460, line: 154, baseType: !313, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1459, file: !1460, line: 156, baseType: !236, size: 16, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1459, file: !1460, line: 157, baseType: !235, size: 16, offset: 912)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1459, file: !1460, line: 158, baseType: !1609, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1460, line: 32, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !136, file: !137, line: 71, baseType: !1612, size: 32, offset: 448)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1613, line: 19, size: 32, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1612, file: !1613, line: 20, baseType: !457, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !136, file: !137, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !136, file: !137, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !136, file: !137, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !136, file: !137, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !136, file: !137, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !30, line: 463, baseType: !132, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !133, file: !30, line: 465, baseType: !1623, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !133, file: !30, line: 467, baseType: !140, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !30, line: 468, baseType: !1627, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1637, !1642, !1646}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !30, line: 88, baseType: !140, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1629, file: !30, line: 89, baseType: !248, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1629, file: !30, line: 90, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!178, !132, !189}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1629, file: !30, line: 91, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!194, !132, !1641, !1444, !1450}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1629, file: !30, line: 93, baseType: !1643, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !132}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1629, file: !30, line: 95, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1650)
!1650 = !{!1651, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1649, file: !37, line: 279, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!178, !132}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1649, file: !37, line: 280, baseType: !1643, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1649, file: !37, line: 281, baseType: !1652, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1649, file: !37, line: 282, baseType: !1652, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1649, file: !37, line: 283, baseType: !1652, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1649, file: !37, line: 284, baseType: !1652, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1649, file: !37, line: 285, baseType: !1652, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1649, file: !37, line: 286, baseType: !1652, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1649, file: !37, line: 287, baseType: !1652, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1649, file: !37, line: 288, baseType: !1652, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1649, file: !37, line: 289, baseType: !1652, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1649, file: !37, line: 290, baseType: !1652, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1649, file: !37, line: 291, baseType: !1652, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1649, file: !37, line: 292, baseType: !1652, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1649, file: !37, line: 293, baseType: !1652, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1649, file: !37, line: 294, baseType: !1652, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1649, file: !37, line: 295, baseType: !1652, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1649, file: !37, line: 296, baseType: !1652, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1649, file: !37, line: 297, baseType: !1652, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1649, file: !37, line: 298, baseType: !1652, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1649, file: !37, line: 299, baseType: !1652, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1649, file: !37, line: 300, baseType: !1652, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1649, file: !37, line: 301, baseType: !1652, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !133, file: !30, line: 470, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1680, line: 82, size: 1408, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1767, !1770, !1773}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1679, file: !1680, line: 83, baseType: !140, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1679, file: !1680, line: 84, baseType: !140, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1679, file: !1680, line: 85, baseType: !132, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1679, file: !1680, line: 86, baseType: !248, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1679, file: !1680, line: 87, baseType: !248, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1679, file: !1680, line: 88, baseType: !248, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1679, file: !1680, line: 90, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!178, !132, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1701, !1702, !1703, !1704, !1718, !1731, !1732, !1733, !1734, !1735, !1743, !1744, !1745, !1746, !1747, !1748}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !24, line: 96, baseType: !140, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1693, file: !24, line: 97, baseType: !1678, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1693, file: !24, line: 99, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1700, line: 76, flags: DIFlagFwdDecl)
!1700 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1693, file: !24, line: 100, baseType: !140, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1693, file: !24, line: 102, baseType: !1021, size: 8, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1693, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1693, file: !24, line: 105, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1708, line: 262, size: 1600, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1712, !1713, !1717}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1707, file: !1708, line: 263, baseType: !1711, size: 256)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !1255)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1707, file: !1708, line: 264, baseType: !1711, size: 256, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1707, file: !1708, line: 265, baseType: !1714, size: 1024, offset: 512)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !1715)
!1715 = !{!1716}
!1716 = !DISubrange(count: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1707, file: !1708, line: 266, baseType: !1152, size: 64, offset: 1536)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1693, file: !24, line: 106, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1708, line: 210, size: 256, elements: !1722)
!1722 = !{!1723, !1727, !1729, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1721, file: !1708, line: 211, baseType: !1724, size: 72)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 72, elements: !1725)
!1725 = !{!1726}
!1726 = !DISubrange(count: 9)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1721, file: !1708, line: 212, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1708, line: 14, baseType: !244)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1721, file: !1708, line: 213, baseType: !452, size: 32, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1721, file: !1708, line: 214, baseType: !452, size: 32, offset: 224)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1693, file: !24, line: 108, baseType: !1652, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1693, file: !24, line: 109, baseType: !1643, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1693, file: !24, line: 110, baseType: !1652, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1693, file: !24, line: 111, baseType: !1643, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1693, file: !24, line: 112, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!178, !132, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1740, file: !37, line: 51, baseType: !178, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1693, file: !24, line: 113, baseType: !1652, size: 64, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1693, file: !24, line: 114, baseType: !248, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1693, file: !24, line: 115, baseType: !248, size: 64, offset: 896)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1693, file: !24, line: 117, baseType: !1647, size: 64, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1693, file: !24, line: 118, baseType: !1643, size: 64, offset: 1024)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1693, file: !24, line: 120, baseType: !1749, size: 64, offset: 1088)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1679, file: !1680, line: 91, baseType: !1634, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1679, file: !1680, line: 92, baseType: !1652, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1679, file: !1680, line: 93, baseType: !1643, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1679, file: !1680, line: 94, baseType: !1652, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1679, file: !1680, line: 95, baseType: !1643, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1679, file: !1680, line: 97, baseType: !1652, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1679, file: !1680, line: 98, baseType: !1652, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1679, file: !1680, line: 100, baseType: !1736, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1679, file: !1680, line: 101, baseType: !1652, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1679, file: !1680, line: 103, baseType: !1652, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1679, file: !1680, line: 105, baseType: !1652, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1679, file: !1680, line: 107, baseType: !1647, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1679, file: !1680, line: 109, baseType: !1764, size: 64, offset: 1216)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1680, line: 109, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1679, file: !1680, line: 111, baseType: !1768, size: 64, offset: 1280)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1680, line: 111, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1679, file: !1680, line: 112, baseType: !1771, offset: 1344)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1772, line: 187, elements: !166)
!1772 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1679, file: !1680, line: 114, baseType: !1021, size: 8, offset: 1344)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !133, file: !30, line: 471, baseType: !1692, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !133, file: !30, line: 473, baseType: !118, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !133, file: !30, line: 475, baseType: !118, size: 64, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !30, line: 480, baseType: !412, size: 192, offset: 1024)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !133, file: !30, line: 484, baseType: !1779, size: 576, offset: 1216)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1779, file: !30, line: 362, baseType: !123, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1779, file: !30, line: 363, baseType: !123, size: 128, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1779, file: !30, line: 364, baseType: !123, size: 128, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1779, file: !30, line: 365, baseType: !123, size: 128, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1779, file: !30, line: 366, baseType: !1021, size: 8, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1779, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !133, file: !30, line: 485, baseType: !1788, size: 2304, offset: 1792)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1885, !1889}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1788, file: !37, line: 566, baseType: !1739, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1788, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1788, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1788, file: !37, line: 569, baseType: !1021, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1788, file: !37, line: 570, baseType: !1021, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1788, file: !37, line: 571, baseType: !1021, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1788, file: !37, line: 572, baseType: !1021, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1788, file: !37, line: 573, baseType: !1021, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1788, file: !37, line: 574, baseType: !1021, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1788, file: !37, line: 575, baseType: !1021, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1788, file: !37, line: 576, baseType: !1021, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1788, file: !37, line: 577, baseType: !451, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !37, line: 578, baseType: !152, offset: 96)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !37, line: 580, baseType: !123, size: 128, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1788, file: !37, line: 581, baseType: !757, size: 192, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1788, file: !37, line: 582, baseType: !1806, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1808, line: 43, size: 1472, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1817, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !1808, line: 44, baseType: !140, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1807, file: !1808, line: 45, baseType: !178, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1807, file: !1808, line: 46, baseType: !123, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !1808, line: 47, baseType: !152, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1807, file: !1808, line: 48, baseType: !1815, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1807, file: !1808, line: 49, baseType: !1818, size: 320, offset: 320)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1819, line: 11, size: 320, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1822, !1823, !1828}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1818, file: !1819, line: 16, baseType: !721, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1818, file: !1819, line: 17, baseType: !244, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1818, file: !1819, line: 18, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1818, file: !1819, line: 19, baseType: !451, size: 32, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1807, file: !1808, line: 50, baseType: !244, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1807, file: !1808, line: 51, baseType: !527, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1807, file: !1808, line: 52, baseType: !527, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1807, file: !1808, line: 53, baseType: !527, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1807, file: !1808, line: 54, baseType: !527, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1807, file: !1808, line: 55, baseType: !527, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1807, file: !1808, line: 56, baseType: !244, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1807, file: !1808, line: 57, baseType: !244, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1807, file: !1808, line: 58, baseType: !244, size: 64, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1807, file: !1808, line: 59, baseType: !244, size: 64, offset: 1216)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1807, file: !1808, line: 60, baseType: !244, size: 64, offset: 1280)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1807, file: !1808, line: 61, baseType: !132, size: 64, offset: 1344)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1807, file: !1808, line: 62, baseType: !1021, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1807, file: !1808, line: 63, baseType: !1021, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1788, file: !37, line: 583, baseType: !1021, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1788, file: !37, line: 584, baseType: !1021, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1788, file: !37, line: 585, baseType: !1021, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1788, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1788, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1788, file: !37, line: 592, baseType: !519, size: 512, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1788, file: !37, line: 593, baseType: !313, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1788, file: !37, line: 594, baseType: !1360, size: 256, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1788, file: !37, line: 595, baseType: !728, size: 128, offset: 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1788, file: !37, line: 596, baseType: !1815, size: 64, offset: 1536)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1788, file: !37, line: 597, baseType: !335, size: 32, offset: 1600)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1788, file: !37, line: 598, baseType: !335, size: 32, offset: 1632)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1788, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1788, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1788, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1788, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1788, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1788, file: !37, line: 604, baseType: !1021, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1788, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1788, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1788, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1788, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1788, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1788, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1788, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1788, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1788, file: !37, line: 613, baseType: !178, size: 32, offset: 1792)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1788, file: !37, line: 614, baseType: !178, size: 32, offset: 1824)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1788, file: !37, line: 615, baseType: !313, size: 64, offset: 1856)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1788, file: !37, line: 616, baseType: !313, size: 64, offset: 1920)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1788, file: !37, line: 617, baseType: !313, size: 64, offset: 1984)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1788, file: !37, line: 618, baseType: !313, size: 64, offset: 2048)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1788, file: !37, line: 620, baseType: !1876, size: 64, offset: 2112)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1877, file: !37, line: 537, baseType: !152)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1877, file: !37, line: 538, baseType: !7, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1877, file: !37, line: 540, baseType: !123, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1877, file: !37, line: 543, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1788, file: !37, line: 621, baseType: !1886, size: 64, offset: 2176)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !132, !681}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1788, file: !37, line: 622, baseType: !1890, size: 64, offset: 2240)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !133, file: !30, line: 486, baseType: !1893, size: 64, offset: 4096)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1902, !1903, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !37, line: 643, baseType: !1649, size: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1894, file: !37, line: 644, baseType: !1652, size: 64, offset: 1472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1894, file: !37, line: 645, baseType: !1899, size: 64, offset: 1536)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !132, !1021}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1894, file: !37, line: 646, baseType: !1652, size: 64, offset: 1600)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1894, file: !37, line: 647, baseType: !1643, size: 64, offset: 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1894, file: !37, line: 648, baseType: !1643, size: 64, offset: 1728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !133, file: !30, line: 493, baseType: !1906, size: 64, offset: 4160)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1908)
!1908 = !{!1909, !1910, !1911, !2187, !2188, !2189, !2190, !2191, !2192, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1907, file: !51, line: 163, baseType: !123, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1907, file: !51, line: 164, baseType: !140, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1907, file: !51, line: 165, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1915)
!1915 = !{!1916, !2034, !2045, !2050, !2054, !2062, !2066, !2070, !2179, !2183}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1914, file: !51, line: 106, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!178, !1906, !1920, !50}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1922, line: 51, size: 1344, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1925, !1927, !1928, !2018, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1921, file: !1922, line: 52, baseType: !140, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1921, file: !1922, line: 53, baseType: !1926, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1922, line: 28, baseType: !451)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1921, file: !1922, line: 54, baseType: !140, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1921, file: !1922, line: 55, baseType: !1929, size: 192, offset: 192)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1930, line: 17, size: 192, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1934, !2017}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1929, file: !1930, line: 18, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1929, file: !1930, line: 19, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1930, line: 110, size: 1152, elements: !1938)
!1938 = !{!1939, !1943, !1947, !1953, !1959, !1963, !1967, !1972, !1976, !1977, !1981, !1985, !1989, !2000, !2001, !2002, !2003, !2013}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1937, file: !1930, line: 111, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1933, !1933}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1937, file: !1930, line: 112, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1933}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1937, file: !1930, line: 113, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1021, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1937, file: !1930, line: 114, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1152, !1951, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1937, file: !1930, line: 116, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1021, !1951, !140}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1937, file: !1930, line: 118, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!178, !1951, !140, !7, !118, !241}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1937, file: !1930, line: 123, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!178, !1951, !140, !1971, !241}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1937, file: !1930, line: 126, baseType: !1973, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!140, !1951}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1937, file: !1930, line: 127, baseType: !1973, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1937, file: !1930, line: 128, baseType: !1978, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1933, !1951}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1937, file: !1930, line: 130, baseType: !1982, size: 64, offset: 640)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1933, !1951, !1933}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1937, file: !1930, line: 133, baseType: !1986, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1933, !1951, !140}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1937, file: !1930, line: 135, baseType: !1990, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!178, !1951, !140, !140, !7, !7, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1930, line: 43, size: 640, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1994, file: !1930, line: 44, baseType: !1933, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1994, file: !1930, line: 45, baseType: !7, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1994, file: !1930, line: 46, baseType: !1999, size: 512, offset: 128)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 512, elements: !557)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1937, file: !1930, line: 140, baseType: !1982, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1937, file: !1930, line: 143, baseType: !1978, size: 64, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1937, file: !1930, line: 145, baseType: !1940, size: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1937, file: !1930, line: 146, baseType: !2004, size: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!178, !1951, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1930, line: 29, size: 128, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2008, file: !1930, line: 30, baseType: !7, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2008, file: !1930, line: 31, baseType: !7, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2008, file: !1930, line: 32, baseType: !1951, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1937, file: !1930, line: 148, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!178, !1951, !132}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1929, file: !1930, line: 20, baseType: !132, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1921, file: !1922, line: 57, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1922, line: 31, size: 704, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !1922, line: 32, baseType: !194, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2020, file: !1922, line: 33, baseType: !178, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2020, file: !1922, line: 34, baseType: !118, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2020, file: !1922, line: 35, baseType: !2019, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2020, file: !1922, line: 43, baseType: !263, size: 448, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1921, file: !1922, line: 58, baseType: !2019, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1921, file: !1922, line: 59, baseType: !1920, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1921, file: !1922, line: 60, baseType: !1920, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1921, file: !1922, line: 61, baseType: !1920, size: 64, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1921, file: !1922, line: 63, baseType: !136, size: 512, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1921, file: !1922, line: 65, baseType: !244, size: 64, offset: 1216)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1921, file: !1922, line: 66, baseType: !118, size: 64, offset: 1280)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1914, file: !51, line: 108, baseType: !2035, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!178, !1906, !2038, !50}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2039, file: !51, line: 64, baseType: !1933, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2039, file: !51, line: 65, baseType: !178, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2039, file: !51, line: 66, baseType: !2044, size: 512, offset: 96)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !813)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1914, file: !51, line: 110, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!178, !1906, !7, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !124, line: 164, baseType: !244)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1914, file: !51, line: 111, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1906, !7}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1914, file: !51, line: 112, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!178, !1906, !1920, !2058, !7, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1914, file: !51, line: 117, baseType: !2063, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!178, !1906, !7, !7, !118}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1914, file: !51, line: 119, baseType: !2067, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !1906, !7, !7}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1914, file: !51, line: 121, baseType: !2071, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!178, !1906, !2074, !1021}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !76, line: 175, size: 448, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2090, !2176, !2177, !2178}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2075, file: !76, line: 176, baseType: !451, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2075, file: !76, line: 177, baseType: !7, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2075, file: !76, line: 178, baseType: !244, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2075, file: !76, line: 179, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !76, line: 145, size: 256, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2082, file: !76, line: 146, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2082, file: !76, line: 150, baseType: !118, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2082, file: !76, line: 151, baseType: !119, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2082, file: !76, line: 152, baseType: !2088, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !603, line: 756, baseType: !2089)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !608)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2075, file: !76, line: 180, baseType: !2091, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !76, line: 503, size: 2304, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2100, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2117, !2121, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2138, !2139, !2140, !2150, !2151, !2157, !2161, !2165, !2169, !2173, !2174, !2175}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !2092, file: !76, line: 504, baseType: !132, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2092, file: !76, line: 505, baseType: !140, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2092, file: !76, line: 506, baseType: !2097, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!7, !2074}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2092, file: !76, line: 507, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2074}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2092, file: !76, line: 508, baseType: !2101, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2092, file: !76, line: 509, baseType: !2101, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2092, file: !76, line: 511, baseType: !2101, size: 64, offset: 384)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2092, file: !76, line: 512, baseType: !2101, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2092, file: !76, line: 513, baseType: !2101, size: 64, offset: 512)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2092, file: !76, line: 514, baseType: !2101, size: 64, offset: 576)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2092, file: !76, line: 515, baseType: !2101, size: 64, offset: 640)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2092, file: !76, line: 517, baseType: !2112, size: 64, offset: 704)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!178, !2074, !2115, !1021}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2092, file: !76, line: 518, baseType: !2118, size: 64, offset: 768)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!178, !2074}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2092, file: !76, line: 519, baseType: !2122, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!178, !2074, !7}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2092, file: !76, line: 520, baseType: !2122, size: 64, offset: 896)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2092, file: !76, line: 522, baseType: !2101, size: 64, offset: 960)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2092, file: !76, line: 523, baseType: !2101, size: 64, offset: 1024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !2092, file: !76, line: 525, baseType: !2101, size: 64, offset: 1088)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !2092, file: !76, line: 526, baseType: !2101, size: 64, offset: 1152)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2092, file: !76, line: 528, baseType: !2101, size: 64, offset: 1216)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2092, file: !76, line: 529, baseType: !2101, size: 64, offset: 1280)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2092, file: !76, line: 530, baseType: !2101, size: 64, offset: 1344)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2092, file: !76, line: 532, baseType: !2101, size: 64, offset: 1408)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2092, file: !76, line: 534, baseType: !2135, size: 64, offset: 1472)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2074, !1507}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2092, file: !76, line: 535, baseType: !2118, size: 64, offset: 1536)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2092, file: !76, line: 536, baseType: !2101, size: 64, offset: 1600)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2092, file: !76, line: 538, baseType: !2141, size: 64, offset: 1664)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2074, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !84, line: 8, size: 96, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !2145, file: !84, line: 9, baseType: !451, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !2145, file: !84, line: 10, baseType: !451, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2145, file: !84, line: 11, baseType: !451, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2092, file: !76, line: 539, baseType: !2141, size: 64, offset: 1728)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2092, file: !76, line: 541, baseType: !2152, size: 64, offset: 1792)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!178, !2074, !2155, !2156}
!2155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !76, line: 31, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2092, file: !76, line: 542, baseType: !2158, size: 64, offset: 1856)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!178, !2074, !2155, !1021}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2092, file: !76, line: 544, baseType: !2162, size: 64, offset: 1920)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!178, !2074, !118}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2092, file: !76, line: 546, baseType: !2166, size: 64, offset: 1984)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !2074, !7}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2092, file: !76, line: 547, baseType: !2170, size: 64, offset: 2048)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !2074, !2115}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2092, file: !76, line: 549, baseType: !2118, size: 64, offset: 2112)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2092, file: !76, line: 550, baseType: !2101, size: 64, offset: 2176)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !76, line: 552, baseType: !244, size: 64, offset: 2240)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2075, file: !76, line: 181, baseType: !1906, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2075, file: !76, line: 183, baseType: !2074, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2075, file: !76, line: 185, baseType: !118, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1914, file: !51, line: 122, baseType: !2180, size: 64, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !1906, !2074}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1914, file: !51, line: 123, baseType: !2184, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!178, !1906, !2038, !2060, !2061}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1907, file: !51, line: 166, baseType: !118, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1907, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1907, file: !51, line: 171, baseType: !1933, size: 64, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1907, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1907, file: !51, line: 173, baseType: !2193, size: 64, offset: 512)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !76, line: 1101, size: 192, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2194, file: !76, line: 1102, baseType: !7, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2194, file: !76, line: 1103, baseType: !7, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2194, file: !76, line: 1104, baseType: !7, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2194, file: !76, line: 1105, baseType: !7, size: 32, offset: 96)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2194, file: !76, line: 1106, baseType: !75, size: 32, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2194, file: !76, line: 1107, baseType: !2202, offset: 192)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2203, elements: !1374)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !76, line: 1051, size: 960, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2212, !2216, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !76, line: 1052, baseType: !360)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2204, file: !76, line: 1053, baseType: !118, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2204, file: !76, line: 1054, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!451, !118}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2204, file: !76, line: 1055, baseType: !2213, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !451, !118}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2204, file: !76, line: 1056, baseType: !2217, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2203}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2204, file: !76, line: 1057, baseType: !2217, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2204, file: !76, line: 1058, baseType: !7, size: 32, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2204, file: !76, line: 1059, baseType: !7, size: 32, offset: 352)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2204, file: !76, line: 1060, baseType: !451, size: 32, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2204, file: !76, line: 1061, baseType: !451, size: 32, offset: 416)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2204, file: !76, line: 1062, baseType: !451, size: 32, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2204, file: !76, line: 1063, baseType: !451, size: 32, offset: 480)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2204, file: !76, line: 1064, baseType: !451, size: 32, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2204, file: !76, line: 1065, baseType: !7, size: 32, offset: 544)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2204, file: !76, line: 1066, baseType: !118, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2204, file: !76, line: 1067, baseType: !244, size: 64, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2204, file: !76, line: 1068, baseType: !244, size: 64, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2204, file: !76, line: 1069, baseType: !1906, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2204, file: !76, line: 1070, baseType: !123, size: 128, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2204, file: !76, line: 1071, baseType: !2235, offset: 960)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2236, elements: !1374)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !76, line: 1009, size: 2944, elements: !2237)
!2237 = !{!2238, !2239, !2249, !2296, !2297, !2298}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2236, file: !76, line: 1010, baseType: !2092, size: 2304)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2236, file: !76, line: 1011, baseType: !2240, size: 448, offset: 2304)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !76, line: 986, size: 448, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2240, file: !76, line: 987, baseType: !244, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2240, file: !76, line: 988, baseType: !244, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2240, file: !76, line: 989, baseType: !244, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2240, file: !76, line: 990, baseType: !244, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2240, file: !76, line: 991, baseType: !244, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !76, line: 992, baseType: !244, size: 64, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2240, file: !76, line: 993, baseType: !244, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2236, file: !76, line: 1012, baseType: !2250, size: 64, offset: 2752)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2251, line: 12, baseType: !2252)
!2251 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2257, line: 55, size: 2880, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2290, !2291, !2292, !2293, !2294, !2295}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2256, file: !2257, line: 56, baseType: !2082, size: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2256, file: !2257, line: 57, baseType: !2075, size: 448, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2256, file: !2257, line: 58, baseType: !2061, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2256, file: !2257, line: 59, baseType: !2250, size: 64, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2256, file: !2257, line: 60, baseType: !2264, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !2257, line: 60, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2256, file: !2257, line: 61, baseType: !7, size: 32, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2256, file: !2257, line: 62, baseType: !7, size: 32, offset: 928)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2256, file: !2257, line: 63, baseType: !7, size: 32, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2256, file: !2257, line: 64, baseType: !7, size: 32, offset: 992)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2256, file: !2257, line: 65, baseType: !7, size: 32, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2256, file: !2257, line: 66, baseType: !7, size: 32, offset: 1056)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2256, file: !2257, line: 67, baseType: !244, size: 64, offset: 1088)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2256, file: !2257, line: 68, baseType: !7, size: 32, offset: 1152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2256, file: !2257, line: 69, baseType: !335, size: 32, offset: 1184)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2256, file: !2257, line: 70, baseType: !178, size: 32, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2256, file: !2257, line: 71, baseType: !360, offset: 1248)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2256, file: !2257, line: 72, baseType: !2278, size: 64, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2256, file: !2257, line: 73, baseType: !2115, size: 64, offset: 1344)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2256, file: !2257, line: 81, baseType: !244, size: 64, offset: 1408)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2256, file: !2257, line: 82, baseType: !335, size: 32, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2256, file: !2257, line: 83, baseType: !728, size: 128, offset: 1536)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2256, file: !2257, line: 85, baseType: !7, size: 32, offset: 1664)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2256, file: !2257, line: 86, baseType: !7, size: 32, offset: 1696)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2256, file: !2257, line: 87, baseType: !7, size: 32, offset: 1728)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2256, file: !2257, line: 88, baseType: !7, size: 32, offset: 1760)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2256, file: !2257, line: 91, baseType: !2288, size: 64, offset: 1792)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2257, line: 14, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2256, file: !2257, line: 98, baseType: !735, size: 128, align: 64, offset: 1856)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2256, file: !2257, line: 99, baseType: !136, size: 512, offset: 1984)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2256, file: !2257, line: 101, baseType: !412, size: 192, offset: 2496)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2256, file: !2257, line: 102, baseType: !178, size: 32, offset: 2688)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2256, file: !2257, line: 103, baseType: !1698, size: 64, offset: 2752)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2256, file: !2257, line: 104, baseType: !140, size: 64, offset: 2816)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !76, line: 1013, baseType: !451, size: 32, offset: 2816)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2236, file: !76, line: 1014, baseType: !451, size: 32, offset: 2848)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2236, file: !76, line: 1015, baseType: !652, size: 64, offset: 2880)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1907, file: !51, line: 175, baseType: !1906, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1907, file: !51, line: 182, baseType: !2049, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1907, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1907, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1907, file: !51, line: 185, baseType: !1488, size: 128, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1907, file: !51, line: 186, baseType: !412, size: 192, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1907, file: !51, line: 187, baseType: !2306, offset: 1088)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1374)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !133, file: !30, line: 499, baseType: !123, size: 128, offset: 4224)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !133, file: !30, line: 502, baseType: !2309, size: 64, offset: 4352)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !133, file: !30, line: 504, baseType: !2313, size: 64, offset: 4416)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !133, file: !30, line: 505, baseType: !313, size: 64, offset: 4480)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !133, file: !30, line: 510, baseType: !313, size: 64, offset: 4544)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !133, file: !30, line: 511, baseType: !2317, size: 64, offset: 4608)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !133, file: !30, line: 513, baseType: !2321, size: 64, offset: 4672)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2322, file: !30, line: 293, baseType: !7, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2322, file: !30, line: 294, baseType: !244, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !133, file: !30, line: 515, baseType: !123, size: 128, offset: 4736)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !133, file: !30, line: 526, baseType: !2328, offset: 4864)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2329, line: 5, elements: !166)
!2329 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !133, file: !30, line: 528, baseType: !1920, size: 64, offset: 4864)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !133, file: !30, line: 529, baseType: !1933, size: 64, offset: 4928)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !133, file: !30, line: 534, baseType: !2333, size: 32, offset: 4992)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 16, baseType: !2334)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 13, baseType: !451)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !30, line: 535, baseType: !451, size: 32, offset: 5024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !133, file: !30, line: 537, baseType: !152, offset: 5056)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !133, file: !30, line: 538, baseType: !123, size: 128, offset: 5056)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !133, file: !30, line: 540, baseType: !2339, size: 64, offset: 5184)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2341, line: 54, size: 960, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2353, !2357, !2358, !2359, !2360, !2364, !2368, !2369}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2340, file: !2341, line: 55, baseType: !140, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2340, file: !2341, line: 56, baseType: !1698, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2340, file: !2341, line: 58, baseType: !248, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2340, file: !2341, line: 59, baseType: !248, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2340, file: !2341, line: 60, baseType: !145, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2340, file: !2341, line: 62, baseType: !1634, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2340, file: !2341, line: 63, baseType: !2350, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!194, !132, !1641}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2340, file: !2341, line: 65, baseType: !2354, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2339}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2340, file: !2341, line: 66, baseType: !1643, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2340, file: !2341, line: 68, baseType: !1652, size: 64, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2340, file: !2341, line: 70, baseType: !1409, size: 64, offset: 640)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2340, file: !2341, line: 71, baseType: !2361, size: 64, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!1152, !132}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2340, file: !2341, line: 73, baseType: !2365, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !132, !1444, !1450}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2340, file: !2341, line: 75, baseType: !1647, size: 64, offset: 832)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2340, file: !2341, line: 77, baseType: !1768, size: 64, offset: 896)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !133, file: !30, line: 541, baseType: !248, size: 64, offset: 5248)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !133, file: !30, line: 543, baseType: !1643, size: 64, offset: 5312)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !133, file: !30, line: 544, baseType: !2373, size: 64, offset: 5376)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !133, file: !30, line: 545, baseType: !2376, size: 64, offset: 5440)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !133, file: !30, line: 547, baseType: !1021, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !133, file: !30, line: 548, baseType: !1021, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !133, file: !30, line: 549, baseType: !1021, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !133, file: !30, line: 550, baseType: !1021, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !120, file: !84, line: 91, baseType: !2145, size: 96, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !120, file: !84, line: 92, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !76, line: 30, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !120, file: !84, line: 97, baseType: !2387, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !119, !118}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !120, file: !84, line: 98, baseType: !118, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !84, line: 100, baseType: !2392, size: 192, offset: 576)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !84, line: 100, size: 192, elements: !2393)
!2393 = !{!2394, !2414, !2463, !2467}
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !84, line: 102, baseType: !2395, size: 192)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !84, line: 102, size: 192, elements: !2396)
!2396 = !{!2397, !2398, !2409}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !2395, file: !84, line: 103, baseType: !451, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !2395, file: !84, line: 113, baseType: !2399, size: 64, offset: 32)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !84, line: 104, size: 64, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !2399, file: !84, line: 105, baseType: !588, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !2399, file: !84, line: 106, baseType: !588, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !2399, file: !84, line: 107, baseType: !588, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !2399, file: !84, line: 108, baseType: !588, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !2399, file: !84, line: 109, baseType: !588, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !2399, file: !84, line: 110, baseType: !588, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !2399, file: !84, line: 111, baseType: !425, size: 16, offset: 16)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !2399, file: !84, line: 112, baseType: !7, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !84, line: 114, baseType: !2410, size: 64, offset: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2395, file: !84, line: 114, size: 64, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !2410, file: !84, line: 115, baseType: !588, size: 8)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !2410, file: !84, line: 116, baseType: !118, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !2392, file: !84, line: 127, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !84, line: 37, size: 128, elements: !2416)
!2416 = !{!2417, !2462}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !2415, file: !84, line: 38, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3, line: 23, size: 832, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2456, !2461}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2419, file: !3, line: 24, baseType: !132, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2419, file: !3, line: 25, baseType: !118, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2419, file: !3, line: 26, baseType: !2424, size: 576, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !2425, line: 7, baseType: !2426)
!2425 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/lizy2001/genbc/linux")
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !65, line: 77, size: 576, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2426, file: !65, line: 78, baseType: !64, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2426, file: !65, line: 79, baseType: !451, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !2426, file: !65, line: 80, baseType: !451, size: 32, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2426, file: !65, line: 81, baseType: !2049, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2426, file: !65, line: 82, baseType: !2115, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2426, file: !65, line: 83, baseType: !119, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2426, file: !65, line: 84, baseType: !118, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !65, line: 86, baseType: !2436, size: 192, offset: 384)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !65, line: 86, size: 192, elements: !2437)
!2437 = !{!2438, !2449}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !2436, file: !65, line: 87, baseType: !2439, size: 192)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !65, line: 47, size: 192, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !2439, file: !65, line: 48, baseType: !178, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2439, file: !65, line: 49, baseType: !178, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !2439, file: !65, line: 50, baseType: !451, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2439, file: !65, line: 51, baseType: !451, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2439, file: !65, line: 52, baseType: !451, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2439, file: !65, line: 53, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "IO_APIC_route_entry", file: !65, line: 53, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !2436, file: !65, line: 88, baseType: !2450, size: 192)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !65, line: 56, size: 192, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2450, file: !65, line: 57, baseType: !178, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !2450, file: !65, line: 58, baseType: !178, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2450, file: !65, line: 59, baseType: !244, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2450, file: !65, line: 60, baseType: !194, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "write_msg", scope: !2419, file: !3, line: 27, baseType: !2457, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_write_msi_msg_t", file: !84, line: 29, baseType: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !119, !2144}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !2419, file: !3, line: 28, baseType: !178, size: 32, offset: 768)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !2415, file: !84, line: 39, baseType: !425, size: 16, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !2392, file: !84, line: 128, baseType: !2464, size: 16)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !84, line: 46, size: 16, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !2464, file: !84, line: 47, baseType: !425, size: 16)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !2392, file: !84, line: 129, baseType: !2468, size: 16)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !84, line: 54, size: 16, elements: !2469)
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !2468, file: !84, line: 55, baseType: !425, size: 16)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2475 = !{!0}
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1485, line: 244, size: 128, elements: !2477)
!2477 = !{!2478}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2476, file: !1485, line: 245, baseType: !1488, size: 128)
!2479 = !{i32 7, !"Dwarf Version", i32 4}
!2480 = !{i32 2, !"Debug Info Version", i32 3}
!2481 = !{i32 1, !"wchar_size", i32 2}
!2482 = !{i32 1, !"Code Model", i32 2}
!2483 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2484 = distinct !DISubprogram(name: "platform_msi_create_irq_domain", scope: !3, file: !3, line: 177, type: !2485, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!1906, !1933, !2487, !1906}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !84, line: 331, size: 512, elements: !2489)
!2489 = !{!2490, !2491, !2536, !2537, !2538, !2539, !2540, !2541}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2488, file: !84, line: 332, baseType: !451, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2488, file: !84, line: 333, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !84, line: 293, size: 640, elements: !2494)
!2494 = !{!2495, !2500, !2504, !2508, !2512, !2516, !2520, !2524, !2528, !2532}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !2493, file: !84, line: 294, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2049, !2487, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !2493, file: !84, line: 296, baseType: !2501, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!178, !1906, !2487, !7, !2049, !2499}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !2493, file: !84, line: 300, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !1906, !2487, !7}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "msi_check", scope: !2493, file: !84, line: 303, baseType: !2509, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!178, !1906, !2487, !132}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !2493, file: !84, line: 306, baseType: !2513, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!178, !1906, !132, !178, !2499}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "msi_finish", scope: !2493, file: !84, line: 309, baseType: !2517, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2499, !178}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !2493, file: !84, line: 310, baseType: !2521, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2499, !119}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "handle_error", scope: !2493, file: !84, line: 312, baseType: !2525, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!178, !1906, !119, !178}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !2493, file: !84, line: 314, baseType: !2529, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!178, !1906, !132, !178}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !2493, file: !84, line: 316, baseType: !2533, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !1906, !132}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2488, file: !84, line: 334, baseType: !2091, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2488, file: !84, line: 335, baseType: !118, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2488, file: !84, line: 336, baseType: !2250, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2488, file: !84, line: 337, baseType: !118, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !2488, file: !84, line: 338, baseType: !140, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2488, file: !84, line: 339, baseType: !118, size: 64, offset: 448)
!2542 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2484, file: !3, line: 177, type: !1933)
!2543 = !DILocation(line: 177, column: 73, scope: !2484)
!2544 = !DILocalVariable(name: "info", arg: 2, scope: !2484, file: !3, line: 178, type: !2487)
!2545 = !DILocation(line: 178, column: 33, scope: !2484)
!2546 = !DILocalVariable(name: "parent", arg: 3, scope: !2484, file: !3, line: 179, type: !1906)
!2547 = !DILocation(line: 179, column: 28, scope: !2484)
!2548 = !DILocalVariable(name: "domain", scope: !2484, file: !3, line: 181, type: !1906)
!2549 = !DILocation(line: 181, column: 21, scope: !2484)
!2550 = !DILocation(line: 183, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 183, column: 6)
!2552 = !DILocation(line: 183, column: 12, scope: !2551)
!2553 = !DILocation(line: 183, column: 18, scope: !2551)
!2554 = !DILocation(line: 183, column: 6, scope: !2484)
!2555 = !DILocation(line: 184, column: 31, scope: !2551)
!2556 = !DILocation(line: 184, column: 3, scope: !2551)
!2557 = !DILocation(line: 185, column: 6, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 185, column: 6)
!2559 = !DILocation(line: 185, column: 12, scope: !2558)
!2560 = !DILocation(line: 185, column: 18, scope: !2558)
!2561 = !DILocation(line: 185, column: 6, scope: !2484)
!2562 = !DILocation(line: 186, column: 32, scope: !2558)
!2563 = !DILocation(line: 186, column: 3, scope: !2558)
!2564 = !DILocation(line: 188, column: 33, scope: !2484)
!2565 = !DILocation(line: 188, column: 41, scope: !2484)
!2566 = !DILocation(line: 188, column: 47, scope: !2484)
!2567 = !DILocation(line: 188, column: 11, scope: !2484)
!2568 = !DILocation(line: 188, column: 9, scope: !2484)
!2569 = !DILocation(line: 189, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 189, column: 6)
!2571 = !DILocation(line: 189, column: 6, scope: !2484)
!2572 = !DILocation(line: 190, column: 31, scope: !2570)
!2573 = !DILocation(line: 190, column: 3, scope: !2570)
!2574 = !DILocation(line: 192, column: 9, scope: !2484)
!2575 = !DILocation(line: 192, column: 2, scope: !2484)
!2576 = distinct !DISubprogram(name: "platform_msi_update_dom_ops", scope: !3, file: !3, line: 67, type: !2577, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2487}
!2579 = !DILocalVariable(name: "info", arg: 1, scope: !2576, file: !3, line: 67, type: !2487)
!2580 = !DILocation(line: 67, column: 65, scope: !2576)
!2581 = !DILocalVariable(name: "ops", scope: !2576, file: !3, line: 69, type: !2492)
!2582 = !DILocation(line: 69, column: 25, scope: !2576)
!2583 = !DILocation(line: 69, column: 31, scope: !2576)
!2584 = !DILocation(line: 69, column: 37, scope: !2576)
!2585 = !DILocation(line: 71, column: 2, scope: !2576)
!2586 = !DILocation(line: 71, column: 2, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 71, column: 2)
!2588 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 71, column: 2)
!2589 = !DILocation(line: 71, column: 2, scope: !2588)
!2590 = !DILocation(line: 71, column: 2, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 71, column: 2)
!2592 = !DILocation(line: 71, column: 2, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 71, column: 2)
!2594 = !DILocation(line: 71, column: 2, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 71, column: 2)
!2596 = !{i32 -2143360775, i32 -2143360746, i32 -2143360700, i32 -2143360642, i32 -2143360588, i32 -2143360534, i32 -2143360479, i32 -2143360448}
!2597 = !DILocation(line: 71, column: 2, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 71, column: 2)
!2599 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 71, column: 2)
!2600 = !{i32 -2143359999, i32 -2143359992, i32 -2143359938, i32 -2143359907, i32 -2143359877}
!2601 = !DILocation(line: 71, column: 2, scope: !2599)
!2602 = !DILocation(line: 73, column: 6, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 73, column: 6)
!2604 = !DILocation(line: 73, column: 11, scope: !2603)
!2605 = !DILocation(line: 73, column: 20, scope: !2603)
!2606 = !DILocation(line: 73, column: 6, scope: !2576)
!2607 = !DILocation(line: 74, column: 3, scope: !2603)
!2608 = !DILocation(line: 74, column: 8, scope: !2603)
!2609 = !DILocation(line: 74, column: 17, scope: !2603)
!2610 = !DILocation(line: 75, column: 6, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 75, column: 6)
!2612 = !DILocation(line: 75, column: 11, scope: !2611)
!2613 = !DILocation(line: 75, column: 20, scope: !2611)
!2614 = !DILocation(line: 75, column: 6, scope: !2576)
!2615 = !DILocation(line: 76, column: 3, scope: !2611)
!2616 = !DILocation(line: 76, column: 8, scope: !2611)
!2617 = !DILocation(line: 76, column: 17, scope: !2611)
!2618 = !DILocation(line: 77, column: 1, scope: !2576)
!2619 = distinct !DISubprogram(name: "platform_msi_update_chip_ops", scope: !3, file: !3, line: 89, type: !2577, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2620 = !DILocalVariable(name: "info", arg: 1, scope: !2619, file: !3, line: 89, type: !2487)
!2621 = !DILocation(line: 89, column: 66, scope: !2619)
!2622 = !DILocalVariable(name: "chip", scope: !2619, file: !3, line: 91, type: !2091)
!2623 = !DILocation(line: 91, column: 19, scope: !2619)
!2624 = !DILocation(line: 91, column: 26, scope: !2619)
!2625 = !DILocation(line: 91, column: 32, scope: !2619)
!2626 = !DILocation(line: 93, column: 2, scope: !2619)
!2627 = !DILocation(line: 93, column: 2, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 93, column: 2)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 93, column: 2)
!2630 = !DILocation(line: 93, column: 2, scope: !2629)
!2631 = !DILocation(line: 93, column: 2, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 93, column: 2)
!2633 = !DILocation(line: 93, column: 2, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 93, column: 2)
!2635 = !DILocation(line: 93, column: 2, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 93, column: 2)
!2637 = !{i32 -2143359526, i32 -2143359497, i32 -2143359451, i32 -2143359393, i32 -2143359339, i32 -2143359285, i32 -2143359230, i32 -2143359199}
!2638 = !DILocation(line: 93, column: 2, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 93, column: 2)
!2640 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 93, column: 2)
!2641 = !{i32 -2143358750, i32 -2143358743, i32 -2143358689, i32 -2143358658, i32 -2143358628}
!2642 = !DILocation(line: 93, column: 2, scope: !2640)
!2643 = !DILocation(line: 94, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 94, column: 6)
!2645 = !DILocation(line: 94, column: 13, scope: !2644)
!2646 = !DILocation(line: 94, column: 6, scope: !2619)
!2647 = !DILocation(line: 95, column: 3, scope: !2644)
!2648 = !DILocation(line: 95, column: 9, scope: !2644)
!2649 = !DILocation(line: 95, column: 18, scope: !2644)
!2650 = !DILocation(line: 96, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 96, column: 6)
!2652 = !DILocation(line: 96, column: 13, scope: !2651)
!2653 = !DILocation(line: 96, column: 6, scope: !2619)
!2654 = !DILocation(line: 97, column: 3, scope: !2651)
!2655 = !DILocation(line: 97, column: 9, scope: !2651)
!2656 = !DILocation(line: 97, column: 20, scope: !2651)
!2657 = !DILocation(line: 98, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 98, column: 6)
!2659 = !DILocation(line: 98, column: 13, scope: !2658)
!2660 = !DILocation(line: 98, column: 6, scope: !2619)
!2661 = !DILocation(line: 99, column: 3, scope: !2658)
!2662 = !DILocation(line: 99, column: 9, scope: !2658)
!2663 = !DILocation(line: 99, column: 17, scope: !2658)
!2664 = !DILocation(line: 100, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 100, column: 6)
!2666 = !DILocation(line: 100, column: 13, scope: !2665)
!2667 = !DILocation(line: 100, column: 6, scope: !2619)
!2668 = !DILocation(line: 101, column: 3, scope: !2665)
!2669 = !DILocation(line: 101, column: 9, scope: !2665)
!2670 = !DILocation(line: 101, column: 26, scope: !2665)
!2671 = !DILocation(line: 102, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 102, column: 6)
!2673 = !DILocation(line: 102, column: 13, scope: !2672)
!2674 = !DILocation(line: 102, column: 6, scope: !2619)
!2675 = !DILocation(line: 103, column: 3, scope: !2672)
!2676 = !DILocation(line: 103, column: 9, scope: !2672)
!2677 = !DILocation(line: 103, column: 27, scope: !2672)
!2678 = !DILocalVariable(name: "__ret_warn_on", scope: !2679, file: !3, line: 104, type: !178)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 104, column: 6)
!2680 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 104, column: 6)
!2681 = !DILocation(line: 104, column: 6, scope: !2679)
!2682 = !DILocation(line: 0, scope: !2679)
!2683 = !DILocation(line: 104, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 104, column: 6)
!2685 = !DILocation(line: 104, column: 6, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 104, column: 6)
!2687 = !DILocation(line: 104, column: 6, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 104, column: 6)
!2689 = !DILocation(line: 104, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 104, column: 6)
!2691 = !{i32 -2143358022, i32 -2143357993, i32 -2143357947, i32 -2143357889, i32 -2143357835, i32 -2143357781, i32 -2143357726, i32 -2143357695}
!2692 = !DILocation(line: 104, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 104, column: 6)
!2694 = !{i32 -2143357286, i32 -2143357279, i32 -2143357227, i32 -2143357196, i32 -2143357166}
!2695 = !DILocation(line: 104, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 104, column: 6)
!2697 = !DILocation(line: 104, column: 6, scope: !2680)
!2698 = !DILocation(line: 104, column: 6, scope: !2619)
!2699 = !DILocation(line: 106, column: 3, scope: !2680)
!2700 = !DILocation(line: 106, column: 9, scope: !2680)
!2701 = !DILocation(line: 106, column: 15, scope: !2680)
!2702 = !DILocation(line: 107, column: 1, scope: !2619)
!2703 = distinct !DISubprogram(name: "platform_msi_domain_alloc_irqs", scope: !3, file: !3, line: 251, type: !2704, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!178, !132, !7, !2457}
!2706 = !DILocalVariable(name: "dev", arg: 1, scope: !2703, file: !3, line: 251, type: !132)
!2707 = !DILocation(line: 251, column: 51, scope: !2703)
!2708 = !DILocalVariable(name: "nvec", arg: 2, scope: !2703, file: !3, line: 251, type: !7)
!2709 = !DILocation(line: 251, column: 69, scope: !2703)
!2710 = !DILocalVariable(name: "write_msi_msg", arg: 3, scope: !2703, file: !3, line: 252, type: !2457)
!2711 = !DILocation(line: 252, column: 28, scope: !2703)
!2712 = !DILocalVariable(name: "priv_data", scope: !2703, file: !3, line: 254, type: !2418)
!2713 = !DILocation(line: 254, column: 33, scope: !2703)
!2714 = !DILocalVariable(name: "err", scope: !2703, file: !3, line: 255, type: !178)
!2715 = !DILocation(line: 255, column: 6, scope: !2703)
!2716 = !DILocation(line: 257, column: 43, scope: !2703)
!2717 = !DILocation(line: 257, column: 48, scope: !2703)
!2718 = !DILocation(line: 257, column: 54, scope: !2703)
!2719 = !DILocation(line: 257, column: 14, scope: !2703)
!2720 = !DILocation(line: 257, column: 12, scope: !2703)
!2721 = !DILocation(line: 258, column: 13, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 258, column: 6)
!2723 = !DILocation(line: 258, column: 6, scope: !2722)
!2724 = !DILocation(line: 258, column: 6, scope: !2703)
!2725 = !DILocation(line: 259, column: 18, scope: !2722)
!2726 = !DILocation(line: 259, column: 10, scope: !2722)
!2727 = !DILocation(line: 259, column: 3, scope: !2722)
!2728 = !DILocation(line: 261, column: 33, scope: !2703)
!2729 = !DILocation(line: 261, column: 38, scope: !2703)
!2730 = !DILocation(line: 261, column: 44, scope: !2703)
!2731 = !DILocation(line: 261, column: 8, scope: !2703)
!2732 = !DILocation(line: 261, column: 6, scope: !2703)
!2733 = !DILocation(line: 262, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 262, column: 6)
!2735 = !DILocation(line: 262, column: 6, scope: !2703)
!2736 = !DILocation(line: 263, column: 3, scope: !2734)
!2737 = !DILocation(line: 265, column: 30, scope: !2703)
!2738 = !DILocation(line: 265, column: 35, scope: !2703)
!2739 = !DILocation(line: 265, column: 47, scope: !2703)
!2740 = !DILocation(line: 265, column: 52, scope: !2703)
!2741 = !DILocation(line: 265, column: 8, scope: !2703)
!2742 = !DILocation(line: 265, column: 6, scope: !2703)
!2743 = !DILocation(line: 266, column: 6, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 266, column: 6)
!2745 = !DILocation(line: 266, column: 6, scope: !2703)
!2746 = !DILocation(line: 267, column: 3, scope: !2744)
!2747 = !DILocation(line: 269, column: 2, scope: !2703)
!2748 = !DILabel(scope: !2703, name: "out_free_desc", file: !3, line: 271)
!2749 = !DILocation(line: 271, column: 1, scope: !2703)
!2750 = !DILocation(line: 272, column: 26, scope: !2703)
!2751 = !DILocation(line: 272, column: 34, scope: !2703)
!2752 = !DILocation(line: 272, column: 2, scope: !2703)
!2753 = !DILabel(scope: !2703, name: "out_free_priv_data", file: !3, line: 273)
!2754 = !DILocation(line: 273, column: 1, scope: !2703)
!2755 = !DILocation(line: 274, column: 30, scope: !2703)
!2756 = !DILocation(line: 274, column: 2, scope: !2703)
!2757 = !DILocation(line: 276, column: 9, scope: !2703)
!2758 = !DILocation(line: 276, column: 2, scope: !2703)
!2759 = !DILocation(line: 277, column: 1, scope: !2703)
!2760 = distinct !DISubprogram(name: "platform_msi_alloc_priv_data", scope: !3, file: !3, line: 196, type: !2761, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!2418, !132, !7, !2457}
!2763 = !DILocalVariable(name: "dev", arg: 1, scope: !2760, file: !3, line: 196, type: !132)
!2764 = !DILocation(line: 196, column: 45, scope: !2760)
!2765 = !DILocalVariable(name: "nvec", arg: 2, scope: !2760, file: !3, line: 196, type: !7)
!2766 = !DILocation(line: 196, column: 63, scope: !2760)
!2767 = !DILocalVariable(name: "write_msi_msg", arg: 3, scope: !2760, file: !3, line: 197, type: !2457)
!2768 = !DILocation(line: 197, column: 29, scope: !2760)
!2769 = !DILocalVariable(name: "datap", scope: !2760, file: !3, line: 199, type: !2418)
!2770 = !DILocation(line: 199, column: 33, scope: !2760)
!2771 = !DILocation(line: 206, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 206, column: 6)
!2773 = !DILocation(line: 206, column: 12, scope: !2772)
!2774 = !DILocation(line: 206, column: 23, scope: !2772)
!2775 = !DILocation(line: 206, column: 27, scope: !2772)
!2776 = !DILocation(line: 206, column: 41, scope: !2772)
!2777 = !DILocation(line: 206, column: 45, scope: !2772)
!2778 = !DILocation(line: 206, column: 50, scope: !2772)
!2779 = !DILocation(line: 206, column: 53, scope: !2772)
!2780 = !DILocation(line: 206, column: 58, scope: !2772)
!2781 = !DILocation(line: 206, column: 6, scope: !2760)
!2782 = !DILocation(line: 207, column: 10, scope: !2772)
!2783 = !DILocation(line: 207, column: 3, scope: !2772)
!2784 = !DILocation(line: 209, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 209, column: 6)
!2786 = !DILocation(line: 209, column: 11, scope: !2785)
!2787 = !DILocation(line: 209, column: 23, scope: !2785)
!2788 = !DILocation(line: 209, column: 33, scope: !2785)
!2789 = !DILocation(line: 209, column: 6, scope: !2760)
!2790 = !DILocation(line: 210, column: 3, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 209, column: 61)
!2792 = !DILocation(line: 211, column: 10, scope: !2791)
!2793 = !DILocation(line: 211, column: 3, scope: !2791)
!2794 = !DILocation(line: 215, column: 18, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 215, column: 6)
!2796 = !DILocation(line: 215, column: 7, scope: !2795)
!2797 = !DILocation(line: 215, column: 6, scope: !2760)
!2798 = !DILocation(line: 216, column: 10, scope: !2795)
!2799 = !DILocation(line: 216, column: 3, scope: !2795)
!2800 = !DILocation(line: 218, column: 10, scope: !2760)
!2801 = !DILocation(line: 218, column: 8, scope: !2760)
!2802 = !DILocation(line: 219, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 219, column: 6)
!2804 = !DILocation(line: 219, column: 6, scope: !2760)
!2805 = !DILocation(line: 220, column: 10, scope: !2803)
!2806 = !DILocation(line: 220, column: 3, scope: !2803)
!2807 = !DILocation(line: 222, column: 17, scope: !2760)
!2808 = !DILocation(line: 222, column: 2, scope: !2760)
!2809 = !DILocation(line: 222, column: 9, scope: !2760)
!2810 = !DILocation(line: 222, column: 15, scope: !2760)
!2811 = !DILocation(line: 224, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 224, column: 6)
!2813 = !DILocation(line: 224, column: 13, scope: !2812)
!2814 = !DILocation(line: 224, column: 19, scope: !2812)
!2815 = !DILocation(line: 224, column: 6, scope: !2760)
!2816 = !DILocalVariable(name: "err", scope: !2817, file: !3, line: 225, type: !178)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 224, column: 24)
!2818 = !DILocation(line: 225, column: 7, scope: !2817)
!2819 = !DILocation(line: 225, column: 13, scope: !2817)
!2820 = !DILocation(line: 225, column: 20, scope: !2817)
!2821 = !DILocation(line: 226, column: 9, scope: !2817)
!2822 = !DILocation(line: 226, column: 3, scope: !2817)
!2823 = !DILocation(line: 227, column: 18, scope: !2817)
!2824 = !DILocation(line: 227, column: 10, scope: !2817)
!2825 = !DILocation(line: 227, column: 3, scope: !2817)
!2826 = !DILocation(line: 230, column: 21, scope: !2760)
!2827 = !DILocation(line: 230, column: 2, scope: !2760)
!2828 = !DILocation(line: 230, column: 9, scope: !2760)
!2829 = !DILocation(line: 230, column: 19, scope: !2760)
!2830 = !DILocation(line: 231, column: 15, scope: !2760)
!2831 = !DILocation(line: 231, column: 2, scope: !2760)
!2832 = !DILocation(line: 231, column: 9, scope: !2760)
!2833 = !DILocation(line: 231, column: 13, scope: !2760)
!2834 = !DILocation(line: 233, column: 9, scope: !2760)
!2835 = !DILocation(line: 233, column: 2, scope: !2760)
!2836 = !DILocation(line: 234, column: 1, scope: !2760)
!2837 = distinct !DISubprogram(name: "IS_ERR", scope: !2838, file: !2838, line: 34, type: !2839, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2838 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!1021, !1152}
!2841 = !DILocalVariable(name: "ptr", arg: 1, scope: !2837, file: !2838, line: 34, type: !1152)
!2842 = !DILocation(line: 34, column: 60, scope: !2837)
!2843 = !DILocation(line: 36, column: 9, scope: !2837)
!2844 = !DILocation(line: 36, column: 2, scope: !2837)
!2845 = distinct !DISubprogram(name: "PTR_ERR", scope: !2838, file: !2838, line: 29, type: !2846, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!229, !1152}
!2848 = !DILocalVariable(name: "ptr", arg: 1, scope: !2845, file: !2838, line: 29, type: !1152)
!2849 = !DILocation(line: 29, column: 61, scope: !2845)
!2850 = !DILocation(line: 31, column: 16, scope: !2845)
!2851 = !DILocation(line: 31, column: 9, scope: !2845)
!2852 = !DILocation(line: 31, column: 2, scope: !2845)
!2853 = distinct !DISubprogram(name: "platform_msi_alloc_descs", scope: !3, file: !3, line: 158, type: !2854, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!178, !132, !178, !2418}
!2856 = !DILocalVariable(name: "dev", arg: 1, scope: !2853, file: !3, line: 158, type: !132)
!2857 = !DILocation(line: 158, column: 52, scope: !2853)
!2858 = !DILocalVariable(name: "nvec", arg: 2, scope: !2853, file: !3, line: 158, type: !178)
!2859 = !DILocation(line: 158, column: 61, scope: !2853)
!2860 = !DILocalVariable(name: "data", arg: 3, scope: !2853, file: !3, line: 159, type: !2418)
!2861 = !DILocation(line: 159, column: 40, scope: !2853)
!2862 = !DILocation(line: 162, column: 43, scope: !2853)
!2863 = !DILocation(line: 162, column: 51, scope: !2853)
!2864 = !DILocation(line: 162, column: 57, scope: !2853)
!2865 = !DILocation(line: 162, column: 9, scope: !2853)
!2866 = !DILocation(line: 162, column: 2, scope: !2853)
!2867 = distinct !DISubprogram(name: "platform_msi_free_descs", scope: !3, file: !3, line: 109, type: !2868, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !132, !178, !178}
!2870 = !DILocalVariable(name: "dev", arg: 1, scope: !2867, file: !3, line: 109, type: !132)
!2871 = !DILocation(line: 109, column: 52, scope: !2867)
!2872 = !DILocalVariable(name: "base", arg: 2, scope: !2867, file: !3, line: 109, type: !178)
!2873 = !DILocation(line: 109, column: 61, scope: !2867)
!2874 = !DILocalVariable(name: "nvec", arg: 3, scope: !2867, file: !3, line: 109, type: !178)
!2875 = !DILocation(line: 109, column: 71, scope: !2867)
!2876 = !DILocalVariable(name: "desc", scope: !2867, file: !3, line: 111, type: !119)
!2877 = !DILocation(line: 111, column: 19, scope: !2867)
!2878 = !DILocalVariable(name: "tmp", scope: !2867, file: !3, line: 111, type: !119)
!2879 = !DILocation(line: 111, column: 26, scope: !2867)
!2880 = !DILocalVariable(name: "__mptr", scope: !2881, file: !3, line: 113, type: !118)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 113, column: 2)
!2882 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 113, column: 2)
!2883 = !DILocation(line: 113, column: 2, scope: !2881)
!2884 = !DILocation(line: 113, column: 2, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 113, column: 2)
!2886 = !DILocation(line: 113, column: 2, scope: !2882)
!2887 = !DILocalVariable(name: "__mptr", scope: !2888, file: !3, line: 113, type: !118)
!2888 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 113, column: 2)
!2889 = !DILocation(line: 113, column: 2, scope: !2888)
!2890 = !DILocation(line: 113, column: 2, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 113, column: 2)
!2892 = !DILocation(line: 113, column: 2, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 113, column: 2)
!2894 = !DILocation(line: 114, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 114, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 113, column: 66)
!2897 = !DILocation(line: 114, column: 13, scope: !2895)
!2898 = !DILocation(line: 114, column: 22, scope: !2895)
!2899 = !DILocation(line: 114, column: 35, scope: !2895)
!2900 = !DILocation(line: 114, column: 32, scope: !2895)
!2901 = !DILocation(line: 114, column: 40, scope: !2895)
!2902 = !DILocation(line: 115, column: 7, scope: !2895)
!2903 = !DILocation(line: 115, column: 13, scope: !2895)
!2904 = !DILocation(line: 115, column: 22, scope: !2895)
!2905 = !DILocation(line: 115, column: 35, scope: !2895)
!2906 = !DILocation(line: 115, column: 42, scope: !2895)
!2907 = !DILocation(line: 115, column: 40, scope: !2895)
!2908 = !DILocation(line: 115, column: 32, scope: !2895)
!2909 = !DILocation(line: 114, column: 7, scope: !2896)
!2910 = !DILocation(line: 116, column: 14, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 115, column: 49)
!2912 = !DILocation(line: 116, column: 20, scope: !2911)
!2913 = !DILocation(line: 116, column: 4, scope: !2911)
!2914 = !DILocation(line: 117, column: 19, scope: !2911)
!2915 = !DILocation(line: 117, column: 4, scope: !2911)
!2916 = !DILocation(line: 118, column: 3, scope: !2911)
!2917 = !DILocation(line: 119, column: 2, scope: !2896)
!2918 = !DILocalVariable(name: "__mptr", scope: !2919, file: !3, line: 113, type: !118)
!2919 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 113, column: 2)
!2920 = !DILocation(line: 113, column: 2, scope: !2919)
!2921 = !DILocation(line: 113, column: 2, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 113, column: 2)
!2923 = distinct !{!2923, !2886, !2924}
!2924 = !DILocation(line: 119, column: 2, scope: !2882)
!2925 = !DILocation(line: 120, column: 1, scope: !2867)
!2926 = distinct !DISubprogram(name: "platform_msi_free_priv_data", scope: !3, file: !3, line: 236, type: !2927, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2418}
!2929 = !DILocalVariable(name: "data", arg: 1, scope: !2926, file: !3, line: 236, type: !2418)
!2930 = !DILocation(line: 236, column: 72, scope: !2926)
!2931 = !DILocation(line: 238, column: 2, scope: !2926)
!2932 = !DILocation(line: 239, column: 8, scope: !2926)
!2933 = !DILocation(line: 239, column: 2, scope: !2926)
!2934 = !DILocation(line: 240, column: 1, scope: !2926)
!2935 = distinct !DISubprogram(name: "platform_msi_domain_free_irqs", scope: !3, file: !3, line: 284, type: !1644, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2936 = !DILocalVariable(name: "dev", arg: 1, scope: !2935, file: !3, line: 284, type: !132)
!2937 = !DILocation(line: 284, column: 51, scope: !2935)
!2938 = !DILocation(line: 286, column: 18, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 286, column: 6)
!2940 = !DILocation(line: 286, column: 7, scope: !2939)
!2941 = !DILocation(line: 286, column: 6, scope: !2935)
!2942 = !DILocalVariable(name: "desc", scope: !2943, file: !3, line: 287, type: !119)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 286, column: 41)
!2944 = !DILocation(line: 287, column: 20, scope: !2943)
!2945 = !DILocalVariable(name: "__mptr", scope: !2946, file: !3, line: 289, type: !118)
!2946 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 289, column: 10)
!2947 = !DILocation(line: 289, column: 10, scope: !2946)
!2948 = !DILocation(line: 289, column: 10, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 289, column: 10)
!2950 = !DILocation(line: 289, column: 8, scope: !2943)
!2951 = !DILocation(line: 290, column: 31, scope: !2943)
!2952 = !DILocation(line: 290, column: 37, scope: !2943)
!2953 = !DILocation(line: 290, column: 46, scope: !2943)
!2954 = !DILocation(line: 290, column: 3, scope: !2943)
!2955 = !DILocation(line: 291, column: 2, scope: !2943)
!2956 = !DILocation(line: 293, column: 23, scope: !2935)
!2957 = !DILocation(line: 293, column: 28, scope: !2935)
!2958 = !DILocation(line: 293, column: 40, scope: !2935)
!2959 = !DILocation(line: 293, column: 2, scope: !2935)
!2960 = !DILocation(line: 294, column: 26, scope: !2935)
!2961 = !DILocation(line: 294, column: 2, scope: !2935)
!2962 = !DILocation(line: 295, column: 1, scope: !2935)
!2963 = distinct !DISubprogram(name: "list_empty", scope: !2964, file: !2964, line: 280, type: !2965, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2964 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!178, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!2969 = !DILocalVariable(name: "head", arg: 1, scope: !2963, file: !2964, line: 280, type: !2967)
!2970 = !DILocation(line: 280, column: 54, scope: !2963)
!2971 = !DILocation(line: 282, column: 9, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2963, file: !2964, line: 282, column: 9)
!2973 = !DILocation(line: 282, column: 9, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2972, file: !2964, line: 282, column: 9)
!2975 = !DILocation(line: 282, column: 34, scope: !2963)
!2976 = !DILocation(line: 282, column: 31, scope: !2963)
!2977 = !DILocation(line: 282, column: 2, scope: !2963)
!2978 = distinct !DISubprogram(name: "platform_msi_get_host_data", scope: !3, file: !3, line: 306, type: !2979, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!118, !1906}
!2981 = !DILocalVariable(name: "domain", arg: 1, scope: !2978, file: !3, line: 306, type: !1906)
!2982 = !DILocation(line: 306, column: 53, scope: !2978)
!2983 = !DILocalVariable(name: "data", scope: !2978, file: !3, line: 308, type: !2418)
!2984 = !DILocation(line: 308, column: 33, scope: !2978)
!2985 = !DILocation(line: 308, column: 40, scope: !2978)
!2986 = !DILocation(line: 308, column: 48, scope: !2978)
!2987 = !DILocation(line: 309, column: 9, scope: !2978)
!2988 = !DILocation(line: 309, column: 15, scope: !2978)
!2989 = !DILocation(line: 309, column: 2, scope: !2978)
!2990 = distinct !DISubprogram(name: "__platform_msi_create_device_domain", scope: !3, file: !3, line: 324, type: !2991, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!1906, !132, !7, !1021, !2457, !1912, !118}
!2993 = !DILocalVariable(name: "dev", arg: 1, scope: !2990, file: !3, line: 324, type: !132)
!2994 = !DILocation(line: 324, column: 52, scope: !2990)
!2995 = !DILocalVariable(name: "nvec", arg: 2, scope: !2990, file: !3, line: 325, type: !7)
!2996 = !DILocation(line: 325, column: 22, scope: !2990)
!2997 = !DILocalVariable(name: "is_tree", arg: 3, scope: !2990, file: !3, line: 326, type: !1021)
!2998 = !DILocation(line: 326, column: 14, scope: !2990)
!2999 = !DILocalVariable(name: "write_msi_msg", arg: 4, scope: !2990, file: !3, line: 327, type: !2457)
!3000 = !DILocation(line: 327, column: 29, scope: !2990)
!3001 = !DILocalVariable(name: "ops", arg: 5, scope: !2990, file: !3, line: 328, type: !1912)
!3002 = !DILocation(line: 328, column: 38, scope: !2990)
!3003 = !DILocalVariable(name: "host_data", arg: 6, scope: !2990, file: !3, line: 329, type: !118)
!3004 = !DILocation(line: 329, column: 15, scope: !2990)
!3005 = !DILocalVariable(name: "data", scope: !2990, file: !3, line: 331, type: !2418)
!3006 = !DILocation(line: 331, column: 33, scope: !2990)
!3007 = !DILocalVariable(name: "domain", scope: !2990, file: !3, line: 332, type: !1906)
!3008 = !DILocation(line: 332, column: 21, scope: !2990)
!3009 = !DILocalVariable(name: "err", scope: !2990, file: !3, line: 333, type: !178)
!3010 = !DILocation(line: 333, column: 6, scope: !2990)
!3011 = !DILocation(line: 335, column: 38, scope: !2990)
!3012 = !DILocation(line: 335, column: 43, scope: !2990)
!3013 = !DILocation(line: 335, column: 49, scope: !2990)
!3014 = !DILocation(line: 335, column: 9, scope: !2990)
!3015 = !DILocation(line: 335, column: 7, scope: !2990)
!3016 = !DILocation(line: 336, column: 13, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 336, column: 6)
!3018 = !DILocation(line: 336, column: 6, scope: !3017)
!3019 = !DILocation(line: 336, column: 6, scope: !2990)
!3020 = !DILocation(line: 337, column: 3, scope: !3017)
!3021 = !DILocation(line: 339, column: 20, scope: !2990)
!3022 = !DILocation(line: 339, column: 2, scope: !2990)
!3023 = !DILocation(line: 339, column: 8, scope: !2990)
!3024 = !DILocation(line: 339, column: 18, scope: !2990)
!3025 = !DILocation(line: 340, column: 39, scope: !2990)
!3026 = !DILocation(line: 340, column: 44, scope: !2990)
!3027 = !DILocation(line: 341, column: 11, scope: !2990)
!3028 = !DILocation(line: 341, column: 25, scope: !2990)
!3029 = !DILocation(line: 342, column: 11, scope: !2990)
!3030 = !DILocation(line: 342, column: 16, scope: !2990)
!3031 = !DILocation(line: 342, column: 24, scope: !2990)
!3032 = !DILocation(line: 342, column: 29, scope: !2990)
!3033 = !DILocation(line: 340, column: 11, scope: !2990)
!3034 = !DILocation(line: 340, column: 9, scope: !2990)
!3035 = !DILocation(line: 343, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 343, column: 6)
!3037 = !DILocation(line: 343, column: 6, scope: !2990)
!3038 = !DILocation(line: 344, column: 3, scope: !3036)
!3039 = !DILocation(line: 346, column: 32, scope: !2990)
!3040 = !DILocation(line: 346, column: 40, scope: !2990)
!3041 = !DILocation(line: 346, column: 48, scope: !2990)
!3042 = !DILocation(line: 346, column: 53, scope: !2990)
!3043 = !DILocation(line: 346, column: 60, scope: !2990)
!3044 = !DILocation(line: 346, column: 66, scope: !2990)
!3045 = !DILocation(line: 346, column: 8, scope: !2990)
!3046 = !DILocation(line: 346, column: 6, scope: !2990)
!3047 = !DILocation(line: 347, column: 6, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 347, column: 6)
!3049 = !DILocation(line: 347, column: 6, scope: !2990)
!3050 = !DILocation(line: 348, column: 3, scope: !3048)
!3051 = !DILocation(line: 350, column: 9, scope: !2990)
!3052 = !DILocation(line: 350, column: 2, scope: !2990)
!3053 = !DILabel(scope: !2990, name: "free_domain", file: !3, line: 352)
!3054 = !DILocation(line: 352, column: 1, scope: !2990)
!3055 = !DILocation(line: 353, column: 20, scope: !2990)
!3056 = !DILocation(line: 353, column: 2, scope: !2990)
!3057 = !DILabel(scope: !2990, name: "free_priv", file: !3, line: 354)
!3058 = !DILocation(line: 354, column: 1, scope: !2990)
!3059 = !DILocation(line: 355, column: 30, scope: !2990)
!3060 = !DILocation(line: 355, column: 2, scope: !2990)
!3061 = !DILocation(line: 356, column: 2, scope: !2990)
!3062 = !DILocation(line: 357, column: 1, scope: !2990)
!3063 = distinct !DISubprogram(name: "platform_msi_domain_free", scope: !3, file: !3, line: 367, type: !2068, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3064 = !DILocalVariable(name: "domain", arg: 1, scope: !3063, file: !3, line: 367, type: !1906)
!3065 = !DILocation(line: 367, column: 50, scope: !3063)
!3066 = !DILocalVariable(name: "virq", arg: 2, scope: !3063, file: !3, line: 367, type: !7)
!3067 = !DILocation(line: 367, column: 71, scope: !3063)
!3068 = !DILocalVariable(name: "nvec", arg: 3, scope: !3063, file: !3, line: 368, type: !7)
!3069 = !DILocation(line: 368, column: 23, scope: !3063)
!3070 = !DILocalVariable(name: "data", scope: !3063, file: !3, line: 370, type: !2418)
!3071 = !DILocation(line: 370, column: 33, scope: !3063)
!3072 = !DILocation(line: 370, column: 40, scope: !3063)
!3073 = !DILocation(line: 370, column: 48, scope: !3063)
!3074 = !DILocalVariable(name: "desc", scope: !3063, file: !3, line: 371, type: !119)
!3075 = !DILocation(line: 371, column: 19, scope: !3063)
!3076 = !DILocalVariable(name: "tmp", scope: !3063, file: !3, line: 371, type: !119)
!3077 = !DILocation(line: 371, column: 26, scope: !3063)
!3078 = !DILocalVariable(name: "__mptr", scope: !3079, file: !3, line: 372, type: !118)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 372, column: 2)
!3080 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 372, column: 2)
!3081 = !DILocation(line: 372, column: 2, scope: !3079)
!3082 = !DILocation(line: 372, column: 2, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 372, column: 2)
!3084 = !DILocation(line: 372, column: 2, scope: !3080)
!3085 = !DILocalVariable(name: "__mptr", scope: !3086, file: !3, line: 372, type: !118)
!3086 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 372, column: 2)
!3087 = !DILocation(line: 372, column: 2, scope: !3086)
!3088 = !DILocation(line: 372, column: 2, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 372, column: 2)
!3090 = !DILocation(line: 372, column: 2, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 372, column: 2)
!3092 = !DILocalVariable(name: "__ret_warn_on", scope: !3093, file: !3, line: 373, type: !178)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 373, column: 7)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 373, column: 7)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 372, column: 48)
!3096 = !DILocation(line: 373, column: 7, scope: !3093)
!3097 = !DILocation(line: 373, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 373, column: 7)
!3099 = !DILocation(line: 373, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 373, column: 7)
!3101 = !DILocation(line: 373, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 373, column: 7)
!3103 = !DILocation(line: 373, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 373, column: 7)
!3105 = !{i32 -2143339293, i32 -2143339264, i32 -2143339218, i32 -2143339160, i32 -2143339106, i32 -2143339052, i32 -2143338997, i32 -2143338966}
!3106 = !DILocation(line: 373, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 373, column: 7)
!3108 = !{i32 -2143338557, i32 -2143338550, i32 -2143338498, i32 -2143338467, i32 -2143338437}
!3109 = !DILocation(line: 373, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 373, column: 7)
!3111 = !DILocation(line: 373, column: 7, scope: !3094)
!3112 = !DILocation(line: 373, column: 7, scope: !3095)
!3113 = !DILocation(line: 374, column: 4, scope: !3094)
!3114 = !DILocation(line: 375, column: 9, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 375, column: 7)
!3116 = !DILocation(line: 375, column: 15, scope: !3115)
!3117 = !DILocation(line: 375, column: 22, scope: !3115)
!3118 = !DILocation(line: 375, column: 19, scope: !3115)
!3119 = !DILocation(line: 375, column: 27, scope: !3115)
!3120 = !DILocation(line: 375, column: 30, scope: !3115)
!3121 = !DILocation(line: 375, column: 36, scope: !3115)
!3122 = !DILocation(line: 375, column: 43, scope: !3115)
!3123 = !DILocation(line: 375, column: 50, scope: !3115)
!3124 = !DILocation(line: 375, column: 48, scope: !3115)
!3125 = !DILocation(line: 375, column: 40, scope: !3115)
!3126 = !DILocation(line: 375, column: 7, scope: !3095)
!3127 = !DILocation(line: 376, column: 4, scope: !3115)
!3128 = !DILocation(line: 378, column: 31, scope: !3095)
!3129 = !DILocation(line: 378, column: 39, scope: !3095)
!3130 = !DILocation(line: 378, column: 45, scope: !3095)
!3131 = !DILocation(line: 378, column: 3, scope: !3095)
!3132 = !DILocation(line: 379, column: 13, scope: !3095)
!3133 = !DILocation(line: 379, column: 19, scope: !3095)
!3134 = !DILocation(line: 379, column: 3, scope: !3095)
!3135 = !DILocation(line: 380, column: 18, scope: !3095)
!3136 = !DILocation(line: 380, column: 3, scope: !3095)
!3137 = !DILocation(line: 381, column: 2, scope: !3095)
!3138 = !DILocalVariable(name: "__mptr", scope: !3139, file: !3, line: 372, type: !118)
!3139 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 372, column: 2)
!3140 = !DILocation(line: 372, column: 2, scope: !3139)
!3141 = !DILocation(line: 372, column: 2, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 372, column: 2)
!3143 = distinct !{!3143, !3084, !3144}
!3144 = !DILocation(line: 381, column: 2, scope: !3080)
!3145 = !DILocation(line: 382, column: 1, scope: !3063)
!3146 = distinct !DISubprogram(name: "list_del", scope: !2964, file: !2964, line: 144, type: !3147, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !127}
!3149 = !DILocalVariable(name: "entry", arg: 1, scope: !3146, file: !2964, line: 144, type: !127)
!3150 = !DILocation(line: 144, column: 47, scope: !3146)
!3151 = !DILocation(line: 146, column: 19, scope: !3146)
!3152 = !DILocation(line: 146, column: 2, scope: !3146)
!3153 = !DILocation(line: 147, column: 2, scope: !3146)
!3154 = !DILocation(line: 147, column: 9, scope: !3146)
!3155 = !DILocation(line: 147, column: 14, scope: !3146)
!3156 = !DILocation(line: 148, column: 2, scope: !3146)
!3157 = !DILocation(line: 148, column: 9, scope: !3146)
!3158 = !DILocation(line: 148, column: 14, scope: !3146)
!3159 = !DILocation(line: 149, column: 1, scope: !3146)
!3160 = distinct !DISubprogram(name: "platform_msi_domain_alloc", scope: !3, file: !3, line: 396, type: !3161, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!178, !1906, !7, !7}
!3163 = !DILocalVariable(name: "domain", arg: 1, scope: !3160, file: !3, line: 396, type: !1906)
!3164 = !DILocation(line: 396, column: 50, scope: !3160)
!3165 = !DILocalVariable(name: "virq", arg: 2, scope: !3160, file: !3, line: 396, type: !7)
!3166 = !DILocation(line: 396, column: 71, scope: !3160)
!3167 = !DILocalVariable(name: "nr_irqs", arg: 3, scope: !3160, file: !3, line: 397, type: !7)
!3168 = !DILocation(line: 397, column: 23, scope: !3160)
!3169 = !DILocalVariable(name: "data", scope: !3160, file: !3, line: 399, type: !2418)
!3170 = !DILocation(line: 399, column: 33, scope: !3160)
!3171 = !DILocation(line: 399, column: 40, scope: !3160)
!3172 = !DILocation(line: 399, column: 48, scope: !3160)
!3173 = !DILocalVariable(name: "err", scope: !3160, file: !3, line: 400, type: !178)
!3174 = !DILocation(line: 400, column: 6, scope: !3160)
!3175 = !DILocation(line: 402, column: 42, scope: !3160)
!3176 = !DILocation(line: 402, column: 48, scope: !3160)
!3177 = !DILocation(line: 402, column: 53, scope: !3160)
!3178 = !DILocation(line: 402, column: 59, scope: !3160)
!3179 = !DILocation(line: 402, column: 68, scope: !3160)
!3180 = !DILocation(line: 402, column: 8, scope: !3160)
!3181 = !DILocation(line: 402, column: 6, scope: !3160)
!3182 = !DILocation(line: 403, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 403, column: 6)
!3184 = !DILocation(line: 403, column: 6, scope: !3160)
!3185 = !DILocation(line: 404, column: 10, scope: !3183)
!3186 = !DILocation(line: 404, column: 3, scope: !3183)
!3187 = !DILocation(line: 406, column: 33, scope: !3160)
!3188 = !DILocation(line: 406, column: 41, scope: !3160)
!3189 = !DILocation(line: 406, column: 49, scope: !3160)
!3190 = !DILocation(line: 406, column: 55, scope: !3160)
!3191 = !DILocation(line: 407, column: 12, scope: !3160)
!3192 = !DILocation(line: 407, column: 18, scope: !3160)
!3193 = !DILocation(line: 407, column: 28, scope: !3160)
!3194 = !DILocation(line: 407, column: 34, scope: !3160)
!3195 = !DILocation(line: 406, column: 8, scope: !3160)
!3196 = !DILocation(line: 406, column: 6, scope: !3160)
!3197 = !DILocation(line: 408, column: 6, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 408, column: 6)
!3199 = !DILocation(line: 408, column: 6, scope: !3160)
!3200 = !DILocation(line: 409, column: 28, scope: !3198)
!3201 = !DILocation(line: 409, column: 36, scope: !3198)
!3202 = !DILocation(line: 409, column: 42, scope: !3198)
!3203 = !DILocation(line: 409, column: 3, scope: !3198)
!3204 = !DILocation(line: 411, column: 9, scope: !3160)
!3205 = !DILocation(line: 411, column: 2, scope: !3160)
!3206 = !DILocation(line: 412, column: 1, scope: !3160)
!3207 = distinct !DISubprogram(name: "platform_msi_alloc_descs_with_irq", scope: !3, file: !3, line: 122, type: !3208, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!178, !132, !178, !178, !2418}
!3210 = !DILocalVariable(name: "dev", arg: 1, scope: !3207, file: !3, line: 122, type: !132)
!3211 = !DILocation(line: 122, column: 61, scope: !3207)
!3212 = !DILocalVariable(name: "virq", arg: 2, scope: !3207, file: !3, line: 122, type: !178)
!3213 = !DILocation(line: 122, column: 70, scope: !3207)
!3214 = !DILocalVariable(name: "nvec", arg: 3, scope: !3207, file: !3, line: 123, type: !178)
!3215 = !DILocation(line: 123, column: 15, scope: !3207)
!3216 = !DILocalVariable(name: "data", arg: 4, scope: !3207, file: !3, line: 124, type: !2418)
!3217 = !DILocation(line: 124, column: 42, scope: !3207)
!3218 = !DILocalVariable(name: "desc", scope: !3207, file: !3, line: 127, type: !119)
!3219 = !DILocation(line: 127, column: 19, scope: !3207)
!3220 = !DILocalVariable(name: "i", scope: !3207, file: !3, line: 128, type: !178)
!3221 = !DILocation(line: 128, column: 6, scope: !3207)
!3222 = !DILocalVariable(name: "base", scope: !3207, file: !3, line: 128, type: !178)
!3223 = !DILocation(line: 128, column: 9, scope: !3207)
!3224 = !DILocation(line: 130, column: 18, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 130, column: 6)
!3226 = !DILocation(line: 130, column: 7, scope: !3225)
!3227 = !DILocation(line: 130, column: 6, scope: !3207)
!3228 = !DILocalVariable(name: "__mptr", scope: !3229, file: !3, line: 131, type: !118)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 131, column: 10)
!3230 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 130, column: 41)
!3231 = !DILocation(line: 131, column: 10, scope: !3229)
!3232 = !DILocation(line: 131, column: 10, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 131, column: 10)
!3234 = !DILocation(line: 131, column: 8, scope: !3230)
!3235 = !DILocation(line: 133, column: 10, scope: !3230)
!3236 = !DILocation(line: 133, column: 16, scope: !3230)
!3237 = !DILocation(line: 133, column: 25, scope: !3230)
!3238 = !DILocation(line: 133, column: 35, scope: !3230)
!3239 = !DILocation(line: 133, column: 8, scope: !3230)
!3240 = !DILocation(line: 134, column: 2, scope: !3230)
!3241 = !DILocation(line: 136, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 136, column: 2)
!3243 = !DILocation(line: 136, column: 7, scope: !3242)
!3244 = !DILocation(line: 136, column: 14, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 136, column: 2)
!3246 = !DILocation(line: 136, column: 18, scope: !3245)
!3247 = !DILocation(line: 136, column: 16, scope: !3245)
!3248 = !DILocation(line: 136, column: 2, scope: !3242)
!3249 = !DILocation(line: 137, column: 26, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 136, column: 29)
!3251 = !DILocation(line: 137, column: 10, scope: !3250)
!3252 = !DILocation(line: 137, column: 8, scope: !3250)
!3253 = !DILocation(line: 138, column: 8, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 138, column: 7)
!3255 = !DILocation(line: 138, column: 7, scope: !3250)
!3256 = !DILocation(line: 139, column: 4, scope: !3254)
!3257 = !DILocation(line: 141, column: 34, scope: !3250)
!3258 = !DILocation(line: 141, column: 3, scope: !3250)
!3259 = !DILocation(line: 141, column: 9, scope: !3250)
!3260 = !DILocation(line: 141, column: 18, scope: !3250)
!3261 = !DILocation(line: 141, column: 32, scope: !3250)
!3262 = !DILocation(line: 142, column: 30, scope: !3250)
!3263 = !DILocation(line: 142, column: 37, scope: !3250)
!3264 = !DILocation(line: 142, column: 35, scope: !3250)
!3265 = !DILocation(line: 142, column: 3, scope: !3250)
!3266 = !DILocation(line: 142, column: 9, scope: !3250)
!3267 = !DILocation(line: 142, column: 18, scope: !3250)
!3268 = !DILocation(line: 142, column: 28, scope: !3250)
!3269 = !DILocation(line: 143, column: 15, scope: !3250)
!3270 = !DILocation(line: 143, column: 22, scope: !3250)
!3271 = !DILocation(line: 143, column: 29, scope: !3250)
!3272 = !DILocation(line: 143, column: 27, scope: !3250)
!3273 = !DILocation(line: 143, column: 3, scope: !3250)
!3274 = !DILocation(line: 143, column: 9, scope: !3250)
!3275 = !DILocation(line: 143, column: 13, scope: !3250)
!3276 = !DILocation(line: 145, column: 18, scope: !3250)
!3277 = !DILocation(line: 145, column: 24, scope: !3250)
!3278 = !DILocation(line: 145, column: 30, scope: !3250)
!3279 = !DILocation(line: 145, column: 3, scope: !3250)
!3280 = !DILocation(line: 146, column: 2, scope: !3250)
!3281 = !DILocation(line: 136, column: 25, scope: !3245)
!3282 = !DILocation(line: 136, column: 2, scope: !3245)
!3283 = distinct !{!3283, !3248, !3284}
!3284 = !DILocation(line: 146, column: 2, scope: !3242)
!3285 = !DILocation(line: 148, column: 6, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 148, column: 6)
!3287 = !DILocation(line: 148, column: 11, scope: !3286)
!3288 = !DILocation(line: 148, column: 8, scope: !3286)
!3289 = !DILocation(line: 148, column: 6, scope: !3207)
!3290 = !DILocation(line: 150, column: 27, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 148, column: 17)
!3292 = !DILocation(line: 150, column: 32, scope: !3291)
!3293 = !DILocation(line: 150, column: 38, scope: !3291)
!3294 = !DILocation(line: 150, column: 3, scope: !3291)
!3295 = !DILocation(line: 152, column: 3, scope: !3291)
!3296 = !DILocation(line: 155, column: 2, scope: !3207)
!3297 = !DILocation(line: 156, column: 1, scope: !3207)
!3298 = distinct !DISubprogram(name: "platform_msi_write_msg", scope: !3, file: !3, line: 79, type: !2142, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3299 = !DILocalVariable(name: "data", arg: 1, scope: !3298, file: !3, line: 79, type: !2074)
!3300 = !DILocation(line: 79, column: 53, scope: !3298)
!3301 = !DILocalVariable(name: "msg", arg: 2, scope: !3298, file: !3, line: 79, type: !2144)
!3302 = !DILocation(line: 79, column: 75, scope: !3298)
!3303 = !DILocalVariable(name: "desc", scope: !3298, file: !3, line: 81, type: !119)
!3304 = !DILocation(line: 81, column: 19, scope: !3298)
!3305 = !DILocation(line: 81, column: 48, scope: !3298)
!3306 = !DILocation(line: 81, column: 26, scope: !3298)
!3307 = !DILocalVariable(name: "priv_data", scope: !3298, file: !3, line: 82, type: !2418)
!3308 = !DILocation(line: 82, column: 33, scope: !3298)
!3309 = !DILocation(line: 84, column: 14, scope: !3298)
!3310 = !DILocation(line: 84, column: 20, scope: !3298)
!3311 = !DILocation(line: 84, column: 29, scope: !3298)
!3312 = !DILocation(line: 84, column: 12, scope: !3298)
!3313 = !DILocation(line: 86, column: 2, scope: !3298)
!3314 = !DILocation(line: 86, column: 13, scope: !3298)
!3315 = !DILocation(line: 86, column: 23, scope: !3298)
!3316 = !DILocation(line: 86, column: 29, scope: !3298)
!3317 = !DILocation(line: 87, column: 1, scope: !3298)
!3318 = distinct !DISubprogram(name: "irq_data_get_msi_desc", scope: !76, file: !76, line: 850, type: !3319, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!119, !2074}
!3321 = !DILocalVariable(name: "d", arg: 1, scope: !3318, file: !76, line: 850, type: !2074)
!3322 = !DILocation(line: 850, column: 71, scope: !3318)
!3323 = !DILocation(line: 852, column: 9, scope: !3318)
!3324 = !DILocation(line: 852, column: 12, scope: !3318)
!3325 = !DILocation(line: 852, column: 20, scope: !3318)
!3326 = !DILocation(line: 852, column: 2, scope: !3318)
!3327 = distinct !DISubprogram(name: "ERR_PTR", scope: !2838, file: !2838, line: 24, type: !3328, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!118, !229}
!3330 = !DILocalVariable(name: "error", arg: 1, scope: !3327, file: !2838, line: 24, type: !229)
!3331 = !DILocation(line: 24, column: 48, scope: !3327)
!3332 = !DILocation(line: 26, column: 18, scope: !3327)
!3333 = !DILocation(line: 26, column: 9, scope: !3327)
!3334 = !DILocation(line: 26, column: 2, scope: !3327)
!3335 = distinct !DISubprogram(name: "kzalloc", scope: !106, file: !106, line: 662, type: !3336, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!118, !241, !1493}
!3338 = !DILocalVariable(name: "s", arg: 1, scope: !3339, file: !106, line: 445, type: !1071)
!3339 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !106, file: !106, line: 445, type: !3340, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!118, !1071, !1493, !241}
!3342 = !DILocation(line: 445, column: 72, scope: !3339, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 552, column: 10, scope: !3344, inlinedAt: !3347)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !106, line: 540, column: 34)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !106, line: 540, column: 6)
!3346 = distinct !DISubprogram(name: "kmalloc", scope: !106, file: !106, line: 538, type: !3336, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3347 = distinct !DILocation(line: 664, column: 9, scope: !3335)
!3348 = !DILocalVariable(name: "flags", arg: 2, scope: !3339, file: !106, line: 446, type: !1493)
!3349 = !DILocation(line: 446, column: 9, scope: !3339, inlinedAt: !3343)
!3350 = !DILocalVariable(name: "size", arg: 3, scope: !3339, file: !106, line: 446, type: !241)
!3351 = !DILocation(line: 446, column: 23, scope: !3339, inlinedAt: !3343)
!3352 = !DILocalVariable(name: "ret", scope: !3339, file: !106, line: 448, type: !118)
!3353 = !DILocation(line: 448, column: 8, scope: !3339, inlinedAt: !3343)
!3354 = !DILocalVariable(name: "flags", arg: 1, scope: !3355, file: !106, line: 318, type: !1493)
!3355 = distinct !DISubprogram(name: "kmalloc_type", scope: !106, file: !106, line: 318, type: !3356, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!105, !1493}
!3358 = !DILocation(line: 318, column: 67, scope: !3355, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 553, column: 20, scope: !3344, inlinedAt: !3347)
!3360 = !DILocalVariable(name: "size", arg: 1, scope: !3361, file: !106, line: 346, type: !241)
!3361 = distinct !DISubprogram(name: "kmalloc_index", scope: !106, file: !106, line: 346, type: !3362, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!7, !241}
!3364 = !DILocation(line: 346, column: 58, scope: !3361, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 547, column: 11, scope: !3344, inlinedAt: !3347)
!3366 = !DILocalVariable(name: "size", arg: 1, scope: !3367, file: !106, line: 472, type: !241)
!3367 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !106, file: !106, line: 472, type: !3368, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!118, !241, !1493, !7}
!3370 = !DILocation(line: 472, column: 28, scope: !3367, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 481, column: 9, scope: !3372, inlinedAt: !3373)
!3372 = distinct !DISubprogram(name: "kmalloc_large", scope: !106, file: !106, line: 478, type: !3336, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3373 = distinct !DILocation(line: 545, column: 11, scope: !3374, inlinedAt: !3347)
!3374 = distinct !DILexicalBlock(scope: !3344, file: !106, line: 544, column: 7)
!3375 = !DILocalVariable(name: "flags", arg: 2, scope: !3367, file: !106, line: 472, type: !1493)
!3376 = !DILocation(line: 472, column: 40, scope: !3367, inlinedAt: !3371)
!3377 = !DILocalVariable(name: "order", arg: 3, scope: !3367, file: !106, line: 472, type: !7)
!3378 = !DILocation(line: 472, column: 60, scope: !3367, inlinedAt: !3371)
!3379 = !DILocalVariable(name: "size", arg: 1, scope: !3372, file: !106, line: 478, type: !241)
!3380 = !DILocation(line: 478, column: 51, scope: !3372, inlinedAt: !3373)
!3381 = !DILocalVariable(name: "flags", arg: 2, scope: !3372, file: !106, line: 478, type: !1493)
!3382 = !DILocation(line: 478, column: 63, scope: !3372, inlinedAt: !3373)
!3383 = !DILocalVariable(name: "order", scope: !3372, file: !106, line: 480, type: !7)
!3384 = !DILocation(line: 480, column: 15, scope: !3372, inlinedAt: !3373)
!3385 = !DILocalVariable(name: "size", arg: 1, scope: !3346, file: !106, line: 538, type: !241)
!3386 = !DILocation(line: 538, column: 45, scope: !3346, inlinedAt: !3347)
!3387 = !DILocalVariable(name: "flags", arg: 2, scope: !3346, file: !106, line: 538, type: !1493)
!3388 = !DILocation(line: 538, column: 57, scope: !3346, inlinedAt: !3347)
!3389 = !DILocalVariable(name: "index", scope: !3344, file: !106, line: 542, type: !7)
!3390 = !DILocation(line: 542, column: 16, scope: !3344, inlinedAt: !3347)
!3391 = !DILocalVariable(name: "size", arg: 1, scope: !3335, file: !106, line: 662, type: !241)
!3392 = !DILocation(line: 662, column: 36, scope: !3335)
!3393 = !DILocalVariable(name: "flags", arg: 2, scope: !3335, file: !106, line: 662, type: !1493)
!3394 = !DILocation(line: 662, column: 48, scope: !3335)
!3395 = !DILocation(line: 664, column: 17, scope: !3335)
!3396 = !DILocation(line: 664, column: 23, scope: !3335)
!3397 = !DILocation(line: 664, column: 29, scope: !3335)
!3398 = !DILocation(line: 540, column: 27, scope: !3345, inlinedAt: !3347)
!3399 = !DILocation(line: 540, column: 6, scope: !3345, inlinedAt: !3347)
!3400 = !DILocation(line: 540, column: 6, scope: !3346, inlinedAt: !3347)
!3401 = !DILocation(line: 544, column: 7, scope: !3374, inlinedAt: !3347)
!3402 = !DILocation(line: 544, column: 12, scope: !3374, inlinedAt: !3347)
!3403 = !DILocation(line: 544, column: 7, scope: !3344, inlinedAt: !3347)
!3404 = !DILocation(line: 545, column: 25, scope: !3374, inlinedAt: !3347)
!3405 = !DILocation(line: 545, column: 31, scope: !3374, inlinedAt: !3347)
!3406 = !DILocation(line: 480, column: 33, scope: !3372, inlinedAt: !3373)
!3407 = !DILocation(line: 480, column: 23, scope: !3372, inlinedAt: !3373)
!3408 = !DILocation(line: 481, column: 29, scope: !3372, inlinedAt: !3373)
!3409 = !DILocation(line: 481, column: 35, scope: !3372, inlinedAt: !3373)
!3410 = !DILocation(line: 481, column: 42, scope: !3372, inlinedAt: !3373)
!3411 = !DILocation(line: 474, column: 23, scope: !3367, inlinedAt: !3371)
!3412 = !DILocation(line: 474, column: 29, scope: !3367, inlinedAt: !3371)
!3413 = !DILocation(line: 474, column: 36, scope: !3367, inlinedAt: !3371)
!3414 = !DILocation(line: 474, column: 9, scope: !3367, inlinedAt: !3371)
!3415 = !DILocation(line: 545, column: 4, scope: !3374, inlinedAt: !3347)
!3416 = !DILocation(line: 547, column: 25, scope: !3344, inlinedAt: !3347)
!3417 = !DILocation(line: 348, column: 7, scope: !3418, inlinedAt: !3365)
!3418 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 348, column: 6)
!3419 = !DILocation(line: 348, column: 6, scope: !3361, inlinedAt: !3365)
!3420 = !DILocation(line: 349, column: 3, scope: !3418, inlinedAt: !3365)
!3421 = !DILocation(line: 351, column: 6, scope: !3422, inlinedAt: !3365)
!3422 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 351, column: 6)
!3423 = !DILocation(line: 351, column: 11, scope: !3422, inlinedAt: !3365)
!3424 = !DILocation(line: 351, column: 6, scope: !3361, inlinedAt: !3365)
!3425 = !DILocation(line: 352, column: 3, scope: !3422, inlinedAt: !3365)
!3426 = !DILocation(line: 354, column: 32, scope: !3427, inlinedAt: !3365)
!3427 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 354, column: 6)
!3428 = !DILocation(line: 354, column: 37, scope: !3427, inlinedAt: !3365)
!3429 = !DILocation(line: 354, column: 42, scope: !3427, inlinedAt: !3365)
!3430 = !DILocation(line: 354, column: 45, scope: !3427, inlinedAt: !3365)
!3431 = !DILocation(line: 354, column: 50, scope: !3427, inlinedAt: !3365)
!3432 = !DILocation(line: 354, column: 6, scope: !3361, inlinedAt: !3365)
!3433 = !DILocation(line: 355, column: 3, scope: !3427, inlinedAt: !3365)
!3434 = !DILocation(line: 356, column: 32, scope: !3435, inlinedAt: !3365)
!3435 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 356, column: 6)
!3436 = !DILocation(line: 356, column: 37, scope: !3435, inlinedAt: !3365)
!3437 = !DILocation(line: 356, column: 43, scope: !3435, inlinedAt: !3365)
!3438 = !DILocation(line: 356, column: 46, scope: !3435, inlinedAt: !3365)
!3439 = !DILocation(line: 356, column: 51, scope: !3435, inlinedAt: !3365)
!3440 = !DILocation(line: 356, column: 6, scope: !3361, inlinedAt: !3365)
!3441 = !DILocation(line: 357, column: 3, scope: !3435, inlinedAt: !3365)
!3442 = !DILocation(line: 358, column: 6, scope: !3443, inlinedAt: !3365)
!3443 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 358, column: 6)
!3444 = !DILocation(line: 358, column: 11, scope: !3443, inlinedAt: !3365)
!3445 = !DILocation(line: 358, column: 6, scope: !3361, inlinedAt: !3365)
!3446 = !DILocation(line: 358, column: 26, scope: !3443, inlinedAt: !3365)
!3447 = !DILocation(line: 359, column: 6, scope: !3448, inlinedAt: !3365)
!3448 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 359, column: 6)
!3449 = !DILocation(line: 359, column: 11, scope: !3448, inlinedAt: !3365)
!3450 = !DILocation(line: 359, column: 6, scope: !3361, inlinedAt: !3365)
!3451 = !DILocation(line: 359, column: 26, scope: !3448, inlinedAt: !3365)
!3452 = !DILocation(line: 360, column: 6, scope: !3453, inlinedAt: !3365)
!3453 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 360, column: 6)
!3454 = !DILocation(line: 360, column: 11, scope: !3453, inlinedAt: !3365)
!3455 = !DILocation(line: 360, column: 6, scope: !3361, inlinedAt: !3365)
!3456 = !DILocation(line: 360, column: 26, scope: !3453, inlinedAt: !3365)
!3457 = !DILocation(line: 361, column: 6, scope: !3458, inlinedAt: !3365)
!3458 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 361, column: 6)
!3459 = !DILocation(line: 361, column: 11, scope: !3458, inlinedAt: !3365)
!3460 = !DILocation(line: 361, column: 6, scope: !3361, inlinedAt: !3365)
!3461 = !DILocation(line: 361, column: 26, scope: !3458, inlinedAt: !3365)
!3462 = !DILocation(line: 362, column: 6, scope: !3463, inlinedAt: !3365)
!3463 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 362, column: 6)
!3464 = !DILocation(line: 362, column: 11, scope: !3463, inlinedAt: !3365)
!3465 = !DILocation(line: 362, column: 6, scope: !3361, inlinedAt: !3365)
!3466 = !DILocation(line: 362, column: 26, scope: !3463, inlinedAt: !3365)
!3467 = !DILocation(line: 363, column: 6, scope: !3468, inlinedAt: !3365)
!3468 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 363, column: 6)
!3469 = !DILocation(line: 363, column: 11, scope: !3468, inlinedAt: !3365)
!3470 = !DILocation(line: 363, column: 6, scope: !3361, inlinedAt: !3365)
!3471 = !DILocation(line: 363, column: 26, scope: !3468, inlinedAt: !3365)
!3472 = !DILocation(line: 364, column: 6, scope: !3473, inlinedAt: !3365)
!3473 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 364, column: 6)
!3474 = !DILocation(line: 364, column: 11, scope: !3473, inlinedAt: !3365)
!3475 = !DILocation(line: 364, column: 6, scope: !3361, inlinedAt: !3365)
!3476 = !DILocation(line: 364, column: 26, scope: !3473, inlinedAt: !3365)
!3477 = !DILocation(line: 365, column: 6, scope: !3478, inlinedAt: !3365)
!3478 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 365, column: 6)
!3479 = !DILocation(line: 365, column: 11, scope: !3478, inlinedAt: !3365)
!3480 = !DILocation(line: 365, column: 6, scope: !3361, inlinedAt: !3365)
!3481 = !DILocation(line: 365, column: 26, scope: !3478, inlinedAt: !3365)
!3482 = !DILocation(line: 366, column: 6, scope: !3483, inlinedAt: !3365)
!3483 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 366, column: 6)
!3484 = !DILocation(line: 366, column: 11, scope: !3483, inlinedAt: !3365)
!3485 = !DILocation(line: 366, column: 6, scope: !3361, inlinedAt: !3365)
!3486 = !DILocation(line: 366, column: 26, scope: !3483, inlinedAt: !3365)
!3487 = !DILocation(line: 367, column: 6, scope: !3488, inlinedAt: !3365)
!3488 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 367, column: 6)
!3489 = !DILocation(line: 367, column: 11, scope: !3488, inlinedAt: !3365)
!3490 = !DILocation(line: 367, column: 6, scope: !3361, inlinedAt: !3365)
!3491 = !DILocation(line: 367, column: 26, scope: !3488, inlinedAt: !3365)
!3492 = !DILocation(line: 368, column: 6, scope: !3493, inlinedAt: !3365)
!3493 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 368, column: 6)
!3494 = !DILocation(line: 368, column: 11, scope: !3493, inlinedAt: !3365)
!3495 = !DILocation(line: 368, column: 6, scope: !3361, inlinedAt: !3365)
!3496 = !DILocation(line: 368, column: 26, scope: !3493, inlinedAt: !3365)
!3497 = !DILocation(line: 369, column: 6, scope: !3498, inlinedAt: !3365)
!3498 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 369, column: 6)
!3499 = !DILocation(line: 369, column: 11, scope: !3498, inlinedAt: !3365)
!3500 = !DILocation(line: 369, column: 6, scope: !3361, inlinedAt: !3365)
!3501 = !DILocation(line: 369, column: 26, scope: !3498, inlinedAt: !3365)
!3502 = !DILocation(line: 370, column: 6, scope: !3503, inlinedAt: !3365)
!3503 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 370, column: 6)
!3504 = !DILocation(line: 370, column: 11, scope: !3503, inlinedAt: !3365)
!3505 = !DILocation(line: 370, column: 6, scope: !3361, inlinedAt: !3365)
!3506 = !DILocation(line: 370, column: 26, scope: !3503, inlinedAt: !3365)
!3507 = !DILocation(line: 371, column: 6, scope: !3508, inlinedAt: !3365)
!3508 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 371, column: 6)
!3509 = !DILocation(line: 371, column: 11, scope: !3508, inlinedAt: !3365)
!3510 = !DILocation(line: 371, column: 6, scope: !3361, inlinedAt: !3365)
!3511 = !DILocation(line: 371, column: 26, scope: !3508, inlinedAt: !3365)
!3512 = !DILocation(line: 372, column: 6, scope: !3513, inlinedAt: !3365)
!3513 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 372, column: 6)
!3514 = !DILocation(line: 372, column: 11, scope: !3513, inlinedAt: !3365)
!3515 = !DILocation(line: 372, column: 6, scope: !3361, inlinedAt: !3365)
!3516 = !DILocation(line: 372, column: 26, scope: !3513, inlinedAt: !3365)
!3517 = !DILocation(line: 373, column: 6, scope: !3518, inlinedAt: !3365)
!3518 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 373, column: 6)
!3519 = !DILocation(line: 373, column: 11, scope: !3518, inlinedAt: !3365)
!3520 = !DILocation(line: 373, column: 6, scope: !3361, inlinedAt: !3365)
!3521 = !DILocation(line: 373, column: 26, scope: !3518, inlinedAt: !3365)
!3522 = !DILocation(line: 374, column: 6, scope: !3523, inlinedAt: !3365)
!3523 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 374, column: 6)
!3524 = !DILocation(line: 374, column: 11, scope: !3523, inlinedAt: !3365)
!3525 = !DILocation(line: 374, column: 6, scope: !3361, inlinedAt: !3365)
!3526 = !DILocation(line: 374, column: 26, scope: !3523, inlinedAt: !3365)
!3527 = !DILocation(line: 375, column: 6, scope: !3528, inlinedAt: !3365)
!3528 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 375, column: 6)
!3529 = !DILocation(line: 375, column: 11, scope: !3528, inlinedAt: !3365)
!3530 = !DILocation(line: 375, column: 6, scope: !3361, inlinedAt: !3365)
!3531 = !DILocation(line: 375, column: 27, scope: !3528, inlinedAt: !3365)
!3532 = !DILocation(line: 376, column: 6, scope: !3533, inlinedAt: !3365)
!3533 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 376, column: 6)
!3534 = !DILocation(line: 376, column: 11, scope: !3533, inlinedAt: !3365)
!3535 = !DILocation(line: 376, column: 6, scope: !3361, inlinedAt: !3365)
!3536 = !DILocation(line: 376, column: 32, scope: !3533, inlinedAt: !3365)
!3537 = !DILocation(line: 377, column: 6, scope: !3538, inlinedAt: !3365)
!3538 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 377, column: 6)
!3539 = !DILocation(line: 377, column: 11, scope: !3538, inlinedAt: !3365)
!3540 = !DILocation(line: 377, column: 6, scope: !3361, inlinedAt: !3365)
!3541 = !DILocation(line: 377, column: 32, scope: !3538, inlinedAt: !3365)
!3542 = !DILocation(line: 378, column: 6, scope: !3543, inlinedAt: !3365)
!3543 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 378, column: 6)
!3544 = !DILocation(line: 378, column: 11, scope: !3543, inlinedAt: !3365)
!3545 = !DILocation(line: 378, column: 6, scope: !3361, inlinedAt: !3365)
!3546 = !DILocation(line: 378, column: 32, scope: !3543, inlinedAt: !3365)
!3547 = !DILocation(line: 379, column: 6, scope: !3548, inlinedAt: !3365)
!3548 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 379, column: 6)
!3549 = !DILocation(line: 379, column: 11, scope: !3548, inlinedAt: !3365)
!3550 = !DILocation(line: 379, column: 6, scope: !3361, inlinedAt: !3365)
!3551 = !DILocation(line: 379, column: 33, scope: !3548, inlinedAt: !3365)
!3552 = !DILocation(line: 380, column: 6, scope: !3553, inlinedAt: !3365)
!3553 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 380, column: 6)
!3554 = !DILocation(line: 380, column: 11, scope: !3553, inlinedAt: !3365)
!3555 = !DILocation(line: 380, column: 6, scope: !3361, inlinedAt: !3365)
!3556 = !DILocation(line: 380, column: 33, scope: !3553, inlinedAt: !3365)
!3557 = !DILocation(line: 381, column: 6, scope: !3558, inlinedAt: !3365)
!3558 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 381, column: 6)
!3559 = !DILocation(line: 381, column: 11, scope: !3558, inlinedAt: !3365)
!3560 = !DILocation(line: 381, column: 6, scope: !3361, inlinedAt: !3365)
!3561 = !DILocation(line: 381, column: 33, scope: !3558, inlinedAt: !3365)
!3562 = !DILocation(line: 382, column: 2, scope: !3563, inlinedAt: !3365)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !106, line: 382, column: 2)
!3564 = distinct !DILexicalBlock(scope: !3361, file: !106, line: 382, column: 2)
!3565 = !{i32 -2143595880, i32 -2143595851, i32 -2143595805, i32 -2143595747, i32 -2143595693, i32 -2143595639, i32 -2143595584, i32 -2143595553}
!3566 = !DILocation(line: 382, column: 2, scope: !3567, inlinedAt: !3365)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !106, line: 382, column: 2)
!3568 = distinct !DILexicalBlock(scope: !3564, file: !106, line: 382, column: 2)
!3569 = !{i32 -2143595110, i32 -2143595103, i32 -2143595049, i32 -2143595018, i32 -2143594988}
!3570 = !DILocation(line: 382, column: 2, scope: !3568, inlinedAt: !3365)
!3571 = !DILocation(line: 386, column: 1, scope: !3361, inlinedAt: !3365)
!3572 = !DILocation(line: 547, column: 9, scope: !3344, inlinedAt: !3347)
!3573 = !DILocation(line: 549, column: 8, scope: !3574, inlinedAt: !3347)
!3574 = distinct !DILexicalBlock(scope: !3344, file: !106, line: 549, column: 7)
!3575 = !DILocation(line: 549, column: 7, scope: !3344, inlinedAt: !3347)
!3576 = !DILocation(line: 550, column: 4, scope: !3574, inlinedAt: !3347)
!3577 = !DILocation(line: 553, column: 33, scope: !3344, inlinedAt: !3347)
!3578 = !DILocation(line: 325, column: 6, scope: !3579, inlinedAt: !3359)
!3579 = distinct !DILexicalBlock(scope: !3355, file: !106, line: 325, column: 6)
!3580 = !DILocation(line: 325, column: 6, scope: !3355, inlinedAt: !3359)
!3581 = !DILocation(line: 326, column: 3, scope: !3579, inlinedAt: !3359)
!3582 = !DILocation(line: 332, column: 9, scope: !3355, inlinedAt: !3359)
!3583 = !DILocation(line: 332, column: 15, scope: !3355, inlinedAt: !3359)
!3584 = !DILocation(line: 332, column: 2, scope: !3355, inlinedAt: !3359)
!3585 = !DILocation(line: 336, column: 1, scope: !3355, inlinedAt: !3359)
!3586 = !DILocation(line: 553, column: 5, scope: !3344, inlinedAt: !3347)
!3587 = !DILocation(line: 553, column: 41, scope: !3344, inlinedAt: !3347)
!3588 = !DILocation(line: 554, column: 5, scope: !3344, inlinedAt: !3347)
!3589 = !DILocation(line: 554, column: 12, scope: !3344, inlinedAt: !3347)
!3590 = !DILocation(line: 448, column: 31, scope: !3339, inlinedAt: !3343)
!3591 = !DILocation(line: 448, column: 34, scope: !3339, inlinedAt: !3343)
!3592 = !DILocation(line: 448, column: 14, scope: !3339, inlinedAt: !3343)
!3593 = !DILocation(line: 450, column: 22, scope: !3339, inlinedAt: !3343)
!3594 = !DILocation(line: 450, column: 25, scope: !3339, inlinedAt: !3343)
!3595 = !DILocation(line: 450, column: 30, scope: !3339, inlinedAt: !3343)
!3596 = !DILocation(line: 450, column: 36, scope: !3339, inlinedAt: !3343)
!3597 = !DILocation(line: 450, column: 8, scope: !3339, inlinedAt: !3343)
!3598 = !DILocation(line: 450, column: 6, scope: !3339, inlinedAt: !3343)
!3599 = !DILocation(line: 451, column: 9, scope: !3339, inlinedAt: !3343)
!3600 = !DILocation(line: 552, column: 3, scope: !3344, inlinedAt: !3347)
!3601 = !DILocation(line: 557, column: 19, scope: !3346, inlinedAt: !3347)
!3602 = !DILocation(line: 557, column: 25, scope: !3346, inlinedAt: !3347)
!3603 = !DILocation(line: 557, column: 9, scope: !3346, inlinedAt: !3347)
!3604 = !DILocation(line: 557, column: 2, scope: !3346, inlinedAt: !3347)
!3605 = !DILocation(line: 558, column: 1, scope: !3346, inlinedAt: !3347)
!3606 = !DILocation(line: 664, column: 2, scope: !3335)
!3607 = distinct !DISubprogram(name: "get_order", scope: !3608, file: !3608, line: 29, type: !3609, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3608 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!178, !244}
!3611 = !DILocalVariable(name: "x", arg: 1, scope: !3612, file: !3613, line: 366, type: !315)
!3612 = distinct !DISubprogram(name: "fls64", scope: !3613, file: !3613, line: 366, type: !3614, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3613 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!178, !315}
!3616 = !DILocation(line: 366, column: 40, scope: !3612, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 46, column: 9, scope: !3607)
!3618 = !DILocalVariable(name: "bitpos", scope: !3612, file: !3613, line: 368, type: !178)
!3619 = !DILocation(line: 368, column: 6, scope: !3612, inlinedAt: !3617)
!3620 = !DILocalVariable(name: "size", arg: 1, scope: !3607, file: !3608, line: 29, type: !244)
!3621 = !DILocation(line: 29, column: 63, scope: !3607)
!3622 = !DILocation(line: 31, column: 27, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3607, file: !3608, line: 31, column: 6)
!3624 = !DILocation(line: 31, column: 6, scope: !3623)
!3625 = !DILocation(line: 31, column: 6, scope: !3607)
!3626 = !DILocation(line: 32, column: 8, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3608, line: 32, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3623, file: !3608, line: 31, column: 34)
!3629 = !DILocation(line: 32, column: 7, scope: !3628)
!3630 = !DILocation(line: 33, column: 4, scope: !3627)
!3631 = !DILocation(line: 35, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !3608, line: 35, column: 7)
!3633 = !DILocation(line: 35, column: 12, scope: !3632)
!3634 = !DILocation(line: 35, column: 7, scope: !3628)
!3635 = !DILocation(line: 36, column: 4, scope: !3632)
!3636 = !DILocation(line: 38, column: 10, scope: !3628)
!3637 = !DILocation(line: 38, column: 28, scope: !3628)
!3638 = !DILocation(line: 38, column: 41, scope: !3628)
!3639 = !DILocation(line: 38, column: 3, scope: !3628)
!3640 = !DILocation(line: 41, column: 6, scope: !3607)
!3641 = !DILocation(line: 42, column: 7, scope: !3607)
!3642 = !DILocation(line: 46, column: 15, scope: !3607)
!3643 = !DILocation(line: 374, column: 2, scope: !3612, inlinedAt: !3617)
!3644 = !DILocation(line: 376, column: 14, scope: !3612, inlinedAt: !3617)
!3645 = !{i32 386163}
!3646 = !DILocation(line: 377, column: 9, scope: !3612, inlinedAt: !3617)
!3647 = !DILocation(line: 377, column: 16, scope: !3612, inlinedAt: !3617)
!3648 = !DILocation(line: 46, column: 2, scope: !3607)
!3649 = !DILocation(line: 48, column: 1, scope: !3607)
!3650 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3651, file: !3651, line: 30, type: !3652, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3651 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!178, !313}
!3654 = !DILocation(line: 366, column: 40, scope: !3612, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 32, column: 9, scope: !3650)
!3656 = !DILocation(line: 368, column: 6, scope: !3612, inlinedAt: !3655)
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !3651, line: 30, type: !313)
!3658 = !DILocation(line: 30, column: 21, scope: !3650)
!3659 = !DILocation(line: 32, column: 15, scope: !3650)
!3660 = !DILocation(line: 374, column: 2, scope: !3612, inlinedAt: !3655)
!3661 = !DILocation(line: 376, column: 14, scope: !3612, inlinedAt: !3655)
!3662 = !DILocation(line: 377, column: 9, scope: !3612, inlinedAt: !3655)
!3663 = !DILocation(line: 377, column: 16, scope: !3612, inlinedAt: !3655)
!3664 = !DILocation(line: 32, column: 18, scope: !3650)
!3665 = !DILocation(line: 32, column: 2, scope: !3650)
!3666 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3667, file: !3667, line: 137, type: !3668, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3667 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!118, !1071, !1152, !241, !1493}
!3670 = !DILocalVariable(name: "s", arg: 1, scope: !3666, file: !3667, line: 137, type: !1071)
!3671 = !DILocation(line: 137, column: 54, scope: !3666)
!3672 = !DILocalVariable(name: "object", arg: 2, scope: !3666, file: !3667, line: 137, type: !1152)
!3673 = !DILocation(line: 137, column: 69, scope: !3666)
!3674 = !DILocalVariable(name: "size", arg: 3, scope: !3666, file: !3667, line: 138, type: !241)
!3675 = !DILocation(line: 138, column: 12, scope: !3666)
!3676 = !DILocalVariable(name: "flags", arg: 4, scope: !3666, file: !3667, line: 138, type: !1493)
!3677 = !DILocation(line: 138, column: 24, scope: !3666)
!3678 = !DILocation(line: 140, column: 17, scope: !3666)
!3679 = !DILocation(line: 140, column: 2, scope: !3666)
!3680 = distinct !DISubprogram(name: "__list_del_entry", scope: !2964, file: !2964, line: 130, type: !3147, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3681 = !DILocalVariable(name: "entry", arg: 1, scope: !3680, file: !2964, line: 130, type: !127)
!3682 = !DILocation(line: 130, column: 55, scope: !3680)
!3683 = !DILocation(line: 132, column: 30, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !2964, line: 132, column: 6)
!3685 = !DILocation(line: 132, column: 7, scope: !3684)
!3686 = !DILocation(line: 132, column: 6, scope: !3680)
!3687 = !DILocation(line: 133, column: 3, scope: !3684)
!3688 = !DILocation(line: 135, column: 13, scope: !3680)
!3689 = !DILocation(line: 135, column: 20, scope: !3680)
!3690 = !DILocation(line: 135, column: 26, scope: !3680)
!3691 = !DILocation(line: 135, column: 33, scope: !3680)
!3692 = !DILocation(line: 135, column: 2, scope: !3680)
!3693 = !DILocation(line: 136, column: 1, scope: !3680)
!3694 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2964, file: !2964, line: 51, type: !3695, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!1021, !127}
!3697 = !DILocalVariable(name: "entry", arg: 1, scope: !3694, file: !2964, line: 51, type: !127)
!3698 = !DILocation(line: 51, column: 61, scope: !3694)
!3699 = !DILocation(line: 53, column: 2, scope: !3694)
!3700 = distinct !DISubprogram(name: "__list_del", scope: !2964, file: !2964, line: 110, type: !3701, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !127, !127}
!3703 = !DILocalVariable(name: "prev", arg: 1, scope: !3700, file: !2964, line: 110, type: !127)
!3704 = !DILocation(line: 110, column: 50, scope: !3700)
!3705 = !DILocalVariable(name: "next", arg: 2, scope: !3700, file: !2964, line: 110, type: !127)
!3706 = !DILocation(line: 110, column: 75, scope: !3700)
!3707 = !DILocation(line: 112, column: 15, scope: !3700)
!3708 = !DILocation(line: 112, column: 2, scope: !3700)
!3709 = !DILocation(line: 112, column: 8, scope: !3700)
!3710 = !DILocation(line: 112, column: 13, scope: !3700)
!3711 = !DILocation(line: 113, column: 2, scope: !3700)
!3712 = !DILocation(line: 113, column: 2, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3700, file: !2964, line: 113, column: 2)
!3714 = !DILocation(line: 113, column: 2, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3713, file: !2964, line: 113, column: 2)
!3716 = !DILocation(line: 113, column: 2, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !2964, line: 113, column: 2)
!3718 = !DILocation(line: 114, column: 1, scope: !3700)
!3719 = distinct !DISubprogram(name: "list_add_tail", scope: !2964, file: !2964, line: 98, type: !3701, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3720 = !DILocalVariable(name: "new", arg: 1, scope: !3719, file: !2964, line: 98, type: !127)
!3721 = !DILocation(line: 98, column: 52, scope: !3719)
!3722 = !DILocalVariable(name: "head", arg: 2, scope: !3719, file: !2964, line: 98, type: !127)
!3723 = !DILocation(line: 98, column: 75, scope: !3719)
!3724 = !DILocation(line: 100, column: 13, scope: !3719)
!3725 = !DILocation(line: 100, column: 18, scope: !3719)
!3726 = !DILocation(line: 100, column: 24, scope: !3719)
!3727 = !DILocation(line: 100, column: 30, scope: !3719)
!3728 = !DILocation(line: 100, column: 2, scope: !3719)
!3729 = !DILocation(line: 101, column: 1, scope: !3719)
!3730 = distinct !DISubprogram(name: "__list_add", scope: !2964, file: !2964, line: 63, type: !3731, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !127, !127, !127}
!3733 = !DILocalVariable(name: "new", arg: 1, scope: !3730, file: !2964, line: 63, type: !127)
!3734 = !DILocation(line: 63, column: 49, scope: !3730)
!3735 = !DILocalVariable(name: "prev", arg: 2, scope: !3730, file: !2964, line: 64, type: !127)
!3736 = !DILocation(line: 64, column: 28, scope: !3730)
!3737 = !DILocalVariable(name: "next", arg: 3, scope: !3730, file: !2964, line: 65, type: !127)
!3738 = !DILocation(line: 65, column: 28, scope: !3730)
!3739 = !DILocation(line: 67, column: 24, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3730, file: !2964, line: 67, column: 6)
!3741 = !DILocation(line: 67, column: 29, scope: !3740)
!3742 = !DILocation(line: 67, column: 35, scope: !3740)
!3743 = !DILocation(line: 67, column: 7, scope: !3740)
!3744 = !DILocation(line: 67, column: 6, scope: !3730)
!3745 = !DILocation(line: 68, column: 3, scope: !3740)
!3746 = !DILocation(line: 70, column: 15, scope: !3730)
!3747 = !DILocation(line: 70, column: 2, scope: !3730)
!3748 = !DILocation(line: 70, column: 8, scope: !3730)
!3749 = !DILocation(line: 70, column: 13, scope: !3730)
!3750 = !DILocation(line: 71, column: 14, scope: !3730)
!3751 = !DILocation(line: 71, column: 2, scope: !3730)
!3752 = !DILocation(line: 71, column: 7, scope: !3730)
!3753 = !DILocation(line: 71, column: 12, scope: !3730)
!3754 = !DILocation(line: 72, column: 14, scope: !3730)
!3755 = !DILocation(line: 72, column: 2, scope: !3730)
!3756 = !DILocation(line: 72, column: 7, scope: !3730)
!3757 = !DILocation(line: 72, column: 12, scope: !3730)
!3758 = !DILocation(line: 73, column: 2, scope: !3730)
!3759 = !DILocation(line: 73, column: 2, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3730, file: !2964, line: 73, column: 2)
!3761 = !DILocation(line: 73, column: 2, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3760, file: !2964, line: 73, column: 2)
!3763 = !DILocation(line: 73, column: 2, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !2964, line: 73, column: 2)
!3765 = !DILocation(line: 74, column: 1, scope: !3730)
!3766 = distinct !DISubprogram(name: "__list_add_valid", scope: !2964, file: !2964, line: 45, type: !3767, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!1021, !127, !127, !127}
!3769 = !DILocalVariable(name: "new", arg: 1, scope: !3766, file: !2964, line: 45, type: !127)
!3770 = !DILocation(line: 45, column: 55, scope: !3766)
!3771 = !DILocalVariable(name: "prev", arg: 2, scope: !3766, file: !2964, line: 46, type: !127)
!3772 = !DILocation(line: 46, column: 23, scope: !3766)
!3773 = !DILocalVariable(name: "next", arg: 3, scope: !3766, file: !2964, line: 47, type: !127)
!3774 = !DILocation(line: 47, column: 23, scope: !3766)
!3775 = !DILocation(line: 49, column: 2, scope: !3766)
