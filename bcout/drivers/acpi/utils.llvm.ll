; ModuleID = '../bcout/drivers/acpi/utils.llvm.bc'
source_filename = "drivers/acpi/utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.kmem_cache = type opaque
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
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon.2 = type { i32, i32, %union.acpi_object* }
%struct.anon.0 = type { i32, i32, i8* }
%struct.anon.1 = type { i32, i32, i8* }
%struct.anon = type { i32, i64 }
%struct.anon.3 = type { i32, i32, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_handle_list = type { i32, [10 x i8*] }
%struct.acpi_pld_info = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.guid_t = type { [16 x i8] }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
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
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_device_bus_id = type { [15 x i8], i32, %struct.list_head }
%struct.acpi_dev_match_info = type { [2 x %struct.acpi_device_id], i8*, i64 }
%struct.acpi_platform_list = type { [7 x i8], [9 x i8], i32, i8*, i32, i8*, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [34 x i8] c"\014ACPI: Invalid package argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\014ACPI: Invalid format argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\014ACPI: Invalid buffer argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"\014ACPI: Format specifies more objects [%d] than exist in package [%d].\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\014ACPI: Invalid package element [%d]: got number, expecting [%c]\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"\014ACPI: Invalid package element [%d] got string/buffer, expecting [%c]\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"\014ACPI: Invalid package element [%d] got reference, expecting [%c]\0A\00", align 1
@__const.acpi_evaluate_reference.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@__const.acpi_get_physical_device_location.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"_PLD\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"_OST\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%sACPI: %s: %pV\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"<n/a>\00", align 1
@__const.acpi_execute_simple_method.obj = private unnamed_addr constant { i32, [20 x i8] } { i32 1, [20 x i8] undef }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"No _EJ0 support for device\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Eject failed (0x%x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"_LCK\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Locking device failed (0x%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Unlocking device failed (0x%x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"_REG\00", align 1
@__const.acpi_evaluate_dsm.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"failed to evaluate _DSM (0x%x)\0A\00", align 1
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@acpi_bus_id_list = external dso_local global %struct.list_head, align 8
@acpi_bus_type = external dso_local global %struct.bus_type, align 8
@__setup_str_acpi_backlight = internal constant [16 x i8] c"acpi_backlight=\00", section ".init.rodata", align 1, !dbg !0
@__setup_acpi_backlight = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_acpi_backlight, i32 0, i32 0), i32 (i8*)* @acpi_backlight, i32 0 }, section ".init.setup", align 8, !dbg !2450
@acpi_disabled = external dso_local global i32, align 4
@acpi_video_backlight_string = dso_local global [16 x i8] zeroinitializer, align 16, !dbg !2461
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__const.acpi_handle_path.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@__preempt_count = external dso_local global i32, section ".data", align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_extract_package(%union.acpi_object* %package, %struct.acpi_buffer* %format, %struct.acpi_buffer* %buffer) #0 !dbg !2470 {
entry:
  %retval = alloca i32, align 4
  %package.addr = alloca %union.acpi_object*, align 8
  %format.addr = alloca %struct.acpi_buffer*, align 8
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %size_required = alloca i32, align 4
  %tail_offset = alloca i32, align 4
  %format_string = alloca i8*, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %head = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %element = alloca %union.acpi_object*, align 8
  %pointer141 = alloca i8**, align 8
  %element142 = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %package, %union.acpi_object** %package.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %package.addr, metadata !2478, metadata !DIExpression()), !dbg !2479
  store %struct.acpi_buffer* %format, %struct.acpi_buffer** %format.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %format.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.declare(metadata i32* %size_required, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i32 0, i32* %size_required, align 4, !dbg !2485
  call void @llvm.dbg.declare(metadata i32* %tail_offset, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i32 0, i32* %tail_offset, align 4, !dbg !2487
  call void @llvm.dbg.declare(metadata i8** %format_string, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i8* null, i8** %format_string, align 8, !dbg !2489
  call void @llvm.dbg.declare(metadata i32* %format_count, metadata !2490, metadata !DIExpression()), !dbg !2491
  store i32 0, i32* %format_count, align 4, !dbg !2491
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i32 0, i32* %i, align 4, !dbg !2493
  call void @llvm.dbg.declare(metadata i8** %head, metadata !2494, metadata !DIExpression()), !dbg !2495
  store i8* null, i8** %head, align 8, !dbg !2495
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i8* null, i8** %tail, align 8, !dbg !2497
  %0 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2498
  %tobool = icmp ne %union.acpi_object* %0, null, !dbg !2498
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2500

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2501
  %type = bitcast %union.acpi_object* %1 to i32*, !dbg !2502
  %2 = load i32, i32* %type, align 8, !dbg !2502
  %cmp = icmp ne i32 %2, 4, !dbg !2503
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2504

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2505
  %package2 = bitcast %union.acpi_object* %3 to %struct.anon.2*, !dbg !2506
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 1, !dbg !2507
  %4 = load i32, i32* %count, align 4, !dbg !2507
  %cmp3 = icmp ult i32 %4, 1, !dbg !2508
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2509

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #11, !dbg !2510
  store i32 4097, i32* %retval, align 4, !dbg !2512
  br label %return, !dbg !2512

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %format.addr, align 8, !dbg !2513
  %tobool4 = icmp ne %struct.acpi_buffer* %5, null, !dbg !2513
  br i1 %tobool4, label %lor.lhs.false5, label %if.then9, !dbg !2515

lor.lhs.false5:                                   ; preds = %if.end
  %6 = load %struct.acpi_buffer*, %struct.acpi_buffer** %format.addr, align 8, !dbg !2516
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1, !dbg !2517
  %7 = load i8*, i8** %pointer, align 8, !dbg !2517
  %tobool6 = icmp ne i8* %7, null, !dbg !2516
  br i1 %tobool6, label %lor.lhs.false7, label %if.then9, !dbg !2518

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %8 = load %struct.acpi_buffer*, %struct.acpi_buffer** %format.addr, align 8, !dbg !2519
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0, !dbg !2520
  %9 = load i64, i64* %length, align 8, !dbg !2520
  %cmp8 = icmp ult i64 %9, 1, !dbg !2521
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2522

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %if.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2523
  store i32 4097, i32* %retval, align 4, !dbg !2525
  br label %return, !dbg !2525

if.end11:                                         ; preds = %lor.lhs.false7
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2526
  %tobool12 = icmp ne %struct.acpi_buffer* %10, null, !dbg !2526
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !2528

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !2529
  store i32 4097, i32* %retval, align 4, !dbg !2531
  br label %return, !dbg !2531

if.end15:                                         ; preds = %if.end11
  %11 = load %struct.acpi_buffer*, %struct.acpi_buffer** %format.addr, align 8, !dbg !2532
  %length16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0, !dbg !2533
  %12 = load i64, i64* %length16, align 8, !dbg !2533
  %div = udiv i64 %12, 1, !dbg !2534
  %sub = sub i64 %div, 1, !dbg !2535
  %conv = trunc i64 %sub to i32, !dbg !2536
  store i32 %conv, i32* %format_count, align 4, !dbg !2537
  %13 = load i32, i32* %format_count, align 4, !dbg !2538
  %14 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2540
  %package17 = bitcast %union.acpi_object* %14 to %struct.anon.2*, !dbg !2541
  %count18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package17, i32 0, i32 1, !dbg !2542
  %15 = load i32, i32* %count18, align 4, !dbg !2542
  %cmp19 = icmp ugt i32 %13, %15, !dbg !2543
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !2544

if.then21:                                        ; preds = %if.end15
  %16 = load i32, i32* %format_count, align 4, !dbg !2545
  %17 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2547
  %package22 = bitcast %union.acpi_object* %17 to %struct.anon.2*, !dbg !2548
  %count23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package22, i32 0, i32 1, !dbg !2549
  %18 = load i32, i32* %count23, align 4, !dbg !2549
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %18) #11, !dbg !2550
  store i32 4100, i32* %retval, align 4, !dbg !2551
  br label %return, !dbg !2551

if.end25:                                         ; preds = %if.end15
  %19 = load %struct.acpi_buffer*, %struct.acpi_buffer** %format.addr, align 8, !dbg !2552
  %pointer26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %19, i32 0, i32 1, !dbg !2553
  %20 = load i8*, i8** %pointer26, align 8, !dbg !2553
  store i8* %20, i8** %format_string, align 8, !dbg !2554
  store i32 0, i32* %i, align 4, !dbg !2555
  br label %for.cond, !dbg !2557

for.cond:                                         ; preds = %for.inc, %if.end25
  %21 = load i32, i32* %i, align 4, !dbg !2558
  %22 = load i32, i32* %format_count, align 4, !dbg !2560
  %cmp27 = icmp ult i32 %21, %22, !dbg !2561
  br i1 %cmp27, label %for.body, label %for.end, !dbg !2562

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !2563, metadata !DIExpression()), !dbg !2565
  %23 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2566
  %package29 = bitcast %union.acpi_object* %23 to %struct.anon.2*, !dbg !2567
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package29, i32 0, i32 2, !dbg !2568
  %24 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2568
  %25 = load i32, i32* %i, align 4, !dbg !2569
  %idxprom = zext i32 %25 to i64, !dbg !2566
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %24, i64 %idxprom, !dbg !2566
  store %union.acpi_object* %arrayidx, %union.acpi_object** %element, align 8, !dbg !2565
  %26 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !2570
  %type30 = bitcast %union.acpi_object* %26 to i32*, !dbg !2571
  %27 = load i32, i32* %type30, align 8, !dbg !2571
  switch i32 %27, label %sw.default101 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
    i32 3, label %sw.bb51
    i32 20, label %sw.bb83
    i32 4, label %sw.bb100
  ], !dbg !2572

sw.bb:                                            ; preds = %for.body
  %28 = load i8*, i8** %format_string, align 8, !dbg !2573
  %29 = load i32, i32* %i, align 4, !dbg !2575
  %idxprom31 = zext i32 %29 to i64, !dbg !2573
  %arrayidx32 = getelementptr i8, i8* %28, i64 %idxprom31, !dbg !2573
  %30 = load i8, i8* %arrayidx32, align 1, !dbg !2573
  %conv33 = sext i8 %30 to i32, !dbg !2573
  switch i32 %conv33, label %sw.default [
    i32 78, label %sw.bb34
    i32 83, label %sw.bb40
  ], !dbg !2576

sw.bb34:                                          ; preds = %sw.bb
  %31 = load i32, i32* %size_required, align 4, !dbg !2577
  %conv35 = zext i32 %31 to i64, !dbg !2577
  %add = add i64 %conv35, 8, !dbg !2577
  %conv36 = trunc i64 %add to i32, !dbg !2577
  store i32 %conv36, i32* %size_required, align 4, !dbg !2577
  %32 = load i32, i32* %tail_offset, align 4, !dbg !2579
  %conv37 = zext i32 %32 to i64, !dbg !2579
  %add38 = add i64 %conv37, 8, !dbg !2579
  %conv39 = trunc i64 %add38 to i32, !dbg !2579
  store i32 %conv39, i32* %tail_offset, align 4, !dbg !2579
  br label %sw.epilog, !dbg !2580

sw.bb40:                                          ; preds = %sw.bb
  %33 = load i32, i32* %size_required, align 4, !dbg !2581
  %conv41 = zext i32 %33 to i64, !dbg !2581
  %add42 = add i64 %conv41, 17, !dbg !2581
  %conv43 = trunc i64 %add42 to i32, !dbg !2581
  store i32 %conv43, i32* %size_required, align 4, !dbg !2581
  %34 = load i32, i32* %tail_offset, align 4, !dbg !2582
  %conv44 = zext i32 %34 to i64, !dbg !2582
  %add45 = add i64 %conv44, 8, !dbg !2582
  %conv46 = trunc i64 %add45 to i32, !dbg !2582
  store i32 %conv46, i32* %tail_offset, align 4, !dbg !2582
  br label %sw.epilog, !dbg !2583

sw.default:                                       ; preds = %sw.bb
  %35 = load i32, i32* %i, align 4, !dbg !2584
  %36 = load i8*, i8** %format_string, align 8, !dbg !2585
  %37 = load i32, i32* %i, align 4, !dbg !2586
  %idxprom47 = zext i32 %37 to i64, !dbg !2585
  %arrayidx48 = getelementptr i8, i8* %36, i64 %idxprom47, !dbg !2585
  %38 = load i8, i8* %arrayidx48, align 1, !dbg !2585
  %conv49 = sext i8 %38 to i32, !dbg !2585
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %conv49) #11, !dbg !2587
  store i32 4100, i32* %retval, align 4, !dbg !2588
  br label %return, !dbg !2588

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb34
  br label %sw.epilog102, !dbg !2589

sw.bb51:                                          ; preds = %for.body, %for.body
  %39 = load i8*, i8** %format_string, align 8, !dbg !2590
  %40 = load i32, i32* %i, align 4, !dbg !2591
  %idxprom52 = zext i32 %40 to i64, !dbg !2590
  %arrayidx53 = getelementptr i8, i8* %39, i64 %idxprom52, !dbg !2590
  %41 = load i8, i8* %arrayidx53, align 1, !dbg !2590
  %conv54 = sext i8 %41 to i32, !dbg !2590
  switch i32 %conv54, label %sw.default77 [
    i32 83, label %sw.bb55
    i32 66, label %sw.bb66
  ], !dbg !2592

sw.bb55:                                          ; preds = %sw.bb51
  %42 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !2593
  %string = bitcast %union.acpi_object* %42 to %struct.anon.0*, !dbg !2595
  %length56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 1, !dbg !2596
  %43 = load i32, i32* %length56, align 4, !dbg !2596
  %conv57 = zext i32 %43 to i64, !dbg !2593
  %mul = mul i64 %conv57, 1, !dbg !2597
  %add58 = add i64 8, %mul, !dbg !2598
  %add59 = add i64 %add58, 1, !dbg !2599
  %44 = load i32, i32* %size_required, align 4, !dbg !2600
  %conv60 = zext i32 %44 to i64, !dbg !2600
  %add61 = add i64 %conv60, %add59, !dbg !2600
  %conv62 = trunc i64 %add61 to i32, !dbg !2600
  store i32 %conv62, i32* %size_required, align 4, !dbg !2600
  %45 = load i32, i32* %tail_offset, align 4, !dbg !2601
  %conv63 = zext i32 %45 to i64, !dbg !2601
  %add64 = add i64 %conv63, 8, !dbg !2601
  %conv65 = trunc i64 %add64 to i32, !dbg !2601
  store i32 %conv65, i32* %tail_offset, align 4, !dbg !2601
  br label %sw.epilog82, !dbg !2602

sw.bb66:                                          ; preds = %sw.bb51
  %46 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !2603
  %buffer67 = bitcast %union.acpi_object* %46 to %struct.anon.1*, !dbg !2604
  %length68 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer67, i32 0, i32 1, !dbg !2605
  %47 = load i32, i32* %length68, align 4, !dbg !2605
  %conv69 = zext i32 %47 to i64, !dbg !2603
  %add70 = add i64 8, %conv69, !dbg !2606
  %48 = load i32, i32* %size_required, align 4, !dbg !2607
  %conv71 = zext i32 %48 to i64, !dbg !2607
  %add72 = add i64 %conv71, %add70, !dbg !2607
  %conv73 = trunc i64 %add72 to i32, !dbg !2607
  store i32 %conv73, i32* %size_required, align 4, !dbg !2607
  %49 = load i32, i32* %tail_offset, align 4, !dbg !2608
  %conv74 = zext i32 %49 to i64, !dbg !2608
  %add75 = add i64 %conv74, 8, !dbg !2608
  %conv76 = trunc i64 %add75 to i32, !dbg !2608
  store i32 %conv76, i32* %tail_offset, align 4, !dbg !2608
  br label %sw.epilog82, !dbg !2609

sw.default77:                                     ; preds = %sw.bb51
  %50 = load i32, i32* %i, align 4, !dbg !2610
  %51 = load i8*, i8** %format_string, align 8, !dbg !2611
  %52 = load i32, i32* %i, align 4, !dbg !2612
  %idxprom78 = zext i32 %52 to i64, !dbg !2611
  %arrayidx79 = getelementptr i8, i8* %51, i64 %idxprom78, !dbg !2611
  %53 = load i8, i8* %arrayidx79, align 1, !dbg !2611
  %conv80 = sext i8 %53 to i32, !dbg !2611
  %call81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %50, i32 %conv80) #11, !dbg !2613
  store i32 4100, i32* %retval, align 4, !dbg !2614
  br label %return, !dbg !2614

sw.epilog82:                                      ; preds = %sw.bb66, %sw.bb55
  br label %sw.epilog102, !dbg !2615

sw.bb83:                                          ; preds = %for.body
  %54 = load i8*, i8** %format_string, align 8, !dbg !2616
  %55 = load i32, i32* %i, align 4, !dbg !2617
  %idxprom84 = zext i32 %55 to i64, !dbg !2616
  %arrayidx85 = getelementptr i8, i8* %54, i64 %idxprom84, !dbg !2616
  %56 = load i8, i8* %arrayidx85, align 1, !dbg !2616
  %conv86 = sext i8 %56 to i32, !dbg !2616
  switch i32 %conv86, label %sw.default94 [
    i32 82, label %sw.bb87
  ], !dbg !2618

sw.bb87:                                          ; preds = %sw.bb83
  %57 = load i32, i32* %size_required, align 4, !dbg !2619
  %conv88 = zext i32 %57 to i64, !dbg !2619
  %add89 = add i64 %conv88, 8, !dbg !2619
  %conv90 = trunc i64 %add89 to i32, !dbg !2619
  store i32 %conv90, i32* %size_required, align 4, !dbg !2619
  %58 = load i32, i32* %tail_offset, align 4, !dbg !2621
  %conv91 = zext i32 %58 to i64, !dbg !2621
  %add92 = add i64 %conv91, 8, !dbg !2621
  %conv93 = trunc i64 %add92 to i32, !dbg !2621
  store i32 %conv93, i32* %tail_offset, align 4, !dbg !2621
  br label %sw.epilog99, !dbg !2622

sw.default94:                                     ; preds = %sw.bb83
  %59 = load i32, i32* %i, align 4, !dbg !2623
  %60 = load i8*, i8** %format_string, align 8, !dbg !2624
  %61 = load i32, i32* %i, align 4, !dbg !2625
  %idxprom95 = zext i32 %61 to i64, !dbg !2624
  %arrayidx96 = getelementptr i8, i8* %60, i64 %idxprom95, !dbg !2624
  %62 = load i8, i8* %arrayidx96, align 1, !dbg !2624
  %conv97 = sext i8 %62 to i32, !dbg !2624
  %call98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %59, i32 %conv97) #11, !dbg !2626
  store i32 4100, i32* %retval, align 4, !dbg !2627
  br label %return, !dbg !2627

sw.epilog99:                                      ; preds = %sw.bb87
  br label %sw.epilog102, !dbg !2628

sw.bb100:                                         ; preds = %for.body
  br label %sw.default101, !dbg !2628

sw.default101:                                    ; preds = %for.body, %sw.bb100
  store i32 15, i32* %retval, align 4, !dbg !2629
  br label %return, !dbg !2629

sw.epilog102:                                     ; preds = %sw.epilog99, %sw.epilog82, %sw.epilog
  br label %for.inc, !dbg !2630

for.inc:                                          ; preds = %sw.epilog102
  %63 = load i32, i32* %i, align 4, !dbg !2631
  %inc = add i32 %63, 1, !dbg !2631
  store i32 %inc, i32* %i, align 4, !dbg !2631
  br label %for.cond, !dbg !2632, !llvm.loop !2633

for.end:                                          ; preds = %for.cond
  %64 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2635
  %length103 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %64, i32 0, i32 0, !dbg !2637
  %65 = load i64, i64* %length103, align 8, !dbg !2637
  %cmp104 = icmp eq i64 %65, -1, !dbg !2638
  br i1 %cmp104, label %if.then106, label %if.else, !dbg !2639

if.then106:                                       ; preds = %for.end
  %66 = load i32, i32* %size_required, align 4, !dbg !2640
  %conv107 = zext i32 %66 to i64, !dbg !2640
  %call108 = call i8* @acpi_os_allocate_zeroed(i64 %conv107) #12, !dbg !2640
  %67 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2642
  %pointer109 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %67, i32 0, i32 1, !dbg !2643
  store i8* %call108, i8** %pointer109, align 8, !dbg !2644
  %68 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2645
  %pointer110 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %68, i32 0, i32 1, !dbg !2647
  %69 = load i8*, i8** %pointer110, align 8, !dbg !2647
  %tobool111 = icmp ne i8* %69, null, !dbg !2645
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !2648

if.then112:                                       ; preds = %if.then106
  store i32 4, i32* %retval, align 4, !dbg !2649
  br label %return, !dbg !2649

if.end113:                                        ; preds = %if.then106
  %70 = load i32, i32* %size_required, align 4, !dbg !2650
  %conv114 = zext i32 %70 to i64, !dbg !2650
  %71 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2651
  %length115 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %71, i32 0, i32 0, !dbg !2652
  store i64 %conv114, i64* %length115, align 8, !dbg !2653
  br label %if.end134, !dbg !2654

if.else:                                          ; preds = %for.end
  %72 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2655
  %length116 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %72, i32 0, i32 0, !dbg !2658
  %73 = load i64, i64* %length116, align 8, !dbg !2658
  %74 = load i32, i32* %size_required, align 4, !dbg !2659
  %conv117 = zext i32 %74 to i64, !dbg !2659
  %cmp118 = icmp ult i64 %73, %conv117, !dbg !2660
  br i1 %cmp118, label %if.then120, label %if.else123, !dbg !2661

if.then120:                                       ; preds = %if.else
  %75 = load i32, i32* %size_required, align 4, !dbg !2662
  %conv121 = zext i32 %75 to i64, !dbg !2662
  %76 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2664
  %length122 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %76, i32 0, i32 0, !dbg !2665
  store i64 %conv121, i64* %length122, align 8, !dbg !2666
  store i32 11, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

if.else123:                                       ; preds = %if.else
  %77 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2668
  %length124 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %77, i32 0, i32 0, !dbg !2670
  %78 = load i64, i64* %length124, align 8, !dbg !2670
  %79 = load i32, i32* %size_required, align 4, !dbg !2671
  %conv125 = zext i32 %79 to i64, !dbg !2671
  %cmp126 = icmp ne i64 %78, %conv125, !dbg !2672
  br i1 %cmp126, label %if.then131, label %lor.lhs.false128, !dbg !2673

lor.lhs.false128:                                 ; preds = %if.else123
  %80 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2674
  %pointer129 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %80, i32 0, i32 1, !dbg !2675
  %81 = load i8*, i8** %pointer129, align 8, !dbg !2675
  %tobool130 = icmp ne i8* %81, null, !dbg !2674
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !2676

if.then131:                                       ; preds = %lor.lhs.false128, %if.else123
  store i32 4097, i32* %retval, align 4, !dbg !2677
  br label %return, !dbg !2677

if.end132:                                        ; preds = %lor.lhs.false128
  br label %if.end133

if.end133:                                        ; preds = %if.end132
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end113
  %82 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2679
  %pointer135 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %82, i32 0, i32 1, !dbg !2680
  %83 = load i8*, i8** %pointer135, align 8, !dbg !2680
  store i8* %83, i8** %head, align 8, !dbg !2681
  %84 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !2682
  %pointer136 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %84, i32 0, i32 1, !dbg !2683
  %85 = load i8*, i8** %pointer136, align 8, !dbg !2683
  %86 = load i32, i32* %tail_offset, align 4, !dbg !2684
  %idx.ext = zext i32 %86 to i64, !dbg !2685
  %add.ptr = getelementptr i8, i8* %85, i64 %idx.ext, !dbg !2685
  store i8* %add.ptr, i8** %tail, align 8, !dbg !2686
  store i32 0, i32* %i, align 4, !dbg !2687
  br label %for.cond137, !dbg !2689

for.cond137:                                      ; preds = %for.inc203, %if.end134
  %87 = load i32, i32* %i, align 4, !dbg !2690
  %88 = load i32, i32* %format_count, align 4, !dbg !2692
  %cmp138 = icmp ult i32 %87, %88, !dbg !2693
  br i1 %cmp138, label %for.body140, label %for.end205, !dbg !2694

for.body140:                                      ; preds = %for.cond137
  call void @llvm.dbg.declare(metadata i8*** %pointer141, metadata !2695, metadata !DIExpression()), !dbg !2697
  store i8** null, i8*** %pointer141, align 8, !dbg !2697
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element142, metadata !2698, metadata !DIExpression()), !dbg !2699
  %89 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2700
  %package143 = bitcast %union.acpi_object* %89 to %struct.anon.2*, !dbg !2701
  %elements144 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package143, i32 0, i32 2, !dbg !2702
  %90 = load %union.acpi_object*, %union.acpi_object** %elements144, align 8, !dbg !2702
  %91 = load i32, i32* %i, align 4, !dbg !2703
  %idxprom145 = zext i32 %91 to i64, !dbg !2700
  %arrayidx146 = getelementptr %union.acpi_object, %union.acpi_object* %90, i64 %idxprom145, !dbg !2700
  store %union.acpi_object* %arrayidx146, %union.acpi_object** %element142, align 8, !dbg !2699
  %92 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2704
  %type147 = bitcast %union.acpi_object* %92 to i32*, !dbg !2705
  %93 = load i32, i32* %type147, align 8, !dbg !2705
  switch i32 %93, label %sw.default201 [
    i32 1, label %sw.bb148
    i32 2, label %sw.bb162
    i32 3, label %sw.bb162
    i32 20, label %sw.bb192
    i32 4, label %sw.bb200
  ], !dbg !2706

sw.bb148:                                         ; preds = %for.body140
  %94 = load i8*, i8** %format_string, align 8, !dbg !2707
  %95 = load i32, i32* %i, align 4, !dbg !2709
  %idxprom149 = zext i32 %95 to i64, !dbg !2707
  %arrayidx150 = getelementptr i8, i8* %94, i64 %idxprom149, !dbg !2707
  %96 = load i8, i8* %arrayidx150, align 1, !dbg !2707
  %conv151 = sext i8 %96 to i32, !dbg !2707
  switch i32 %conv151, label %sw.default160 [
    i32 78, label %sw.bb152
    i32 83, label %sw.bb154
  ], !dbg !2710

sw.bb152:                                         ; preds = %sw.bb148
  %97 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2711
  %integer = bitcast %union.acpi_object* %97 to %struct.anon*, !dbg !2713
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !2714
  %98 = load i64, i64* %value, align 8, !dbg !2714
  %99 = load i8*, i8** %head, align 8, !dbg !2715
  %100 = bitcast i8* %99 to i64*, !dbg !2716
  store i64 %98, i64* %100, align 8, !dbg !2717
  %101 = load i8*, i8** %head, align 8, !dbg !2718
  %add.ptr153 = getelementptr i8, i8* %101, i64 8, !dbg !2718
  store i8* %add.ptr153, i8** %head, align 8, !dbg !2718
  br label %sw.epilog161, !dbg !2719

sw.bb154:                                         ; preds = %sw.bb148
  %102 = load i8*, i8** %head, align 8, !dbg !2720
  %103 = bitcast i8* %102 to i8**, !dbg !2721
  store i8** %103, i8*** %pointer141, align 8, !dbg !2722
  %104 = load i8*, i8** %tail, align 8, !dbg !2723
  %105 = load i8**, i8*** %pointer141, align 8, !dbg !2724
  store i8* %104, i8** %105, align 8, !dbg !2725
  %106 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2726
  %integer155 = bitcast %union.acpi_object* %106 to %struct.anon*, !dbg !2727
  %value156 = getelementptr inbounds %struct.anon, %struct.anon* %integer155, i32 0, i32 1, !dbg !2728
  %107 = load i64, i64* %value156, align 8, !dbg !2728
  %108 = load i8*, i8** %tail, align 8, !dbg !2729
  %109 = bitcast i8* %108 to i64*, !dbg !2730
  store i64 %107, i64* %109, align 8, !dbg !2731
  %110 = load i8*, i8** %head, align 8, !dbg !2732
  %add.ptr157 = getelementptr i8, i8* %110, i64 8, !dbg !2732
  store i8* %add.ptr157, i8** %head, align 8, !dbg !2732
  %111 = load i8*, i8** %tail, align 8, !dbg !2733
  %add.ptr158 = getelementptr i8, i8* %111, i64 8, !dbg !2733
  store i8* %add.ptr158, i8** %tail, align 8, !dbg !2733
  %112 = load i8*, i8** %tail, align 8, !dbg !2734
  store i8 0, i8* %112, align 1, !dbg !2735
  %113 = load i8*, i8** %tail, align 8, !dbg !2736
  %add.ptr159 = getelementptr i8, i8* %113, i64 1, !dbg !2736
  store i8* %add.ptr159, i8** %tail, align 8, !dbg !2736
  br label %sw.epilog161, !dbg !2737

sw.default160:                                    ; preds = %sw.bb148
  br label %sw.epilog161, !dbg !2738

sw.epilog161:                                     ; preds = %sw.default160, %sw.bb154, %sw.bb152
  br label %sw.epilog202, !dbg !2739

sw.bb162:                                         ; preds = %for.body140, %for.body140
  %114 = load i8*, i8** %format_string, align 8, !dbg !2740
  %115 = load i32, i32* %i, align 4, !dbg !2741
  %idxprom163 = zext i32 %115 to i64, !dbg !2740
  %arrayidx164 = getelementptr i8, i8* %114, i64 %idxprom163, !dbg !2740
  %116 = load i8, i8* %arrayidx164, align 1, !dbg !2740
  %conv165 = sext i8 %116 to i32, !dbg !2740
  switch i32 %conv165, label %sw.default190 [
    i32 83, label %sw.bb166
    i32 66, label %sw.bb179
  ], !dbg !2742

sw.bb166:                                         ; preds = %sw.bb162
  %117 = load i8*, i8** %head, align 8, !dbg !2743
  %118 = bitcast i8* %117 to i8**, !dbg !2745
  store i8** %118, i8*** %pointer141, align 8, !dbg !2746
  %119 = load i8*, i8** %tail, align 8, !dbg !2747
  %120 = load i8**, i8*** %pointer141, align 8, !dbg !2748
  store i8* %119, i8** %120, align 8, !dbg !2749
  %121 = load i8*, i8** %tail, align 8, !dbg !2750
  %122 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2751
  %string167 = bitcast %union.acpi_object* %122 to %struct.anon.0*, !dbg !2752
  %pointer168 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string167, i32 0, i32 2, !dbg !2753
  %123 = load i8*, i8** %pointer168, align 8, !dbg !2753
  %124 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2754
  %string169 = bitcast %union.acpi_object* %124 to %struct.anon.0*, !dbg !2755
  %length170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string169, i32 0, i32 1, !dbg !2756
  %125 = load i32, i32* %length170, align 4, !dbg !2756
  %conv171 = zext i32 %125 to i64, !dbg !2754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 %123, i64 %conv171, i1 false), !dbg !2757
  %126 = load i8*, i8** %head, align 8, !dbg !2758
  %add.ptr172 = getelementptr i8, i8* %126, i64 8, !dbg !2758
  store i8* %add.ptr172, i8** %head, align 8, !dbg !2758
  %127 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2759
  %string173 = bitcast %union.acpi_object* %127 to %struct.anon.0*, !dbg !2760
  %length174 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string173, i32 0, i32 1, !dbg !2761
  %128 = load i32, i32* %length174, align 4, !dbg !2761
  %conv175 = zext i32 %128 to i64, !dbg !2759
  %mul176 = mul i64 %conv175, 1, !dbg !2762
  %129 = load i8*, i8** %tail, align 8, !dbg !2763
  %add.ptr177 = getelementptr i8, i8* %129, i64 %mul176, !dbg !2763
  store i8* %add.ptr177, i8** %tail, align 8, !dbg !2763
  %130 = load i8*, i8** %tail, align 8, !dbg !2764
  store i8 0, i8* %130, align 1, !dbg !2765
  %131 = load i8*, i8** %tail, align 8, !dbg !2766
  %add.ptr178 = getelementptr i8, i8* %131, i64 1, !dbg !2766
  store i8* %add.ptr178, i8** %tail, align 8, !dbg !2766
  br label %sw.epilog191, !dbg !2767

sw.bb179:                                         ; preds = %sw.bb162
  %132 = load i8*, i8** %head, align 8, !dbg !2768
  %133 = bitcast i8* %132 to i8**, !dbg !2769
  store i8** %133, i8*** %pointer141, align 8, !dbg !2770
  %134 = load i8*, i8** %tail, align 8, !dbg !2771
  %135 = load i8**, i8*** %pointer141, align 8, !dbg !2772
  store i8* %134, i8** %135, align 8, !dbg !2773
  %136 = load i8*, i8** %tail, align 8, !dbg !2774
  %137 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2775
  %buffer180 = bitcast %union.acpi_object* %137 to %struct.anon.1*, !dbg !2776
  %pointer181 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer180, i32 0, i32 2, !dbg !2777
  %138 = load i8*, i8** %pointer181, align 8, !dbg !2777
  %139 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2778
  %buffer182 = bitcast %union.acpi_object* %139 to %struct.anon.1*, !dbg !2779
  %length183 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer182, i32 0, i32 1, !dbg !2780
  %140 = load i32, i32* %length183, align 4, !dbg !2780
  %conv184 = zext i32 %140 to i64, !dbg !2778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %136, i8* align 1 %138, i64 %conv184, i1 false), !dbg !2781
  %141 = load i8*, i8** %head, align 8, !dbg !2782
  %add.ptr185 = getelementptr i8, i8* %141, i64 8, !dbg !2782
  store i8* %add.ptr185, i8** %head, align 8, !dbg !2782
  %142 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2783
  %buffer186 = bitcast %union.acpi_object* %142 to %struct.anon.1*, !dbg !2784
  %length187 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer186, i32 0, i32 1, !dbg !2785
  %143 = load i32, i32* %length187, align 4, !dbg !2785
  %144 = load i8*, i8** %tail, align 8, !dbg !2786
  %idx.ext188 = zext i32 %143 to i64, !dbg !2786
  %add.ptr189 = getelementptr i8, i8* %144, i64 %idx.ext188, !dbg !2786
  store i8* %add.ptr189, i8** %tail, align 8, !dbg !2786
  br label %sw.epilog191, !dbg !2787

sw.default190:                                    ; preds = %sw.bb162
  br label %sw.epilog191, !dbg !2788

sw.epilog191:                                     ; preds = %sw.default190, %sw.bb179, %sw.bb166
  br label %sw.epilog202, !dbg !2789

sw.bb192:                                         ; preds = %for.body140
  %145 = load i8*, i8** %format_string, align 8, !dbg !2790
  %146 = load i32, i32* %i, align 4, !dbg !2791
  %idxprom193 = zext i32 %146 to i64, !dbg !2790
  %arrayidx194 = getelementptr i8, i8* %145, i64 %idxprom193, !dbg !2790
  %147 = load i8, i8* %arrayidx194, align 1, !dbg !2790
  %conv195 = sext i8 %147 to i32, !dbg !2790
  switch i32 %conv195, label %sw.default198 [
    i32 82, label %sw.bb196
  ], !dbg !2792

sw.bb196:                                         ; preds = %sw.bb192
  %148 = load %union.acpi_object*, %union.acpi_object** %element142, align 8, !dbg !2793
  %reference = bitcast %union.acpi_object* %148 to %struct.anon.3*, !dbg !2795
  %handle = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference, i32 0, i32 2, !dbg !2796
  %149 = load i8*, i8** %handle, align 8, !dbg !2796
  %150 = load i8*, i8** %head, align 8, !dbg !2797
  %151 = bitcast i8* %150 to i8**, !dbg !2798
  store i8* %149, i8** %151, align 8, !dbg !2799
  %152 = load i8*, i8** %head, align 8, !dbg !2800
  %add.ptr197 = getelementptr i8, i8* %152, i64 8, !dbg !2800
  store i8* %add.ptr197, i8** %head, align 8, !dbg !2800
  br label %sw.epilog199, !dbg !2801

sw.default198:                                    ; preds = %sw.bb192
  br label %sw.epilog199, !dbg !2802

sw.epilog199:                                     ; preds = %sw.default198, %sw.bb196
  br label %sw.epilog202, !dbg !2803

sw.bb200:                                         ; preds = %for.body140
  br label %sw.default201, !dbg !2803

sw.default201:                                    ; preds = %for.body140, %sw.bb200
  br label %sw.epilog202, !dbg !2804

sw.epilog202:                                     ; preds = %sw.default201, %sw.epilog199, %sw.epilog191, %sw.epilog161
  br label %for.inc203, !dbg !2805

for.inc203:                                       ; preds = %sw.epilog202
  %153 = load i32, i32* %i, align 4, !dbg !2806
  %inc204 = add i32 %153, 1, !dbg !2806
  store i32 %inc204, i32* %i, align 4, !dbg !2806
  br label %for.cond137, !dbg !2807, !llvm.loop !2808

for.end205:                                       ; preds = %for.cond137
  store i32 0, i32* %retval, align 4, !dbg !2810
  br label %return, !dbg !2810

return:                                           ; preds = %for.end205, %if.then131, %if.then120, %if.then112, %sw.default101, %sw.default94, %sw.default77, %sw.default, %if.then21, %if.then13, %if.then9, %if.then
  %154 = load i32, i32* %retval, align 4, !dbg !2811
  ret i32 %154, !dbg !2811
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !2812 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2816, metadata !DIExpression()), !dbg !2821
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  %0 = load i64, i64* %size.addr, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2828, metadata !DIExpression()), !dbg !2829
  br label %do.body, !dbg !2829

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2834, metadata !DIExpression()), !dbg !2833
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2833
  %conv = zext i1 %cmp to i32, !dbg !2833
  store i32 1, i32* %tmp, align 4, !dbg !2833
  %1 = load i32, i32* %tmp, align 4, !dbg !2833
  %call = call i64 @arch_local_save_flags() #12, !dbg !2835
  store i64 %call, i64* %_flags, align 8, !dbg !2835
  br label %do.end, !dbg !2835

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2839, metadata !DIExpression()), !dbg !2838
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2838
  %conv6 = zext i1 %cmp5 to i32, !dbg !2838
  store i32 1, i32* %tmp7, align 4, !dbg !2838
  %2 = load i32, i32* %tmp7, align 4, !dbg !2838
  %3 = load i64, i64* %_flags, align 8, !dbg !2840
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2841
  %and.i = and i64 %4, 512, !dbg !2842
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2843
  %lnot.i = xor i1 %tobool.i, true, !dbg !2843
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2843
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2840
  %5 = load i32, i32* %tmp8, align 4, !dbg !2840
  store i32 %5, i32* %tmp1, align 4, !dbg !2835
  %6 = load i32, i32* %tmp1, align 4, !dbg !2829
  %tobool = icmp ne i32 %6, 0, !dbg !2844
  %7 = zext i1 %tobool to i64, !dbg !2844
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !2844
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #12, !dbg !2845
  ret i8* %call10, !dbg !2846
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_integer(i8* %handle, i8* %pathname, %struct.acpi_object_list* %arguments, i64* %data) #0 !dbg !2847 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %arguments.addr = alloca %struct.acpi_object_list*, align 8
  %data.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %element = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2857, metadata !DIExpression()), !dbg !2858
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !2859, metadata !DIExpression()), !dbg !2860
  store %struct.acpi_object_list* %arguments, %struct.acpi_object_list** %arguments.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %arguments.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i64* %data, i64** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %data.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2865, metadata !DIExpression()), !dbg !2866
  store i32 0, i32* %status, align 4, !dbg !2866
  call void @llvm.dbg.declare(metadata %union.acpi_object* %element, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2869, metadata !DIExpression()), !dbg !2870
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !2870
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false), !dbg !2870
  %1 = load i64*, i64** %data.addr, align 8, !dbg !2871
  %tobool = icmp ne i64* %1, null, !dbg !2871
  br i1 %tobool, label %if.end, label %if.then, !dbg !2873

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2874
  br label %return, !dbg !2874

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !2875
  store i64 24, i64* %length, align 8, !dbg !2876
  %2 = bitcast %union.acpi_object* %element to i8*, !dbg !2877
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2878
  store i8* %2, i8** %pointer, align 8, !dbg !2879
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !2880
  %4 = load i8*, i8** %pathname.addr, align 8, !dbg !2881
  %5 = load %struct.acpi_object_list*, %struct.acpi_object_list** %arguments.addr, align 8, !dbg !2882
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* %4, %struct.acpi_object_list* %5, %struct.acpi_buffer* %buffer) #12, !dbg !2883
  store i32 %call, i32* %status, align 4, !dbg !2884
  %6 = load i32, i32* %status, align 4, !dbg !2885
  %tobool1 = icmp ne i32 %6, 0, !dbg !2885
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2887

if.then2:                                         ; preds = %if.end
  %7 = load i8*, i8** %handle.addr, align 8, !dbg !2888
  %8 = load i8*, i8** %pathname.addr, align 8, !dbg !2890
  %9 = load i32, i32* %status, align 4, !dbg !2891
  call void @acpi_util_eval_error(i8* %7, i8* %8, i32 %9) #12, !dbg !2892
  %10 = load i32, i32* %status, align 4, !dbg !2893
  store i32 %10, i32* %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

if.end3:                                          ; preds = %if.end
  %type = bitcast %union.acpi_object* %element to i32*, !dbg !2895
  %11 = load i32, i32* %type, align 8, !dbg !2895
  %cmp = icmp ne i32 %11, 1, !dbg !2897
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2898

if.then4:                                         ; preds = %if.end3
  %12 = load i8*, i8** %handle.addr, align 8, !dbg !2899
  %13 = load i8*, i8** %pathname.addr, align 8, !dbg !2901
  call void @acpi_util_eval_error(i8* %12, i8* %13, i32 4100) #12, !dbg !2902
  store i32 4100, i32* %retval, align 4, !dbg !2903
  br label %return, !dbg !2903

if.end5:                                          ; preds = %if.end3
  %integer = bitcast %union.acpi_object* %element to %struct.anon*, !dbg !2904
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !2905
  %14 = load i64, i64* %value, align 8, !dbg !2905
  %15 = load i64*, i64** %data.addr, align 8, !dbg !2906
  store i64 %14, i64* %15, align 8, !dbg !2907
  store i32 0, i32* %retval, align 4, !dbg !2908
  br label %return, !dbg !2908

return:                                           ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2909
  ret i32 %16, !dbg !2909
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_util_eval_error(i8* %h, i8* %p, i32 %s) #0 !dbg !2910 {
entry:
  %h.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  store i8* %h, i8** %h.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %h.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  ret void, !dbg !2919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_reference(i8* %handle, i8* %pathname, %struct.acpi_object_list* %arguments, %struct.acpi_handle_list* %list) #0 !dbg !2920 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %arguments.addr = alloca %struct.acpi_object_list*, align 8
  %list.addr = alloca %struct.acpi_handle_list*, align 8
  %status = alloca i32, align 4
  %package = alloca %union.acpi_object*, align 8
  %element = alloca %union.acpi_object*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %i = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2931, metadata !DIExpression()), !dbg !2932
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !2933, metadata !DIExpression()), !dbg !2934
  store %struct.acpi_object_list* %arguments, %struct.acpi_object_list** %arguments.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %arguments.addr, metadata !2935, metadata !DIExpression()), !dbg !2936
  store %struct.acpi_handle_list* %list, %struct.acpi_handle_list** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_handle_list** %list.addr, metadata !2937, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i32 0, i32* %status, align 4, !dbg !2940
  call void @llvm.dbg.declare(metadata %union.acpi_object** %package, metadata !2941, metadata !DIExpression()), !dbg !2942
  store %union.acpi_object* null, %union.acpi_object** %package, align 8, !dbg !2942
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !2943, metadata !DIExpression()), !dbg !2944
  store %union.acpi_object* null, %union.acpi_object** %element, align 8, !dbg !2944
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2945, metadata !DIExpression()), !dbg !2946
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !2946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_evaluate_reference.buffer to i8*), i64 16, i1 false), !dbg !2946
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2947, metadata !DIExpression()), !dbg !2948
  store i32 0, i32* %i, align 4, !dbg !2948
  %1 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %list.addr, align 8, !dbg !2949
  %tobool = icmp ne %struct.acpi_handle_list* %1, null, !dbg !2949
  br i1 %tobool, label %if.end, label %if.then, !dbg !2951

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2952
  br label %return, !dbg !2952

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !2954
  %3 = load i8*, i8** %pathname.addr, align 8, !dbg !2955
  %4 = load %struct.acpi_object_list*, %struct.acpi_object_list** %arguments.addr, align 8, !dbg !2956
  %call = call i32 @acpi_evaluate_object(i8* %2, i8* %3, %struct.acpi_object_list* %4, %struct.acpi_buffer* %buffer) #12, !dbg !2957
  store i32 %call, i32* %status, align 4, !dbg !2958
  %5 = load i32, i32* %status, align 4, !dbg !2959
  %tobool1 = icmp ne i32 %5, 0, !dbg !2959
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2961

if.then2:                                         ; preds = %if.end
  br label %end, !dbg !2962

if.end3:                                          ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2963
  %6 = load i8*, i8** %pointer, align 8, !dbg !2963
  %7 = bitcast i8* %6 to %union.acpi_object*, !dbg !2964
  store %union.acpi_object* %7, %union.acpi_object** %package, align 8, !dbg !2965
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !2966
  %8 = load i64, i64* %length, align 8, !dbg !2966
  %cmp = icmp eq i64 %8, 0, !dbg !2968
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !2969

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !2970
  %tobool4 = icmp ne %union.acpi_object* %9, null, !dbg !2970
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2971

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 4100, i32* %status, align 4, !dbg !2972
  %10 = load i8*, i8** %handle.addr, align 8, !dbg !2974
  %11 = load i8*, i8** %pathname.addr, align 8, !dbg !2975
  %12 = load i32, i32* %status, align 4, !dbg !2976
  call void @acpi_util_eval_error(i8* %10, i8* %11, i32 %12) #12, !dbg !2977
  br label %end, !dbg !2978

if.end6:                                          ; preds = %lor.lhs.false
  %13 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !2979
  %type = bitcast %union.acpi_object* %13 to i32*, !dbg !2981
  %14 = load i32, i32* %type, align 8, !dbg !2981
  %cmp7 = icmp ne i32 %14, 4, !dbg !2982
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2983

if.then8:                                         ; preds = %if.end6
  store i32 4100, i32* %status, align 4, !dbg !2984
  %15 = load i8*, i8** %handle.addr, align 8, !dbg !2986
  %16 = load i8*, i8** %pathname.addr, align 8, !dbg !2987
  %17 = load i32, i32* %status, align 4, !dbg !2988
  call void @acpi_util_eval_error(i8* %15, i8* %16, i32 %17) #12, !dbg !2989
  br label %end, !dbg !2990

if.end9:                                          ; preds = %if.end6
  %18 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !2991
  %package10 = bitcast %union.acpi_object* %18 to %struct.anon.2*, !dbg !2993
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package10, i32 0, i32 1, !dbg !2994
  %19 = load i32, i32* %count, align 4, !dbg !2994
  %tobool11 = icmp ne i32 %19, 0, !dbg !2991
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2995

if.then12:                                        ; preds = %if.end9
  store i32 4100, i32* %status, align 4, !dbg !2996
  %20 = load i8*, i8** %handle.addr, align 8, !dbg !2998
  %21 = load i8*, i8** %pathname.addr, align 8, !dbg !2999
  %22 = load i32, i32* %status, align 4, !dbg !3000
  call void @acpi_util_eval_error(i8* %20, i8* %21, i32 %22) #12, !dbg !3001
  br label %end, !dbg !3002

if.end13:                                         ; preds = %if.end9
  %23 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !3003
  %package14 = bitcast %union.acpi_object* %23 to %struct.anon.2*, !dbg !3005
  %count15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package14, i32 0, i32 1, !dbg !3006
  %24 = load i32, i32* %count15, align 4, !dbg !3006
  %cmp16 = icmp ugt i32 %24, 10, !dbg !3007
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3008

if.then17:                                        ; preds = %if.end13
  %25 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !3009
  %26 = bitcast %union.acpi_object* %25 to i8*, !dbg !3009
  call void @kfree(i8* %26) #12, !dbg !3011
  store i32 4, i32* %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.end18:                                         ; preds = %if.end13
  %27 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !3013
  %package19 = bitcast %union.acpi_object* %27 to %struct.anon.2*, !dbg !3014
  %count20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package19, i32 0, i32 1, !dbg !3015
  %28 = load i32, i32* %count20, align 4, !dbg !3015
  %29 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %list.addr, align 8, !dbg !3016
  %count21 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %29, i32 0, i32 0, !dbg !3017
  store i32 %28, i32* %count21, align 8, !dbg !3018
  store i32 0, i32* %i, align 4, !dbg !3019
  br label %for.cond, !dbg !3021

for.cond:                                         ; preds = %for.inc, %if.end18
  %30 = load i32, i32* %i, align 4, !dbg !3022
  %31 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %list.addr, align 8, !dbg !3024
  %count22 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %31, i32 0, i32 0, !dbg !3025
  %32 = load i32, i32* %count22, align 8, !dbg !3025
  %cmp23 = icmp ult i32 %30, %32, !dbg !3026
  br i1 %cmp23, label %for.body, label %for.end, !dbg !3027

for.body:                                         ; preds = %for.cond
  %33 = load %union.acpi_object*, %union.acpi_object** %package, align 8, !dbg !3028
  %package24 = bitcast %union.acpi_object* %33 to %struct.anon.2*, !dbg !3030
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package24, i32 0, i32 2, !dbg !3031
  %34 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3031
  %35 = load i32, i32* %i, align 4, !dbg !3032
  %idxprom = zext i32 %35 to i64, !dbg !3028
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %34, i64 %idxprom, !dbg !3028
  store %union.acpi_object* %arrayidx, %union.acpi_object** %element, align 8, !dbg !3033
  %36 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3034
  %type25 = bitcast %union.acpi_object* %36 to i32*, !dbg !3036
  %37 = load i32, i32* %type25, align 8, !dbg !3036
  %cmp26 = icmp ne i32 %37, 20, !dbg !3037
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !3038

if.then27:                                        ; preds = %for.body
  store i32 4100, i32* %status, align 4, !dbg !3039
  %38 = load i8*, i8** %handle.addr, align 8, !dbg !3041
  %39 = load i8*, i8** %pathname.addr, align 8, !dbg !3042
  %40 = load i32, i32* %status, align 4, !dbg !3043
  call void @acpi_util_eval_error(i8* %38, i8* %39, i32 %40) #12, !dbg !3044
  br label %for.end, !dbg !3045

if.end28:                                         ; preds = %for.body
  %41 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3046
  %reference = bitcast %union.acpi_object* %41 to %struct.anon.3*, !dbg !3048
  %handle29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference, i32 0, i32 2, !dbg !3049
  %42 = load i8*, i8** %handle29, align 8, !dbg !3049
  %tobool30 = icmp ne i8* %42, null, !dbg !3046
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !3050

if.then31:                                        ; preds = %if.end28
  store i32 10, i32* %status, align 4, !dbg !3051
  %43 = load i8*, i8** %handle.addr, align 8, !dbg !3053
  %44 = load i8*, i8** %pathname.addr, align 8, !dbg !3054
  %45 = load i32, i32* %status, align 4, !dbg !3055
  call void @acpi_util_eval_error(i8* %43, i8* %44, i32 %45) #12, !dbg !3056
  br label %for.end, !dbg !3057

if.end32:                                         ; preds = %if.end28
  %46 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !3058
  %reference33 = bitcast %union.acpi_object* %46 to %struct.anon.3*, !dbg !3059
  %handle34 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference33, i32 0, i32 2, !dbg !3060
  %47 = load i8*, i8** %handle34, align 8, !dbg !3060
  %48 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %list.addr, align 8, !dbg !3061
  %handles = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %48, i32 0, i32 1, !dbg !3062
  %49 = load i32, i32* %i, align 4, !dbg !3063
  %idxprom35 = zext i32 %49 to i64, !dbg !3061
  %arrayidx36 = getelementptr [10 x i8*], [10 x i8*]* %handles, i64 0, i64 %idxprom35, !dbg !3061
  store i8* %47, i8** %arrayidx36, align 8, !dbg !3064
  br label %for.inc, !dbg !3065

for.inc:                                          ; preds = %if.end32
  %50 = load i32, i32* %i, align 4, !dbg !3066
  %inc = add i32 %50, 1, !dbg !3066
  store i32 %inc, i32* %i, align 4, !dbg !3066
  br label %for.cond, !dbg !3067, !llvm.loop !3068

for.end:                                          ; preds = %if.then31, %if.then27, %for.cond
  br label %end, !dbg !3069

end:                                              ; preds = %for.end, %if.then12, %if.then8, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !3070), !dbg !3071
  %51 = load i32, i32* %status, align 4, !dbg !3072
  %tobool37 = icmp ne i32 %51, 0, !dbg !3072
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !3074

if.then38:                                        ; preds = %end
  %52 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %list.addr, align 8, !dbg !3075
  %count39 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %52, i32 0, i32 0, !dbg !3077
  store i32 0, i32* %count39, align 8, !dbg !3078
  br label %if.end40, !dbg !3079

if.end40:                                         ; preds = %if.then38, %end
  %pointer41 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3080
  %53 = load i8*, i8** %pointer41, align 8, !dbg !3080
  call void @kfree(i8* %53) #12, !dbg !3081
  %54 = load i32, i32* %status, align 4, !dbg !3082
  store i32 %54, i32* %retval, align 4, !dbg !3083
  br label %return, !dbg !3083

return:                                           ; preds = %if.end40, %if.then17, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !3084
  ret i32 %55, !dbg !3084
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_physical_device_location(i8* %handle, %struct.acpi_pld_info** %pld) #0 !dbg !3085 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pld.addr = alloca %struct.acpi_pld_info**, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %output = alloca %union.acpi_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3121, metadata !DIExpression()), !dbg !3122
  store %struct.acpi_pld_info** %pld, %struct.acpi_pld_info*** %pld.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pld_info*** %pld.addr, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3125, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_get_physical_device_location.buffer to i8*), i64 16, i1 false), !dbg !3128
  call void @llvm.dbg.declare(metadata %union.acpi_object** %output, metadata !3129, metadata !DIExpression()), !dbg !3130
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !3131
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #12, !dbg !3132
  store i32 %call, i32* %status, align 4, !dbg !3133
  %2 = load i32, i32* %status, align 4, !dbg !3134
  %tobool = icmp ne i32 %2, 0, !dbg !3134
  br i1 %tobool, label %if.then, label %if.end, !dbg !3136

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !3137
  store i32 %3, i32* %retval, align 4, !dbg !3138
  br label %return, !dbg !3138

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3139
  %4 = load i8*, i8** %pointer, align 8, !dbg !3139
  %5 = bitcast i8* %4 to %union.acpi_object*, !dbg !3140
  store %union.acpi_object* %5, %union.acpi_object** %output, align 8, !dbg !3141
  %6 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3142
  %tobool1 = icmp ne %union.acpi_object* %6, null, !dbg !3142
  br i1 %tobool1, label %lor.lhs.false, label %if.then14, !dbg !3144

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3145
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !3146
  %8 = load i32, i32* %type, align 8, !dbg !3146
  %cmp = icmp ne i32 %8, 4, !dbg !3147
  br i1 %cmp, label %if.then14, label %lor.lhs.false2, !dbg !3148

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %9 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3149
  %package = bitcast %union.acpi_object* %9 to %struct.anon.2*, !dbg !3150
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !3151
  %10 = load i32, i32* %count, align 4, !dbg !3151
  %tobool3 = icmp ne i32 %10, 0, !dbg !3149
  br i1 %tobool3, label %lor.lhs.false4, label %if.then14, !dbg !3152

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %11 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3153
  %package5 = bitcast %union.acpi_object* %11 to %struct.anon.2*, !dbg !3154
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package5, i32 0, i32 2, !dbg !3155
  %12 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3155
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %12, i64 0, !dbg !3153
  %type6 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3156
  %13 = load i32, i32* %type6, align 8, !dbg !3156
  %cmp7 = icmp ne i32 %13, 3, !dbg !3157
  br i1 %cmp7, label %if.then14, label %lor.lhs.false8, !dbg !3158

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %14 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3159
  %package9 = bitcast %union.acpi_object* %14 to %struct.anon.2*, !dbg !3160
  %elements10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package9, i32 0, i32 2, !dbg !3161
  %15 = load %union.acpi_object*, %union.acpi_object** %elements10, align 8, !dbg !3161
  %arrayidx11 = getelementptr %union.acpi_object, %union.acpi_object* %15, i64 0, !dbg !3159
  %buffer12 = bitcast %union.acpi_object* %arrayidx11 to %struct.anon.1*, !dbg !3162
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer12, i32 0, i32 1, !dbg !3163
  %16 = load i32, i32* %length, align 4, !dbg !3163
  %cmp13 = icmp ult i32 %16, 16, !dbg !3164
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3165

if.then14:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 8, i32* %status, align 4, !dbg !3166
  br label %out, !dbg !3168

if.end15:                                         ; preds = %lor.lhs.false8
  %17 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3169
  %package16 = bitcast %union.acpi_object* %17 to %struct.anon.2*, !dbg !3170
  %elements17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package16, i32 0, i32 2, !dbg !3171
  %18 = load %union.acpi_object*, %union.acpi_object** %elements17, align 8, !dbg !3171
  %arrayidx18 = getelementptr %union.acpi_object, %union.acpi_object* %18, i64 0, !dbg !3169
  %buffer19 = bitcast %union.acpi_object* %arrayidx18 to %struct.anon.1*, !dbg !3172
  %pointer20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer19, i32 0, i32 2, !dbg !3173
  %19 = load i8*, i8** %pointer20, align 8, !dbg !3173
  %20 = load %union.acpi_object*, %union.acpi_object** %output, align 8, !dbg !3174
  %package21 = bitcast %union.acpi_object* %20 to %struct.anon.2*, !dbg !3175
  %elements22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package21, i32 0, i32 2, !dbg !3176
  %21 = load %union.acpi_object*, %union.acpi_object** %elements22, align 8, !dbg !3176
  %arrayidx23 = getelementptr %union.acpi_object, %union.acpi_object* %21, i64 0, !dbg !3174
  %buffer24 = bitcast %union.acpi_object* %arrayidx23 to %struct.anon.1*, !dbg !3177
  %length25 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer24, i32 0, i32 1, !dbg !3178
  %22 = load i32, i32* %length25, align 4, !dbg !3178
  %conv = zext i32 %22 to i64, !dbg !3174
  %23 = load %struct.acpi_pld_info**, %struct.acpi_pld_info*** %pld.addr, align 8, !dbg !3179
  %call26 = call i32 @acpi_decode_pld_buffer(i8* %19, i64 %conv, %struct.acpi_pld_info** %23) #12, !dbg !3180
  store i32 %call26, i32* %status, align 4, !dbg !3181
  br label %out, !dbg !3182

out:                                              ; preds = %if.end15, %if.then14
  call void @llvm.dbg.label(metadata !3183), !dbg !3184
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3185
  %24 = load i8*, i8** %pointer27, align 8, !dbg !3185
  call void @kfree(i8* %24) #12, !dbg !3186
  %25 = load i32, i32* %status, align 4, !dbg !3187
  store i32 %25, i32* %retval, align 4, !dbg !3188
  br label %return, !dbg !3188

return:                                           ; preds = %out, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !3189
  ret i32 %26, !dbg !3189
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_decode_pld_buffer(i8*, i64, %struct.acpi_pld_info**) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_ost(i8* %handle, i32 %source_event, i32 %status_code, %struct.acpi_buffer* %status_buf) #0 !dbg !3190 {
entry:
  %handle.addr = alloca i8*, align 8
  %source_event.addr = alloca i32, align 4
  %status_code.addr = alloca i32, align 4
  %status_buf.addr = alloca %struct.acpi_buffer*, align 8
  %params = alloca [3 x %union.acpi_object], align 16
  %arg_list = alloca %struct.acpi_object_list, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i32 %source_event, i32* %source_event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %source_event.addr, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i32 %status_code, i32* %status_code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status_code.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  store %struct.acpi_buffer* %status_buf, %struct.acpi_buffer** %status_buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %status_buf.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.declare(metadata [3 x %union.acpi_object]* %params, metadata !3201, metadata !DIExpression()), !dbg !3203
  %0 = bitcast [3 x %union.acpi_object]* %params to i8*, !dbg !3203
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 72, i1 false), !dbg !3203
  %1 = bitcast i8* %0 to [3 x { i32, [20 x i8] }]*, !dbg !3203
  %2 = getelementptr inbounds [3 x { i32, [20 x i8] }], [3 x { i32, [20 x i8] }]* %1, i32 0, i32 0, !dbg !3203
  %3 = getelementptr inbounds { i32, [20 x i8] }, { i32, [20 x i8] }* %2, i32 0, i32 0, !dbg !3203
  store i32 1, i32* %3, align 16, !dbg !3203
  %4 = getelementptr inbounds [3 x { i32, [20 x i8] }], [3 x { i32, [20 x i8] }]* %1, i32 0, i32 1, !dbg !3203
  %5 = getelementptr inbounds { i32, [20 x i8] }, { i32, [20 x i8] }* %4, i32 0, i32 0, !dbg !3203
  store i32 1, i32* %5, align 8, !dbg !3203
  %6 = getelementptr inbounds [3 x { i32, [20 x i8] }], [3 x { i32, [20 x i8] }]* %1, i32 0, i32 2, !dbg !3203
  %7 = getelementptr inbounds { i32, [20 x i8] }, { i32, [20 x i8] }* %6, i32 0, i32 0, !dbg !3203
  store i32 3, i32* %7, align 16, !dbg !3203
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !3204, metadata !DIExpression()), !dbg !3205
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !3206
  store i32 3, i32* %count, align 8, !dbg !3206
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !3206
  %arraydecay = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3207
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer, align 8, !dbg !3206
  %8 = load i32, i32* %source_event.addr, align 4, !dbg !3208
  %conv = zext i32 %8 to i64, !dbg !3208
  %arrayidx = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3209
  %integer = bitcast %union.acpi_object* %arrayidx to %struct.anon*, !dbg !3210
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3211
  store i64 %conv, i64* %value, align 8, !dbg !3212
  %9 = load i32, i32* %status_code.addr, align 4, !dbg !3213
  %conv1 = zext i32 %9 to i64, !dbg !3213
  %arrayidx2 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 1, !dbg !3214
  %integer3 = bitcast %union.acpi_object* %arrayidx2 to %struct.anon*, !dbg !3215
  %value4 = getelementptr inbounds %struct.anon, %struct.anon* %integer3, i32 0, i32 1, !dbg !3216
  store i64 %conv1, i64* %value4, align 8, !dbg !3217
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %status_buf.addr, align 8, !dbg !3218
  %cmp = icmp ne %struct.acpi_buffer* %10, null, !dbg !3220
  br i1 %cmp, label %if.then, label %if.else, !dbg !3221

if.then:                                          ; preds = %entry
  %11 = load %struct.acpi_buffer*, %struct.acpi_buffer** %status_buf.addr, align 8, !dbg !3222
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1, !dbg !3224
  %12 = load i8*, i8** %pointer6, align 8, !dbg !3224
  %arrayidx7 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3225
  %buffer = bitcast %union.acpi_object* %arrayidx7 to %struct.anon.1*, !dbg !3226
  %pointer8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 2, !dbg !3227
  store i8* %12, i8** %pointer8, align 8, !dbg !3228
  %13 = load %struct.acpi_buffer*, %struct.acpi_buffer** %status_buf.addr, align 8, !dbg !3229
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0, !dbg !3230
  %14 = load i64, i64* %length, align 8, !dbg !3230
  %conv9 = trunc i64 %14 to i32, !dbg !3229
  %arrayidx10 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3231
  %buffer11 = bitcast %union.acpi_object* %arrayidx10 to %struct.anon.1*, !dbg !3232
  %length12 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer11, i32 0, i32 1, !dbg !3233
  store i32 %conv9, i32* %length12, align 4, !dbg !3234
  br label %if.end, !dbg !3235

if.else:                                          ; preds = %entry
  %arrayidx13 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3236
  %buffer14 = bitcast %union.acpi_object* %arrayidx13 to %struct.anon.1*, !dbg !3238
  %pointer15 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer14, i32 0, i32 2, !dbg !3239
  store i8* null, i8** %pointer15, align 8, !dbg !3240
  %arrayidx16 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3241
  %buffer17 = bitcast %union.acpi_object* %arrayidx16 to %struct.anon.1*, !dbg !3242
  %length18 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer17, i32 0, i32 1, !dbg !3243
  store i32 0, i32* %length18, align 4, !dbg !3244
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8*, i8** %handle.addr, align 8, !dbg !3245
  %call = call i32 @acpi_evaluate_object(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #12, !dbg !3246
  ret i32 %call, !dbg !3247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_handle_printk(i8* %level, i8* %handle, i8* %fmt, ...) #0 !dbg !3248 {
entry:
  %level.addr = alloca i8*, align 8
  %handle.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %path = alloca i8*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.declare(metadata %struct.va_format* %vaf, metadata !3257, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.declare(metadata i8** %path, metadata !3278, metadata !DIExpression()), !dbg !3279
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !3280
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !3280
  call void @llvm.va_start(i8* %arraydecay1), !dbg !3280
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !3281
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 0, !dbg !3282
  store i8* %0, i8** %fmt2, align 8, !dbg !3283
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 1, !dbg !3284
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %va, align 8, !dbg !3285
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !3286
  %call = call i8* @acpi_handle_path(i8* %1) #12, !dbg !3287
  store i8* %call, i8** %path, align 8, !dbg !3288
  %2 = load i8*, i8** %level.addr, align 8, !dbg !3289
  %3 = load i8*, i8** %path, align 8, !dbg !3290
  %tobool = icmp ne i8* %3, null, !dbg !3290
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3290

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %path, align 8, !dbg !3291
  br label %cond.end, !dbg !3290

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %cond.false ], !dbg !3290
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %2, i8* %cond, %struct.va_format* %vaf) #11, !dbg !3292
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !3293
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !3293
  call void @llvm.va_end(i8* %arraydecay45), !dbg !3293
  %5 = load i8*, i8** %path, align 8, !dbg !3294
  call void @kfree(i8* %5) #12, !dbg !3295
  ret void, !dbg !3296
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_handle_path(i8* %handle) #0 !dbg !3297 {
entry:
  %pfo_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pfo_val__.i, metadata !3300, metadata !DIExpression()), !dbg !3306
  %tmp.i = alloca i32, align 4
  %retval = alloca i8*, align 8
  %handle.addr = alloca i8*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3311, metadata !DIExpression()), !dbg !3312
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_handle_path.buffer to i8*), i64 16, i1 false), !dbg !3312
  %1 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count) #10, !dbg !3306, !srcloc !3313
  store i32 %1, i32* %pfo_val__.i, align 4, !dbg !3306
  %2 = load i32, i32* %pfo_val__.i, align 4, !dbg !3306
  %conv.i = zext i32 %2 to i64, !dbg !3306
  store i32 %2, i32* %tmp.i, align 4, !dbg !3306
  %3 = load i32, i32* %tmp.i, align 4, !dbg !3306
  %and.i = and i32 %3, 2147483647, !dbg !3314
  %conv = sext i32 %and.i to i64, !dbg !3315
  %and = and i64 %conv, 16776960, !dbg !3315
  %tobool = icmp ne i64 %and, 0, !dbg !3315
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3316

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !3317
  %call1 = call i32 @acpi_get_name(i8* %4, i32 0, %struct.acpi_buffer* %buffer) #12, !dbg !3318
  %cmp = icmp ne i32 %call1, 0, !dbg !3319
  br i1 %cmp, label %if.then, label %if.end, !dbg !3320

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8, !dbg !3321
  br label %return, !dbg !3321

if.end:                                           ; preds = %lor.lhs.false
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3322
  %5 = load i8*, i8** %pointer, align 8, !dbg !3322
  store i8* %5, i8** %retval, align 8, !dbg !3323
  br label %return, !dbg !3323

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8, !dbg !3324
  ret i8* %6, !dbg !3324
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_has_method(i8* %handle, i8* %name) #0 !dbg !3325 {
entry:
  %handle.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3332, metadata !DIExpression()), !dbg !3333
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !3334
  %1 = load i8*, i8** %name.addr, align 8, !dbg !3334
  %call = call i32 @acpi_get_handle(i8* %0, i8* %1, i8** %tmp) #12, !dbg !3334
  %tobool = icmp ne i32 %call, 0, !dbg !3334
  %lnot = xor i1 %tobool, true, !dbg !3334
  ret i1 %lnot, !dbg !3335
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_execute_simple_method(i8* %handle, i8* %method, i64 %arg) #0 !dbg !3336 {
entry:
  %handle.addr = alloca i8*, align 8
  %method.addr = alloca i8*, align 8
  %arg.addr = alloca i64, align 8
  %obj = alloca %union.acpi_object, align 8
  %arg_list = alloca %struct.acpi_object_list, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i8* %method, i8** %method.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %method.addr, metadata !3341, metadata !DIExpression()), !dbg !3342
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.declare(metadata %union.acpi_object* %obj, metadata !3345, metadata !DIExpression()), !dbg !3346
  %0 = bitcast %union.acpi_object* %obj to i8*, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [20 x i8] }* @__const.acpi_execute_simple_method.obj to i8*), i64 24, i1 false), !dbg !3346
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !3347, metadata !DIExpression()), !dbg !3348
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !3349
  store i32 1, i32* %count, align 8, !dbg !3349
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !3349
  store %union.acpi_object* %obj, %union.acpi_object** %pointer, align 8, !dbg !3349
  %1 = load i64, i64* %arg.addr, align 8, !dbg !3350
  %integer = bitcast %union.acpi_object* %obj to %struct.anon*, !dbg !3351
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3352
  store i64 %1, i64* %value, align 8, !dbg !3353
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3354
  %3 = load i8*, i8** %method.addr, align 8, !dbg !3355
  %call = call i32 @acpi_evaluate_object(i8* %2, i8* %3, %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #12, !dbg !3356
  ret i32 %call, !dbg !3357
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_ej0(i8* %handle) #0 !dbg !3358 {
entry:
  %handle.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3363, metadata !DIExpression()), !dbg !3364
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !3365
  %call = call i32 @acpi_execute_simple_method(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 1) #12, !dbg !3366
  store i32 %call, i32* %status, align 4, !dbg !3367
  %1 = load i32, i32* %status, align 4, !dbg !3368
  %cmp = icmp eq i32 %1, 5, !dbg !3370
  br i1 %cmp, label %if.then, label %if.else, !dbg !3371

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3372
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !3372
  br label %if.end2, !dbg !3372

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !3373
  %tobool = icmp ne i32 %3, 0, !dbg !3373
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3375

if.then1:                                         ; preds = %if.else
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !3376
  %5 = load i32, i32* %status, align 4, !dbg !3376
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %5) #12, !dbg !3376
  br label %if.end, !dbg !3376

if.end:                                           ; preds = %if.then1, %if.else
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* %status, align 4, !dbg !3377
  ret i32 %6, !dbg !3378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_lck(i8* %handle, i32 %lock) #0 !dbg !3379 {
entry:
  %handle.addr = alloca i8*, align 8
  %lock.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3382, metadata !DIExpression()), !dbg !3383
  store i32 %lock, i32* %lock.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lock.addr, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3386, metadata !DIExpression()), !dbg !3387
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !3388
  %1 = load i32, i32* %lock.addr, align 4, !dbg !3389
  %tobool = icmp ne i32 %1, 0, !dbg !3390
  %lnot = xor i1 %tobool, true, !dbg !3390
  %lnot1 = xor i1 %lnot, true, !dbg !3391
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3391
  %conv = sext i32 %lnot.ext to i64, !dbg !3391
  %call = call i32 @acpi_execute_simple_method(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 %conv) #12, !dbg !3392
  store i32 %call, i32* %status, align 4, !dbg !3393
  %2 = load i32, i32* %status, align 4, !dbg !3394
  %tobool2 = icmp ne i32 %2, 0, !dbg !3394
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !3396

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !3397
  %cmp = icmp ne i32 %3, 5, !dbg !3398
  br i1 %cmp, label %if.then, label %if.end6, !dbg !3399

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %lock.addr, align 4, !dbg !3400
  %tobool4 = icmp ne i32 %4, 0, !dbg !3400
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3403

if.then5:                                         ; preds = %if.then
  %5 = load i8*, i8** %handle.addr, align 8, !dbg !3404
  %6 = load i32, i32* %status, align 4, !dbg !3404
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %6) #12, !dbg !3404
  br label %if.end, !dbg !3404

if.else:                                          ; preds = %if.then
  %7 = load i8*, i8** %handle.addr, align 8, !dbg !3405
  %8 = load i32, i32* %status, align 4, !dbg !3405
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %8) #12, !dbg !3405
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end6, !dbg !3406

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %9 = load i32, i32* %status, align 4, !dbg !3407
  ret i32 %9, !dbg !3408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_reg(i8* %handle, i8 zeroext %space_id, i32 %function) #0 !dbg !3409 {
entry:
  %handle.addr = alloca i8*, align 8
  %space_id.addr = alloca i8, align 1
  %function.addr = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %params = alloca [2 x %union.acpi_object], align 16
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata [2 x %union.acpi_object]* %params, metadata !3420, metadata !DIExpression()), !dbg !3422
  %arrayidx = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3423
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3424
  store i32 1, i32* %type, align 16, !dbg !3425
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !3426
  %conv = zext i8 %0 to i64, !dbg !3426
  %arrayidx1 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3427
  %integer = bitcast %union.acpi_object* %arrayidx1 to %struct.anon*, !dbg !3428
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3429
  store i64 %conv, i64* %value, align 8, !dbg !3430
  %arrayidx2 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %params, i64 0, i64 1, !dbg !3431
  %type3 = bitcast %union.acpi_object* %arrayidx2 to i32*, !dbg !3432
  store i32 1, i32* %type3, align 8, !dbg !3433
  %1 = load i32, i32* %function.addr, align 4, !dbg !3434
  %conv4 = zext i32 %1 to i64, !dbg !3434
  %arrayidx5 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %params, i64 0, i64 1, !dbg !3435
  %integer6 = bitcast %union.acpi_object* %arrayidx5 to %struct.anon*, !dbg !3436
  %value7 = getelementptr inbounds %struct.anon, %struct.anon* %integer6, i32 0, i32 1, !dbg !3437
  store i64 %conv4, i64* %value7, align 8, !dbg !3438
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !3439
  store i32 2, i32* %count, align 8, !dbg !3440
  %arraydecay = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3441
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !3442
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer, align 8, !dbg !3443
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3444
  %call = call i32 @acpi_evaluate_object(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #12, !dbg !3445
  ret i32 %call, !dbg !3446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_object* @acpi_evaluate_dsm(i8* %handle, %struct.guid_t* %guid, i64 %rev, i64 %func, %union.acpi_object* %argv4) #0 !dbg !3447 {
entry:
  %retval = alloca %union.acpi_object*, align 8
  %handle.addr = alloca i8*, align 8
  %guid.addr = alloca %struct.guid_t*, align 8
  %rev.addr = alloca i64, align 8
  %func.addr = alloca i64, align 8
  %argv4.addr = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %params = alloca [4 x %union.acpi_object], align 16
  %input = alloca %struct.acpi_object_list, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  store %struct.guid_t* %guid, %struct.guid_t** %guid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %guid.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  store i64 %rev, i64* %rev.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rev.addr, metadata !3462, metadata !DIExpression()), !dbg !3463
  store i64 %func, i64* %func.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %func.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  store %union.acpi_object* %argv4, %union.acpi_object** %argv4.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %argv4.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !3471
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_evaluate_dsm.buf to i8*), i64 16, i1 false), !dbg !3471
  call void @llvm.dbg.declare(metadata [4 x %union.acpi_object]* %params, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %input, metadata !3475, metadata !DIExpression()), !dbg !3476
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %input, i32 0, i32 0, !dbg !3477
  store i32 4, i32* %count, align 8, !dbg !3477
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %input, i32 0, i32 1, !dbg !3477
  %arraydecay = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3478
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer, align 8, !dbg !3477
  %arrayidx = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3479
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3480
  store i32 3, i32* %type, align 16, !dbg !3481
  %arrayidx1 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3482
  %buffer = bitcast %union.acpi_object* %arrayidx1 to %struct.anon.1*, !dbg !3483
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !3484
  store i32 16, i32* %length, align 4, !dbg !3485
  %1 = load %struct.guid_t*, %struct.guid_t** %guid.addr, align 8, !dbg !3486
  %2 = bitcast %struct.guid_t* %1 to i8*, !dbg !3487
  %arrayidx2 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 0, !dbg !3488
  %buffer3 = bitcast %union.acpi_object* %arrayidx2 to %struct.anon.1*, !dbg !3489
  %pointer4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer3, i32 0, i32 2, !dbg !3490
  store i8* %2, i8** %pointer4, align 8, !dbg !3491
  %arrayidx5 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 1, !dbg !3492
  %type6 = bitcast %union.acpi_object* %arrayidx5 to i32*, !dbg !3493
  store i32 1, i32* %type6, align 8, !dbg !3494
  %3 = load i64, i64* %rev.addr, align 8, !dbg !3495
  %arrayidx7 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 1, !dbg !3496
  %integer = bitcast %union.acpi_object* %arrayidx7 to %struct.anon*, !dbg !3497
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3498
  store i64 %3, i64* %value, align 8, !dbg !3499
  %arrayidx8 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3500
  %type9 = bitcast %union.acpi_object* %arrayidx8 to i32*, !dbg !3501
  store i32 1, i32* %type9, align 16, !dbg !3502
  %4 = load i64, i64* %func.addr, align 8, !dbg !3503
  %arrayidx10 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 2, !dbg !3504
  %integer11 = bitcast %union.acpi_object* %arrayidx10 to %struct.anon*, !dbg !3505
  %value12 = getelementptr inbounds %struct.anon, %struct.anon* %integer11, i32 0, i32 1, !dbg !3506
  store i64 %4, i64* %value12, align 8, !dbg !3507
  %5 = load %union.acpi_object*, %union.acpi_object** %argv4.addr, align 8, !dbg !3508
  %tobool = icmp ne %union.acpi_object* %5, null, !dbg !3508
  br i1 %tobool, label %if.then, label %if.else, !dbg !3510

if.then:                                          ; preds = %entry
  %arrayidx13 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 3, !dbg !3511
  %6 = load %union.acpi_object*, %union.acpi_object** %argv4.addr, align 8, !dbg !3513
  %7 = bitcast %union.acpi_object* %arrayidx13 to i8*, !dbg !3514
  %8 = bitcast %union.acpi_object* %6 to i8*, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false), !dbg !3514
  br label %if.end, !dbg !3515

if.else:                                          ; preds = %entry
  %arrayidx14 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 3, !dbg !3516
  %type15 = bitcast %union.acpi_object* %arrayidx14 to i32*, !dbg !3518
  store i32 4, i32* %type15, align 8, !dbg !3519
  %arrayidx16 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 3, !dbg !3520
  %package = bitcast %union.acpi_object* %arrayidx16 to %struct.anon.2*, !dbg !3521
  %count17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !3522
  store i32 0, i32* %count17, align 4, !dbg !3523
  %arrayidx18 = getelementptr [4 x %union.acpi_object], [4 x %union.acpi_object]* %params, i64 0, i64 3, !dbg !3524
  %package19 = bitcast %union.acpi_object* %arrayidx18 to %struct.anon.2*, !dbg !3525
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package19, i32 0, i32 2, !dbg !3526
  store %union.acpi_object* null, %union.acpi_object** %elements, align 8, !dbg !3527
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %handle.addr, align 8, !dbg !3528
  %call = call i32 @acpi_evaluate_object(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %struct.acpi_object_list* %input, %struct.acpi_buffer* %buf) #12, !dbg !3529
  store i32 %call, i32* %ret, align 4, !dbg !3530
  %10 = load i32, i32* %ret, align 4, !dbg !3531
  %tobool20 = icmp ne i32 %10, 0, !dbg !3531
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !3533

if.then21:                                        ; preds = %if.end
  %pointer22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3534
  %11 = load i8*, i8** %pointer22, align 8, !dbg !3534
  %12 = bitcast i8* %11 to %union.acpi_object*, !dbg !3535
  store %union.acpi_object* %12, %union.acpi_object** %retval, align 8, !dbg !3536
  br label %return, !dbg !3536

if.end23:                                         ; preds = %if.end
  %13 = load i32, i32* %ret, align 4, !dbg !3537
  %cmp = icmp ne i32 %13, 5, !dbg !3539
  br i1 %cmp, label %if.then24, label %if.end25, !dbg !3540

if.then24:                                        ; preds = %if.end23
  %14 = load i8*, i8** %handle.addr, align 8, !dbg !3541
  %15 = load i32, i32* %ret, align 4, !dbg !3541
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %15) #12, !dbg !3541
  br label %if.end25, !dbg !3541

if.end25:                                         ; preds = %if.then24, %if.end23
  store %union.acpi_object* null, %union.acpi_object** %retval, align 8, !dbg !3542
  br label %return, !dbg !3542

return:                                           ; preds = %if.end25, %if.then21
  %16 = load %union.acpi_object*, %union.acpi_object** %retval, align 8, !dbg !3543
  ret %union.acpi_object* %16, !dbg !3543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_check_dsm(i8* %handle, %struct.guid_t* %guid, i64 %rev, i64 %funcs) #0 !dbg !3544 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca i8*, align 8
  %guid.addr = alloca %struct.guid_t*, align 8
  %rev.addr = alloca i64, align 8
  %funcs.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %mask = alloca i64, align 8
  %obj = alloca %union.acpi_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  store %struct.guid_t* %guid, %struct.guid_t** %guid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %guid.addr, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i64 %rev, i64* %rev.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rev.addr, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i64 %funcs, i64* %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %funcs.addr, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3555, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !3557, metadata !DIExpression()), !dbg !3558
  store i64 0, i64* %mask, align 8, !dbg !3558
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3559, metadata !DIExpression()), !dbg !3560
  %0 = load i64, i64* %funcs.addr, align 8, !dbg !3561
  %cmp = icmp eq i64 %0, 0, !dbg !3563
  br i1 %cmp, label %if.then, label %if.end, !dbg !3564

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !3565
  br label %return, !dbg !3565

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !3566
  %2 = load %struct.guid_t*, %struct.guid_t** %guid.addr, align 8, !dbg !3567
  %3 = load i64, i64* %rev.addr, align 8, !dbg !3568
  %call = call %union.acpi_object* @acpi_evaluate_dsm(i8* %1, %struct.guid_t* %2, i64 %3, i64 0, %union.acpi_object* null) #12, !dbg !3569
  store %union.acpi_object* %call, %union.acpi_object** %obj, align 8, !dbg !3570
  %4 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3571
  %tobool = icmp ne %union.acpi_object* %4, null, !dbg !3571
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !3573

if.then1:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !3574
  br label %return, !dbg !3574

if.end2:                                          ; preds = %if.end
  %5 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3575
  %type = bitcast %union.acpi_object* %5 to i32*, !dbg !3577
  %6 = load i32, i32* %type, align 8, !dbg !3577
  %cmp3 = icmp eq i32 %6, 1, !dbg !3578
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3579

if.then4:                                         ; preds = %if.end2
  %7 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3580
  %integer = bitcast %union.acpi_object* %7 to %struct.anon*, !dbg !3581
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !3582
  %8 = load i64, i64* %value, align 8, !dbg !3582
  store i64 %8, i64* %mask, align 8, !dbg !3583
  br label %if.end12, !dbg !3584

if.else:                                          ; preds = %if.end2
  %9 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3585
  %type5 = bitcast %union.acpi_object* %9 to i32*, !dbg !3587
  %10 = load i32, i32* %type5, align 8, !dbg !3587
  %cmp6 = icmp eq i32 %10, 3, !dbg !3588
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !3589

if.then7:                                         ; preds = %if.else
  store i32 0, i32* %i, align 4, !dbg !3590
  br label %for.cond, !dbg !3592

for.cond:                                         ; preds = %for.inc, %if.then7
  %11 = load i32, i32* %i, align 4, !dbg !3593
  %12 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3595
  %buffer = bitcast %union.acpi_object* %12 to %struct.anon.1*, !dbg !3596
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !3597
  %13 = load i32, i32* %length, align 4, !dbg !3597
  %cmp8 = icmp ult i32 %11, %13, !dbg !3598
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !3599

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !3600
  %cmp9 = icmp slt i32 %14, 8, !dbg !3601
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ], !dbg !3602
  br i1 %15, label %for.body, label %for.end, !dbg !3603

for.body:                                         ; preds = %land.end
  %16 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3604
  %buffer10 = bitcast %union.acpi_object* %16 to %struct.anon.1*, !dbg !3605
  %pointer = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer10, i32 0, i32 2, !dbg !3606
  %17 = load i8*, i8** %pointer, align 8, !dbg !3606
  %18 = load i32, i32* %i, align 4, !dbg !3607
  %idxprom = sext i32 %18 to i64, !dbg !3604
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom, !dbg !3604
  %19 = load i8, i8* %arrayidx, align 1, !dbg !3604
  %conv = zext i8 %19 to i64, !dbg !3608
  %20 = load i32, i32* %i, align 4, !dbg !3609
  %mul = mul i32 %20, 8, !dbg !3610
  %sh_prom = zext i32 %mul to i64, !dbg !3611
  %shl = shl i64 %conv, %sh_prom, !dbg !3611
  %21 = load i64, i64* %mask, align 8, !dbg !3612
  %or = or i64 %21, %shl, !dbg !3612
  store i64 %or, i64* %mask, align 8, !dbg !3612
  br label %for.inc, !dbg !3613

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !3614
  %inc = add i32 %22, 1, !dbg !3614
  store i32 %inc, i32* %i, align 4, !dbg !3614
  br label %for.cond, !dbg !3615, !llvm.loop !3616

for.end:                                          ; preds = %land.end
  br label %if.end11, !dbg !3617

if.end11:                                         ; preds = %for.end, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then4
  %23 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3618
  %24 = bitcast %union.acpi_object* %23 to i8*, !dbg !3618
  call void @acpi_os_free(i8* %24) #12, !dbg !3618
  %25 = load i64, i64* %mask, align 8, !dbg !3619
  %and = and i64 %25, 1, !dbg !3621
  %tobool13 = icmp ne i64 %and, 0, !dbg !3621
  br i1 %tobool13, label %land.lhs.true, label %if.end18, !dbg !3622

land.lhs.true:                                    ; preds = %if.end12
  %26 = load i64, i64* %mask, align 8, !dbg !3623
  %27 = load i64, i64* %funcs.addr, align 8, !dbg !3624
  %and14 = and i64 %26, %27, !dbg !3625
  %28 = load i64, i64* %funcs.addr, align 8, !dbg !3626
  %cmp15 = icmp eq i64 %and14, %28, !dbg !3627
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3628

if.then17:                                        ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !3629
  br label %return, !dbg !3629

if.end18:                                         ; preds = %land.lhs.true, %if.end12
  store i1 false, i1* %retval, align 1, !dbg !3630
  br label %return, !dbg !3630

return:                                           ; preds = %if.end18, %if.then17, %if.then1, %if.then
  %29 = load i1, i1* %retval, align 1, !dbg !3631
  ret i1 %29, !dbg !3631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !3632 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !3633, metadata !DIExpression()), !dbg !3634
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !3635
  call void @kfree(i8* %0) #12, !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_hid_uid_match(%struct.acpi_device* %adev, i8* %hid2, i8* %uid2) #0 !dbg !3638 {
entry:
  %retval = alloca i1, align 1
  %adev.addr = alloca %struct.acpi_device*, align 8
  %hid2.addr = alloca i8*, align 8
  %uid2.addr = alloca i8*, align 8
  %hid1 = alloca i8*, align 8
  %uid1 = alloca i8*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  store i8* %hid2, i8** %hid2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hid2.addr, metadata !3643, metadata !DIExpression()), !dbg !3644
  store i8* %uid2, i8** %uid2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %uid2.addr, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.declare(metadata i8** %hid1, metadata !3647, metadata !DIExpression()), !dbg !3648
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3649
  %call = call i8* @acpi_device_hid(%struct.acpi_device* %0) #12, !dbg !3650
  store i8* %call, i8** %hid1, align 8, !dbg !3648
  call void @llvm.dbg.declare(metadata i8** %uid1, metadata !3651, metadata !DIExpression()), !dbg !3652
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3653
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 10, !dbg !3653
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 3, !dbg !3653
  %2 = load i8*, i8** %unique_id, align 8, !dbg !3653
  store i8* %2, i8** %uid1, align 8, !dbg !3652
  %3 = load i8*, i8** %hid1, align 8, !dbg !3654
  %4 = load i8*, i8** %hid2.addr, align 8, !dbg !3656
  %call1 = call i32 @strcmp(i8* %3, i8* %4) #12, !dbg !3657
  %tobool = icmp ne i32 %call1, 0, !dbg !3657
  br i1 %tobool, label %if.then, label %if.end, !dbg !3658

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !3659
  br label %return, !dbg !3659

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %uid2.addr, align 8, !dbg !3660
  %tobool2 = icmp ne i8* %5, null, !dbg !3660
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3662

if.then3:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !3663
  br label %return, !dbg !3663

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %uid1, align 8, !dbg !3664
  %tobool5 = icmp ne i8* %6, null, !dbg !3664
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !3665

land.rhs:                                         ; preds = %if.end4
  %7 = load i8*, i8** %uid1, align 8, !dbg !3666
  %8 = load i8*, i8** %uid2.addr, align 8, !dbg !3667
  %call6 = call i32 @strcmp(i8* %7, i8* %8) #12, !dbg !3668
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3669
  %lnot = xor i1 %tobool7, true, !dbg !3669
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end4
  %9 = phi i1 [ false, %if.end4 ], [ %lnot, %land.rhs ], !dbg !3670
  store i1 %9, i1* %retval, align 1, !dbg !3671
  br label %return, !dbg !3671

return:                                           ; preds = %land.end, %if.then3, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !3672
  ret i1 %10, !dbg !3672
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #4

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_found(i8* %hid) #0 !dbg !3673 {
entry:
  %hid.addr = alloca i8*, align 8
  %acpi_device_bus_id = alloca %struct.acpi_device_bus_id*, align 8
  %found = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device_bus_id*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device_bus_id*, align 8
  store i8* %hid, i8** %hid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hid.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.declare(metadata %struct.acpi_device_bus_id** %acpi_device_bus_id, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.declare(metadata i8* %found, metadata !3680, metadata !DIExpression()), !dbg !3681
  store i8 0, i8* %found, align 1, !dbg !3681
  call void @mutex_lock(%struct.mutex* @acpi_device_lock) #12, !dbg !3682
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3683, metadata !DIExpression()), !dbg !3686
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_bus_id_list, i32 0, i32 0), align 8, !dbg !3686
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3686
  store i8* %1, i8** %__mptr, align 8, !dbg !3686
  br label %do.body, !dbg !3686

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3687

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3686
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3686
  %3 = bitcast i8* %add.ptr to %struct.acpi_device_bus_id*, !dbg !3686
  store %struct.acpi_device_bus_id* %3, %struct.acpi_device_bus_id** %tmp, align 8, !dbg !3687
  %4 = load %struct.acpi_device_bus_id*, %struct.acpi_device_bus_id** %tmp, align 8, !dbg !3686
  store %struct.acpi_device_bus_id* %4, %struct.acpi_device_bus_id** %acpi_device_bus_id, align 8, !dbg !3689
  br label %for.cond, !dbg !3689

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.acpi_device_bus_id*, %struct.acpi_device_bus_id** %acpi_device_bus_id, align 8, !dbg !3690
  %node = getelementptr inbounds %struct.acpi_device_bus_id, %struct.acpi_device_bus_id* %5, i32 0, i32 2, !dbg !3690
  %cmp = icmp eq %struct.list_head* %node, @acpi_bus_id_list, !dbg !3690
  %lnot = xor i1 %cmp, true, !dbg !3690
  br i1 %lnot, label %for.body, label %for.end, !dbg !3689

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_device_bus_id*, %struct.acpi_device_bus_id** %acpi_device_bus_id, align 8, !dbg !3692
  %bus_id = getelementptr inbounds %struct.acpi_device_bus_id, %struct.acpi_device_bus_id* %6, i32 0, i32 0, !dbg !3694
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %bus_id, i64 0, i64 0, !dbg !3692
  %7 = load i8*, i8** %hid.addr, align 8, !dbg !3695
  %call = call i32 @strcmp(i8* %arraydecay, i8* %7) #12, !dbg !3696
  %tobool = icmp ne i32 %call, 0, !dbg !3696
  br i1 %tobool, label %if.end, label %if.then, !dbg !3697

if.then:                                          ; preds = %for.body
  store i8 1, i8* %found, align 1, !dbg !3698
  br label %for.end, !dbg !3700

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3701

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3702, metadata !DIExpression()), !dbg !3704
  %8 = load %struct.acpi_device_bus_id*, %struct.acpi_device_bus_id** %acpi_device_bus_id, align 8, !dbg !3704
  %node2 = getelementptr inbounds %struct.acpi_device_bus_id, %struct.acpi_device_bus_id* %8, i32 0, i32 2, !dbg !3704
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node2, i32 0, i32 0, !dbg !3704
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3704
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !3704
  store i8* %10, i8** %__mptr1, align 8, !dbg !3704
  br label %do.body3, !dbg !3704

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !3705

do.end4:                                          ; preds = %do.body3
  %11 = load i8*, i8** %__mptr1, align 8, !dbg !3704
  %add.ptr6 = getelementptr i8, i8* %11, i64 -24, !dbg !3704
  %12 = bitcast i8* %add.ptr6 to %struct.acpi_device_bus_id*, !dbg !3704
  store %struct.acpi_device_bus_id* %12, %struct.acpi_device_bus_id** %tmp5, align 8, !dbg !3705
  %13 = load %struct.acpi_device_bus_id*, %struct.acpi_device_bus_id** %tmp5, align 8, !dbg !3704
  store %struct.acpi_device_bus_id* %13, %struct.acpi_device_bus_id** %acpi_device_bus_id, align 8, !dbg !3690
  br label %for.cond, !dbg !3690, !llvm.loop !3707

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(%struct.mutex* @acpi_device_lock) #12, !dbg !3709
  %14 = load i8, i8* %found, align 1, !dbg !3710
  %tobool7 = trunc i8 %14 to i1, !dbg !3710
  ret i1 %tobool7, !dbg !3711
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #4

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_dev_present(i8* %hid, i8* %uid, i64 %hrv) #0 !dbg !3712 {
entry:
  %hid.addr = alloca i8*, align 8
  %uid.addr = alloca i8*, align 8
  %hrv.addr = alloca i64, align 8
  %match = alloca %struct.acpi_dev_match_info, align 8
  %dev = alloca %struct.device*, align 8
  store i8* %hid, i8** %hid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hid.addr, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i8* %uid, i8** %uid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %uid.addr, metadata !3717, metadata !DIExpression()), !dbg !3718
  store i64 %hrv, i64* %hrv.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %hrv.addr, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata %struct.acpi_dev_match_info* %match, metadata !3721, metadata !DIExpression()), !dbg !3728
  %0 = bitcast %struct.acpi_dev_match_info* %match to i8*, !dbg !3728
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !3728
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3729, metadata !DIExpression()), !dbg !3730
  %hid1 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 0, !dbg !3731
  %arrayidx = getelementptr [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %hid1, i64 0, i64 0, !dbg !3732
  %id = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %arrayidx, i32 0, i32 0, !dbg !3733
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %id, i64 0, i64 0, !dbg !3732
  %1 = load i8*, i8** %hid.addr, align 8, !dbg !3734
  %call = call i64 @strlcpy(i8* %arraydecay, i8* %1, i64 9) #12, !dbg !3735
  %2 = load i8*, i8** %uid.addr, align 8, !dbg !3736
  %uid2 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 1, !dbg !3737
  store i8* %2, i8** %uid2, align 8, !dbg !3738
  %3 = load i64, i64* %hrv.addr, align 8, !dbg !3739
  %hrv3 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 2, !dbg !3740
  store i64 %3, i64* %hrv3, align 8, !dbg !3741
  %4 = bitcast %struct.acpi_dev_match_info* %match to i8*, !dbg !3742
  %call4 = call %struct.device* @bus_find_device(%struct.bus_type* @acpi_bus_type, %struct.device* null, i8* %4, i32 (%struct.device*, i8*)* @acpi_dev_match_cb) #12, !dbg !3743
  store %struct.device* %call4, %struct.device** %dev, align 8, !dbg !3744
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3745
  call void @put_device(%struct.device* %5) #12, !dbg !3746
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3747
  %tobool = icmp ne %struct.device* %6, null, !dbg !3748
  %lnot = xor i1 %tobool, true, !dbg !3748
  %lnot5 = xor i1 %lnot, true, !dbg !3749
  ret i1 %lnot5, !dbg !3750
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local %struct.device* @bus_find_device(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_match_cb(%struct.device* %dev, i8* %data) #0 !dbg !3751 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %match = alloca %struct.acpi_dev_match_info*, align 8
  %hrv = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3756, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3760, metadata !DIExpression()), !dbg !3762
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3762
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3762
  store i8* %1, i8** %__mptr, align 8, !dbg !3762
  br label %do.body, !dbg !3762

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3763

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3762
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3762
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3762
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3763
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3762
  store %struct.acpi_device* %4, %struct.acpi_device** %adev, align 8, !dbg !3759
  call void @llvm.dbg.declare(metadata %struct.acpi_dev_match_info** %match, metadata !3765, metadata !DIExpression()), !dbg !3768
  %5 = load i8*, i8** %data.addr, align 8, !dbg !3769
  %6 = bitcast i8* %5 to %struct.acpi_dev_match_info*, !dbg !3769
  store %struct.acpi_dev_match_info* %6, %struct.acpi_dev_match_info** %match, align 8, !dbg !3768
  call void @llvm.dbg.declare(metadata i64* %hrv, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3772, metadata !DIExpression()), !dbg !3773
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3774
  %8 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %match, align 8, !dbg !3776
  %hid = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %8, i32 0, i32 0, !dbg !3777
  %arraydecay = getelementptr inbounds [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %hid, i64 0, i64 0, !dbg !3776
  %call = call i32 @acpi_match_device_ids(%struct.acpi_device* %7, %struct.acpi_device_id* %arraydecay) #12, !dbg !3778
  %tobool = icmp ne i32 %call, 0, !dbg !3778
  br i1 %tobool, label %if.then, label %if.end, !dbg !3779

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !3780
  br label %return, !dbg !3780

if.end:                                           ; preds = %do.end
  %9 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %match, align 8, !dbg !3781
  %uid = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %9, i32 0, i32 1, !dbg !3783
  %10 = load i8*, i8** %uid, align 8, !dbg !3783
  %tobool1 = icmp ne i8* %10, null, !dbg !3781
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !3784

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3785
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !3786
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 3, !dbg !3787
  %12 = load i8*, i8** %unique_id, align 8, !dbg !3787
  %tobool2 = icmp ne i8* %12, null, !dbg !3785
  br i1 %tobool2, label %lor.lhs.false, label %if.then8, !dbg !3788

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3789
  %pnp3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 10, !dbg !3790
  %unique_id4 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp3, i32 0, i32 3, !dbg !3791
  %14 = load i8*, i8** %unique_id4, align 8, !dbg !3791
  %15 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %match, align 8, !dbg !3792
  %uid5 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %15, i32 0, i32 1, !dbg !3793
  %16 = load i8*, i8** %uid5, align 8, !dbg !3793
  %call6 = call i32 @strcmp(i8* %14, i8* %16) #12, !dbg !3794
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3794
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3795

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !3796
  br label %return, !dbg !3796

if.end9:                                          ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %match, align 8, !dbg !3797
  %hrv10 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %17, i32 0, i32 2, !dbg !3799
  %18 = load i64, i64* %hrv10, align 8, !dbg !3799
  %cmp = icmp eq i64 %18, -1, !dbg !3800
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !3801

if.then11:                                        ; preds = %if.end9
  store i32 1, i32* %retval, align 4, !dbg !3802
  br label %return, !dbg !3802

if.end12:                                         ; preds = %if.end9
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3803
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1, !dbg !3804
  %20 = load i8*, i8** %handle, align 8, !dbg !3804
  %call13 = call i32 @acpi_evaluate_integer(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %struct.acpi_object_list* null, i64* %hrv) #12, !dbg !3805
  store i32 %call13, i32* %status, align 4, !dbg !3806
  %21 = load i32, i32* %status, align 4, !dbg !3807
  %tobool14 = icmp ne i32 %21, 0, !dbg !3807
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3809

if.then15:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !3810
  br label %return, !dbg !3810

if.end16:                                         ; preds = %if.end12
  %22 = load i64, i64* %hrv, align 8, !dbg !3811
  %23 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %match, align 8, !dbg !3812
  %hrv17 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %23, i32 0, i32 2, !dbg !3813
  %24 = load i64, i64* %hrv17, align 8, !dbg !3813
  %cmp18 = icmp eq i64 %22, %24, !dbg !3814
  %conv = zext i1 %cmp18 to i32, !dbg !3814
  store i32 %conv, i32* %retval, align 4, !dbg !3815
  br label %return, !dbg !3815

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then8, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3816
  ret i32 %25, !dbg !3816
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device* @acpi_dev_get_first_match_dev(i8* %hid, i8* %uid, i64 %hrv) #0 !dbg !3817 {
entry:
  %hid.addr = alloca i8*, align 8
  %uid.addr = alloca i8*, align 8
  %hrv.addr = alloca i64, align 8
  %match = alloca %struct.acpi_dev_match_info, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store i8* %hid, i8** %hid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hid.addr, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i8* %uid, i8** %uid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %uid.addr, metadata !3822, metadata !DIExpression()), !dbg !3823
  store i64 %hrv, i64* %hrv.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %hrv.addr, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.declare(metadata %struct.acpi_dev_match_info* %match, metadata !3826, metadata !DIExpression()), !dbg !3827
  %0 = bitcast %struct.acpi_dev_match_info* %match to i8*, !dbg !3827
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !3827
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3828, metadata !DIExpression()), !dbg !3829
  %hid1 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 0, !dbg !3830
  %arrayidx = getelementptr [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %hid1, i64 0, i64 0, !dbg !3831
  %id = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %arrayidx, i32 0, i32 0, !dbg !3832
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %id, i64 0, i64 0, !dbg !3831
  %1 = load i8*, i8** %hid.addr, align 8, !dbg !3833
  %call = call i64 @strlcpy(i8* %arraydecay, i8* %1, i64 9) #12, !dbg !3834
  %2 = load i8*, i8** %uid.addr, align 8, !dbg !3835
  %uid2 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 1, !dbg !3836
  store i8* %2, i8** %uid2, align 8, !dbg !3837
  %3 = load i64, i64* %hrv.addr, align 8, !dbg !3838
  %hrv3 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %match, i32 0, i32 2, !dbg !3839
  store i64 %3, i64* %hrv3, align 8, !dbg !3840
  %4 = bitcast %struct.acpi_dev_match_info* %match to i8*, !dbg !3841
  %call4 = call %struct.device* @bus_find_device(%struct.bus_type* @acpi_bus_type, %struct.device* null, i8* %4, i32 (%struct.device*, i8*)* @acpi_dev_match_cb) #12, !dbg !3842
  store %struct.device* %call4, %struct.device** %dev, align 8, !dbg !3843
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3844
  %tobool = icmp ne %struct.device* %5, null, !dbg !3844
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3844

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3845, metadata !DIExpression()), !dbg !3847
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3847
  %7 = bitcast %struct.device* %6 to i8*, !dbg !3847
  store i8* %7, i8** %__mptr, align 8, !dbg !3847
  br label %do.body, !dbg !3847

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3848

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !3847
  %add.ptr = getelementptr i8, i8* %8, i64 -608, !dbg !3847
  %9 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3847
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp, align 8, !dbg !3848
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3847
  br label %cond.end, !dbg !3844

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3844

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %10, %do.end ], [ null, %cond.false ], !dbg !3844
  ret %struct.acpi_device* %cond, !dbg !3850
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_backlight(i8* %str) #6 section ".init.text" !dbg !3851 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  %0 = load i8*, i8** %str.addr, align 8, !dbg !3854
  %call = call i64 @strlcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @acpi_video_backlight_string, i64 0, i64 0), i8* %0, i64 16) #12, !dbg !3855
  ret i32 1, !dbg !3856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_match_platform_list(%struct.acpi_platform_list* %plat) #0 !dbg !3857 {
entry:
  %retval = alloca i32, align 4
  %plat.addr = alloca %struct.acpi_platform_list*, align 8
  %hdr = alloca %struct.acpi_table_header, align 1
  %idx = alloca i32, align 4
  store %struct.acpi_platform_list* %plat, %struct.acpi_platform_list** %plat.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_platform_list** %plat.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header* %hdr, metadata !3877, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3893, metadata !DIExpression()), !dbg !3894
  store i32 0, i32* %idx, align 4, !dbg !3894
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !3895
  %tobool = icmp ne i32 %0, 0, !dbg !3895
  br i1 %tobool, label %if.then, label %if.end, !dbg !3897

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3898
  br label %return, !dbg !3898

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !3899

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3900
  %oem_id = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %1, i32 0, i32 0, !dbg !3903
  %arrayidx = getelementptr [7 x i8], [7 x i8]* %oem_id, i64 0, i64 0, !dbg !3900
  %2 = load i8, i8* %arrayidx, align 8, !dbg !3900
  %tobool1 = icmp ne i8 %2, 0, !dbg !3904
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3904

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3905
  %table = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %3, i32 0, i32 3, !dbg !3905
  %4 = load i8*, i8** %table, align 8, !dbg !3905
  %call = call i32 @acpi_get_table_header(i8* %4, i32 0, %struct.acpi_table_header* %hdr) #12, !dbg !3905
  %tobool2 = icmp ne i32 %call, 0, !dbg !3905
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3908

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !3909

if.end4:                                          ; preds = %for.body
  %5 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3910
  %oem_id5 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %5, i32 0, i32 0, !dbg !3912
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %oem_id5, i64 0, i64 0, !dbg !3910
  %oem_id6 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %hdr, i32 0, i32 4, !dbg !3913
  %arraydecay7 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id6, i64 0, i64 0, !dbg !3914
  %call8 = call i32 @strncmp(i8* %arraydecay, i8* %arraydecay7, i64 6) #12, !dbg !3915
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3915
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3916

if.then10:                                        ; preds = %if.end4
  br label %for.inc, !dbg !3917

if.end11:                                         ; preds = %if.end4
  %6 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3918
  %oem_table_id = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %6, i32 0, i32 1, !dbg !3920
  %arraydecay12 = getelementptr inbounds [9 x i8], [9 x i8]* %oem_table_id, i64 0, i64 0, !dbg !3918
  %oem_table_id13 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %hdr, i32 0, i32 5, !dbg !3921
  %arraydecay14 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id13, i64 0, i64 0, !dbg !3922
  %call15 = call i32 @strncmp(i8* %arraydecay12, i8* %arraydecay14, i64 8) #12, !dbg !3923
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3923
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3924

if.then17:                                        ; preds = %if.end11
  br label %for.inc, !dbg !3925

if.end18:                                         ; preds = %if.end11
  %7 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3926
  %pred = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %7, i32 0, i32 4, !dbg !3928
  %8 = load i32, i32* %pred, align 8, !dbg !3928
  %cmp = icmp eq i32 %8, 0, !dbg !3929
  br i1 %cmp, label %if.then37, label %lor.lhs.false, !dbg !3930

lor.lhs.false:                                    ; preds = %if.end18
  %9 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3931
  %pred19 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %9, i32 0, i32 4, !dbg !3932
  %10 = load i32, i32* %pred19, align 8, !dbg !3932
  %cmp20 = icmp eq i32 %10, 1, !dbg !3933
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false23, !dbg !3934

land.lhs.true:                                    ; preds = %lor.lhs.false
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %hdr, i32 0, i32 6, !dbg !3935
  %11 = load i32, i32* %oem_revision, align 1, !dbg !3935
  %12 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3936
  %oem_revision21 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %12, i32 0, i32 2, !dbg !3937
  %13 = load i32, i32* %oem_revision21, align 8, !dbg !3937
  %cmp22 = icmp ule i32 %11, %13, !dbg !3938
  br i1 %cmp22, label %if.then37, label %lor.lhs.false23, !dbg !3939

lor.lhs.false23:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3940
  %pred24 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %14, i32 0, i32 4, !dbg !3941
  %15 = load i32, i32* %pred24, align 8, !dbg !3941
  %cmp25 = icmp eq i32 %15, 3, !dbg !3942
  br i1 %cmp25, label %land.lhs.true26, label %lor.lhs.false30, !dbg !3943

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %oem_revision27 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %hdr, i32 0, i32 6, !dbg !3944
  %16 = load i32, i32* %oem_revision27, align 1, !dbg !3944
  %17 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3945
  %oem_revision28 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %17, i32 0, i32 2, !dbg !3946
  %18 = load i32, i32* %oem_revision28, align 8, !dbg !3946
  %cmp29 = icmp uge i32 %16, %18, !dbg !3947
  br i1 %cmp29, label %if.then37, label %lor.lhs.false30, !dbg !3948

lor.lhs.false30:                                  ; preds = %land.lhs.true26, %lor.lhs.false23
  %19 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3949
  %pred31 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %19, i32 0, i32 4, !dbg !3950
  %20 = load i32, i32* %pred31, align 8, !dbg !3950
  %cmp32 = icmp eq i32 %20, 2, !dbg !3951
  br i1 %cmp32, label %land.lhs.true33, label %if.end38, !dbg !3952

land.lhs.true33:                                  ; preds = %lor.lhs.false30
  %oem_revision34 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %hdr, i32 0, i32 6, !dbg !3953
  %21 = load i32, i32* %oem_revision34, align 1, !dbg !3953
  %22 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3954
  %oem_revision35 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %22, i32 0, i32 2, !dbg !3955
  %23 = load i32, i32* %oem_revision35, align 8, !dbg !3955
  %cmp36 = icmp eq i32 %21, %23, !dbg !3956
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3957

if.then37:                                        ; preds = %land.lhs.true33, %land.lhs.true26, %land.lhs.true, %if.end18
  %24 = load i32, i32* %idx, align 4, !dbg !3958
  store i32 %24, i32* %retval, align 4, !dbg !3959
  br label %return, !dbg !3959

if.end38:                                         ; preds = %land.lhs.true33, %lor.lhs.false30
  br label %for.inc, !dbg !3960

for.inc:                                          ; preds = %if.end38, %if.then17, %if.then10, %if.then3
  %25 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3961
  %incdec.ptr = getelementptr %struct.acpi_platform_list, %struct.acpi_platform_list* %25, i32 1, !dbg !3961
  store %struct.acpi_platform_list* %incdec.ptr, %struct.acpi_platform_list** %plat.addr, align 8, !dbg !3961
  %26 = load i32, i32* %idx, align 4, !dbg !3962
  %inc = add i32 %26, 1, !dbg !3962
  store i32 %inc, i32* %idx, align 4, !dbg !3962
  br label %for.cond, !dbg !3963, !llvm.loop !3964

for.end:                                          ; preds = %for.cond
  store i32 -19, i32* %retval, align 4, !dbg !3966
  br label %return, !dbg !3966

return:                                           ; preds = %for.end, %if.then37, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !3967
  ret i32 %27, !dbg !3967
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_header(i8*, i32, %struct.acpi_table_header*) #4

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3968 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3971, metadata !DIExpression()), !dbg !3975
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3981, metadata !DIExpression()), !dbg !3982
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3983, metadata !DIExpression()), !dbg !3984
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3985, metadata !DIExpression()), !dbg !3986
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3987, metadata !DIExpression()), !dbg !3991
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3993, metadata !DIExpression()), !dbg !3997
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3999, metadata !DIExpression()), !dbg !4003
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4008, metadata !DIExpression()), !dbg !4009
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4010, metadata !DIExpression()), !dbg !4011
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4012, metadata !DIExpression()), !dbg !4013
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4014, metadata !DIExpression()), !dbg !4015
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4016, metadata !DIExpression()), !dbg !4017
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4018, metadata !DIExpression()), !dbg !4019
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4020, metadata !DIExpression()), !dbg !4021
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4022, metadata !DIExpression()), !dbg !4023
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4026, metadata !DIExpression()), !dbg !4027
  %0 = load i64, i64* %size.addr, align 8, !dbg !4028
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4029
  %or = or i32 %1, 256, !dbg !4030
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4031
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #5, !dbg !4032
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4033

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4034
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4035
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4036

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4037
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4038
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4039
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4040
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4017
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4041
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4042
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4043
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4044
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4045
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4046
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !4047
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4047
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4047
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4047
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !4047
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4048
  br label %kmalloc.exit, !dbg !4048

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4049
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4050
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4050
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4052

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4053
  br label %kmalloc_index.exit.i, !dbg !4053

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4054
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4056
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4057

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4058
  br label %kmalloc_index.exit.i, !dbg !4058

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4059
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4061
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4062

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4063
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4064
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4065

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4066
  br label %kmalloc_index.exit.i, !dbg !4066

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4067
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4069
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4070

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4071
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4072
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4073

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4074
  br label %kmalloc_index.exit.i, !dbg !4074

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4075
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4077
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4078

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4079
  br label %kmalloc_index.exit.i, !dbg !4079

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4080
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4082
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4083

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4084
  br label %kmalloc_index.exit.i, !dbg !4084

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4085
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4087
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4088

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4089
  br label %kmalloc_index.exit.i, !dbg !4089

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4090
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4092
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4093

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4094
  br label %kmalloc_index.exit.i, !dbg !4094

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4095
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4097
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4098

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4099
  br label %kmalloc_index.exit.i, !dbg !4099

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4100
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4102
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4103

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4104
  br label %kmalloc_index.exit.i, !dbg !4104

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4105
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4107
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4108

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4109
  br label %kmalloc_index.exit.i, !dbg !4109

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4110
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4112
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4113

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4114
  br label %kmalloc_index.exit.i, !dbg !4114

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4115
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4117
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4118

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4119
  br label %kmalloc_index.exit.i, !dbg !4119

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4120
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4122
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4123

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4124
  br label %kmalloc_index.exit.i, !dbg !4124

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4125
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4127
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4128

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4129
  br label %kmalloc_index.exit.i, !dbg !4129

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4130
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4132
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4133

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4134
  br label %kmalloc_index.exit.i, !dbg !4134

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4135
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4137
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4138

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4139
  br label %kmalloc_index.exit.i, !dbg !4139

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4140
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4142
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4143

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4144
  br label %kmalloc_index.exit.i, !dbg !4144

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4145
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4147
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4148

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4149
  br label %kmalloc_index.exit.i, !dbg !4149

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4150
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4152
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4153

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4154
  br label %kmalloc_index.exit.i, !dbg !4154

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4155
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4157
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4158

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4159
  br label %kmalloc_index.exit.i, !dbg !4159

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4160
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4162
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4163

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4164
  br label %kmalloc_index.exit.i, !dbg !4164

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4165
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4167
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4168

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4169
  br label %kmalloc_index.exit.i, !dbg !4169

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4170
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4172
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4173

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4174
  br label %kmalloc_index.exit.i, !dbg !4174

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4175
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4177
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4178

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4179
  br label %kmalloc_index.exit.i, !dbg !4179

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4180
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4182
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4183

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4184
  br label %kmalloc_index.exit.i, !dbg !4184

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4185
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4187
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4188

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4189
  br label %kmalloc_index.exit.i, !dbg !4189

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4190
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4192
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4193

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4194
  br label %kmalloc_index.exit.i, !dbg !4194

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !4195, !srcloc !4198
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #5, !dbg !4199, !srcloc !4202
  unreachable, !dbg !4203

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4204
  store i32 %45, i32* %index.i, align 4, !dbg !4205
  %46 = load i32, i32* %index.i, align 4, !dbg !4206
  %tobool.i = icmp ne i32 %46, 0, !dbg !4206
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4208

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4209
  br label %kmalloc.exit, !dbg !4209

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4210
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4211
  %and.i.i = and i32 %48, 17, !dbg !4211
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4211
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4211
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4211
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4211
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4213

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4214
  br label %kmalloc_type.exit.i, !dbg !4214

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4215
  %and2.i.i = and i32 %49, 1, !dbg !4216
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4215
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4215
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4215
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4217
  br label %kmalloc_type.exit.i, !dbg !4217

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4218
  %idxprom.i = zext i32 %51 to i64, !dbg !4219
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4219
  %52 = load i32, i32* %index.i, align 4, !dbg !4220
  %idxprom6.i = zext i32 %52 to i64, !dbg !4219
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4219
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4219
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4221
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4222
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4223
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4224
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !4225
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4225
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4225
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4225
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !4225
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3986
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4226
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4227
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4228
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4229
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !4230
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4231
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4232
  store i8* %62, i8** %retval.i, align 8, !dbg !4233
  br label %kmalloc.exit, !dbg !4233

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4234
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4235
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !4236
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4236
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4236
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4236
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !4236
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4237
  br label %kmalloc.exit, !dbg !4237

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4238
  ret i8* %65, !dbg !4239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4240 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4244, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4247, metadata !DIExpression()), !dbg !4246
  %0 = load i64, i64* %__edi, align 8, !dbg !4246
  store i64 %0, i64* %__edi, align 8, !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4248, metadata !DIExpression()), !dbg !4246
  %1 = load i64, i64* %__esi, align 8, !dbg !4246
  store i64 %1, i64* %__esi, align 8, !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4249, metadata !DIExpression()), !dbg !4246
  %2 = load i64, i64* %__edx, align 8, !dbg !4246
  store i64 %2, i64* %__edx, align 8, !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4250, metadata !DIExpression()), !dbg !4246
  %3 = load i64, i64* %__ecx, align 8, !dbg !4246
  store i64 %3, i64* %__ecx, align 8, !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4251, metadata !DIExpression()), !dbg !4246
  %4 = load i64, i64* %__eax, align 8, !dbg !4246
  store i64 %4, i64* %__eax, align 8, !dbg !4246
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4246
  %6 = call i64 @llvm.read_register.i64(metadata !2464), !dbg !4252
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !4252, !srcloc !4255
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4252
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4252
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4252
  call void @llvm.write_register.i64(metadata !2464, i64 %asmresult1), !dbg !4252
  %8 = load i64, i64* %__eax, align 8, !dbg !4252
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4256, metadata !DIExpression()), !dbg !4258
  store i64 -1, i64* %__mask, align 8, !dbg !4258
  %9 = load i64, i64* %__mask, align 8, !dbg !4258
  store i64 %9, i64* %tmp, align 8, !dbg !4258
  %10 = load i64, i64* %tmp, align 8, !dbg !4258
  %and = and i64 %8, %10, !dbg !4252
  store i64 %and, i64* %__ret, align 8, !dbg !4252
  %11 = load i64, i64* %__ret, align 8, !dbg !4246
  store i64 %11, i64* %tmp2, align 8, !dbg !4259
  %12 = load i64, i64* %tmp2, align 8, !dbg !4246
  ret i64 %12, !dbg !4260
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !4261 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4263, metadata !DIExpression()), !dbg !4268
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4270, metadata !DIExpression()), !dbg !4271
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  %0 = load i64, i64* %size.addr, align 8, !dbg !4274
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4276
  br i1 %1, label %if.then, label %if.end447, !dbg !4277

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4278
  %tobool = icmp ne i64 %2, 0, !dbg !4278
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4281

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4283
  %cmp = icmp ult i64 %3, 4096, !dbg !4285
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4286

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4287
  br label %return, !dbg !4287

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub = sub i64 %4, 1, !dbg !4288
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4288
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4288

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub4 = sub i64 %6, 1, !dbg !4288
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4288
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4288

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub6 = sub i64 %8, 1, !dbg !4288
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4288
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4288

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4288

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub9 = sub i64 %9, 1, !dbg !4288
  %and = and i64 %sub9, -9223372036854775808, !dbg !4288
  %tobool10 = icmp ne i64 %and, 0, !dbg !4288
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4288

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4288

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub13 = sub i64 %10, 1, !dbg !4288
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4288
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4288
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4288

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4288

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub18 = sub i64 %11, 1, !dbg !4288
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4288
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4288
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4288

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4288

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub23 = sub i64 %12, 1, !dbg !4288
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4288
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4288
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4288

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4288

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub28 = sub i64 %13, 1, !dbg !4288
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4288
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4288
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4288

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4288

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub33 = sub i64 %14, 1, !dbg !4288
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4288
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4288
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4288

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4288

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub38 = sub i64 %15, 1, !dbg !4288
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4288
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4288
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4288

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4288

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub43 = sub i64 %16, 1, !dbg !4288
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4288
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4288
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4288

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4288

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub48 = sub i64 %17, 1, !dbg !4288
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4288
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4288
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4288

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4288

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub53 = sub i64 %18, 1, !dbg !4288
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4288
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4288
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4288

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4288

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub58 = sub i64 %19, 1, !dbg !4288
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4288
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4288
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4288

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4288

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub63 = sub i64 %20, 1, !dbg !4288
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4288
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4288
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4288

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4288

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub68 = sub i64 %21, 1, !dbg !4288
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4288
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4288
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4288

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4288

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub73 = sub i64 %22, 1, !dbg !4288
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4288
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4288
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4288

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4288

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub78 = sub i64 %23, 1, !dbg !4288
  %and79 = and i64 %sub78, 562949953421312, !dbg !4288
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4288
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4288

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4288

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub83 = sub i64 %24, 1, !dbg !4288
  %and84 = and i64 %sub83, 281474976710656, !dbg !4288
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4288
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4288

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4288

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub88 = sub i64 %25, 1, !dbg !4288
  %and89 = and i64 %sub88, 140737488355328, !dbg !4288
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4288
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4288

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4288

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub93 = sub i64 %26, 1, !dbg !4288
  %and94 = and i64 %sub93, 70368744177664, !dbg !4288
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4288
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4288

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4288

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub98 = sub i64 %27, 1, !dbg !4288
  %and99 = and i64 %sub98, 35184372088832, !dbg !4288
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4288
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4288

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4288

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub103 = sub i64 %28, 1, !dbg !4288
  %and104 = and i64 %sub103, 17592186044416, !dbg !4288
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4288
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4288

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4288

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub108 = sub i64 %29, 1, !dbg !4288
  %and109 = and i64 %sub108, 8796093022208, !dbg !4288
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4288
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4288

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4288

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub113 = sub i64 %30, 1, !dbg !4288
  %and114 = and i64 %sub113, 4398046511104, !dbg !4288
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4288
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4288

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4288

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub118 = sub i64 %31, 1, !dbg !4288
  %and119 = and i64 %sub118, 2199023255552, !dbg !4288
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4288
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4288

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4288

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub123 = sub i64 %32, 1, !dbg !4288
  %and124 = and i64 %sub123, 1099511627776, !dbg !4288
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4288
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4288

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4288

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub128 = sub i64 %33, 1, !dbg !4288
  %and129 = and i64 %sub128, 549755813888, !dbg !4288
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4288
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4288

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4288

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub133 = sub i64 %34, 1, !dbg !4288
  %and134 = and i64 %sub133, 274877906944, !dbg !4288
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4288
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4288

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4288

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub138 = sub i64 %35, 1, !dbg !4288
  %and139 = and i64 %sub138, 137438953472, !dbg !4288
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4288
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4288

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4288

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub143 = sub i64 %36, 1, !dbg !4288
  %and144 = and i64 %sub143, 68719476736, !dbg !4288
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4288
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4288

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4288

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub148 = sub i64 %37, 1, !dbg !4288
  %and149 = and i64 %sub148, 34359738368, !dbg !4288
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4288
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4288

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4288

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub153 = sub i64 %38, 1, !dbg !4288
  %and154 = and i64 %sub153, 17179869184, !dbg !4288
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4288
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4288

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4288

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub158 = sub i64 %39, 1, !dbg !4288
  %and159 = and i64 %sub158, 8589934592, !dbg !4288
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4288
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4288

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4288

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub163 = sub i64 %40, 1, !dbg !4288
  %and164 = and i64 %sub163, 4294967296, !dbg !4288
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4288
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4288

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4288

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub168 = sub i64 %41, 1, !dbg !4288
  %and169 = and i64 %sub168, 2147483648, !dbg !4288
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4288
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4288

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4288

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub173 = sub i64 %42, 1, !dbg !4288
  %and174 = and i64 %sub173, 1073741824, !dbg !4288
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4288
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4288

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4288

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub178 = sub i64 %43, 1, !dbg !4288
  %and179 = and i64 %sub178, 536870912, !dbg !4288
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4288
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4288

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4288

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub183 = sub i64 %44, 1, !dbg !4288
  %and184 = and i64 %sub183, 268435456, !dbg !4288
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4288
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4288

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4288

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub188 = sub i64 %45, 1, !dbg !4288
  %and189 = and i64 %sub188, 134217728, !dbg !4288
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4288
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4288

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4288

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub193 = sub i64 %46, 1, !dbg !4288
  %and194 = and i64 %sub193, 67108864, !dbg !4288
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4288
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4288

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4288

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub198 = sub i64 %47, 1, !dbg !4288
  %and199 = and i64 %sub198, 33554432, !dbg !4288
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4288
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4288

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4288

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub203 = sub i64 %48, 1, !dbg !4288
  %and204 = and i64 %sub203, 16777216, !dbg !4288
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4288
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4288

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4288

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub208 = sub i64 %49, 1, !dbg !4288
  %and209 = and i64 %sub208, 8388608, !dbg !4288
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4288
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4288

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4288

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub213 = sub i64 %50, 1, !dbg !4288
  %and214 = and i64 %sub213, 4194304, !dbg !4288
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4288
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4288

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4288

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub218 = sub i64 %51, 1, !dbg !4288
  %and219 = and i64 %sub218, 2097152, !dbg !4288
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4288
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4288

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4288

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub223 = sub i64 %52, 1, !dbg !4288
  %and224 = and i64 %sub223, 1048576, !dbg !4288
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4288
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4288

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4288

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub228 = sub i64 %53, 1, !dbg !4288
  %and229 = and i64 %sub228, 524288, !dbg !4288
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4288
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4288

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4288

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub233 = sub i64 %54, 1, !dbg !4288
  %and234 = and i64 %sub233, 262144, !dbg !4288
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4288
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4288

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4288

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub238 = sub i64 %55, 1, !dbg !4288
  %and239 = and i64 %sub238, 131072, !dbg !4288
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4288
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4288

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4288

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub243 = sub i64 %56, 1, !dbg !4288
  %and244 = and i64 %sub243, 65536, !dbg !4288
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4288
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4288

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4288

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub248 = sub i64 %57, 1, !dbg !4288
  %and249 = and i64 %sub248, 32768, !dbg !4288
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4288
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4288

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4288

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub253 = sub i64 %58, 1, !dbg !4288
  %and254 = and i64 %sub253, 16384, !dbg !4288
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4288
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4288

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4288

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub258 = sub i64 %59, 1, !dbg !4288
  %and259 = and i64 %sub258, 8192, !dbg !4288
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4288
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4288

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4288

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub263 = sub i64 %60, 1, !dbg !4288
  %and264 = and i64 %sub263, 4096, !dbg !4288
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4288
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4288

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4288

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub268 = sub i64 %61, 1, !dbg !4288
  %and269 = and i64 %sub268, 2048, !dbg !4288
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4288
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4288

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4288

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub273 = sub i64 %62, 1, !dbg !4288
  %and274 = and i64 %sub273, 1024, !dbg !4288
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4288
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4288

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4288

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub278 = sub i64 %63, 1, !dbg !4288
  %and279 = and i64 %sub278, 512, !dbg !4288
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4288
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4288

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4288

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub283 = sub i64 %64, 1, !dbg !4288
  %and284 = and i64 %sub283, 256, !dbg !4288
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4288
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4288

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4288

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub288 = sub i64 %65, 1, !dbg !4288
  %and289 = and i64 %sub288, 128, !dbg !4288
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4288
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4288

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4288

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub293 = sub i64 %66, 1, !dbg !4288
  %and294 = and i64 %sub293, 64, !dbg !4288
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4288
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4288

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4288

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub298 = sub i64 %67, 1, !dbg !4288
  %and299 = and i64 %sub298, 32, !dbg !4288
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4288
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4288

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4288

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub303 = sub i64 %68, 1, !dbg !4288
  %and304 = and i64 %sub303, 16, !dbg !4288
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4288
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4288

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4288

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub308 = sub i64 %69, 1, !dbg !4288
  %and309 = and i64 %sub308, 8, !dbg !4288
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4288
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4288

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4288

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub313 = sub i64 %70, 1, !dbg !4288
  %and314 = and i64 %sub313, 4, !dbg !4288
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4288
  %71 = zext i1 %tobool315 to i64, !dbg !4288
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4288
  br label %cond.end, !dbg !4288

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4288
  br label %cond.end317, !dbg !4288

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4288
  br label %cond.end319, !dbg !4288

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4288
  br label %cond.end321, !dbg !4288

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4288
  br label %cond.end323, !dbg !4288

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4288
  br label %cond.end325, !dbg !4288

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4288
  br label %cond.end327, !dbg !4288

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4288
  br label %cond.end329, !dbg !4288

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4288
  br label %cond.end331, !dbg !4288

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4288
  br label %cond.end333, !dbg !4288

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4288
  br label %cond.end335, !dbg !4288

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4288
  br label %cond.end337, !dbg !4288

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4288
  br label %cond.end339, !dbg !4288

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4288
  br label %cond.end341, !dbg !4288

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4288
  br label %cond.end343, !dbg !4288

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4288
  br label %cond.end345, !dbg !4288

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4288
  br label %cond.end347, !dbg !4288

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4288
  br label %cond.end349, !dbg !4288

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4288
  br label %cond.end351, !dbg !4288

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4288
  br label %cond.end353, !dbg !4288

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4288
  br label %cond.end355, !dbg !4288

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4288
  br label %cond.end357, !dbg !4288

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4288
  br label %cond.end359, !dbg !4288

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4288
  br label %cond.end361, !dbg !4288

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4288
  br label %cond.end363, !dbg !4288

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4288
  br label %cond.end365, !dbg !4288

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4288
  br label %cond.end367, !dbg !4288

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4288
  br label %cond.end369, !dbg !4288

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4288
  br label %cond.end371, !dbg !4288

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4288
  br label %cond.end373, !dbg !4288

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4288
  br label %cond.end375, !dbg !4288

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4288
  br label %cond.end377, !dbg !4288

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4288
  br label %cond.end379, !dbg !4288

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4288
  br label %cond.end381, !dbg !4288

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4288
  br label %cond.end383, !dbg !4288

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4288
  br label %cond.end385, !dbg !4288

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4288
  br label %cond.end387, !dbg !4288

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4288
  br label %cond.end389, !dbg !4288

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4288
  br label %cond.end391, !dbg !4288

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4288
  br label %cond.end393, !dbg !4288

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4288
  br label %cond.end395, !dbg !4288

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4288
  br label %cond.end397, !dbg !4288

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4288
  br label %cond.end399, !dbg !4288

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4288
  br label %cond.end401, !dbg !4288

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4288
  br label %cond.end403, !dbg !4288

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4288
  br label %cond.end405, !dbg !4288

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4288
  br label %cond.end407, !dbg !4288

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4288
  br label %cond.end409, !dbg !4288

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4288
  br label %cond.end411, !dbg !4288

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4288
  br label %cond.end413, !dbg !4288

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4288
  br label %cond.end415, !dbg !4288

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4288
  br label %cond.end417, !dbg !4288

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4288
  br label %cond.end419, !dbg !4288

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4288
  br label %cond.end421, !dbg !4288

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4288
  br label %cond.end423, !dbg !4288

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4288
  br label %cond.end425, !dbg !4288

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4288
  br label %cond.end427, !dbg !4288

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4288
  br label %cond.end429, !dbg !4288

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4288
  br label %cond.end431, !dbg !4288

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4288
  br label %cond.end433, !dbg !4288

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4288
  br label %cond.end435, !dbg !4288

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4288
  br label %cond.end437, !dbg !4288

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4288
  br label %cond.end440, !dbg !4288

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4288

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4288
  br label %cond.end444, !dbg !4288

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4288
  %sub443 = sub i64 %72, 1, !dbg !4288
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4288
  br label %cond.end444, !dbg !4288

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4288
  %sub446 = sub i32 %cond445, 12, !dbg !4289
  %add = add i32 %sub446, 1, !dbg !4290
  store i32 %add, i32* %retval, align 4, !dbg !4291
  br label %return, !dbg !4291

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4292
  %dec = add i64 %73, -1, !dbg !4292
  store i64 %dec, i64* %size.addr, align 8, !dbg !4292
  %74 = load i64, i64* %size.addr, align 8, !dbg !4293
  %shr = lshr i64 %74, 12, !dbg !4293
  store i64 %shr, i64* %size.addr, align 8, !dbg !4293
  %75 = load i64, i64* %size.addr, align 8, !dbg !4294
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4271
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4295
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4296
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !4295, !srcloc !4297
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4295
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4298
  %add.i = add i32 %79, 1, !dbg !4299
  store i32 %add.i, i32* %retval, align 4, !dbg !4300
  br label %return, !dbg !4300

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4301
  ret i32 %80, !dbg !4301
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !4302 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4263, metadata !DIExpression()), !dbg !4306
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4270, metadata !DIExpression()), !dbg !4308
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  %0 = load i64, i64* %n.addr, align 8, !dbg !4311
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4308
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4312
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4313
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !4312, !srcloc !4297
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4312
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4314
  %add.i = add i32 %4, 1, !dbg !4315
  %sub = sub i32 %add.i, 1, !dbg !4316
  ret i32 %sub, !dbg !4317
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4318 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4330
  ret i8* %0, !dbg !4331
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_name(i8*, i32, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2464}
!llvm.module.flags = !{!2465, !2466, !2467, !2468}
!llvm.ident = !{!2469}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_acpi_backlight", scope: !2, file: !3, line: 886, type: !2463, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !2449, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/utils.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !16, !22, !28, !34, !41, !49, !55, !69, !76}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !23, line: 26, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !29, line: 44, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !35, line: 343, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !42, line: 524, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !42, line: 502, baseType: !7, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !56, line: 76, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!64 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!65 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!67 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!68 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_predicate", file: !70, line: 622, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "all_versions", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "less_than_or_equal", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "equal", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "greater_than_or_equal", value: 3, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !77, line: 305, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!83 = !{!84, !90, !94, !95, !100, !101, !102, !96, !103, !91, !153, !169, !1572, !319, !174}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !85, line: 421, baseType: !86)
!85 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !85, line: 127, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !93)
!93 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !99)
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !85, line: 899, size: 192, elements: !105)
!105 = !{!106, !108, !113, !120, !126, !132, !139, !147}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !85, line: 900, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !85, line: 635, baseType: !86)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !104, file: !85, line: 904, baseType: !109, size: 128)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 901, size: 128, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !85, line: 902, baseType: !107, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !85, line: 903, baseType: !91, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !104, file: !85, line: 910, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 906, size: 128, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !85, line: 907, baseType: !107, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !114, file: !85, line: 908, baseType: !86, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !114, file: !85, line: 909, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !104, file: !85, line: 916, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 912, size: 128, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !85, line: 913, baseType: !107, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !121, file: !85, line: 914, baseType: !86, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !121, file: !85, line: 915, baseType: !96, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !104, file: !85, line: 922, baseType: !127, size: 128)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 918, size: 128, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !85, line: 919, baseType: !107, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !127, file: !85, line: 920, baseType: !86, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !127, file: !85, line: 921, baseType: !103, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !104, file: !85, line: 928, baseType: !133, size: 128)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 924, size: 128, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !85, line: 925, baseType: !107, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !133, file: !85, line: 926, baseType: !107, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !133, file: !85, line: 927, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !85, line: 424, baseType: !101)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !104, file: !85, line: 935, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 930, size: 192, elements: !141)
!141 = !{!142, !143, !144, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !85, line: 931, baseType: !107, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !140, file: !85, line: 932, baseType: !86, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !140, file: !85, line: 933, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !85, line: 128, baseType: !91)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !140, file: !85, line: 934, baseType: !86, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !104, file: !85, line: 941, baseType: !148, size: 96)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !85, line: 937, size: 96, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !85, line: 938, baseType: !107, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !148, file: !85, line: 939, baseType: !86, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !148, file: !85, line: 940, baseType: !86, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_bus_id", file: !155, line: 99, size: 320, elements: !156)
!155 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !154, file: !155, line: 100, baseType: !158, size: 120)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 120, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 15)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !154, file: !155, line: 101, baseType: !7, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !154, file: !155, line: 102, baseType: !163, size: 128, offset: 192)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !164, line: 178, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 179, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !164, line: 179, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !171, line: 351, size: 10880, elements: !172)
!171 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !175, !176, !2225, !2226, !2227, !2228, !2229, !2230, !2239, !2256, !2281, !2310, !2334, !2355, !2361, !2370, !2402, !2416, !2438, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !170, file: !171, line: 352, baseType: !174, size: 32)
!174 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !170, file: !171, line: 353, baseType: !138, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !170, file: !171, line: 354, baseType: !177, size: 192, offset: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !178, line: 17, size: 192, elements: !179)
!178 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !182, !2224}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !177, file: !178, line: 18, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !177, file: !178, line: 19, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !178, line: 110, size: 1152, elements: !186)
!186 = !{!187, !191, !195, !203, !2166, !2170, !2174, !2179, !2183, !2184, !2188, !2192, !2196, !2207, !2208, !2209, !2210, !2220}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !185, file: !178, line: 111, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !181}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !185, file: !178, line: 112, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !181}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !185, file: !178, line: 113, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 30, baseType: !200)
!200 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !185, file: !178, line: 114, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !201, !209}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !35, line: 461, size: 5568, elements: !212)
!212 = !{!213, !1700, !1702, !1705, !1706, !1757, !1854, !1855, !1856, !1857, !1858, !1867, !1972, !1985, !2092, !2093, !2097, !2098, !2099, !2100, !2104, !2110, !2111, !2114, !2115, !2116, !2119, !2120, !2121, !2122, !2154, !2155, !2156, !2159, !2162, !2163, !2164, !2165}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !35, line: 462, baseType: !214, size: 512)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !215, line: 64, size: 512, elements: !216)
!215 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !220, !221, !223, !282, !1536, !1690, !1695, !1696, !1697, !1698, !1699}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 65, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !214, file: !215, line: 66, baseType: !163, size: 128, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 67, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !214, file: !215, line: 68, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !215, line: 192, size: 704, elements: !226)
!226 = !{!227, !228, !244, !245}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !225, file: !215, line: 193, baseType: !163, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !225, file: !215, line: 194, baseType: !229, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 83, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 71, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 72, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 72, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 73, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 20, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !230, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 25, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 25, elements: !243)
!243 = !{}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !215, line: 195, baseType: !214, size: 512, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !225, file: !215, line: 196, baseType: !246, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !215, line: 156, size: 192, elements: !249)
!249 = !{!250, !255, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !248, file: !215, line: 157, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!174, !224, !222}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !215, line: 158, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!218, !224, !222}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !248, file: !215, line: 159, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!174, !224, !222, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !215, line: 148, size: 20736, elements: !267)
!267 = !{!268, !272, !276, !277, !281}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !215, line: 149, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 192, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 3)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !215, line: 150, baseType: !273, size: 4096, offset: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 4096, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !215, line: 151, baseType: !174, size: 32, offset: 4288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !215, line: 152, baseType: !278, size: 16384, offset: 4320)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16384, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !215, line: 153, baseType: !174, size: 32, offset: 20704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !214, file: !215, line: 69, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !215, line: 138, size: 448, elements: !285)
!285 = !{!286, !290, !320, !322, !1484, !1515, !1519}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !284, file: !215, line: 139, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !222}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !284, file: !215, line: 140, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !294, line: 230, size: 128, elements: !295)
!294 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !312}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !293, file: !294, line: 231, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !222, !305, !119}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !164, line: 60, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !302, line: 73, baseType: !303)
!302 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !302, line: 15, baseType: !304)
!304 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !294, line: 30, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !294, line: 31, baseType: !218, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !306, file: !294, line: 32, baseType: !310, size: 16, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !164, line: 19, baseType: !311)
!311 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !293, file: !294, line: 232, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!300, !222, !305, !218, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 55, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !302, line: 72, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !302, line: 16, baseType: !319)
!319 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !284, file: !215, line: 141, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !284, file: !215, line: 142, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !294, line: 84, size: 320, elements: !327)
!327 = !{!328, !329, !333, !1481, !1482}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !294, line: 85, baseType: !218, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !326, file: !294, line: 86, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!310, !222, !305, !174}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !326, file: !294, line: 88, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!310, !222, !337, !174}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !294, line: 168, size: 448, elements: !339)
!339 = !{!340, !341, !342, !343, !353, !354}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !338, file: !294, line: 169, baseType: !306, size: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !338, file: !294, line: 170, baseType: !316, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !338, file: !294, line: 171, baseType: !101, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !294, line: 172, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!300, !347, !222, !337, !119, !350, !316}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !349, line: 526, flags: DIFlagFwdDecl)
!349 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !164, line: 46, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !302, line: 88, baseType: !352)
!352 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !338, file: !294, line: 174, baseType: !344, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !338, file: !294, line: 176, baseType: !355, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!174, !347, !222, !337, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !360, line: 305, size: 1472, elements: !361)
!360 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !363, !364, !365, !366, !374, !375, !1455, !1461, !1462, !1467, !1468, !1471, !1475, !1476, !1477, !1478, !1479}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !359, file: !360, line: 308, baseType: !319, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !359, file: !360, line: 309, baseType: !319, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !359, file: !360, line: 313, baseType: !358, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !359, file: !360, line: 313, baseType: !358, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !359, file: !360, line: 315, baseType: !367, size: 192, align: 64, offset: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !368, line: 24, size: 192, align: 64, elements: !369)
!368 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !371, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !367, file: !368, line: 25, baseType: !319, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !367, file: !368, line: 26, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !367, file: !368, line: 27, baseType: !372, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !359, file: !360, line: 323, baseType: !319, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !359, file: !360, line: 327, baseType: !376, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !360, line: 388, size: 7296, elements: !378)
!378 = !{!379, !1451}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !360, line: 389, baseType: !380, size: 7296)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !360, line: 389, size: 7296, elements: !381)
!381 = !{!382, !383, !387, !388, !392, !393, !394, !395, !396, !404, !409, !410, !411, !412, !421, !422, !423, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !458, !466, !469, !517, !518, !1421, !1422, !1425, !1429, !1430, !1433, !1434, !1435, !1438, !1450}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !380, file: !360, line: 390, baseType: !358, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !380, file: !360, line: 391, baseType: !384, size: 64, offset: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !368, line: 31, size: 64, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !384, file: !368, line: 32, baseType: !372, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !380, file: !360, line: 392, baseType: !91, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !380, file: !360, line: 394, baseType: !389, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!319, !347, !319, !319, !319, !319}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !380, file: !360, line: 398, baseType: !319, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !380, file: !360, line: 399, baseType: !319, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !380, file: !360, line: 405, baseType: !319, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !380, file: !360, line: 406, baseType: !319, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !380, file: !360, line: 407, baseType: !397, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !349, line: 286, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 286, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !399, file: !349, line: 286, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !403, line: 18, baseType: !319)
!403 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !380, file: !360, line: 416, baseType: !405, size: 32, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !164, line: 168, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 166, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !406, file: !164, line: 167, baseType: !174, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !380, file: !360, line: 428, baseType: !405, size: 32, offset: 608)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !380, file: !360, line: 437, baseType: !405, size: 32, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !380, file: !360, line: 447, baseType: !405, size: 32, offset: 672)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !380, file: !360, line: 450, baseType: !413, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !414, line: 13, baseType: !415)
!414 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !164, line: 175, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 173, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !416, file: !164, line: 174, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !380, file: !360, line: 452, baseType: !174, size: 32, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !380, file: !360, line: 454, baseType: !229, offset: 800)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !380, file: !360, line: 457, baseType: !424, size: 256, offset: 832)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !425, line: 35, size: 256, elements: !426)
!425 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !428, !429, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !425, line: 36, baseType: !413, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !424, file: !425, line: 42, baseType: !413, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !424, file: !425, line: 46, baseType: !430, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 29, baseType: !237)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !424, file: !425, line: 47, baseType: !163, size: 128, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !380, file: !360, line: 459, baseType: !163, size: 128, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !380, file: !360, line: 466, baseType: !319, size: 64, offset: 1216)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !380, file: !360, line: 467, baseType: !319, size: 64, offset: 1280)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !380, file: !360, line: 469, baseType: !319, size: 64, offset: 1344)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !380, file: !360, line: 470, baseType: !319, size: 64, offset: 1408)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !380, file: !360, line: 471, baseType: !415, size: 64, offset: 1472)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !380, file: !360, line: 472, baseType: !319, size: 64, offset: 1536)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !380, file: !360, line: 473, baseType: !319, size: 64, offset: 1600)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !380, file: !360, line: 474, baseType: !319, size: 64, offset: 1664)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !380, file: !360, line: 475, baseType: !319, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !380, file: !360, line: 477, baseType: !229, offset: 1792)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !380, file: !360, line: 478, baseType: !319, size: 64, offset: 1792)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !380, file: !360, line: 478, baseType: !319, size: 64, offset: 1856)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !380, file: !360, line: 478, baseType: !319, size: 64, offset: 1920)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !380, file: !360, line: 478, baseType: !319, size: 64, offset: 1984)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !380, file: !360, line: 479, baseType: !319, size: 64, offset: 2048)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !380, file: !360, line: 479, baseType: !319, size: 64, offset: 2112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !380, file: !360, line: 479, baseType: !319, size: 64, offset: 2176)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !380, file: !360, line: 480, baseType: !319, size: 64, offset: 2240)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !380, file: !360, line: 480, baseType: !319, size: 64, offset: 2304)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !380, file: !360, line: 480, baseType: !319, size: 64, offset: 2368)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !380, file: !360, line: 480, baseType: !319, size: 64, offset: 2432)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !380, file: !360, line: 482, baseType: !455, size: 2816, offset: 2496)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2816, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 44)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !380, file: !360, line: 488, baseType: !459, size: 256, offset: 5312)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !460, line: 60, size: 256, elements: !461)
!460 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 61, baseType: !463, size: 256)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 256, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 4)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !380, file: !360, line: 490, baseType: !467, size: 64, offset: 5568)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !360, line: 490, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !360, line: 493, baseType: !470, size: 896, offset: 5632)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !471, line: 53, baseType: !472)
!471 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 13, size: 896, elements: !473)
!473 = !{!474, !475, !476, !477, !480, !481, !488, !489, !509, !510, !513}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !472, file: !471, line: 18, baseType: !91, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !472, file: !471, line: 28, baseType: !415, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !472, file: !471, line: 31, baseType: !424, size: 256, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !472, file: !471, line: 32, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !471, line: 32, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !472, file: !471, line: 37, baseType: !311, size: 16, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !471, line: 40, baseType: !482, size: 192, offset: 512)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !483, line: 53, size: 192, elements: !484)
!483 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485, !486, !487}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !482, file: !483, line: 54, baseType: !413, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !482, file: !483, line: 55, baseType: !229, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !482, file: !483, line: 59, baseType: !163, size: 128, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !472, file: !471, line: 41, baseType: !101, size: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !472, file: !471, line: 42, baseType: !490, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !493, line: 13, size: 896, elements: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !492, file: !493, line: 14, baseType: !101, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !493, line: 15, baseType: !319, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !492, file: !493, line: 17, baseType: !319, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !492, file: !493, line: 17, baseType: !319, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !492, file: !493, line: 19, baseType: !304, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !492, file: !493, line: 21, baseType: !304, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !492, file: !493, line: 22, baseType: !304, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !492, file: !493, line: 23, baseType: !304, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !492, file: !493, line: 24, baseType: !304, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !492, file: !493, line: 25, baseType: !304, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !492, file: !493, line: 26, baseType: !304, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !492, file: !493, line: 27, baseType: !304, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !492, file: !493, line: 28, baseType: !304, size: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !492, file: !493, line: 29, baseType: !304, size: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !472, file: !471, line: 44, baseType: !405, size: 32, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !472, file: !471, line: 50, baseType: !511, size: 16, offset: 864)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !311)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !472, file: !471, line: 51, baseType: !514, size: 16, offset: 880)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !516)
!516 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !360, line: 495, baseType: !319, size: 64, offset: 6528)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !380, file: !360, line: 497, baseType: !519, size: 64, offset: 6592)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !360, line: 381, size: 384, elements: !521)
!521 = !{!522, !523, !1420}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !520, file: !360, line: 382, baseType: !405, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !520, file: !360, line: 383, baseType: !524, size: 128, offset: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !360, line: 376, size: 128, elements: !525)
!525 = !{!526, !1418}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !524, file: !360, line: 377, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !529, line: 640, size: 48640, elements: !530)
!529 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !537, !539, !540, !546, !547, !548, !549, !550, !551, !552, !553, !557, !575, !586, !678, !679, !680, !691, !692, !694, !695, !696, !697, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !776, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !832, !834, !835, !836, !848, !850, !851, !852, !853, !854, !860, !861, !862, !863, !864, !865, !866, !878, !883, !888, !889, !890, !893, !897, !900, !903, !906, !909, !913, !916, !919, !925, !926, !927, !933, !934, !935, !936, !937, !946, !947, !948, !949, !950, !955, !956, !957, !960, !961, !964, !967, !970, !973, !976, !979, !980, !1060, !1063, !1066, !1067, !1070, !1071, !1072, !1078, !1079, !1080, !1093, !1094, !1095, !1105, !1110, !1113, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !528, file: !529, line: 646, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !533, line: 56, size: 128, elements: !534)
!533 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !533, line: 57, baseType: !319, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !532, file: !533, line: 58, baseType: !86, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !529, line: 649, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !304)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !528, file: !529, line: 657, baseType: !101, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !528, file: !529, line: 658, baseType: !541, size: 32, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !542, line: 113, baseType: !543)
!542 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !542, line: 111, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !543, file: !542, line: 112, baseType: !405, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !529, line: 660, baseType: !7, size: 32, offset: 288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !528, file: !529, line: 661, baseType: !7, size: 32, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !528, file: !529, line: 684, baseType: !174, size: 32, offset: 352)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !528, file: !529, line: 686, baseType: !174, size: 32, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !528, file: !529, line: 687, baseType: !174, size: 32, offset: 416)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !528, file: !529, line: 688, baseType: !174, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !528, file: !529, line: 689, baseType: !7, size: 32, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !528, file: !529, line: 691, baseType: !554, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !529, line: 691, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !528, file: !529, line: 692, baseType: !558, size: 832, offset: 576)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !529, line: 451, size: 832, elements: !559)
!559 = !{!560, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !558, file: !529, line: 453, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !529, line: 325, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !561, file: !529, line: 326, baseType: !319, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !561, file: !529, line: 327, baseType: !86, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !558, file: !529, line: 454, baseType: !367, size: 192, align: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !558, file: !529, line: 455, baseType: !163, size: 128, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !558, file: !529, line: 456, baseType: !7, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !558, file: !529, line: 458, baseType: !91, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !558, file: !529, line: 459, baseType: !91, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !558, file: !529, line: 460, baseType: !91, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !558, file: !529, line: 461, baseType: !91, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !558, file: !529, line: 463, baseType: !91, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !558, file: !529, line: 465, baseType: !574, offset: 832)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !529, line: 415, elements: !243)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !528, file: !529, line: 693, baseType: !576, size: 384, offset: 1408)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !529, line: 489, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !576, file: !529, line: 490, baseType: !163, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !576, file: !529, line: 491, baseType: !319, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !576, file: !529, line: 492, baseType: !319, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !576, file: !529, line: 493, baseType: !7, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !576, file: !529, line: 494, baseType: !311, size: 16, offset: 288)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !576, file: !529, line: 495, baseType: !311, size: 16, offset: 304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !576, file: !529, line: 497, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !528, file: !529, line: 697, baseType: !587, size: 1792, offset: 1792)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !529, line: 507, size: 1792, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !675, !676}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !587, file: !529, line: 508, baseType: !367, size: 192, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !587, file: !529, line: 515, baseType: !91, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !587, file: !529, line: 516, baseType: !91, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !587, file: !529, line: 517, baseType: !91, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !587, file: !529, line: 518, baseType: !91, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !587, file: !529, line: 519, baseType: !91, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !587, file: !529, line: 526, baseType: !419, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !587, file: !529, line: 527, baseType: !91, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !529, line: 528, baseType: !7, size: 32, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !587, file: !529, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !587, file: !529, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !587, file: !529, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !587, file: !529, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !587, file: !529, line: 563, baseType: !603, size: 512, offset: 704)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !604)
!604 = !{!605, !613, !614, !619, !671, !672, !673, !674}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !12, line: 119, baseType: !606, size: 256)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !607, line: 9, size: 256, elements: !608)
!607 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !607, line: 10, baseType: !367, size: 192, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !606, file: !607, line: 11, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !612, line: 29, baseType: !419)
!612 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !603, file: !12, line: 120, baseType: !611, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !603, file: !12, line: 121, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!11, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !603, file: !12, line: 122, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !622)
!622 = !{!623, !643, !644, !647, !657, !658, !666, !670}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !621, file: !12, line: 160, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !625, file: !12, line: 215, baseType: !430)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !625, file: !12, line: 216, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !625, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !625, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !625, file: !12, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !625, file: !12, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !625, file: !12, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !625, file: !12, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !625, file: !12, line: 233, baseType: !611, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !625, file: !12, line: 234, baseType: !618, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !625, file: !12, line: 235, baseType: !611, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !625, file: !12, line: 236, baseType: !618, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !625, file: !12, line: 237, baseType: !640, size: 4096, offset: 512)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 4096, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 8)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !621, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !621, file: !12, line: 162, baseType: !645, size: 32, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !164, line: 27, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !302, line: 96, baseType: !174)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !621, file: !12, line: 163, baseType: !648, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !649, line: 276, baseType: !650)
!649 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !649, line: 276, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !650, file: !649, line: 276, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !649, line: 70, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !649, line: 65, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !654, file: !649, line: 66, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !621, file: !12, line: 164, baseType: !618, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !621, file: !12, line: 165, baseType: !659, size: 128, offset: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !607, line: 14, size: 128, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !659, file: !607, line: 15, baseType: !662, size: 128)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !368, line: 125, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !662, file: !368, line: 126, baseType: !384, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !662, file: !368, line: 127, baseType: !372, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !621, file: !12, line: 166, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!611}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !621, file: !12, line: 167, baseType: !611, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !603, file: !12, line: 123, baseType: !97, size: 8, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !603, file: !12, line: 124, baseType: !97, size: 8, offset: 456)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !603, file: !12, line: 125, baseType: !97, size: 8, offset: 464)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !603, file: !12, line: 126, baseType: !97, size: 8, offset: 472)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !587, file: !529, line: 572, baseType: !603, size: 512, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !587, file: !529, line: 580, baseType: !677, size: 64, offset: 1728)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !528, file: !529, line: 721, baseType: !7, size: 32, offset: 3584)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !528, file: !529, line: 722, baseType: !174, size: 32, offset: 3616)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !528, file: !529, line: 723, baseType: !681, size: 64, offset: 3648)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !684, line: 17, baseType: !685)
!684 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !684, line: 17, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !685, file: !684, line: 17, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 1)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !528, file: !529, line: 724, baseType: !683, size: 64, offset: 3712)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !528, file: !529, line: 749, baseType: !693, offset: 3776)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !529, line: 290, elements: !243)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !528, file: !529, line: 751, baseType: !163, size: 128, offset: 3776)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !528, file: !529, line: 757, baseType: !376, size: 64, offset: 3904)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !528, file: !529, line: 758, baseType: !376, size: 64, offset: 3968)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !528, file: !529, line: 761, baseType: !698, size: 320, offset: 4032)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !460, line: 34, size: 320, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !698, file: !460, line: 35, baseType: !91, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !698, file: !460, line: 36, baseType: !702, size: 256, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !464)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !528, file: !529, line: 766, baseType: !174, size: 32, offset: 4352)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !528, file: !529, line: 767, baseType: !174, size: 32, offset: 4384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !528, file: !529, line: 768, baseType: !174, size: 32, offset: 4416)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !528, file: !529, line: 770, baseType: !174, size: 32, offset: 4448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !528, file: !529, line: 772, baseType: !319, size: 64, offset: 4480)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !528, file: !529, line: 775, baseType: !7, size: 32, offset: 4544)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !528, file: !529, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !528, file: !529, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !528, file: !529, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !528, file: !529, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !528, file: !529, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !528, file: !529, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !528, file: !529, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !528, file: !529, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !528, file: !529, line: 831, baseType: !319, size: 64, offset: 4672)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !528, file: !529, line: 833, baseType: !719, size: 384, offset: 4736)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !720)
!720 = !{!721, !726}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !719, file: !17, line: 26, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!304, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !17, line: 27, baseType: !727, size: 320, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !17, line: 27, size: 320, elements: !728)
!728 = !{!729, !739, !766}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !727, file: !17, line: 36, baseType: !730, size: 320)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !17, line: 29, size: 320, elements: !731)
!731 = !{!732, !734, !735, !736, !737, !738}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !730, file: !17, line: 30, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !730, file: !17, line: 31, baseType: !86, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !17, line: 32, baseType: !86, size: 32, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !730, file: !17, line: 33, baseType: !86, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !730, file: !17, line: 34, baseType: !91, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !730, file: !17, line: 35, baseType: !733, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !727, file: !17, line: 46, baseType: !740, size: 192)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !17, line: 38, size: 192, elements: !741)
!741 = !{!742, !743, !744, !765}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !740, file: !17, line: 39, baseType: !645, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !17, line: 41, baseType: !745, size: 64, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !17, line: 41, size: 64, elements: !746)
!746 = !{!747, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !745, file: !17, line: 42, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !750, line: 7, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !749, file: !750, line: 8, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !302, line: 93, baseType: !352)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !749, file: !750, line: 9, baseType: !352, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !745, file: !17, line: 43, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !758, line: 7, size: 64, elements: !759)
!758 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !764}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !757, file: !758, line: 8, baseType: !761, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !758, line: 5, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !174)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !757, file: !758, line: 9, baseType: !762, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !740, file: !17, line: 45, baseType: !91, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !727, file: !17, line: 54, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !17, line: 48, size: 256, elements: !768)
!768 = !{!769, !772, !773, !774, !775}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !767, file: !17, line: 49, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !767, file: !17, line: 50, baseType: !174, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !767, file: !17, line: 51, baseType: !174, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !767, file: !17, line: 52, baseType: !319, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !767, file: !17, line: 53, baseType: !319, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !528, file: !529, line: 835, baseType: !777, size: 32, offset: 5120)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !164, line: 22, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !302, line: 28, baseType: !174)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !528, file: !529, line: 836, baseType: !777, size: 32, offset: 5152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !528, file: !529, line: 840, baseType: !319, size: 64, offset: 5184)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !528, file: !529, line: 849, baseType: !527, size: 64, offset: 5248)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !528, file: !529, line: 852, baseType: !527, size: 64, offset: 5312)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !528, file: !529, line: 857, baseType: !163, size: 128, offset: 5376)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !528, file: !529, line: 858, baseType: !163, size: 128, offset: 5504)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !528, file: !529, line: 859, baseType: !527, size: 64, offset: 5632)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !528, file: !529, line: 867, baseType: !163, size: 128, offset: 5696)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !528, file: !529, line: 868, baseType: !163, size: 128, offset: 5824)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !528, file: !529, line: 871, baseType: !789, size: 64, offset: 5952)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !791, line: 59, size: 768, elements: !792)
!791 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !795, !796, !807, !808, !815, !824}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !790, file: !791, line: 61, baseType: !541, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !790, file: !791, line: 62, baseType: !7, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !791, line: 63, baseType: !229, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !790, file: !791, line: 65, baseType: !797, size: 256, offset: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 256, elements: !464)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !164, line: 182, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !798, file: !164, line: 183, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !164, line: 186, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !802, file: !164, line: 187, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !802, file: !164, line: 187, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !790, file: !791, line: 66, baseType: !798, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !790, file: !791, line: 68, baseType: !809, size: 128, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !810, line: 40, baseType: !811)
!810 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !810, line: 36, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !811, file: !810, line: 37, baseType: !229)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !811, file: !810, line: 38, baseType: !163, size: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !790, file: !791, line: 69, baseType: !816, size: 128, align: 64, offset: 512)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !164, line: 216, size: 128, align: 64, elements: !817)
!817 = !{!818, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !816, file: !164, line: 217, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !816, file: !164, line: 218, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !819}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !790, file: !791, line: 70, baseType: !825, size: 128, offset: 640)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 128, elements: !689)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !791, line: 54, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !826, file: !791, line: 55, baseType: !174, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !826, file: !791, line: 56, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !791, line: 56, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !528, file: !529, line: 872, baseType: !833, size: 512, offset: 6016)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 512, elements: !464)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !528, file: !529, line: 873, baseType: !163, size: 128, offset: 6528)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !528, file: !529, line: 874, baseType: !163, size: 128, offset: 6656)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !528, file: !529, line: 876, baseType: !837, size: 64, offset: 6784)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !839, line: 26, size: 192, elements: !840)
!839 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !838, file: !839, line: 27, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !838, file: !839, line: 28, baseType: !843, size: 128, offset: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !844, line: 43, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !843, file: !844, line: 44, baseType: !430)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !843, file: !844, line: 45, baseType: !163, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !528, file: !529, line: 879, baseType: !849, size: 64, offset: 6848)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !528, file: !529, line: 882, baseType: !849, size: 64, offset: 6912)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !528, file: !529, line: 884, baseType: !91, size: 64, offset: 6976)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !528, file: !529, line: 885, baseType: !91, size: 64, offset: 7040)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !528, file: !529, line: 890, baseType: !91, size: 64, offset: 7104)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !528, file: !529, line: 891, baseType: !855, size: 128, offset: 7168)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !529, line: 242, size: 128, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !855, file: !529, line: 244, baseType: !91, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !855, file: !529, line: 245, baseType: !91, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !855, file: !529, line: 246, baseType: !430, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !528, file: !529, line: 900, baseType: !319, size: 64, offset: 7296)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !528, file: !529, line: 901, baseType: !319, size: 64, offset: 7360)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !528, file: !529, line: 904, baseType: !91, size: 64, offset: 7424)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !528, file: !529, line: 907, baseType: !91, size: 64, offset: 7488)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !528, file: !529, line: 910, baseType: !319, size: 64, offset: 7552)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !528, file: !529, line: 911, baseType: !319, size: 64, offset: 7616)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !528, file: !529, line: 914, baseType: !867, size: 640, offset: 7680)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !868, line: 123, size: 640, elements: !869)
!868 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !867, file: !868, line: 124, baseType: !871, size: 576)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 576, elements: !270)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !868, line: 108, size: 192, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !872, file: !868, line: 109, baseType: !91, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !872, file: !868, line: 110, baseType: !659, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !867, file: !868, line: 125, baseType: !7, size: 32, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !867, file: !868, line: 126, baseType: !7, size: 32, offset: 608)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !528, file: !529, line: 917, baseType: !879, size: 192, offset: 8320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !868, line: 134, size: 192, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !879, file: !868, line: 135, baseType: !816, size: 128, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !879, file: !868, line: 136, baseType: !7, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !528, file: !529, line: 923, baseType: !884, size: 64, offset: 8512)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !887, line: 11, flags: DIFlagFwdDecl)
!887 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !528, file: !529, line: 926, baseType: !884, size: 64, offset: 8576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !528, file: !529, line: 929, baseType: !884, size: 64, offset: 8640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !528, file: !529, line: 933, baseType: !891, size: 64, offset: 8704)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !529, line: 933, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !528, file: !529, line: 943, baseType: !894, size: 128, offset: 8768)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !528, file: !529, line: 945, baseType: !898, size: 64, offset: 8896)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !529, line: 49, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !528, file: !529, line: 956, baseType: !901, size: 64, offset: 8960)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !529, line: 45, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !528, file: !529, line: 959, baseType: !904, size: 64, offset: 9024)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !529, line: 959, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !528, file: !529, line: 962, baseType: !907, size: 64, offset: 9088)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !529, line: 66, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !528, file: !529, line: 966, baseType: !910, size: 64, offset: 9152)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !912, line: 35, flags: DIFlagFwdDecl)
!912 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !528, file: !529, line: 969, baseType: !914, size: 64, offset: 9216)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !868, line: 223, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !528, file: !529, line: 970, baseType: !917, size: 64, offset: 9280)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !529, line: 62, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !528, file: !529, line: 971, baseType: !920, size: 64, offset: 9344)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !921, line: 25, baseType: !922)
!921 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 23, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !922, file: !921, line: 24, baseType: !688, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !528, file: !529, line: 972, baseType: !920, size: 64, offset: 9408)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !528, file: !529, line: 974, baseType: !920, size: 64, offset: 9472)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !528, file: !529, line: 975, baseType: !928, size: 192, offset: 9536)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !929, line: 30, size: 192, elements: !930)
!929 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !928, file: !929, line: 31, baseType: !163, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !928, file: !929, line: 32, baseType: !920, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !528, file: !529, line: 976, baseType: !319, size: 64, offset: 9728)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !528, file: !529, line: 977, baseType: !316, size: 64, offset: 9792)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !528, file: !529, line: 978, baseType: !7, size: 32, offset: 9856)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !528, file: !529, line: 980, baseType: !819, size: 64, offset: 9920)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !528, file: !529, line: 989, baseType: !938, size: 128, offset: 9984)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !939, line: 35, size: 128, elements: !940)
!939 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !938, file: !939, line: 36, baseType: !174, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !938, file: !939, line: 37, baseType: !405, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !938, file: !939, line: 38, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !939, line: 23, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !528, file: !529, line: 992, baseType: !91, size: 64, offset: 10112)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !528, file: !529, line: 993, baseType: !91, size: 64, offset: 10176)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !528, file: !529, line: 996, baseType: !229, offset: 10240)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !528, file: !529, line: 999, baseType: !430, offset: 10240)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !528, file: !529, line: 1001, baseType: !951, size: 64, offset: 10240)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !529, line: 636, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !529, line: 637, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !528, file: !529, line: 1005, baseType: !662, size: 128, offset: 10304)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !528, file: !529, line: 1007, baseType: !527, size: 64, offset: 10432)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !528, file: !529, line: 1009, baseType: !958, size: 64, offset: 10496)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !529, line: 1009, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !528, file: !529, line: 1043, baseType: !101, size: 64, offset: 10560)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !528, file: !529, line: 1046, baseType: !962, size: 64, offset: 10624)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !529, line: 41, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !528, file: !529, line: 1050, baseType: !965, size: 64, offset: 10688)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !529, line: 42, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !528, file: !529, line: 1054, baseType: !968, size: 64, offset: 10752)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !529, line: 55, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !528, file: !529, line: 1056, baseType: !971, size: 64, offset: 10816)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !529, line: 40, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !528, file: !529, line: 1058, baseType: !974, size: 64, offset: 10880)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !529, line: 47, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !528, file: !529, line: 1061, baseType: !977, size: 64, offset: 10944)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !529, line: 43, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !528, file: !529, line: 1064, baseType: !319, size: 64, offset: 11008)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !528, file: !529, line: 1065, baseType: !981, size: 64, offset: 11072)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !929, line: 14, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !929, line: 12, size: 384, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !929, line: 13, baseType: !986, size: 384)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !929, line: 13, size: 384, elements: !987)
!987 = !{!988, !989, !990, !991}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !986, file: !929, line: 13, baseType: !174, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !986, file: !929, line: 13, baseType: !174, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !986, file: !929, line: 13, baseType: !174, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !986, file: !929, line: 13, baseType: !992, size: 256, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !993, line: 32, size: 256, elements: !994)
!993 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!994 = !{!995, !1001, !1014, !1020, !1029, !1049, !1054}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !992, file: !993, line: 37, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 34, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !996, file: !993, line: 35, baseType: !778, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !996, file: !993, line: 36, baseType: !1000, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !302, line: 49, baseType: !7)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !992, file: !993, line: 45, baseType: !1002, size: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 40, size: 192, elements: !1003)
!1003 = !{!1004, !1006, !1007, !1013}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1002, file: !993, line: 41, baseType: !1005, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !302, line: 95, baseType: !174)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1002, file: !993, line: 42, baseType: !174, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1002, file: !993, line: 43, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !993, line: 11, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !993, line: 8, size: 64, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1009, file: !993, line: 9, baseType: !174, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1009, file: !993, line: 10, baseType: !101, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1002, file: !993, line: 44, baseType: !174, size: 32, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !992, file: !993, line: 52, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 48, size: 128, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1015, file: !993, line: 49, baseType: !778, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1015, file: !993, line: 50, baseType: !1000, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1015, file: !993, line: 51, baseType: !1008, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !992, file: !993, line: 61, baseType: !1021, size: 256)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 55, size: 256, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1028}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1021, file: !993, line: 56, baseType: !778, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1021, file: !993, line: 57, baseType: !1000, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1021, file: !993, line: 58, baseType: !174, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1021, file: !993, line: 59, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !302, line: 94, baseType: !303)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1021, file: !993, line: 60, baseType: !1027, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !992, file: !993, line: 95, baseType: !1030, size: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 64, size: 256, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1030, file: !993, line: 65, baseType: !101, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !993, line: 77, baseType: !1034, size: 192, offset: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1030, file: !993, line: 77, size: 192, elements: !1035)
!1035 = !{!1036, !1037, !1044}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1034, file: !993, line: 82, baseType: !516, size: 16)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1034, file: !993, line: 88, baseType: !1038, size: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !993, line: 84, size: 192, elements: !1039)
!1039 = !{!1040, !1042, !1043}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1038, file: !993, line: 85, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !641)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1038, file: !993, line: 86, baseType: !101, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1038, file: !993, line: 87, baseType: !101, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1034, file: !993, line: 93, baseType: !1045, size: 96)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !993, line: 90, size: 96, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1045, file: !993, line: 91, baseType: !1041, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1045, file: !993, line: 92, baseType: !88, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !992, file: !993, line: 101, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 98, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1050, file: !993, line: 99, baseType: !304, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1050, file: !993, line: 100, baseType: !174, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !992, file: !993, line: 108, baseType: !1055, size: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !993, line: 104, size: 128, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1055, file: !993, line: 105, baseType: !101, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1055, file: !993, line: 106, baseType: !174, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1055, file: !993, line: 107, baseType: !7, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !528, file: !529, line: 1067, baseType: !1061, offset: 11136)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1062, line: 12, elements: !243)
!1062 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !528, file: !529, line: 1099, baseType: !1064, size: 64, offset: 11136)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !529, line: 56, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !528, file: !529, line: 1103, baseType: !163, size: 128, offset: 11200)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !528, file: !529, line: 1104, baseType: !1068, size: 64, offset: 11328)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !529, line: 46, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !528, file: !529, line: 1105, baseType: !482, size: 192, offset: 11392)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !528, file: !529, line: 1106, baseType: !7, size: 32, offset: 11584)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !528, file: !529, line: 1109, baseType: !1073, size: 128, offset: 11648)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 128, elements: !1076)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !529, line: 51, flags: DIFlagFwdDecl)
!1076 = !{!1077}
!1077 = !DISubrange(count: 2)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !528, file: !529, line: 1110, baseType: !482, size: 192, offset: 11776)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !528, file: !529, line: 1111, baseType: !163, size: 128, offset: 11968)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !528, file: !529, line: 1173, baseType: !1081, size: 64, offset: 12096)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1083, line: 62, size: 256, align: 256, elements: !1084)
!1083 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1086, !1087, !1092}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1082, file: !1083, line: 75, baseType: !88, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1082, file: !1083, line: 90, baseType: !88, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1082, file: !1083, line: 124, baseType: !1088, size: 64, offset: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !1083, line: 109, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1088, file: !1083, line: 110, baseType: !92, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1088, file: !1083, line: 112, baseType: !92, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1083, line: 144, baseType: !88, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !528, file: !529, line: 1174, baseType: !86, size: 32, offset: 12160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !528, file: !529, line: 1179, baseType: !319, size: 64, offset: 12224)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !528, file: !529, line: 1182, baseType: !1096, size: 128, offset: 12288)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !460, line: 76, size: 128, elements: !1097)
!1097 = !{!1098, !1103, !1104}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1096, file: !460, line: 85, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1100, line: 7, size: 64, elements: !1101)
!1100 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1099, file: !1100, line: 12, baseType: !685, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1096, file: !460, line: 88, baseType: !199, size: 8, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1096, file: !460, line: 95, baseType: !199, size: 8, offset: 72)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 1184, baseType: !1106, size: 128, offset: 12416)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 1184, size: 128, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1106, file: !529, line: 1185, baseType: !541, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1106, file: !529, line: 1186, baseType: !816, size: 128, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !528, file: !529, line: 1190, baseType: !1111, size: 64, offset: 12544)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !529, line: 53, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !528, file: !529, line: 1192, baseType: !1114, size: 128, offset: 12608)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !460, line: 64, size: 128, elements: !1115)
!1115 = !{!1116, !1209, !1210}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1114, file: !460, line: 65, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !360, line: 68, size: 512, align: 128, elements: !1119)
!1119 = !{!1120, !1121, !1201, !1208}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !360, line: 69, baseType: !319, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !360, line: 77, baseType: !1122, size: 320, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !360, line: 77, size: 320, elements: !1123)
!1123 = !{!1124, !1133, !1138, !1166, !1174, !1180, !1193, !1200}
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 78, baseType: !1125, size: 320)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 78, size: 320, elements: !1126)
!1126 = !{!1127, !1128, !1131, !1132}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1125, file: !360, line: 84, baseType: !163, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1125, file: !360, line: 86, baseType: !1129, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !360, line: 26, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1125, file: !360, line: 87, baseType: !319, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1125, file: !360, line: 94, baseType: !319, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 96, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 96, size: 64, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1134, file: !360, line: 101, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !164, line: 143, baseType: !91)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 103, baseType: !1139, size: 320)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 103, size: 320, elements: !1140)
!1140 = !{!1141, !1151, !1154, !1155}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !360, line: 104, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !360, line: 104, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1142, file: !360, line: 105, baseType: !163, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !360, line: 106, baseType: !1146, size: 128)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !360, line: 106, size: 128, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1146, file: !360, line: 107, baseType: !1117, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1146, file: !360, line: 109, baseType: !174, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1146, file: !360, line: 110, baseType: !174, size: 32, offset: 96)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1139, file: !360, line: 117, baseType: !1152, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !360, line: 117, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1139, file: !360, line: 119, baseType: !101, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !360, line: 120, baseType: !1156, size: 64, offset: 256)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !360, line: 120, size: 64, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1156, file: !360, line: 121, baseType: !101, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1156, file: !360, line: 122, baseType: !319, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !360, line: 123, baseType: !1161, size: 32)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !360, line: 123, size: 32, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1161, file: !360, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1161, file: !360, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1161, file: !360, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 130, baseType: !1167, size: 192)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 130, size: 192, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1167, file: !360, line: 131, baseType: !319, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1167, file: !360, line: 134, baseType: !99, size: 8, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1167, file: !360, line: 135, baseType: !99, size: 8, offset: 72)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1167, file: !360, line: 136, baseType: !405, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1167, file: !360, line: 137, baseType: !7, size: 32, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 139, baseType: !1175, size: 256)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 139, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1175, file: !360, line: 140, baseType: !319, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1175, file: !360, line: 141, baseType: !405, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1175, file: !360, line: 143, baseType: !163, size: 128, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 145, baseType: !1181, size: 256)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 145, size: 256, elements: !1182)
!1182 = !{!1183, !1184, !1186, !1187, !1192}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1181, file: !360, line: 146, baseType: !319, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1181, file: !360, line: 147, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !349, line: 509, baseType: !1117)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1181, file: !360, line: 148, baseType: !319, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !360, line: 149, baseType: !1188, size: 64, offset: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !360, line: 149, size: 64, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1188, file: !360, line: 150, baseType: !376, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1188, file: !360, line: 151, baseType: !405, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1181, file: !360, line: 156, baseType: !229, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !360, line: 159, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !360, line: 159, size: 128, elements: !1195)
!1195 = !{!1196, !1199}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1194, file: !360, line: 161, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !360, line: 161, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1194, file: !360, line: 162, baseType: !101, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1122, file: !360, line: 176, baseType: !816, size: 128, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !360, line: 179, baseType: !1202, size: 32, offset: 384)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !360, line: 179, size: 32, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1202, file: !360, line: 184, baseType: !405, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1202, file: !360, line: 192, baseType: !7, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1202, file: !360, line: 194, baseType: !7, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1202, file: !360, line: 195, baseType: !174, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1118, file: !360, line: 199, baseType: !405, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1114, file: !460, line: 67, baseType: !88, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !460, line: 68, baseType: !88, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !528, file: !529, line: 1206, baseType: !174, size: 32, offset: 12736)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !528, file: !529, line: 1207, baseType: !174, size: 32, offset: 12768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !528, file: !529, line: 1209, baseType: !319, size: 64, offset: 12800)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !528, file: !529, line: 1219, baseType: !91, size: 64, offset: 12864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !528, file: !529, line: 1220, baseType: !91, size: 64, offset: 12928)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !528, file: !529, line: 1317, baseType: !174, size: 32, offset: 12992)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !528, file: !529, line: 1319, baseType: !527, size: 64, offset: 13056)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !528, file: !529, line: 1322, baseType: !1219, size: 64, offset: 13120)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1221, line: 56, size: 512, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1229, !1230, !1232}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !1221, line: 57, baseType: !1219, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1220, file: !1221, line: 58, baseType: !101, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1220, file: !1221, line: 59, baseType: !319, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1221, line: 60, baseType: !319, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1220, file: !1221, line: 61, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1220, file: !1221, line: 62, baseType: !7, size: 32, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1220, file: !1221, line: 63, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !164, line: 153, baseType: !91)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1220, file: !1221, line: 64, baseType: !207, size: 64, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !528, file: !529, line: 1326, baseType: !541, size: 32, offset: 13184)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !528, file: !529, line: 1342, baseType: !101, size: 64, offset: 13248)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !528, file: !529, line: 1343, baseType: !92, size: 64, offset: 13312)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !528, file: !529, line: 1344, baseType: !91, size: 64, offset: 13376)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !528, file: !529, line: 1345, baseType: !92, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !528, file: !529, line: 1346, baseType: !92, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !528, file: !529, line: 1347, baseType: !92, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !528, file: !529, line: 1348, baseType: !816, size: 128, align: 64, offset: 13504)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !528, file: !529, line: 1358, baseType: !1242, size: 34816, offset: 13824)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1243, line: 485, size: 34816, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !{!1245, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1274, !1275, !1276, !1277, !1278, !1279, !1282, !1283, !1284}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1242, file: !1243, line: 487, baseType: !1246, size: 192)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 192, elements: !270)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1248, line: 16, size: 64, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1247, file: !1248, line: 17, baseType: !511, size: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1247, file: !1248, line: 18, baseType: !511, size: 16, offset: 16)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1247, file: !1248, line: 19, baseType: !511, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1247, file: !1248, line: 19, baseType: !511, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1247, file: !1248, line: 19, baseType: !511, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1247, file: !1248, line: 19, baseType: !511, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1247, file: !1248, line: 19, baseType: !511, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1247, file: !1248, line: 20, baseType: !511, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1247, file: !1248, line: 20, baseType: !511, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1247, file: !1248, line: 20, baseType: !511, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1247, file: !1248, line: 20, baseType: !511, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1247, file: !1248, line: 20, baseType: !511, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1247, file: !1248, line: 20, baseType: !511, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1242, file: !1243, line: 491, baseType: !319, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1242, file: !1243, line: 495, baseType: !311, size: 16, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1242, file: !1243, line: 496, baseType: !311, size: 16, offset: 272)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1242, file: !1243, line: 497, baseType: !311, size: 16, offset: 288)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1242, file: !1243, line: 498, baseType: !311, size: 16, offset: 304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1242, file: !1243, line: 502, baseType: !319, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1242, file: !1243, line: 503, baseType: !319, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1242, file: !1243, line: 514, baseType: !1271, size: 256, offset: 448)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 256, elements: !464)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1243, line: 483, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1242, file: !1243, line: 516, baseType: !319, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1242, file: !1243, line: 518, baseType: !319, size: 64, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1242, file: !1243, line: 520, baseType: !319, size: 64, offset: 832)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1242, file: !1243, line: 521, baseType: !319, size: 64, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1242, file: !1243, line: 522, baseType: !319, size: 64, offset: 960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1242, file: !1243, line: 528, baseType: !1280, size: 64, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1243, line: 10, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1242, file: !1243, line: 535, baseType: !319, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1242, file: !1243, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1242, file: !1243, line: 540, baseType: !1285, size: 33280, offset: 1536)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1286, line: 317, size: 33280, elements: !1287)
!1286 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1285, file: !1286, line: 330, baseType: !7, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1285, file: !1286, line: 337, baseType: !319, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1285, file: !1286, line: 348, baseType: !1291, size: 32768, offset: 512)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1286, line: 304, size: 32768, elements: !1292)
!1292 = !{!1293, !1308, !1347, !1397, !1414}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1291, file: !1286, line: 305, baseType: !1294, size: 896)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1286, line: 12, size: 896, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1307}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1294, file: !1286, line: 13, baseType: !86, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1294, file: !1286, line: 14, baseType: !86, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1294, file: !1286, line: 15, baseType: !86, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1294, file: !1286, line: 16, baseType: !86, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1294, file: !1286, line: 17, baseType: !86, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1294, file: !1286, line: 18, baseType: !86, size: 32, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1294, file: !1286, line: 19, baseType: !86, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1294, file: !1286, line: 22, baseType: !1304, size: 640, offset: 224)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 640, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 20)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1294, file: !1286, line: 25, baseType: !86, size: 32, offset: 864)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1291, file: !1286, line: 306, baseType: !1309, size: 4096, align: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1286, line: 34, size: 4096, align: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1330, !1331, !1332, !1336, !1338, !1342}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1309, file: !1286, line: 35, baseType: !511, size: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1309, file: !1286, line: 36, baseType: !511, size: 16, offset: 16)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1309, file: !1286, line: 37, baseType: !511, size: 16, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1309, file: !1286, line: 38, baseType: !511, size: 16, offset: 48)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !1286, line: 39, baseType: !1316, size: 128, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !1286, line: 39, size: 128, elements: !1317)
!1317 = !{!1318, !1323}
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1286, line: 40, baseType: !1319, size: 128)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1286, line: 40, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1319, file: !1286, line: 41, baseType: !91, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1319, file: !1286, line: 42, baseType: !91, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1286, line: 44, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1286, line: 44, size: 128, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1324, file: !1286, line: 45, baseType: !86, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1324, file: !1286, line: 46, baseType: !86, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1324, file: !1286, line: 47, baseType: !86, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1324, file: !1286, line: 48, baseType: !86, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1309, file: !1286, line: 51, baseType: !86, size: 32, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1309, file: !1286, line: 52, baseType: !86, size: 32, offset: 224)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1309, file: !1286, line: 55, baseType: !1333, size: 1024, offset: 256)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 1024, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1309, file: !1286, line: 58, baseType: !1337, size: 2048, offset: 1280)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 2048, elements: !274)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1309, file: !1286, line: 60, baseType: !1339, size: 384, offset: 3328)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 384, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 12)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !1286, line: 62, baseType: !1343, size: 384, offset: 3712)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !1286, line: 62, size: 384, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1343, file: !1286, line: 63, baseType: !1339, size: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1343, file: !1286, line: 64, baseType: !1339, size: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1291, file: !1286, line: 307, baseType: !1348, size: 1088)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1286, line: 79, size: 1088, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1396}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1348, file: !1286, line: 80, baseType: !86, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1348, file: !1286, line: 81, baseType: !86, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1348, file: !1286, line: 82, baseType: !86, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1348, file: !1286, line: 83, baseType: !86, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1348, file: !1286, line: 84, baseType: !86, size: 32, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1348, file: !1286, line: 85, baseType: !86, size: 32, offset: 160)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1348, file: !1286, line: 86, baseType: !86, size: 32, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1348, file: !1286, line: 88, baseType: !1304, size: 640, offset: 224)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1348, file: !1286, line: 89, baseType: !97, size: 8, offset: 864)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1348, file: !1286, line: 90, baseType: !97, size: 8, offset: 872)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1348, file: !1286, line: 91, baseType: !97, size: 8, offset: 880)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1348, file: !1286, line: 92, baseType: !97, size: 8, offset: 888)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1348, file: !1286, line: 93, baseType: !97, size: 8, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1348, file: !1286, line: 94, baseType: !97, size: 8, offset: 904)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1348, file: !1286, line: 95, baseType: !1365, size: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1367, line: 11, size: 128, elements: !1368)
!1367 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1366, file: !1367, line: 12, baseType: !304, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1366, file: !1367, line: 13, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1373, line: 56, size: 1344, elements: !1374)
!1373 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1372, file: !1373, line: 61, baseType: !319, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1372, file: !1373, line: 62, baseType: !319, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1372, file: !1373, line: 63, baseType: !319, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1372, file: !1373, line: 64, baseType: !319, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1372, file: !1373, line: 65, baseType: !319, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1372, file: !1373, line: 66, baseType: !319, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1372, file: !1373, line: 68, baseType: !319, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1372, file: !1373, line: 69, baseType: !319, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1372, file: !1373, line: 70, baseType: !319, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1372, file: !1373, line: 71, baseType: !319, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1372, file: !1373, line: 72, baseType: !319, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1372, file: !1373, line: 73, baseType: !319, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1372, file: !1373, line: 74, baseType: !319, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1372, file: !1373, line: 75, baseType: !319, size: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1372, file: !1373, line: 76, baseType: !319, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1372, file: !1373, line: 81, baseType: !319, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1372, file: !1373, line: 83, baseType: !319, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1372, file: !1373, line: 84, baseType: !319, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !1373, line: 85, baseType: !319, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1372, file: !1373, line: 86, baseType: !319, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1372, file: !1373, line: 87, baseType: !319, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1348, file: !1286, line: 96, baseType: !86, size: 32, offset: 1024)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1291, file: !1286, line: 308, baseType: !1398, size: 4608, align: 512)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1286, line: 289, size: 4608, align: 512, elements: !1399)
!1399 = !{!1400, !1401, !1410}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1398, file: !1286, line: 290, baseType: !1309, size: 4096, align: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1398, file: !1286, line: 291, baseType: !1402, size: 512, offset: 4096)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1286, line: 268, size: 512, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1402, file: !1286, line: 269, baseType: !91, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1402, file: !1286, line: 270, baseType: !91, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1402, file: !1286, line: 271, baseType: !1407, size: 384, offset: 128)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 6)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1398, file: !1286, line: 292, baseType: !1411, offset: 4608)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 0)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1291, file: !1286, line: 309, baseType: !1415, size: 32768)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32768, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 4096)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !360, line: 378, baseType: !1419, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !520, file: !360, line: 384, baseType: !838, size: 192, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !380, file: !360, line: 500, baseType: !229, offset: 6656)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !380, file: !360, line: 501, baseType: !1423, size: 64, offset: 6656)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !360, line: 387, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !380, file: !360, line: 516, baseType: !1426, size: 64, offset: 6720)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1428, line: 18, flags: DIFlagFwdDecl)
!1428 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !380, file: !360, line: 519, baseType: !347, size: 64, offset: 6784)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !380, file: !360, line: 521, baseType: !1431, size: 64, offset: 6848)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !360, line: 521, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !380, file: !360, line: 545, baseType: !405, size: 32, offset: 6912)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !380, file: !360, line: 548, baseType: !199, size: 8, offset: 6944)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !380, file: !360, line: 550, baseType: !1436, offset: 6952)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1437, line: 142, elements: !243)
!1437 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !380, file: !360, line: 554, baseType: !1439, size: 256, offset: 6976)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1440, line: 102, size: 256, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1439, file: !1440, line: 103, baseType: !413, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1439, file: !1440, line: 104, baseType: !163, size: 128, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1439, file: !1440, line: 105, baseType: !1445, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1440, line: 21, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !380, file: !360, line: 557, baseType: !86, size: 32, offset: 7232)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !377, file: !360, line: 565, baseType: !1452, offset: 7296)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: -1)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !359, file: !360, line: 333, baseType: !1456, size: 64, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !349, line: 284, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !349, line: 284, size: 64, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1457, file: !349, line: 284, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !403, line: 19, baseType: !319)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !359, file: !360, line: 334, baseType: !319, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !359, file: !360, line: 343, baseType: !1463, size: 256, offset: 704)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !360, line: 340, size: 256, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1463, file: !360, line: 341, baseType: !367, size: 192, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1463, file: !360, line: 342, baseType: !319, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !359, file: !360, line: 351, baseType: !163, size: 128, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !359, file: !360, line: 353, baseType: !1469, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !360, line: 353, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !359, file: !360, line: 356, baseType: !1472, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !360, line: 356, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !359, file: !360, line: 359, baseType: !319, size: 64, offset: 1216)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !359, file: !360, line: 361, baseType: !347, size: 64, offset: 1280)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !359, file: !360, line: 362, baseType: !101, size: 64, offset: 1344)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !359, file: !360, line: 365, baseType: !413, size: 64, offset: 1408)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !359, file: !360, line: 373, baseType: !1480, offset: 1472)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !360, line: 296, elements: !243)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !326, file: !294, line: 90, baseType: !321, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !326, file: !294, line: 91, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !284, file: !215, line: 143, baseType: !1485, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !222}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !23, line: 39, size: 384, elements: !1491)
!1491 = !{!1492, !1493, !1497, !1501, !1507, !1511}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1490, file: !23, line: 40, baseType: !22, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1490, file: !23, line: 41, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!199}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1490, file: !23, line: 42, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!101}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1490, file: !23, line: 43, baseType: !1502, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!207, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !23, line: 19, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1490, file: !23, line: 44, baseType: !1508, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!207}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1490, file: !23, line: 45, baseType: !1512, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !101}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !284, file: !215, line: 144, baseType: !1516, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!207, !222}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !284, file: !215, line: 145, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !222, !1523, !1529}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1428, line: 23, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1428, line: 21, size: 32, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1525, file: !1428, line: 22, baseType: !1528, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 32, baseType: !1000)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1428, line: 28, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1428, line: 26, size: 32, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1531, file: !1428, line: 27, baseType: !1534, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 33, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !302, line: 50, baseType: !7)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !214, file: !215, line: 70, baseType: !1537, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1539, line: 123, size: 1024, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1683, !1684, !1685, !1686, !1687}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1538, file: !1539, line: 124, baseType: !405, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1538, file: !1539, line: 125, baseType: !405, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1538, file: !1539, line: 135, baseType: !1537, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1538, file: !1539, line: 136, baseType: !218, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1538, file: !1539, line: 138, baseType: !367, size: 192, align: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1538, file: !1539, line: 140, baseType: !207, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1538, file: !1539, line: 141, baseType: !7, size: 32, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 142, baseType: !1549, size: 256, offset: 512)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 142, size: 256, elements: !1550)
!1550 = !{!1551, !1606, !1610}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1549, file: !1539, line: 143, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1539, line: 91, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1552, file: !1539, line: 92, baseType: !319, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1552, file: !1539, line: 94, baseType: !384, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1552, file: !1539, line: 100, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1539, line: 180, size: 704, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1576, !1577, !1578, !1604, !1605}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1558, file: !1539, line: 182, baseType: !1537, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !1539, line: 183, baseType: !7, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1558, file: !1539, line: 186, baseType: !1563, size: 192, offset: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1564, line: 19, size: 192, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1574, !1575}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1563, file: !1564, line: 20, baseType: !1567, size: 128)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1568, line: 292, size: 128, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571, !1573}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1567, file: !1568, line: 293, baseType: !229)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1567, file: !1568, line: 295, baseType: !1572, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !164, line: 148, baseType: !7)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1567, file: !1568, line: 296, baseType: !101, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1563, file: !1564, line: 21, baseType: !7, size: 32, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1563, file: !1564, line: 22, baseType: !7, size: 32, offset: 160)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1558, file: !1539, line: 187, baseType: !86, size: 32, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1558, file: !1539, line: 188, baseType: !86, size: 32, offset: 352)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1558, file: !1539, line: 189, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1539, line: 168, size: 320, elements: !1581)
!1581 = !{!1582, !1588, !1592, !1596, !1600}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1580, file: !1539, line: 169, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!174, !1586, !1557}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !349, line: 539, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1580, file: !1539, line: 171, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!174, !1537, !218, !310}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1580, file: !1539, line: 173, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!174, !1537}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1580, file: !1539, line: 174, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!174, !1537, !1537, !218}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1580, file: !1539, line: 176, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!174, !1586, !1537, !1557}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1558, file: !1539, line: 192, baseType: !163, size: 128, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1558, file: !1539, line: 194, baseType: !809, size: 128, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1549, file: !1539, line: 144, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1539, line: 103, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1607, file: !1539, line: 104, baseType: !1537, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1549, file: !1539, line: 145, baseType: !1611, size: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1539, line: 107, size: 256, elements: !1612)
!1612 = !{!1613, !1678, !1681, !1682}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1611, file: !1539, line: 108, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1539, line: 217, size: 768, elements: !1617)
!1617 = !{!1618, !1638, !1642, !1646, !1651, !1655, !1659, !1663, !1664, !1665, !1666, !1674}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1616, file: !1539, line: 222, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!174, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1539, line: 197, size: 1088, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1623, file: !1539, line: 199, baseType: !1537, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1623, file: !1539, line: 200, baseType: !347, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1623, file: !1539, line: 201, baseType: !1586, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1623, file: !1539, line: 202, baseType: !101, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1623, file: !1539, line: 205, baseType: !482, size: 192, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1623, file: !1539, line: 206, baseType: !482, size: 192, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1623, file: !1539, line: 207, baseType: !174, size: 32, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1623, file: !1539, line: 208, baseType: !163, size: 128, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1623, file: !1539, line: 209, baseType: !119, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1623, file: !1539, line: 211, baseType: !316, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1623, file: !1539, line: 212, baseType: !199, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1623, file: !1539, line: 213, baseType: !199, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1623, file: !1539, line: 214, baseType: !1472, size: 64, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1616, file: !1539, line: 223, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1622}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1616, file: !1539, line: 236, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!174, !1586, !101}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1616, file: !1539, line: 238, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!101, !1586, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1616, file: !1539, line: 239, baseType: !1652, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!101, !1586, !101, !1650}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1616, file: !1539, line: 240, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1586, !101}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1616, file: !1539, line: 242, baseType: !1660, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!300, !1622, !119, !316, !350}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1616, file: !1539, line: 252, baseType: !316, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1616, file: !1539, line: 259, baseType: !199, size: 8, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1616, file: !1539, line: 260, baseType: !1660, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1616, file: !1539, line: 263, baseType: !1667, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1670, !1622, !1672}
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1671, line: 52, baseType: !7)
!1671 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1539, line: 27, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1616, file: !1539, line: 266, baseType: !1675, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!174, !1622, !358}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1611, file: !1539, line: 109, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1539, line: 31, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1611, file: !1539, line: 110, baseType: !350, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1611, file: !1539, line: 111, baseType: !1537, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1538, file: !1539, line: 148, baseType: !101, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1538, file: !1539, line: 154, baseType: !91, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !1539, line: 156, baseType: !311, size: 16, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1538, file: !1539, line: 157, baseType: !310, size: 16, offset: 912)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1538, file: !1539, line: 158, baseType: !1688, size: 64, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1539, line: 32, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !214, file: !215, line: 71, baseType: !1691, size: 32, offset: 448)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1692, line: 19, size: 32, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1691, file: !1692, line: 20, baseType: !541, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !214, file: !215, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !214, file: !215, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !214, file: !215, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !214, file: !215, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !214, file: !215, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !35, line: 463, baseType: !1701, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !211, file: !35, line: 465, baseType: !1703, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !35, line: 36, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !211, file: !35, line: 467, baseType: !218, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !211, file: !35, line: 468, baseType: !1707, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !35, line: 87, size: 384, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1717, !1722, !1726}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !35, line: 88, baseType: !218, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1709, file: !35, line: 89, baseType: !323, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1709, file: !35, line: 90, baseType: !1714, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!174, !1701, !265}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1709, file: !35, line: 91, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!119, !1701, !1721, !1523, !1529}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1709, file: !35, line: 93, baseType: !1723, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1701}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1709, file: !35, line: 95, baseType: !1727, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !42, line: 278, size: 1472, elements: !1730)
!1730 = !{!1731, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1729, file: !42, line: 279, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!174, !1701}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1729, file: !42, line: 280, baseType: !1723, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1729, file: !42, line: 281, baseType: !1732, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1729, file: !42, line: 282, baseType: !1732, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1729, file: !42, line: 283, baseType: !1732, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1729, file: !42, line: 284, baseType: !1732, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1729, file: !42, line: 285, baseType: !1732, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1729, file: !42, line: 286, baseType: !1732, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1729, file: !42, line: 287, baseType: !1732, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1729, file: !42, line: 288, baseType: !1732, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1729, file: !42, line: 289, baseType: !1732, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1729, file: !42, line: 290, baseType: !1732, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1729, file: !42, line: 291, baseType: !1732, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1729, file: !42, line: 292, baseType: !1732, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1729, file: !42, line: 293, baseType: !1732, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1729, file: !42, line: 294, baseType: !1732, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1729, file: !42, line: 295, baseType: !1732, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1729, file: !42, line: 296, baseType: !1732, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1729, file: !42, line: 297, baseType: !1732, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1729, file: !42, line: 298, baseType: !1732, size: 64, offset: 1216)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1729, file: !42, line: 299, baseType: !1732, size: 64, offset: 1280)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1729, file: !42, line: 300, baseType: !1732, size: 64, offset: 1344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1729, file: !42, line: 301, baseType: !1732, size: 64, offset: 1408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !211, file: !35, line: 470, baseType: !1758, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1760, line: 82, size: 1408, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1847, !1850, !1853}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 83, baseType: !218, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1759, file: !1760, line: 84, baseType: !218, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1759, file: !1760, line: 85, baseType: !1701, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1759, file: !1760, line: 86, baseType: !323, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1759, file: !1760, line: 87, baseType: !323, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1759, file: !1760, line: 88, baseType: !323, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1759, file: !1760, line: 90, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!174, !1701, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !29, line: 95, size: 1152, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1781, !1782, !1783, !1784, !1798, !1811, !1812, !1813, !1814, !1815, !1823, !1824, !1825, !1826, !1827, !1828}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !29, line: 96, baseType: !218, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1773, file: !29, line: 97, baseType: !1758, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1773, file: !29, line: 99, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1780, line: 76, flags: DIFlagFwdDecl)
!1780 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1773, file: !29, line: 100, baseType: !218, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1773, file: !29, line: 102, baseType: !199, size: 8, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1773, file: !29, line: 103, baseType: !28, size: 32, offset: 288)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1773, file: !29, line: 105, baseType: !1785, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1788, line: 262, size: 1600, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1792, !1793, !1797}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 263, baseType: !1791, size: 256)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !1334)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !1788, line: 264, baseType: !1791, size: 256, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1787, file: !1788, line: 265, baseType: !1794, size: 1024, offset: 512)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1024, elements: !1795)
!1795 = !{!1796}
!1796 = !DISubrange(count: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1787, file: !1788, line: 266, baseType: !207, size: 64, offset: 1536)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1773, file: !29, line: 106, baseType: !1799, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1788, line: 210, size: 256, elements: !1802)
!1802 = !{!1803, !1807, !1809, !1810}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1801, file: !1788, line: 211, baseType: !1804, size: 72)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 72, elements: !1805)
!1805 = !{!1806}
!1806 = !DISubrange(count: 9)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1801, file: !1788, line: 212, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1788, line: 14, baseType: !319)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1801, file: !1788, line: 213, baseType: !88, size: 32, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1801, file: !1788, line: 214, baseType: !88, size: 32, offset: 224)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1773, file: !29, line: 108, baseType: !1732, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1773, file: !29, line: 109, baseType: !1723, size: 64, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1773, file: !29, line: 110, baseType: !1732, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1773, file: !29, line: 111, baseType: !1723, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1773, file: !29, line: 112, baseType: !1816, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!174, !1701, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !42, line: 52, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !42, line: 50, size: 32, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1820, file: !42, line: 51, baseType: !174, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1773, file: !29, line: 113, baseType: !1732, size: 64, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1773, file: !29, line: 114, baseType: !323, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1773, file: !29, line: 115, baseType: !323, size: 64, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1773, file: !29, line: 117, baseType: !1727, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1773, file: !29, line: 118, baseType: !1723, size: 64, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1773, file: !29, line: 120, baseType: !1829, size: 64, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !29, line: 120, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1759, file: !1760, line: 91, baseType: !1714, size: 64, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1759, file: !1760, line: 92, baseType: !1732, size: 64, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1759, file: !1760, line: 93, baseType: !1723, size: 64, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1759, file: !1760, line: 94, baseType: !1732, size: 64, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1759, file: !1760, line: 95, baseType: !1723, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1759, file: !1760, line: 97, baseType: !1732, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1759, file: !1760, line: 98, baseType: !1732, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1759, file: !1760, line: 100, baseType: !1816, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1759, file: !1760, line: 101, baseType: !1732, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1759, file: !1760, line: 103, baseType: !1732, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1759, file: !1760, line: 105, baseType: !1732, size: 64, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1759, file: !1760, line: 107, baseType: !1727, size: 64, offset: 1152)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1759, file: !1760, line: 109, baseType: !1844, size: 64, offset: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1760, line: 109, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1759, file: !1760, line: 111, baseType: !1848, size: 64, offset: 1280)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1760, line: 111, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1759, file: !1760, line: 112, baseType: !1851, offset: 1344)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1852, line: 187, elements: !243)
!1852 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1759, file: !1760, line: 114, baseType: !199, size: 8, offset: 1344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !211, file: !35, line: 471, baseType: !1772, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !211, file: !35, line: 473, baseType: !101, size: 64, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !211, file: !35, line: 475, baseType: !101, size: 64, offset: 960)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !211, file: !35, line: 480, baseType: !482, size: 192, offset: 1024)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !211, file: !35, line: 484, baseType: !1859, size: 576, offset: 1216)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !35, line: 361, size: 576, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1859, file: !35, line: 362, baseType: !163, size: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1859, file: !35, line: 363, baseType: !163, size: 128, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1859, file: !35, line: 364, baseType: !163, size: 128, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1859, file: !35, line: 365, baseType: !163, size: 128, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1859, file: !35, line: 366, baseType: !199, size: 8, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1859, file: !35, line: 367, baseType: !34, size: 32, offset: 544)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !211, file: !35, line: 485, baseType: !1868, size: 2304, offset: 1792)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !42, line: 565, size: 2304, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1965, !1969}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1868, file: !42, line: 566, baseType: !1819, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1868, file: !42, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1868, file: !42, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1868, file: !42, line: 569, baseType: !199, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1868, file: !42, line: 570, baseType: !199, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1868, file: !42, line: 571, baseType: !199, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1868, file: !42, line: 572, baseType: !199, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1868, file: !42, line: 573, baseType: !199, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1868, file: !42, line: 574, baseType: !199, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1868, file: !42, line: 575, baseType: !199, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1868, file: !42, line: 576, baseType: !199, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1868, file: !42, line: 577, baseType: !86, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1868, file: !42, line: 578, baseType: !229, offset: 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1868, file: !42, line: 580, baseType: !163, size: 128, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1868, file: !42, line: 581, baseType: !838, size: 192, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1868, file: !42, line: 582, baseType: !1886, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1888, line: 43, size: 1472, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1897, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1887, file: !1888, line: 44, baseType: !218, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1887, file: !1888, line: 45, baseType: !174, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1887, file: !1888, line: 46, baseType: !163, size: 128, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1887, file: !1888, line: 47, baseType: !229, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1887, file: !1888, line: 48, baseType: !1895, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !42, line: 533, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1887, file: !1888, line: 49, baseType: !1898, size: 320, offset: 320)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1899, line: 11, size: 320, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1903, !1908}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1898, file: !1899, line: 16, baseType: !802, size: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1898, file: !1899, line: 17, baseType: !319, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1898, file: !1899, line: 18, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !1899, line: 19, baseType: !86, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1887, file: !1888, line: 50, baseType: !319, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1887, file: !1888, line: 51, baseType: !611, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1887, file: !1888, line: 52, baseType: !611, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1887, file: !1888, line: 53, baseType: !611, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1887, file: !1888, line: 54, baseType: !611, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1887, file: !1888, line: 55, baseType: !611, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1887, file: !1888, line: 56, baseType: !319, size: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1887, file: !1888, line: 57, baseType: !319, size: 64, offset: 1088)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1887, file: !1888, line: 58, baseType: !319, size: 64, offset: 1152)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1887, file: !1888, line: 59, baseType: !319, size: 64, offset: 1216)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1887, file: !1888, line: 60, baseType: !319, size: 64, offset: 1280)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1887, file: !1888, line: 61, baseType: !1701, size: 64, offset: 1344)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1887, file: !1888, line: 62, baseType: !199, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1887, file: !1888, line: 63, baseType: !199, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1868, file: !42, line: 583, baseType: !199, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1868, file: !42, line: 584, baseType: !199, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1868, file: !42, line: 585, baseType: !199, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1868, file: !42, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1868, file: !42, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1868, file: !42, line: 592, baseType: !603, size: 512, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1868, file: !42, line: 593, baseType: !91, size: 64, offset: 1088)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1868, file: !42, line: 594, baseType: !1439, size: 256, offset: 1152)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1868, file: !42, line: 595, baseType: !809, size: 128, offset: 1408)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1868, file: !42, line: 596, baseType: !1895, size: 64, offset: 1536)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1868, file: !42, line: 597, baseType: !405, size: 32, offset: 1600)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1868, file: !42, line: 598, baseType: !405, size: 32, offset: 1632)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1868, file: !42, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1868, file: !42, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1868, file: !42, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1868, file: !42, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1868, file: !42, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1868, file: !42, line: 604, baseType: !199, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1868, file: !42, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1868, file: !42, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1868, file: !42, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1868, file: !42, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1868, file: !42, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1868, file: !42, line: 610, baseType: !7, size: 32, offset: 1696)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1868, file: !42, line: 611, baseType: !41, size: 32, offset: 1728)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1868, file: !42, line: 612, baseType: !49, size: 32, offset: 1760)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1868, file: !42, line: 613, baseType: !174, size: 32, offset: 1792)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1868, file: !42, line: 614, baseType: !174, size: 32, offset: 1824)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1868, file: !42, line: 615, baseType: !91, size: 64, offset: 1856)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1868, file: !42, line: 616, baseType: !91, size: 64, offset: 1920)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1868, file: !42, line: 617, baseType: !91, size: 64, offset: 1984)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1868, file: !42, line: 618, baseType: !91, size: 64, offset: 2048)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1868, file: !42, line: 620, baseType: !1956, size: 64, offset: 2112)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !42, line: 536, size: 256, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1957, file: !42, line: 537, baseType: !229)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1957, file: !42, line: 538, baseType: !7, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1957, file: !42, line: 540, baseType: !163, size: 128, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1957, file: !42, line: 543, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !42, line: 534, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1868, file: !42, line: 621, baseType: !1966, size: 64, offset: 2176)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1701, !762}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1868, file: !42, line: 622, baseType: !1970, size: 64, offset: 2240)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !42, line: 622, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !211, file: !35, line: 486, baseType: !1973, size: 64, offset: 4096)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !42, line: 642, size: 1792, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1982, !1983, !1984}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1974, file: !42, line: 643, baseType: !1729, size: 1472)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1974, file: !42, line: 644, baseType: !1732, size: 64, offset: 1472)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1974, file: !42, line: 645, baseType: !1979, size: 64, offset: 1536)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1701, !199}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1974, file: !42, line: 646, baseType: !1732, size: 64, offset: 1600)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1974, file: !42, line: 647, baseType: !1723, size: 64, offset: 1664)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1974, file: !42, line: 648, baseType: !1723, size: 64, offset: 1728)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !211, file: !35, line: 493, baseType: !1986, size: 64, offset: 4160)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !56, line: 162, size: 1088, elements: !1988)
!1988 = !{!1989, !1990, !1991, !2076, !2077, !2078, !2079, !2080, !2081, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1987, file: !56, line: 163, baseType: !163, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1987, file: !56, line: 164, baseType: !218, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1987, file: !56, line: 165, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !56, line: 105, size: 640, elements: !1995)
!1995 = !{!1996, !2025, !2036, !2041, !2045, !2053, !2057, !2061, !2068, !2072}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1994, file: !56, line: 106, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!174, !1986, !2000, !55}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2002, line: 51, size: 1344, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2007, !2008, !2009, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !2002, line: 52, baseType: !218, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2001, file: !2002, line: 53, baseType: !2006, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2002, line: 28, baseType: !86)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2001, file: !2002, line: 54, baseType: !218, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2001, file: !2002, line: 55, baseType: !177, size: 192, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2001, file: !2002, line: 57, baseType: !2010, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2002, line: 31, size: 704, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2011, file: !2002, line: 32, baseType: !119, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2011, file: !2002, line: 33, baseType: !174, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2011, file: !2002, line: 34, baseType: !101, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !2002, line: 35, baseType: !2010, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2011, file: !2002, line: 43, baseType: !338, size: 448, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2001, file: !2002, line: 58, baseType: !2010, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2001, file: !2002, line: 59, baseType: !2000, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2001, file: !2002, line: 60, baseType: !2000, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2001, file: !2002, line: 61, baseType: !2000, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2001, file: !2002, line: 63, baseType: !214, size: 512, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2001, file: !2002, line: 65, baseType: !319, size: 64, offset: 1216)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2001, file: !2002, line: 66, baseType: !101, size: 64, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1994, file: !56, line: 108, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!174, !1986, !2029, !55}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !56, line: 63, size: 640, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2030, file: !56, line: 64, baseType: !181, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2030, file: !56, line: 65, baseType: !174, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2030, file: !56, line: 66, baseType: !2035, size: 512, offset: 96)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 512, elements: !895)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1994, file: !56, line: 110, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!174, !1986, !7, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !164, line: 164, baseType: !319)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1994, file: !56, line: 111, baseType: !2042, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !1986, !7}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1994, file: !56, line: 112, baseType: !2046, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!174, !1986, !2000, !2049, !7, !2051, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1994, file: !56, line: 117, baseType: !2054, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!174, !1986, !7, !7, !101}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1994, file: !56, line: 119, baseType: !2058, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !1986, !7, !7}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1994, file: !56, line: 121, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!174, !1986, !2065, !199}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2067, line: 11, flags: DIFlagFwdDecl)
!2067 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1994, file: !56, line: 122, baseType: !2069, size: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !1986, !2065}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1994, file: !56, line: 123, baseType: !2073, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!174, !1986, !2029, !2051, !2052}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1987, file: !56, line: 166, baseType: !101, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1987, file: !56, line: 167, baseType: !7, size: 32, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1987, file: !56, line: 168, baseType: !7, size: 32, offset: 352)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1987, file: !56, line: 171, baseType: !181, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1987, file: !56, line: 172, baseType: !55, size: 32, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1987, file: !56, line: 173, baseType: !2082, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !56, line: 134, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1987, file: !56, line: 175, baseType: !1986, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1987, file: !56, line: 182, baseType: !2040, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1987, file: !56, line: 183, baseType: !7, size: 32, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1987, file: !56, line: 184, baseType: !7, size: 32, offset: 736)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1987, file: !56, line: 185, baseType: !1567, size: 128, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1987, file: !56, line: 186, baseType: !482, size: 192, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1987, file: !56, line: 187, baseType: !2091, offset: 1088)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1453)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !211, file: !35, line: 499, baseType: !163, size: 128, offset: 4224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !211, file: !35, line: 502, baseType: !2094, size: 64, offset: 4352)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !35, line: 502, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !211, file: !35, line: 504, baseType: !94, size: 64, offset: 4416)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !211, file: !35, line: 505, baseType: !91, size: 64, offset: 4480)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !211, file: !35, line: 510, baseType: !91, size: 64, offset: 4544)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !211, file: !35, line: 511, baseType: !2101, size: 64, offset: 4608)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !35, line: 511, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !211, file: !35, line: 513, baseType: !2105, size: 64, offset: 4672)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !35, line: 288, size: 128, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2106, file: !35, line: 293, baseType: !7, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2106, file: !35, line: 294, baseType: !319, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !211, file: !35, line: 515, baseType: !163, size: 128, offset: 4736)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !211, file: !35, line: 526, baseType: !2112, offset: 4864)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2113, line: 5, elements: !243)
!2113 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !211, file: !35, line: 528, baseType: !2000, size: 64, offset: 4864)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !211, file: !35, line: 529, baseType: !181, size: 64, offset: 4928)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !211, file: !35, line: 534, baseType: !2117, size: 32, offset: 4992)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !164, line: 16, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !164, line: 13, baseType: !86)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !211, file: !35, line: 535, baseType: !86, size: 32, offset: 5024)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !211, file: !35, line: 537, baseType: !229, offset: 5056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !211, file: !35, line: 538, baseType: !163, size: 128, offset: 5056)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !211, file: !35, line: 540, baseType: !2123, size: 64, offset: 5184)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2125, line: 54, size: 960, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2137, !2141, !2142, !2143, !2144, !2148, !2152, !2153}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2124, file: !2125, line: 55, baseType: !218, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2124, file: !2125, line: 56, baseType: !1778, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2124, file: !2125, line: 58, baseType: !323, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2124, file: !2125, line: 59, baseType: !323, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2124, file: !2125, line: 60, baseType: !222, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2124, file: !2125, line: 62, baseType: !1714, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2124, file: !2125, line: 63, baseType: !2134, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!119, !1701, !1721}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2124, file: !2125, line: 65, baseType: !2138, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2123}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2124, file: !2125, line: 66, baseType: !1723, size: 64, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2124, file: !2125, line: 68, baseType: !1732, size: 64, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2124, file: !2125, line: 70, baseType: !1488, size: 64, offset: 640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2124, file: !2125, line: 71, baseType: !2145, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!207, !1701}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2124, file: !2125, line: 73, baseType: !2149, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !1701, !1523, !1529}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2124, file: !2125, line: 75, baseType: !1727, size: 64, offset: 832)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2124, file: !2125, line: 77, baseType: !1848, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !211, file: !35, line: 541, baseType: !323, size: 64, offset: 5248)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !211, file: !35, line: 543, baseType: !1723, size: 64, offset: 5312)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !211, file: !35, line: 544, baseType: !2157, size: 64, offset: 5376)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !35, line: 45, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !211, file: !35, line: 545, baseType: !2160, size: 64, offset: 5440)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !35, line: 47, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !211, file: !35, line: 547, baseType: !199, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !211, file: !35, line: 548, baseType: !199, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !211, file: !35, line: 549, baseType: !199, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !211, file: !35, line: 550, baseType: !199, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !185, file: !178, line: 116, baseType: !2167, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!199, !201, !218}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !185, file: !178, line: 118, baseType: !2171, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!174, !201, !218, !7, !101, !316}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !185, file: !178, line: 123, baseType: !2175, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!174, !201, !218, !2178, !316}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !185, file: !178, line: 126, baseType: !2180, size: 64, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!218, !201}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !185, file: !178, line: 127, baseType: !2180, size: 64, offset: 512)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !185, file: !178, line: 128, baseType: !2185, size: 64, offset: 576)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!181, !201}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !185, file: !178, line: 130, baseType: !2189, size: 64, offset: 640)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!181, !201, !181}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !185, file: !178, line: 133, baseType: !2193, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!181, !201, !218}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !185, file: !178, line: 135, baseType: !2197, size: 64, offset: 768)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!174, !201, !218, !218, !7, !7, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !178, line: 43, size: 640, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2201, file: !178, line: 44, baseType: !181, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2201, file: !178, line: 45, baseType: !7, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2201, file: !178, line: 46, baseType: !2206, size: 512, offset: 128)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !641)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !185, file: !178, line: 140, baseType: !2189, size: 64, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !185, file: !178, line: 143, baseType: !2185, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !185, file: !178, line: 145, baseType: !188, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !185, file: !178, line: 146, baseType: !2211, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!174, !201, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !178, line: 29, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2215, file: !178, line: 30, baseType: !7, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2215, file: !178, line: 31, baseType: !7, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2215, file: !178, line: 32, baseType: !201, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !185, file: !178, line: 148, baseType: !2221, size: 64, offset: 1088)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!174, !201, !1701}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !177, file: !178, line: 20, baseType: !1701, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !171, line: 355, baseType: !169, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !170, file: !171, line: 356, baseType: !163, size: 128, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !171, line: 357, baseType: !163, size: 128, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !170, file: !171, line: 358, baseType: !163, size: 128, offset: 640)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !170, file: !171, line: 359, baseType: !163, size: 128, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !170, file: !171, line: 360, baseType: !2231, size: 32, offset: 896)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !171, line: 179, size: 32, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2231, file: !171, line: 180, baseType: !86, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2231, file: !171, line: 181, baseType: !86, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2231, file: !171, line: 182, baseType: !86, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2231, file: !171, line: 183, baseType: !86, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2231, file: !171, line: 184, baseType: !86, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2231, file: !171, line: 185, baseType: !86, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !171, line: 361, baseType: !2240, size: 32, offset: 928)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !171, line: 190, size: 32, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2240, file: !171, line: 191, baseType: !86, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2240, file: !171, line: 192, baseType: !86, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2240, file: !171, line: 193, baseType: !86, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2240, file: !171, line: 194, baseType: !86, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2240, file: !171, line: 195, baseType: !86, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2240, file: !171, line: 196, baseType: !86, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2240, file: !171, line: 197, baseType: !86, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2240, file: !171, line: 198, baseType: !86, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2240, file: !171, line: 199, baseType: !86, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2240, file: !171, line: 200, baseType: !86, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2240, file: !171, line: 201, baseType: !86, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2240, file: !171, line: 202, baseType: !86, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2240, file: !171, line: 203, baseType: !86, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2240, file: !171, line: 204, baseType: !86, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !170, file: !171, line: 362, baseType: !2257, size: 960, offset: 960)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !171, line: 234, size: 960, elements: !2258)
!2258 = !{!2259, !2261, !2268, !2270, !2271, !2272, !2277, !2280}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2257, file: !171, line: 235, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !171, line: 217, baseType: !1041)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2257, file: !171, line: 236, baseType: !2262, size: 32, offset: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !171, line: 227, size: 32, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2262, file: !171, line: 228, baseType: !86, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2262, file: !171, line: 229, baseType: !86, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2262, file: !171, line: 230, baseType: !86, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2262, file: !171, line: 231, baseType: !86, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2257, file: !171, line: 237, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !171, line: 218, baseType: !91)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2257, file: !171, line: 238, baseType: !119, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2257, file: !171, line: 239, baseType: !163, size: 128, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2257, file: !171, line: 240, baseType: !2273, size: 320, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !171, line: 219, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 320, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 40)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2257, file: !171, line: 241, baseType: !2278, size: 160, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !171, line: 220, baseType: !2279)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 160, elements: !1305)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2257, file: !171, line: 242, baseType: !103, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !170, file: !171, line: 363, baseType: !2282, size: 1344, offset: 1920)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !171, line: 275, size: 1344, elements: !2283)
!2283 = !{!2284, !2285, !2295}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2282, file: !171, line: 276, baseType: !174, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !171, line: 277, baseType: !2286, size: 32, offset: 32)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !171, line: 254, size: 32, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2286, file: !171, line: 255, baseType: !86, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2286, file: !171, line: 256, baseType: !86, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2286, file: !171, line: 257, baseType: !86, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2286, file: !171, line: 258, baseType: !86, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2286, file: !171, line: 259, baseType: !86, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2286, file: !171, line: 260, baseType: !86, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2286, file: !171, line: 261, baseType: !86, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2282, file: !171, line: 278, baseType: !2296, size: 1280, offset: 64)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, size: 1280, elements: !2308)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !171, line: 264, size: 256, elements: !2298)
!2298 = !{!2299, !2305, !2306, !2307}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !171, line: 269, baseType: !2300, size: 8)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !171, line: 265, size: 8, elements: !2301)
!2301 = !{!2302, !2303, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2300, file: !171, line: 266, baseType: !97, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2300, file: !171, line: 267, baseType: !97, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2300, file: !171, line: 268, baseType: !97, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2297, file: !171, line: 270, baseType: !174, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2297, file: !171, line: 271, baseType: !174, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2297, file: !171, line: 272, baseType: !163, size: 128, offset: 128)
!2308 = !{!2309}
!2309 = !DISubrange(count: 5)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !170, file: !171, line: 364, baseType: !2311, size: 640, offset: 3264)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !171, line: 315, size: 640, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2322, !2331, !2332, !2333}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2311, file: !171, line: 316, baseType: !138, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2311, file: !171, line: 317, baseType: !91, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2311, file: !171, line: 318, baseType: !91, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2311, file: !171, line: 319, baseType: !163, size: 128, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2311, file: !171, line: 320, baseType: !2318, size: 8, offset: 320)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !171, line: 305, size: 8, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2318, file: !171, line: 306, baseType: !97, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2318, file: !171, line: 307, baseType: !97, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2311, file: !171, line: 321, baseType: !2323, size: 128, offset: 384)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !171, line: 310, size: 128, elements: !2324)
!2324 = !{!2325, !2330}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2323, file: !171, line: 311, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2323, file: !171, line: 312, baseType: !1701, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2311, file: !171, line: 322, baseType: !1886, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2311, file: !171, line: 323, baseType: !174, size: 32, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2311, file: !171, line: 324, baseType: !174, size: 32, offset: 608)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !170, file: !171, line: 365, baseType: !2335, size: 192, offset: 3904)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !171, line: 297, size: 192, elements: !2336)
!2336 = !{!2337, !2338, !2342, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2335, file: !171, line: 298, baseType: !174, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !171, line: 299, baseType: !2339, size: 8, offset: 32)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !171, line: 283, size: 8, elements: !2340)
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2339, file: !171, line: 284, baseType: !97, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2335, file: !171, line: 300, baseType: !174, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2335, file: !171, line: 301, baseType: !2344, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !171, line: 287, size: 64, elements: !2346)
!2346 = !{!2347, !2352, !2353, !2354}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !171, line: 291, baseType: !2348, size: 8)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2345, file: !171, line: 288, size: 8, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2348, file: !171, line: 289, baseType: !97, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2348, file: !171, line: 290, baseType: !97, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2345, file: !171, line: 292, baseType: !97, size: 8, offset: 8)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2345, file: !171, line: 293, baseType: !97, size: 8, offset: 16)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2345, file: !171, line: 294, baseType: !174, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !170, file: !171, line: 366, baseType: !2356, size: 64, offset: 4096)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !171, line: 209, size: 64, elements: !2357)
!2357 = !{!2358}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2356, file: !171, line: 210, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !171, line: 84, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !170, file: !171, line: 367, baseType: !2362, size: 384, offset: 4160)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !171, line: 341, size: 384, elements: !2363)
!2363 = !{!2364, !2367, !2368, !2369}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2362, file: !171, line: 342, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2362, file: !171, line: 343, baseType: !163, size: 128, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2362, file: !171, line: 344, baseType: !2365, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2362, file: !171, line: 345, baseType: !163, size: 128, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !170, file: !171, line: 368, baseType: !2371, size: 64, offset: 4544)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !171, line: 122, size: 1216, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2381, !2385, !2389, !2390, !2391}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2372, file: !171, line: 123, baseType: !1799, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2372, file: !171, line: 124, baseType: !163, size: 128, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2372, file: !171, line: 125, baseType: !2377, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!199, !218, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2372, file: !171, line: 126, baseType: !2382, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!174, !169, !1799}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2372, file: !171, line: 127, baseType: !2386, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !169}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2372, file: !171, line: 128, baseType: !1723, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2372, file: !171, line: 129, baseType: !1723, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2372, file: !171, line: 130, baseType: !2392, size: 704, offset: 512)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !171, line: 108, size: 704, elements: !2393)
!2393 = !{!2394, !2395, !2399, !2400, !2401}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2392, file: !171, line: 109, baseType: !214, size: 512)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2392, file: !171, line: 110, baseType: !2396, size: 64, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!174, !169}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2392, file: !171, line: 111, baseType: !2386, size: 64, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2392, file: !171, line: 112, baseType: !199, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2392, file: !171, line: 113, baseType: !199, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !170, file: !171, line: 369, baseType: !2403, size: 64, offset: 4608)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !171, line: 138, size: 256, elements: !2405)
!2405 = !{!2406, !2407, !2411, !2415}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2404, file: !171, line: 139, baseType: !169, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2404, file: !171, line: 140, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!174, !169, !86}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2404, file: !171, line: 141, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !169, !86}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2404, file: !171, line: 142, baseType: !2386, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !170, file: !171, line: 370, baseType: !2417, size: 64, offset: 4672)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !171, line: 162, size: 2816, elements: !2419)
!2419 = !{!2420, !2424, !2425, !2426, !2427, !2436, !2437}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2418, file: !171, line: 163, baseType: !2421, size: 640)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: 80)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2418, file: !171, line: 164, baseType: !2421, size: 640, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2418, file: !171, line: 165, baseType: !1799, size: 64, offset: 1280)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2418, file: !171, line: 166, baseType: !7, size: 32, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2418, file: !171, line: 167, baseType: !2428, size: 192, offset: 1408)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !171, line: 154, size: 192, elements: !2429)
!2429 = !{!2430, !2432, !2434}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2428, file: !171, line: 155, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !171, line: 150, baseType: !2396)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2428, file: !171, line: 156, baseType: !2433, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !171, line: 151, baseType: !2396)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2428, file: !171, line: 157, baseType: !2435, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !171, line: 152, baseType: !2412)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2418, file: !171, line: 168, baseType: !1773, size: 1152, offset: 1600)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2418, file: !171, line: 169, baseType: !1778, size: 64, offset: 2752)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !170, file: !171, line: 371, baseType: !2439, size: 64, offset: 4736)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !171, line: 348, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !171, line: 372, baseType: !101, size: 64, offset: 4800)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !170, file: !171, line: 373, baseType: !211, size: 5568, offset: 4864)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !170, file: !171, line: 374, baseType: !7, size: 32, offset: 10432)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !170, file: !171, line: 375, baseType: !7, size: 32, offset: 10464)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !170, file: !171, line: 376, baseType: !163, size: 128, offset: 10496)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !170, file: !171, line: 377, baseType: !482, size: 192, offset: 10624)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !170, file: !171, line: 378, baseType: !2386, size: 64, offset: 10816)
!2449 = !{!2450, !2461, !0}
!2450 = !DIGlobalVariableExpression(var: !2451, expr: !DIExpression())
!2451 = distinct !DIGlobalVariable(name: "__setup_acpi_backlight", scope: !2, file: !3, line: 886, type: !2452, isLocal: true, isDefinition: true, align: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2453, line: 241, size: 192, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2454 = !{!2455, !2456, !2460}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2452, file: !2453, line: 242, baseType: !218, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2452, file: !2453, line: 243, baseType: !2457, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!174, !119}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2452, file: !2453, line: 244, baseType: !174, size: 32, offset: 128)
!2461 = !DIGlobalVariableExpression(var: !2462, expr: !DIExpression())
!2462 = distinct !DIGlobalVariable(name: "acpi_video_backlight_string", scope: !2, file: !3, line: 877, type: !894, isLocal: false, isDefinition: true)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !895)
!2464 = !{!"rsp"}
!2465 = !{i32 7, !"Dwarf Version", i32 4}
!2466 = !{i32 2, !"Debug Info Version", i32 3}
!2467 = !{i32 1, !"wchar_size", i32 2}
!2468 = !{i32 1, !"Code Model", i32 2}
!2469 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2470 = distinct !DISubprogram(name: "acpi_extract_package", scope: !3, file: !3, line: 42, type: !2471, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!84, !103, !2473, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !85, line: 969, size: 128, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2474, file: !85, line: 970, baseType: !90, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2474, file: !85, line: 971, baseType: !101, size: 64, offset: 64)
!2478 = !DILocalVariable(name: "package", arg: 1, scope: !2470, file: !3, line: 42, type: !103)
!2479 = !DILocation(line: 42, column: 41, scope: !2470)
!2480 = !DILocalVariable(name: "format", arg: 2, scope: !2470, file: !3, line: 43, type: !2473)
!2481 = !DILocation(line: 43, column: 28, scope: !2470)
!2482 = !DILocalVariable(name: "buffer", arg: 3, scope: !2470, file: !3, line: 43, type: !2473)
!2483 = !DILocation(line: 43, column: 56, scope: !2470)
!2484 = !DILocalVariable(name: "size_required", scope: !2470, file: !3, line: 45, type: !86)
!2485 = !DILocation(line: 45, column: 6, scope: !2470)
!2486 = !DILocalVariable(name: "tail_offset", scope: !2470, file: !3, line: 46, type: !86)
!2487 = !DILocation(line: 46, column: 6, scope: !2470)
!2488 = !DILocalVariable(name: "format_string", scope: !2470, file: !3, line: 47, type: !119)
!2489 = !DILocation(line: 47, column: 8, scope: !2470)
!2490 = !DILocalVariable(name: "format_count", scope: !2470, file: !3, line: 48, type: !86)
!2491 = !DILocation(line: 48, column: 6, scope: !2470)
!2492 = !DILocalVariable(name: "i", scope: !2470, file: !3, line: 49, type: !86)
!2493 = !DILocation(line: 49, column: 6, scope: !2470)
!2494 = !DILocalVariable(name: "head", scope: !2470, file: !3, line: 50, type: !96)
!2495 = !DILocation(line: 50, column: 6, scope: !2470)
!2496 = !DILocalVariable(name: "tail", scope: !2470, file: !3, line: 51, type: !96)
!2497 = !DILocation(line: 51, column: 6, scope: !2470)
!2498 = !DILocation(line: 54, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 54, column: 6)
!2500 = !DILocation(line: 54, column: 15, scope: !2499)
!2501 = !DILocation(line: 54, column: 19, scope: !2499)
!2502 = !DILocation(line: 54, column: 28, scope: !2499)
!2503 = !DILocation(line: 54, column: 33, scope: !2499)
!2504 = !DILocation(line: 55, column: 6, scope: !2499)
!2505 = !DILocation(line: 55, column: 10, scope: !2499)
!2506 = !DILocation(line: 55, column: 19, scope: !2499)
!2507 = !DILocation(line: 55, column: 27, scope: !2499)
!2508 = !DILocation(line: 55, column: 33, scope: !2499)
!2509 = !DILocation(line: 54, column: 6, scope: !2470)
!2510 = !DILocation(line: 56, column: 3, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 55, column: 39)
!2512 = !DILocation(line: 57, column: 3, scope: !2511)
!2513 = !DILocation(line: 60, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 60, column: 6)
!2515 = !DILocation(line: 60, column: 14, scope: !2514)
!2516 = !DILocation(line: 60, column: 18, scope: !2514)
!2517 = !DILocation(line: 60, column: 26, scope: !2514)
!2518 = !DILocation(line: 60, column: 34, scope: !2514)
!2519 = !DILocation(line: 60, column: 38, scope: !2514)
!2520 = !DILocation(line: 60, column: 46, scope: !2514)
!2521 = !DILocation(line: 60, column: 53, scope: !2514)
!2522 = !DILocation(line: 60, column: 6, scope: !2470)
!2523 = !DILocation(line: 61, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 60, column: 59)
!2525 = !DILocation(line: 62, column: 3, scope: !2524)
!2526 = !DILocation(line: 65, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 65, column: 6)
!2528 = !DILocation(line: 65, column: 6, scope: !2470)
!2529 = !DILocation(line: 66, column: 3, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 65, column: 15)
!2531 = !DILocation(line: 67, column: 3, scope: !2530)
!2532 = !DILocation(line: 70, column: 18, scope: !2470)
!2533 = !DILocation(line: 70, column: 26, scope: !2470)
!2534 = !DILocation(line: 70, column: 33, scope: !2470)
!2535 = !DILocation(line: 70, column: 49, scope: !2470)
!2536 = !DILocation(line: 70, column: 17, scope: !2470)
!2537 = !DILocation(line: 70, column: 15, scope: !2470)
!2538 = !DILocation(line: 71, column: 6, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 71, column: 6)
!2540 = !DILocation(line: 71, column: 21, scope: !2539)
!2541 = !DILocation(line: 71, column: 30, scope: !2539)
!2542 = !DILocation(line: 71, column: 38, scope: !2539)
!2543 = !DILocation(line: 71, column: 19, scope: !2539)
!2544 = !DILocation(line: 71, column: 6, scope: !2470)
!2545 = !DILocation(line: 74, column: 10, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 71, column: 45)
!2547 = !DILocation(line: 74, column: 24, scope: !2546)
!2548 = !DILocation(line: 74, column: 33, scope: !2546)
!2549 = !DILocation(line: 74, column: 41, scope: !2546)
!2550 = !DILocation(line: 72, column: 3, scope: !2546)
!2551 = !DILocation(line: 75, column: 3, scope: !2546)
!2552 = !DILocation(line: 78, column: 18, scope: !2470)
!2553 = !DILocation(line: 78, column: 26, scope: !2470)
!2554 = !DILocation(line: 78, column: 16, scope: !2470)
!2555 = !DILocation(line: 83, column: 9, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 83, column: 2)
!2557 = !DILocation(line: 83, column: 7, scope: !2556)
!2558 = !DILocation(line: 83, column: 14, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 83, column: 2)
!2560 = !DILocation(line: 83, column: 18, scope: !2559)
!2561 = !DILocation(line: 83, column: 16, scope: !2559)
!2562 = !DILocation(line: 83, column: 2, scope: !2556)
!2563 = !DILocalVariable(name: "element", scope: !2564, file: !3, line: 85, type: !103)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 83, column: 37)
!2565 = !DILocation(line: 85, column: 22, scope: !2564)
!2566 = !DILocation(line: 85, column: 34, scope: !2564)
!2567 = !DILocation(line: 85, column: 43, scope: !2564)
!2568 = !DILocation(line: 85, column: 51, scope: !2564)
!2569 = !DILocation(line: 85, column: 60, scope: !2564)
!2570 = !DILocation(line: 87, column: 11, scope: !2564)
!2571 = !DILocation(line: 87, column: 20, scope: !2564)
!2572 = !DILocation(line: 87, column: 3, scope: !2564)
!2573 = !DILocation(line: 90, column: 12, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 87, column: 26)
!2575 = !DILocation(line: 90, column: 26, scope: !2574)
!2576 = !DILocation(line: 90, column: 4, scope: !2574)
!2577 = !DILocation(line: 92, column: 19, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 90, column: 30)
!2579 = !DILocation(line: 93, column: 17, scope: !2578)
!2580 = !DILocation(line: 94, column: 5, scope: !2578)
!2581 = !DILocation(line: 96, column: 19, scope: !2578)
!2582 = !DILocation(line: 99, column: 17, scope: !2578)
!2583 = !DILocation(line: 100, column: 5, scope: !2578)
!2584 = !DILocation(line: 105, column: 12, scope: !2578)
!2585 = !DILocation(line: 105, column: 15, scope: !2578)
!2586 = !DILocation(line: 105, column: 29, scope: !2578)
!2587 = !DILocation(line: 102, column: 5, scope: !2578)
!2588 = !DILocation(line: 106, column: 5, scope: !2578)
!2589 = !DILocation(line: 108, column: 4, scope: !2574)
!2590 = !DILocation(line: 112, column: 12, scope: !2574)
!2591 = !DILocation(line: 112, column: 26, scope: !2574)
!2592 = !DILocation(line: 112, column: 4, scope: !2574)
!2593 = !DILocation(line: 116, column: 10, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 112, column: 30)
!2595 = !DILocation(line: 116, column: 19, scope: !2594)
!2596 = !DILocation(line: 116, column: 26, scope: !2594)
!2597 = !DILocation(line: 116, column: 33, scope: !2594)
!2598 = !DILocation(line: 115, column: 24, scope: !2594)
!2599 = !DILocation(line: 116, column: 49, scope: !2594)
!2600 = !DILocation(line: 114, column: 19, scope: !2594)
!2601 = !DILocation(line: 118, column: 17, scope: !2594)
!2602 = !DILocation(line: 119, column: 5, scope: !2594)
!2603 = !DILocation(line: 122, column: 24, scope: !2594)
!2604 = !DILocation(line: 122, column: 33, scope: !2594)
!2605 = !DILocation(line: 122, column: 40, scope: !2594)
!2606 = !DILocation(line: 122, column: 22, scope: !2594)
!2607 = !DILocation(line: 121, column: 19, scope: !2594)
!2608 = !DILocation(line: 123, column: 17, scope: !2594)
!2609 = !DILocation(line: 124, column: 5, scope: !2594)
!2610 = !DILocation(line: 129, column: 12, scope: !2594)
!2611 = !DILocation(line: 129, column: 15, scope: !2594)
!2612 = !DILocation(line: 129, column: 29, scope: !2594)
!2613 = !DILocation(line: 126, column: 5, scope: !2594)
!2614 = !DILocation(line: 130, column: 5, scope: !2594)
!2615 = !DILocation(line: 132, column: 4, scope: !2574)
!2616 = !DILocation(line: 134, column: 12, scope: !2574)
!2617 = !DILocation(line: 134, column: 26, scope: !2574)
!2618 = !DILocation(line: 134, column: 4, scope: !2574)
!2619 = !DILocation(line: 136, column: 19, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 134, column: 30)
!2621 = !DILocation(line: 137, column: 17, scope: !2620)
!2622 = !DILocation(line: 138, column: 5, scope: !2620)
!2623 = !DILocation(line: 143, column: 12, scope: !2620)
!2624 = !DILocation(line: 143, column: 15, scope: !2620)
!2625 = !DILocation(line: 143, column: 29, scope: !2620)
!2626 = !DILocation(line: 140, column: 5, scope: !2620)
!2627 = !DILocation(line: 144, column: 5, scope: !2620)
!2628 = !DILocation(line: 146, column: 4, scope: !2574)
!2629 = !DILocation(line: 154, column: 4, scope: !2574)
!2630 = !DILocation(line: 156, column: 2, scope: !2564)
!2631 = !DILocation(line: 83, column: 33, scope: !2559)
!2632 = !DILocation(line: 83, column: 2, scope: !2559)
!2633 = distinct !{!2633, !2562, !2634}
!2634 = !DILocation(line: 156, column: 2, scope: !2556)
!2635 = !DILocation(line: 161, column: 6, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 161, column: 6)
!2637 = !DILocation(line: 161, column: 14, scope: !2636)
!2638 = !DILocation(line: 161, column: 21, scope: !2636)
!2639 = !DILocation(line: 161, column: 6, scope: !2470)
!2640 = !DILocation(line: 162, column: 21, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 161, column: 46)
!2642 = !DILocation(line: 162, column: 3, scope: !2641)
!2643 = !DILocation(line: 162, column: 11, scope: !2641)
!2644 = !DILocation(line: 162, column: 19, scope: !2641)
!2645 = !DILocation(line: 163, column: 8, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 163, column: 7)
!2647 = !DILocation(line: 163, column: 16, scope: !2646)
!2648 = !DILocation(line: 163, column: 7, scope: !2641)
!2649 = !DILocation(line: 164, column: 4, scope: !2646)
!2650 = !DILocation(line: 165, column: 20, scope: !2641)
!2651 = !DILocation(line: 165, column: 3, scope: !2641)
!2652 = !DILocation(line: 165, column: 11, scope: !2641)
!2653 = !DILocation(line: 165, column: 18, scope: !2641)
!2654 = !DILocation(line: 166, column: 2, scope: !2641)
!2655 = !DILocation(line: 167, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 167, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 166, column: 9)
!2658 = !DILocation(line: 167, column: 15, scope: !2656)
!2659 = !DILocation(line: 167, column: 24, scope: !2656)
!2660 = !DILocation(line: 167, column: 22, scope: !2656)
!2661 = !DILocation(line: 167, column: 7, scope: !2657)
!2662 = !DILocation(line: 168, column: 21, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 167, column: 39)
!2664 = !DILocation(line: 168, column: 4, scope: !2663)
!2665 = !DILocation(line: 168, column: 12, scope: !2663)
!2666 = !DILocation(line: 168, column: 19, scope: !2663)
!2667 = !DILocation(line: 169, column: 4, scope: !2663)
!2668 = !DILocation(line: 170, column: 14, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 170, column: 14)
!2670 = !DILocation(line: 170, column: 22, scope: !2669)
!2671 = !DILocation(line: 170, column: 32, scope: !2669)
!2672 = !DILocation(line: 170, column: 29, scope: !2669)
!2673 = !DILocation(line: 170, column: 46, scope: !2669)
!2674 = !DILocation(line: 171, column: 8, scope: !2669)
!2675 = !DILocation(line: 171, column: 16, scope: !2669)
!2676 = !DILocation(line: 170, column: 14, scope: !2656)
!2677 = !DILocation(line: 172, column: 4, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 171, column: 25)
!2679 = !DILocation(line: 176, column: 9, scope: !2470)
!2680 = !DILocation(line: 176, column: 17, scope: !2470)
!2681 = !DILocation(line: 176, column: 7, scope: !2470)
!2682 = !DILocation(line: 177, column: 9, scope: !2470)
!2683 = !DILocation(line: 177, column: 17, scope: !2470)
!2684 = !DILocation(line: 177, column: 27, scope: !2470)
!2685 = !DILocation(line: 177, column: 25, scope: !2470)
!2686 = !DILocation(line: 177, column: 7, scope: !2470)
!2687 = !DILocation(line: 182, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 182, column: 2)
!2689 = !DILocation(line: 182, column: 7, scope: !2688)
!2690 = !DILocation(line: 182, column: 14, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 182, column: 2)
!2692 = !DILocation(line: 182, column: 18, scope: !2691)
!2693 = !DILocation(line: 182, column: 16, scope: !2691)
!2694 = !DILocation(line: 182, column: 2, scope: !2688)
!2695 = !DILocalVariable(name: "pointer", scope: !2696, file: !3, line: 184, type: !95)
!2696 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 182, column: 37)
!2697 = !DILocation(line: 184, column: 8, scope: !2696)
!2698 = !DILocalVariable(name: "element", scope: !2696, file: !3, line: 185, type: !103)
!2699 = !DILocation(line: 185, column: 22, scope: !2696)
!2700 = !DILocation(line: 185, column: 34, scope: !2696)
!2701 = !DILocation(line: 185, column: 43, scope: !2696)
!2702 = !DILocation(line: 185, column: 51, scope: !2696)
!2703 = !DILocation(line: 185, column: 60, scope: !2696)
!2704 = !DILocation(line: 187, column: 11, scope: !2696)
!2705 = !DILocation(line: 187, column: 20, scope: !2696)
!2706 = !DILocation(line: 187, column: 3, scope: !2696)
!2707 = !DILocation(line: 190, column: 12, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 187, column: 26)
!2709 = !DILocation(line: 190, column: 26, scope: !2708)
!2710 = !DILocation(line: 190, column: 4, scope: !2708)
!2711 = !DILocation(line: 193, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 190, column: 30)
!2713 = !DILocation(line: 193, column: 18, scope: !2712)
!2714 = !DILocation(line: 193, column: 26, scope: !2712)
!2715 = !DILocation(line: 192, column: 15, scope: !2712)
!2716 = !DILocation(line: 192, column: 5, scope: !2712)
!2717 = !DILocation(line: 192, column: 21, scope: !2712)
!2718 = !DILocation(line: 194, column: 10, scope: !2712)
!2719 = !DILocation(line: 195, column: 5, scope: !2712)
!2720 = !DILocation(line: 197, column: 23, scope: !2712)
!2721 = !DILocation(line: 197, column: 15, scope: !2712)
!2722 = !DILocation(line: 197, column: 13, scope: !2712)
!2723 = !DILocation(line: 198, column: 16, scope: !2712)
!2724 = !DILocation(line: 198, column: 6, scope: !2712)
!2725 = !DILocation(line: 198, column: 14, scope: !2712)
!2726 = !DILocation(line: 200, column: 9, scope: !2712)
!2727 = !DILocation(line: 200, column: 18, scope: !2712)
!2728 = !DILocation(line: 200, column: 26, scope: !2712)
!2729 = !DILocation(line: 199, column: 15, scope: !2712)
!2730 = !DILocation(line: 199, column: 5, scope: !2712)
!2731 = !DILocation(line: 199, column: 21, scope: !2712)
!2732 = !DILocation(line: 201, column: 10, scope: !2712)
!2733 = !DILocation(line: 202, column: 10, scope: !2712)
!2734 = !DILocation(line: 204, column: 6, scope: !2712)
!2735 = !DILocation(line: 204, column: 11, scope: !2712)
!2736 = !DILocation(line: 205, column: 10, scope: !2712)
!2737 = !DILocation(line: 206, column: 5, scope: !2712)
!2738 = !DILocation(line: 209, column: 5, scope: !2712)
!2739 = !DILocation(line: 211, column: 4, scope: !2708)
!2740 = !DILocation(line: 215, column: 12, scope: !2708)
!2741 = !DILocation(line: 215, column: 26, scope: !2708)
!2742 = !DILocation(line: 215, column: 4, scope: !2708)
!2743 = !DILocation(line: 217, column: 23, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 215, column: 30)
!2745 = !DILocation(line: 217, column: 15, scope: !2744)
!2746 = !DILocation(line: 217, column: 13, scope: !2744)
!2747 = !DILocation(line: 218, column: 16, scope: !2744)
!2748 = !DILocation(line: 218, column: 6, scope: !2744)
!2749 = !DILocation(line: 218, column: 14, scope: !2744)
!2750 = !DILocation(line: 219, column: 12, scope: !2744)
!2751 = !DILocation(line: 219, column: 18, scope: !2744)
!2752 = !DILocation(line: 219, column: 27, scope: !2744)
!2753 = !DILocation(line: 219, column: 34, scope: !2744)
!2754 = !DILocation(line: 220, column: 12, scope: !2744)
!2755 = !DILocation(line: 220, column: 21, scope: !2744)
!2756 = !DILocation(line: 220, column: 28, scope: !2744)
!2757 = !DILocation(line: 219, column: 5, scope: !2744)
!2758 = !DILocation(line: 221, column: 10, scope: !2744)
!2759 = !DILocation(line: 222, column: 13, scope: !2744)
!2760 = !DILocation(line: 222, column: 22, scope: !2744)
!2761 = !DILocation(line: 222, column: 29, scope: !2744)
!2762 = !DILocation(line: 222, column: 36, scope: !2744)
!2763 = !DILocation(line: 222, column: 10, scope: !2744)
!2764 = !DILocation(line: 224, column: 6, scope: !2744)
!2765 = !DILocation(line: 224, column: 11, scope: !2744)
!2766 = !DILocation(line: 225, column: 10, scope: !2744)
!2767 = !DILocation(line: 226, column: 5, scope: !2744)
!2768 = !DILocation(line: 228, column: 23, scope: !2744)
!2769 = !DILocation(line: 228, column: 15, scope: !2744)
!2770 = !DILocation(line: 228, column: 13, scope: !2744)
!2771 = !DILocation(line: 229, column: 16, scope: !2744)
!2772 = !DILocation(line: 229, column: 6, scope: !2744)
!2773 = !DILocation(line: 229, column: 14, scope: !2744)
!2774 = !DILocation(line: 230, column: 12, scope: !2744)
!2775 = !DILocation(line: 230, column: 18, scope: !2744)
!2776 = !DILocation(line: 230, column: 27, scope: !2744)
!2777 = !DILocation(line: 230, column: 34, scope: !2744)
!2778 = !DILocation(line: 231, column: 12, scope: !2744)
!2779 = !DILocation(line: 231, column: 21, scope: !2744)
!2780 = !DILocation(line: 231, column: 28, scope: !2744)
!2781 = !DILocation(line: 230, column: 5, scope: !2744)
!2782 = !DILocation(line: 232, column: 10, scope: !2744)
!2783 = !DILocation(line: 233, column: 13, scope: !2744)
!2784 = !DILocation(line: 233, column: 22, scope: !2744)
!2785 = !DILocation(line: 233, column: 29, scope: !2744)
!2786 = !DILocation(line: 233, column: 10, scope: !2744)
!2787 = !DILocation(line: 234, column: 5, scope: !2744)
!2788 = !DILocation(line: 237, column: 5, scope: !2744)
!2789 = !DILocation(line: 239, column: 4, scope: !2708)
!2790 = !DILocation(line: 241, column: 12, scope: !2708)
!2791 = !DILocation(line: 241, column: 26, scope: !2708)
!2792 = !DILocation(line: 241, column: 4, scope: !2708)
!2793 = !DILocation(line: 244, column: 17, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 241, column: 30)
!2795 = !DILocation(line: 244, column: 26, scope: !2794)
!2796 = !DILocation(line: 244, column: 36, scope: !2794)
!2797 = !DILocation(line: 243, column: 15, scope: !2794)
!2798 = !DILocation(line: 243, column: 5, scope: !2794)
!2799 = !DILocation(line: 243, column: 20, scope: !2794)
!2800 = !DILocation(line: 245, column: 10, scope: !2794)
!2801 = !DILocation(line: 246, column: 5, scope: !2794)
!2802 = !DILocation(line: 249, column: 5, scope: !2794)
!2803 = !DILocation(line: 251, column: 4, scope: !2708)
!2804 = !DILocation(line: 256, column: 4, scope: !2708)
!2805 = !DILocation(line: 258, column: 2, scope: !2696)
!2806 = !DILocation(line: 182, column: 33, scope: !2691)
!2807 = !DILocation(line: 182, column: 2, scope: !2691)
!2808 = distinct !{!2808, !2694, !2809}
!2809 = !DILocation(line: 258, column: 2, scope: !2688)
!2810 = !DILocation(line: 260, column: 2, scope: !2470)
!2811 = !DILocation(line: 261, column: 1, scope: !2470)
!2812 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2813, file: !2813, line: 55, type: !2814, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2813 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!101, !90}
!2816 = !DILocalVariable(name: "flags", arg: 1, scope: !2817, file: !2818, line: 162, type: !319)
!2817 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2818, file: !2818, line: 162, type: !2819, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2818 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!174, !319}
!2821 = !DILocation(line: 162, column: 67, scope: !2817, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 57, column: 23, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !2813, line: 57, column: 23)
!2824 = distinct !DILexicalBlock(scope: !2812, file: !2813, line: 57, column: 23)
!2825 = !DILocalVariable(name: "size", arg: 1, scope: !2812, file: !2813, line: 55, type: !90)
!2826 = !DILocation(line: 55, column: 55, scope: !2812)
!2827 = !DILocation(line: 57, column: 17, scope: !2812)
!2828 = !DILocalVariable(name: "_flags", scope: !2824, file: !2813, line: 57, type: !319)
!2829 = !DILocation(line: 57, column: 23, scope: !2824)
!2830 = !DILocalVariable(name: "__dummy", scope: !2831, file: !2813, line: 57, type: !319)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2813, line: 57, column: 23)
!2832 = distinct !DILexicalBlock(scope: !2824, file: !2813, line: 57, column: 23)
!2833 = !DILocation(line: 57, column: 23, scope: !2831)
!2834 = !DILocalVariable(name: "__dummy2", scope: !2831, file: !2813, line: 57, type: !319)
!2835 = !DILocation(line: 57, column: 23, scope: !2832)
!2836 = !DILocalVariable(name: "__dummy", scope: !2837, file: !2813, line: 57, type: !319)
!2837 = distinct !DILexicalBlock(scope: !2823, file: !2813, line: 57, column: 23)
!2838 = !DILocation(line: 57, column: 23, scope: !2837)
!2839 = !DILocalVariable(name: "__dummy2", scope: !2837, file: !2813, line: 57, type: !319)
!2840 = !DILocation(line: 57, column: 23, scope: !2823)
!2841 = !DILocation(line: 164, column: 11, scope: !2817, inlinedAt: !2822)
!2842 = !DILocation(line: 164, column: 17, scope: !2817, inlinedAt: !2822)
!2843 = !DILocation(line: 164, column: 9, scope: !2817, inlinedAt: !2822)
!2844 = !DILocation(line: 57, column: 23, scope: !2812)
!2845 = !DILocation(line: 57, column: 9, scope: !2812)
!2846 = !DILocation(line: 57, column: 2, scope: !2812)
!2847 = distinct !DISubprogram(name: "acpi_evaluate_integer", scope: !3, file: !3, line: 266, type: !2848, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!84, !138, !2850, !2851, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !85, line: 423, baseType: !119)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !85, line: 947, size: 128, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2852, file: !85, line: 948, baseType: !86, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2852, file: !85, line: 949, baseType: !103, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2857 = !DILocalVariable(name: "handle", arg: 1, scope: !2847, file: !3, line: 266, type: !138)
!2858 = !DILocation(line: 266, column: 35, scope: !2847)
!2859 = !DILocalVariable(name: "pathname", arg: 2, scope: !2847, file: !3, line: 267, type: !2850)
!2860 = !DILocation(line: 267, column: 21, scope: !2847)
!2861 = !DILocalVariable(name: "arguments", arg: 3, scope: !2847, file: !3, line: 268, type: !2851)
!2862 = !DILocation(line: 268, column: 34, scope: !2847)
!2863 = !DILocalVariable(name: "data", arg: 4, scope: !2847, file: !3, line: 268, type: !2856)
!2864 = !DILocation(line: 268, column: 65, scope: !2847)
!2865 = !DILocalVariable(name: "status", scope: !2847, file: !3, line: 270, type: !84)
!2866 = !DILocation(line: 270, column: 14, scope: !2847)
!2867 = !DILocalVariable(name: "element", scope: !2847, file: !3, line: 271, type: !104)
!2868 = !DILocation(line: 271, column: 20, scope: !2847)
!2869 = !DILocalVariable(name: "buffer", scope: !2847, file: !3, line: 272, type: !2474)
!2870 = !DILocation(line: 272, column: 21, scope: !2847)
!2871 = !DILocation(line: 274, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 274, column: 6)
!2873 = !DILocation(line: 274, column: 6, scope: !2847)
!2874 = !DILocation(line: 275, column: 3, scope: !2872)
!2875 = !DILocation(line: 277, column: 9, scope: !2847)
!2876 = !DILocation(line: 277, column: 16, scope: !2847)
!2877 = !DILocation(line: 278, column: 19, scope: !2847)
!2878 = !DILocation(line: 278, column: 9, scope: !2847)
!2879 = !DILocation(line: 278, column: 17, scope: !2847)
!2880 = !DILocation(line: 279, column: 32, scope: !2847)
!2881 = !DILocation(line: 279, column: 40, scope: !2847)
!2882 = !DILocation(line: 279, column: 50, scope: !2847)
!2883 = !DILocation(line: 279, column: 11, scope: !2847)
!2884 = !DILocation(line: 279, column: 9, scope: !2847)
!2885 = !DILocation(line: 280, column: 6, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 280, column: 6)
!2887 = !DILocation(line: 280, column: 6, scope: !2847)
!2888 = !DILocation(line: 281, column: 24, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 280, column: 28)
!2890 = !DILocation(line: 281, column: 32, scope: !2889)
!2891 = !DILocation(line: 281, column: 42, scope: !2889)
!2892 = !DILocation(line: 281, column: 3, scope: !2889)
!2893 = !DILocation(line: 282, column: 10, scope: !2889)
!2894 = !DILocation(line: 282, column: 3, scope: !2889)
!2895 = !DILocation(line: 285, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 285, column: 6)
!2897 = !DILocation(line: 285, column: 19, scope: !2896)
!2898 = !DILocation(line: 285, column: 6, scope: !2847)
!2899 = !DILocation(line: 286, column: 24, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 285, column: 41)
!2901 = !DILocation(line: 286, column: 32, scope: !2900)
!2902 = !DILocation(line: 286, column: 3, scope: !2900)
!2903 = !DILocation(line: 287, column: 3, scope: !2900)
!2904 = !DILocation(line: 290, column: 18, scope: !2847)
!2905 = !DILocation(line: 290, column: 26, scope: !2847)
!2906 = !DILocation(line: 290, column: 3, scope: !2847)
!2907 = !DILocation(line: 290, column: 8, scope: !2847)
!2908 = !DILocation(line: 294, column: 2, scope: !2847)
!2909 = !DILocation(line: 295, column: 1, scope: !2847)
!2910 = distinct !DISubprogram(name: "acpi_util_eval_error", scope: !3, file: !3, line: 28, type: !2911, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{null, !138, !2850, !84}
!2913 = !DILocalVariable(name: "h", arg: 1, scope: !2910, file: !3, line: 28, type: !138)
!2914 = !DILocation(line: 28, column: 34, scope: !2910)
!2915 = !DILocalVariable(name: "p", arg: 2, scope: !2910, file: !3, line: 28, type: !2850)
!2916 = !DILocation(line: 28, column: 49, scope: !2910)
!2917 = !DILocalVariable(name: "s", arg: 3, scope: !2910, file: !3, line: 28, type: !84)
!2918 = !DILocation(line: 28, column: 64, scope: !2910)
!2919 = !DILocation(line: 37, column: 2, scope: !2910)
!2920 = distinct !DISubprogram(name: "acpi_evaluate_reference", scope: !3, file: !3, line: 300, type: !2921, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!84, !138, !2850, !2851, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_handle_list", file: !171, line: 17, size: 704, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2924, file: !171, line: 18, baseType: !86, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !2924, file: !171, line: 19, baseType: !2928, size: 640, offset: 64)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !2929)
!2929 = !{!2930}
!2930 = !DISubrange(count: 10)
!2931 = !DILocalVariable(name: "handle", arg: 1, scope: !2920, file: !3, line: 300, type: !138)
!2932 = !DILocation(line: 300, column: 37, scope: !2920)
!2933 = !DILocalVariable(name: "pathname", arg: 2, scope: !2920, file: !3, line: 301, type: !2850)
!2934 = !DILocation(line: 301, column: 16, scope: !2920)
!2935 = !DILocalVariable(name: "arguments", arg: 3, scope: !2920, file: !3, line: 302, type: !2851)
!2936 = !DILocation(line: 302, column: 29, scope: !2920)
!2937 = !DILocalVariable(name: "list", arg: 4, scope: !2920, file: !3, line: 303, type: !2923)
!2938 = !DILocation(line: 303, column: 29, scope: !2920)
!2939 = !DILocalVariable(name: "status", scope: !2920, file: !3, line: 305, type: !84)
!2940 = !DILocation(line: 305, column: 14, scope: !2920)
!2941 = !DILocalVariable(name: "package", scope: !2920, file: !3, line: 306, type: !103)
!2942 = !DILocation(line: 306, column: 21, scope: !2920)
!2943 = !DILocalVariable(name: "element", scope: !2920, file: !3, line: 307, type: !103)
!2944 = !DILocation(line: 307, column: 21, scope: !2920)
!2945 = !DILocalVariable(name: "buffer", scope: !2920, file: !3, line: 308, type: !2474)
!2946 = !DILocation(line: 308, column: 21, scope: !2920)
!2947 = !DILocalVariable(name: "i", scope: !2920, file: !3, line: 309, type: !86)
!2948 = !DILocation(line: 309, column: 6, scope: !2920)
!2949 = !DILocation(line: 312, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 312, column: 6)
!2951 = !DILocation(line: 312, column: 6, scope: !2920)
!2952 = !DILocation(line: 313, column: 3, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 312, column: 13)
!2954 = !DILocation(line: 318, column: 32, scope: !2920)
!2955 = !DILocation(line: 318, column: 40, scope: !2920)
!2956 = !DILocation(line: 318, column: 50, scope: !2920)
!2957 = !DILocation(line: 318, column: 11, scope: !2920)
!2958 = !DILocation(line: 318, column: 9, scope: !2920)
!2959 = !DILocation(line: 319, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 319, column: 6)
!2961 = !DILocation(line: 319, column: 6, scope: !2920)
!2962 = !DILocation(line: 320, column: 3, scope: !2960)
!2963 = !DILocation(line: 322, column: 19, scope: !2920)
!2964 = !DILocation(line: 322, column: 12, scope: !2920)
!2965 = !DILocation(line: 322, column: 10, scope: !2920)
!2966 = !DILocation(line: 324, column: 14, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 324, column: 6)
!2968 = !DILocation(line: 324, column: 21, scope: !2967)
!2969 = !DILocation(line: 324, column: 27, scope: !2967)
!2970 = !DILocation(line: 324, column: 31, scope: !2967)
!2971 = !DILocation(line: 324, column: 6, scope: !2920)
!2972 = !DILocation(line: 325, column: 10, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 324, column: 40)
!2974 = !DILocation(line: 326, column: 24, scope: !2973)
!2975 = !DILocation(line: 326, column: 32, scope: !2973)
!2976 = !DILocation(line: 326, column: 42, scope: !2973)
!2977 = !DILocation(line: 326, column: 3, scope: !2973)
!2978 = !DILocation(line: 327, column: 3, scope: !2973)
!2979 = !DILocation(line: 329, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 329, column: 6)
!2981 = !DILocation(line: 329, column: 15, scope: !2980)
!2982 = !DILocation(line: 329, column: 20, scope: !2980)
!2983 = !DILocation(line: 329, column: 6, scope: !2920)
!2984 = !DILocation(line: 330, column: 10, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 329, column: 42)
!2986 = !DILocation(line: 331, column: 24, scope: !2985)
!2987 = !DILocation(line: 331, column: 32, scope: !2985)
!2988 = !DILocation(line: 331, column: 42, scope: !2985)
!2989 = !DILocation(line: 331, column: 3, scope: !2985)
!2990 = !DILocation(line: 332, column: 3, scope: !2985)
!2991 = !DILocation(line: 334, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 334, column: 6)
!2993 = !DILocation(line: 334, column: 16, scope: !2992)
!2994 = !DILocation(line: 334, column: 24, scope: !2992)
!2995 = !DILocation(line: 334, column: 6, scope: !2920)
!2996 = !DILocation(line: 335, column: 10, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 334, column: 31)
!2998 = !DILocation(line: 336, column: 24, scope: !2997)
!2999 = !DILocation(line: 336, column: 32, scope: !2997)
!3000 = !DILocation(line: 336, column: 42, scope: !2997)
!3001 = !DILocation(line: 336, column: 3, scope: !2997)
!3002 = !DILocation(line: 337, column: 3, scope: !2997)
!3003 = !DILocation(line: 340, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 340, column: 6)
!3005 = !DILocation(line: 340, column: 15, scope: !3004)
!3006 = !DILocation(line: 340, column: 23, scope: !3004)
!3007 = !DILocation(line: 340, column: 29, scope: !3004)
!3008 = !DILocation(line: 340, column: 6, scope: !2920)
!3009 = !DILocation(line: 341, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 340, column: 49)
!3011 = !DILocation(line: 341, column: 3, scope: !3010)
!3012 = !DILocation(line: 342, column: 3, scope: !3010)
!3013 = !DILocation(line: 344, column: 16, scope: !2920)
!3014 = !DILocation(line: 344, column: 25, scope: !2920)
!3015 = !DILocation(line: 344, column: 33, scope: !2920)
!3016 = !DILocation(line: 344, column: 2, scope: !2920)
!3017 = !DILocation(line: 344, column: 8, scope: !2920)
!3018 = !DILocation(line: 344, column: 14, scope: !2920)
!3019 = !DILocation(line: 348, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 348, column: 2)
!3021 = !DILocation(line: 348, column: 7, scope: !3020)
!3022 = !DILocation(line: 348, column: 14, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 348, column: 2)
!3024 = !DILocation(line: 348, column: 18, scope: !3023)
!3025 = !DILocation(line: 348, column: 24, scope: !3023)
!3026 = !DILocation(line: 348, column: 16, scope: !3023)
!3027 = !DILocation(line: 348, column: 2, scope: !3020)
!3028 = !DILocation(line: 350, column: 15, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 348, column: 36)
!3030 = !DILocation(line: 350, column: 24, scope: !3029)
!3031 = !DILocation(line: 350, column: 32, scope: !3029)
!3032 = !DILocation(line: 350, column: 41, scope: !3029)
!3033 = !DILocation(line: 350, column: 11, scope: !3029)
!3034 = !DILocation(line: 352, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 352, column: 7)
!3036 = !DILocation(line: 352, column: 16, scope: !3035)
!3037 = !DILocation(line: 352, column: 21, scope: !3035)
!3038 = !DILocation(line: 352, column: 7, scope: !3029)
!3039 = !DILocation(line: 353, column: 11, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 352, column: 51)
!3041 = !DILocation(line: 354, column: 25, scope: !3040)
!3042 = !DILocation(line: 354, column: 33, scope: !3040)
!3043 = !DILocation(line: 354, column: 43, scope: !3040)
!3044 = !DILocation(line: 354, column: 4, scope: !3040)
!3045 = !DILocation(line: 355, column: 4, scope: !3040)
!3046 = !DILocation(line: 358, column: 8, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 358, column: 7)
!3048 = !DILocation(line: 358, column: 17, scope: !3047)
!3049 = !DILocation(line: 358, column: 27, scope: !3047)
!3050 = !DILocation(line: 358, column: 7, scope: !3029)
!3051 = !DILocation(line: 359, column: 11, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 358, column: 35)
!3053 = !DILocation(line: 360, column: 25, scope: !3052)
!3054 = !DILocation(line: 360, column: 33, scope: !3052)
!3055 = !DILocation(line: 360, column: 43, scope: !3052)
!3056 = !DILocation(line: 360, column: 4, scope: !3052)
!3057 = !DILocation(line: 361, column: 4, scope: !3052)
!3058 = !DILocation(line: 365, column: 22, scope: !3029)
!3059 = !DILocation(line: 365, column: 31, scope: !3029)
!3060 = !DILocation(line: 365, column: 41, scope: !3029)
!3061 = !DILocation(line: 365, column: 3, scope: !3029)
!3062 = !DILocation(line: 365, column: 9, scope: !3029)
!3063 = !DILocation(line: 365, column: 17, scope: !3029)
!3064 = !DILocation(line: 365, column: 20, scope: !3029)
!3065 = !DILocation(line: 368, column: 2, scope: !3029)
!3066 = !DILocation(line: 348, column: 32, scope: !3023)
!3067 = !DILocation(line: 348, column: 2, scope: !3023)
!3068 = distinct !{!3068, !3027, !3069}
!3069 = !DILocation(line: 368, column: 2, scope: !3020)
!3070 = !DILabel(scope: !2920, name: "end", file: !3, line: 370)
!3071 = !DILocation(line: 370, column: 7, scope: !2920)
!3072 = !DILocation(line: 371, column: 6, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 371, column: 6)
!3074 = !DILocation(line: 371, column: 6, scope: !2920)
!3075 = !DILocation(line: 372, column: 3, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 371, column: 28)
!3077 = !DILocation(line: 372, column: 9, scope: !3076)
!3078 = !DILocation(line: 372, column: 15, scope: !3076)
!3079 = !DILocation(line: 374, column: 2, scope: !3076)
!3080 = !DILocation(line: 376, column: 15, scope: !2920)
!3081 = !DILocation(line: 376, column: 2, scope: !2920)
!3082 = !DILocation(line: 378, column: 9, scope: !2920)
!3083 = !DILocation(line: 378, column: 2, scope: !2920)
!3084 = !DILocation(line: 379, column: 1, scope: !2920)
!3085 = distinct !DISubprogram(name: "acpi_get_physical_device_location", scope: !3, file: !3, line: 384, type: !3086, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!84, !138, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pld_info", file: !3091, line: 77, size: 272, elements: !3092)
!3091 = !DIFile(filename: "./include/acpi/acbuffer.h", directory: "/home/lizy2001/genbc/linux")
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3090, file: !3091, line: 78, baseType: !97, size: 8)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_color", scope: !3090, file: !3091, line: 79, baseType: !97, size: 8, offset: 8)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !3090, file: !3091, line: 80, baseType: !97, size: 8, offset: 16)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !3090, file: !3091, line: 81, baseType: !97, size: 8, offset: 24)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !3090, file: !3091, line: 82, baseType: !97, size: 8, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !3090, file: !3091, line: 83, baseType: !511, size: 16, offset: 48)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !3090, file: !3091, line: 84, baseType: !511, size: 16, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "user_visible", scope: !3090, file: !3091, line: 85, baseType: !97, size: 8, offset: 80)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3090, file: !3091, line: 86, baseType: !97, size: 8, offset: 88)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3090, file: !3091, line: 87, baseType: !97, size: 8, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3090, file: !3091, line: 88, baseType: !97, size: 8, offset: 104)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3090, file: !3091, line: 89, baseType: !97, size: 8, offset: 112)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3090, file: !3091, line: 90, baseType: !97, size: 8, offset: 120)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !3090, file: !3091, line: 91, baseType: !97, size: 8, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "group_orientation", scope: !3090, file: !3091, line: 92, baseType: !97, size: 8, offset: 136)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "group_token", scope: !3090, file: !3091, line: 93, baseType: !97, size: 8, offset: 144)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "group_position", scope: !3090, file: !3091, line: 94, baseType: !97, size: 8, offset: 152)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "bay", scope: !3090, file: !3091, line: 95, baseType: !97, size: 8, offset: 160)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3090, file: !3091, line: 96, baseType: !97, size: 8, offset: 168)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_eject_required", scope: !3090, file: !3091, line: 97, baseType: !97, size: 8, offset: 176)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cabinet_number", scope: !3090, file: !3091, line: 98, baseType: !97, size: 8, offset: 184)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "card_cage_number", scope: !3090, file: !3091, line: 99, baseType: !97, size: 8, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3090, file: !3091, line: 100, baseType: !97, size: 8, offset: 200)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !3090, file: !3091, line: 101, baseType: !97, size: 8, offset: 208)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !3090, file: !3091, line: 102, baseType: !97, size: 8, offset: 216)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3090, file: !3091, line: 103, baseType: !97, size: 8, offset: 224)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_offset", scope: !3090, file: !3091, line: 104, baseType: !511, size: 16, offset: 240)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_offset", scope: !3090, file: !3091, line: 105, baseType: !511, size: 16, offset: 256)
!3121 = !DILocalVariable(name: "handle", arg: 1, scope: !3085, file: !3, line: 384, type: !138)
!3122 = !DILocation(line: 384, column: 47, scope: !3085)
!3123 = !DILocalVariable(name: "pld", arg: 2, scope: !3085, file: !3, line: 384, type: !3088)
!3124 = !DILocation(line: 384, column: 78, scope: !3085)
!3125 = !DILocalVariable(name: "status", scope: !3085, file: !3, line: 386, type: !84)
!3126 = !DILocation(line: 386, column: 14, scope: !3085)
!3127 = !DILocalVariable(name: "buffer", scope: !3085, file: !3, line: 387, type: !2474)
!3128 = !DILocation(line: 387, column: 21, scope: !3085)
!3129 = !DILocalVariable(name: "output", scope: !3085, file: !3, line: 388, type: !103)
!3130 = !DILocation(line: 388, column: 21, scope: !3085)
!3131 = !DILocation(line: 390, column: 32, scope: !3085)
!3132 = !DILocation(line: 390, column: 11, scope: !3085)
!3133 = !DILocation(line: 390, column: 9, scope: !3085)
!3134 = !DILocation(line: 392, column: 6, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 392, column: 6)
!3136 = !DILocation(line: 392, column: 6, scope: !3085)
!3137 = !DILocation(line: 393, column: 10, scope: !3135)
!3138 = !DILocation(line: 393, column: 3, scope: !3135)
!3139 = !DILocation(line: 395, column: 18, scope: !3085)
!3140 = !DILocation(line: 395, column: 11, scope: !3085)
!3141 = !DILocation(line: 395, column: 9, scope: !3085)
!3142 = !DILocation(line: 397, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 397, column: 6)
!3144 = !DILocation(line: 397, column: 14, scope: !3143)
!3145 = !DILocation(line: 397, column: 17, scope: !3143)
!3146 = !DILocation(line: 397, column: 25, scope: !3143)
!3147 = !DILocation(line: 397, column: 30, scope: !3143)
!3148 = !DILocation(line: 398, column: 6, scope: !3143)
!3149 = !DILocation(line: 398, column: 10, scope: !3143)
!3150 = !DILocation(line: 398, column: 18, scope: !3143)
!3151 = !DILocation(line: 398, column: 26, scope: !3143)
!3152 = !DILocation(line: 399, column: 6, scope: !3143)
!3153 = !DILocation(line: 399, column: 9, scope: !3143)
!3154 = !DILocation(line: 399, column: 17, scope: !3143)
!3155 = !DILocation(line: 399, column: 25, scope: !3143)
!3156 = !DILocation(line: 399, column: 37, scope: !3143)
!3157 = !DILocation(line: 399, column: 42, scope: !3143)
!3158 = !DILocation(line: 400, column: 6, scope: !3143)
!3159 = !DILocation(line: 400, column: 9, scope: !3143)
!3160 = !DILocation(line: 400, column: 17, scope: !3143)
!3161 = !DILocation(line: 400, column: 25, scope: !3143)
!3162 = !DILocation(line: 400, column: 37, scope: !3143)
!3163 = !DILocation(line: 400, column: 44, scope: !3143)
!3164 = !DILocation(line: 400, column: 51, scope: !3143)
!3165 = !DILocation(line: 397, column: 6, scope: !3085)
!3166 = !DILocation(line: 401, column: 10, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 400, column: 80)
!3168 = !DILocation(line: 402, column: 3, scope: !3167)
!3169 = !DILocation(line: 406, column: 4, scope: !3085)
!3170 = !DILocation(line: 406, column: 12, scope: !3085)
!3171 = !DILocation(line: 406, column: 20, scope: !3085)
!3172 = !DILocation(line: 406, column: 32, scope: !3085)
!3173 = !DILocation(line: 406, column: 39, scope: !3085)
!3174 = !DILocation(line: 407, column: 4, scope: !3085)
!3175 = !DILocation(line: 407, column: 12, scope: !3085)
!3176 = !DILocation(line: 407, column: 20, scope: !3085)
!3177 = !DILocation(line: 407, column: 32, scope: !3085)
!3178 = !DILocation(line: 407, column: 39, scope: !3085)
!3179 = !DILocation(line: 408, column: 4, scope: !3085)
!3180 = !DILocation(line: 405, column: 11, scope: !3085)
!3181 = !DILocation(line: 405, column: 9, scope: !3085)
!3182 = !DILocation(line: 405, column: 2, scope: !3085)
!3183 = !DILabel(scope: !3085, name: "out", file: !3, line: 410)
!3184 = !DILocation(line: 410, column: 1, scope: !3085)
!3185 = !DILocation(line: 411, column: 15, scope: !3085)
!3186 = !DILocation(line: 411, column: 2, scope: !3085)
!3187 = !DILocation(line: 412, column: 9, scope: !3085)
!3188 = !DILocation(line: 412, column: 2, scope: !3085)
!3189 = !DILocation(line: 413, column: 1, scope: !3085)
!3190 = distinct !DISubprogram(name: "acpi_evaluate_ost", scope: !3, file: !3, line: 428, type: !3191, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!84, !138, !86, !86, !2473}
!3193 = !DILocalVariable(name: "handle", arg: 1, scope: !3190, file: !3, line: 428, type: !138)
!3194 = !DILocation(line: 428, column: 31, scope: !3190)
!3195 = !DILocalVariable(name: "source_event", arg: 2, scope: !3190, file: !3, line: 428, type: !86)
!3196 = !DILocation(line: 428, column: 43, scope: !3190)
!3197 = !DILocalVariable(name: "status_code", arg: 3, scope: !3190, file: !3, line: 428, type: !86)
!3198 = !DILocation(line: 428, column: 61, scope: !3190)
!3199 = !DILocalVariable(name: "status_buf", arg: 4, scope: !3190, file: !3, line: 429, type: !2473)
!3200 = !DILocation(line: 429, column: 25, scope: !3190)
!3201 = !DILocalVariable(name: "params", scope: !3190, file: !3, line: 431, type: !3202)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 576, elements: !270)
!3203 = !DILocation(line: 431, column: 20, scope: !3190)
!3204 = !DILocalVariable(name: "arg_list", scope: !3190, file: !3, line: 436, type: !2852)
!3205 = !DILocation(line: 436, column: 26, scope: !3190)
!3206 = !DILocation(line: 436, column: 37, scope: !3190)
!3207 = !DILocation(line: 436, column: 41, scope: !3190)
!3208 = !DILocation(line: 438, column: 28, scope: !3190)
!3209 = !DILocation(line: 438, column: 2, scope: !3190)
!3210 = !DILocation(line: 438, column: 12, scope: !3190)
!3211 = !DILocation(line: 438, column: 20, scope: !3190)
!3212 = !DILocation(line: 438, column: 26, scope: !3190)
!3213 = !DILocation(line: 439, column: 28, scope: !3190)
!3214 = !DILocation(line: 439, column: 2, scope: !3190)
!3215 = !DILocation(line: 439, column: 12, scope: !3190)
!3216 = !DILocation(line: 439, column: 20, scope: !3190)
!3217 = !DILocation(line: 439, column: 26, scope: !3190)
!3218 = !DILocation(line: 440, column: 6, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 440, column: 6)
!3220 = !DILocation(line: 440, column: 17, scope: !3219)
!3221 = !DILocation(line: 440, column: 6, scope: !3190)
!3222 = !DILocation(line: 441, column: 30, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 440, column: 26)
!3224 = !DILocation(line: 441, column: 42, scope: !3223)
!3225 = !DILocation(line: 441, column: 3, scope: !3223)
!3226 = !DILocation(line: 441, column: 13, scope: !3223)
!3227 = !DILocation(line: 441, column: 20, scope: !3223)
!3228 = !DILocation(line: 441, column: 28, scope: !3223)
!3229 = !DILocation(line: 442, column: 29, scope: !3223)
!3230 = !DILocation(line: 442, column: 41, scope: !3223)
!3231 = !DILocation(line: 442, column: 3, scope: !3223)
!3232 = !DILocation(line: 442, column: 13, scope: !3223)
!3233 = !DILocation(line: 442, column: 20, scope: !3223)
!3234 = !DILocation(line: 442, column: 27, scope: !3223)
!3235 = !DILocation(line: 443, column: 2, scope: !3223)
!3236 = !DILocation(line: 444, column: 3, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 443, column: 9)
!3238 = !DILocation(line: 444, column: 13, scope: !3237)
!3239 = !DILocation(line: 444, column: 20, scope: !3237)
!3240 = !DILocation(line: 444, column: 28, scope: !3237)
!3241 = !DILocation(line: 445, column: 3, scope: !3237)
!3242 = !DILocation(line: 445, column: 13, scope: !3237)
!3243 = !DILocation(line: 445, column: 20, scope: !3237)
!3244 = !DILocation(line: 445, column: 27, scope: !3237)
!3245 = !DILocation(line: 448, column: 30, scope: !3190)
!3246 = !DILocation(line: 448, column: 9, scope: !3190)
!3247 = !DILocation(line: 448, column: 2, scope: !3190)
!3248 = distinct !DISubprogram(name: "acpi_handle_printk", scope: !3, file: !3, line: 483, type: !3249, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !218, !138, !218, null}
!3251 = !DILocalVariable(name: "level", arg: 1, scope: !3248, file: !3, line: 483, type: !218)
!3252 = !DILocation(line: 483, column: 32, scope: !3248)
!3253 = !DILocalVariable(name: "handle", arg: 2, scope: !3248, file: !3, line: 483, type: !138)
!3254 = !DILocation(line: 483, column: 51, scope: !3248)
!3255 = !DILocalVariable(name: "fmt", arg: 3, scope: !3248, file: !3, line: 483, type: !218)
!3256 = !DILocation(line: 483, column: 71, scope: !3248)
!3257 = !DILocalVariable(name: "vaf", scope: !3248, file: !3, line: 485, type: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !3259, line: 90, size: 128, elements: !3260)
!3259 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3258, file: !3259, line: 91, baseType: !218, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !3258, file: !3259, line: 92, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3265, line: 99, baseType: !3266)
!3265 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3265, line: 40, baseType: !3267)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 485, baseType: !3268)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 192, elements: !689)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 485, size: 192, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3269, file: !3, line: 485, baseType: !7, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3269, file: !3, line: 485, baseType: !7, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3269, file: !3, line: 485, baseType: !101, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3269, file: !3, line: 485, baseType: !101, size: 64, offset: 128)
!3275 = !DILocation(line: 485, column: 19, scope: !3248)
!3276 = !DILocalVariable(name: "args", scope: !3248, file: !3, line: 486, type: !3264)
!3277 = !DILocation(line: 486, column: 10, scope: !3248)
!3278 = !DILocalVariable(name: "path", scope: !3248, file: !3, line: 487, type: !218)
!3279 = !DILocation(line: 487, column: 14, scope: !3248)
!3280 = !DILocation(line: 489, column: 2, scope: !3248)
!3281 = !DILocation(line: 490, column: 12, scope: !3248)
!3282 = !DILocation(line: 490, column: 6, scope: !3248)
!3283 = !DILocation(line: 490, column: 10, scope: !3248)
!3284 = !DILocation(line: 491, column: 6, scope: !3248)
!3285 = !DILocation(line: 491, column: 9, scope: !3248)
!3286 = !DILocation(line: 493, column: 26, scope: !3248)
!3287 = !DILocation(line: 493, column: 9, scope: !3248)
!3288 = !DILocation(line: 493, column: 7, scope: !3248)
!3289 = !DILocation(line: 494, column: 28, scope: !3248)
!3290 = !DILocation(line: 494, column: 35, scope: !3248)
!3291 = !DILocation(line: 494, column: 42, scope: !3248)
!3292 = !DILocation(line: 494, column: 2, scope: !3248)
!3293 = !DILocation(line: 496, column: 2, scope: !3248)
!3294 = !DILocation(line: 497, column: 8, scope: !3248)
!3295 = !DILocation(line: 497, column: 2, scope: !3248)
!3296 = !DILocation(line: 498, column: 1, scope: !3248)
!3297 = distinct !DISubprogram(name: "acpi_handle_path", scope: !3, file: !3, line: 458, type: !3298, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!119, !138}
!3300 = !DILocalVariable(name: "pfo_val__", scope: !3301, file: !3302, line: 26, type: !86)
!3301 = distinct !DILexicalBlock(scope: !3303, file: !3302, line: 26, column: 9)
!3302 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!3303 = distinct !DISubprogram(name: "preempt_count", scope: !3302, file: !3302, line: 24, type: !3304, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!174}
!3306 = !DILocation(line: 26, column: 9, scope: !3301, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 465, column: 6, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 465, column: 6)
!3309 = !DILocalVariable(name: "handle", arg: 1, scope: !3297, file: !3, line: 458, type: !138)
!3310 = !DILocation(line: 458, column: 43, scope: !3297)
!3311 = !DILocalVariable(name: "buffer", scope: !3297, file: !3, line: 460, type: !2474)
!3312 = !DILocation(line: 460, column: 21, scope: !3297)
!3313 = !{i32 -2145534220}
!3314 = !DILocation(line: 26, column: 41, scope: !3303, inlinedAt: !3307)
!3315 = !DILocation(line: 465, column: 6, scope: !3308)
!3316 = !DILocation(line: 465, column: 21, scope: !3308)
!3317 = !DILocation(line: 466, column: 20, scope: !3308)
!3318 = !DILocation(line: 466, column: 6, scope: !3308)
!3319 = !DILocation(line: 466, column: 57, scope: !3308)
!3320 = !DILocation(line: 465, column: 6, scope: !3297)
!3321 = !DILocation(line: 467, column: 3, scope: !3308)
!3322 = !DILocation(line: 468, column: 16, scope: !3297)
!3323 = !DILocation(line: 468, column: 2, scope: !3297)
!3324 = !DILocation(line: 469, column: 1, scope: !3297)
!3325 = distinct !DISubprogram(name: "acpi_has_method", scope: !3, file: !3, line: 541, type: !3326, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!199, !138, !119}
!3328 = !DILocalVariable(name: "handle", arg: 1, scope: !3325, file: !3, line: 541, type: !138)
!3329 = !DILocation(line: 541, column: 34, scope: !3325)
!3330 = !DILocalVariable(name: "name", arg: 2, scope: !3325, file: !3, line: 541, type: !119)
!3331 = !DILocation(line: 541, column: 48, scope: !3325)
!3332 = !DILocalVariable(name: "tmp", scope: !3325, file: !3, line: 543, type: !138)
!3333 = !DILocation(line: 543, column: 14, scope: !3325)
!3334 = !DILocation(line: 545, column: 9, scope: !3325)
!3335 = !DILocation(line: 545, column: 2, scope: !3325)
!3336 = distinct !DISubprogram(name: "acpi_execute_simple_method", scope: !3, file: !3, line: 549, type: !3337, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!84, !138, !119, !91}
!3339 = !DILocalVariable(name: "handle", arg: 1, scope: !3336, file: !3, line: 549, type: !138)
!3340 = !DILocation(line: 549, column: 52, scope: !3336)
!3341 = !DILocalVariable(name: "method", arg: 2, scope: !3336, file: !3, line: 549, type: !119)
!3342 = !DILocation(line: 549, column: 66, scope: !3336)
!3343 = !DILocalVariable(name: "arg", arg: 3, scope: !3336, file: !3, line: 550, type: !91)
!3344 = !DILocation(line: 550, column: 16, scope: !3336)
!3345 = !DILocalVariable(name: "obj", scope: !3336, file: !3, line: 552, type: !104)
!3346 = !DILocation(line: 552, column: 20, scope: !3336)
!3347 = !DILocalVariable(name: "arg_list", scope: !3336, file: !3, line: 553, type: !2852)
!3348 = !DILocation(line: 553, column: 26, scope: !3336)
!3349 = !DILocation(line: 553, column: 37, scope: !3336)
!3350 = !DILocation(line: 555, column: 22, scope: !3336)
!3351 = !DILocation(line: 555, column: 6, scope: !3336)
!3352 = !DILocation(line: 555, column: 14, scope: !3336)
!3353 = !DILocation(line: 555, column: 20, scope: !3336)
!3354 = !DILocation(line: 557, column: 30, scope: !3336)
!3355 = !DILocation(line: 557, column: 38, scope: !3336)
!3356 = !DILocation(line: 557, column: 9, scope: !3336)
!3357 = !DILocation(line: 557, column: 2, scope: !3336)
!3358 = distinct !DISubprogram(name: "acpi_evaluate_ej0", scope: !3, file: !3, line: 567, type: !3359, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!84, !138}
!3361 = !DILocalVariable(name: "handle", arg: 1, scope: !3358, file: !3, line: 567, type: !138)
!3362 = !DILocation(line: 567, column: 43, scope: !3358)
!3363 = !DILocalVariable(name: "status", scope: !3358, file: !3, line: 569, type: !84)
!3364 = !DILocation(line: 569, column: 14, scope: !3358)
!3365 = !DILocation(line: 571, column: 38, scope: !3358)
!3366 = !DILocation(line: 571, column: 11, scope: !3358)
!3367 = !DILocation(line: 571, column: 9, scope: !3358)
!3368 = !DILocation(line: 572, column: 6, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 572, column: 6)
!3370 = !DILocation(line: 572, column: 13, scope: !3369)
!3371 = !DILocation(line: 572, column: 6, scope: !3358)
!3372 = !DILocation(line: 573, column: 3, scope: !3369)
!3373 = !DILocation(line: 574, column: 11, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 574, column: 11)
!3375 = !DILocation(line: 574, column: 11, scope: !3369)
!3376 = !DILocation(line: 575, column: 3, scope: !3374)
!3377 = !DILocation(line: 577, column: 9, scope: !3358)
!3378 = !DILocation(line: 577, column: 2, scope: !3358)
!3379 = distinct !DISubprogram(name: "acpi_evaluate_lck", scope: !3, file: !3, line: 587, type: !3380, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!84, !138, !174}
!3382 = !DILocalVariable(name: "handle", arg: 1, scope: !3379, file: !3, line: 587, type: !138)
!3383 = !DILocation(line: 587, column: 43, scope: !3379)
!3384 = !DILocalVariable(name: "lock", arg: 2, scope: !3379, file: !3, line: 587, type: !174)
!3385 = !DILocation(line: 587, column: 55, scope: !3379)
!3386 = !DILocalVariable(name: "status", scope: !3379, file: !3, line: 589, type: !84)
!3387 = !DILocation(line: 589, column: 14, scope: !3379)
!3388 = !DILocation(line: 591, column: 38, scope: !3379)
!3389 = !DILocation(line: 591, column: 56, scope: !3379)
!3390 = !DILocation(line: 591, column: 55, scope: !3379)
!3391 = !DILocation(line: 591, column: 54, scope: !3379)
!3392 = !DILocation(line: 591, column: 11, scope: !3379)
!3393 = !DILocation(line: 591, column: 9, scope: !3379)
!3394 = !DILocation(line: 592, column: 6, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 592, column: 6)
!3396 = !DILocation(line: 592, column: 27, scope: !3395)
!3397 = !DILocation(line: 592, column: 30, scope: !3395)
!3398 = !DILocation(line: 592, column: 37, scope: !3395)
!3399 = !DILocation(line: 592, column: 6, scope: !3379)
!3400 = !DILocation(line: 593, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 593, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 592, column: 54)
!3403 = !DILocation(line: 593, column: 7, scope: !3402)
!3404 = !DILocation(line: 594, column: 4, scope: !3401)
!3405 = !DILocation(line: 597, column: 4, scope: !3401)
!3406 = !DILocation(line: 599, column: 2, scope: !3402)
!3407 = !DILocation(line: 601, column: 9, scope: !3379)
!3408 = !DILocation(line: 601, column: 2, scope: !3379)
!3409 = distinct !DISubprogram(name: "acpi_evaluate_reg", scope: !3, file: !3, line: 613, type: !3410, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!84, !138, !97, !86}
!3412 = !DILocalVariable(name: "handle", arg: 1, scope: !3409, file: !3, line: 613, type: !138)
!3413 = !DILocation(line: 613, column: 43, scope: !3409)
!3414 = !DILocalVariable(name: "space_id", arg: 2, scope: !3409, file: !3, line: 613, type: !97)
!3415 = !DILocation(line: 613, column: 54, scope: !3409)
!3416 = !DILocalVariable(name: "function", arg: 3, scope: !3409, file: !3, line: 613, type: !86)
!3417 = !DILocation(line: 613, column: 68, scope: !3409)
!3418 = !DILocalVariable(name: "arg_list", scope: !3409, file: !3, line: 615, type: !2852)
!3419 = !DILocation(line: 615, column: 26, scope: !3409)
!3420 = !DILocalVariable(name: "params", scope: !3409, file: !3, line: 616, type: !3421)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 384, elements: !1076)
!3422 = !DILocation(line: 616, column: 20, scope: !3409)
!3423 = !DILocation(line: 618, column: 2, scope: !3409)
!3424 = !DILocation(line: 618, column: 12, scope: !3409)
!3425 = !DILocation(line: 618, column: 17, scope: !3409)
!3426 = !DILocation(line: 619, column: 28, scope: !3409)
!3427 = !DILocation(line: 619, column: 2, scope: !3409)
!3428 = !DILocation(line: 619, column: 12, scope: !3409)
!3429 = !DILocation(line: 619, column: 20, scope: !3409)
!3430 = !DILocation(line: 619, column: 26, scope: !3409)
!3431 = !DILocation(line: 620, column: 2, scope: !3409)
!3432 = !DILocation(line: 620, column: 12, scope: !3409)
!3433 = !DILocation(line: 620, column: 17, scope: !3409)
!3434 = !DILocation(line: 621, column: 28, scope: !3409)
!3435 = !DILocation(line: 621, column: 2, scope: !3409)
!3436 = !DILocation(line: 621, column: 12, scope: !3409)
!3437 = !DILocation(line: 621, column: 20, scope: !3409)
!3438 = !DILocation(line: 621, column: 26, scope: !3409)
!3439 = !DILocation(line: 622, column: 11, scope: !3409)
!3440 = !DILocation(line: 622, column: 17, scope: !3409)
!3441 = !DILocation(line: 623, column: 21, scope: !3409)
!3442 = !DILocation(line: 623, column: 11, scope: !3409)
!3443 = !DILocation(line: 623, column: 19, scope: !3409)
!3444 = !DILocation(line: 625, column: 30, scope: !3409)
!3445 = !DILocation(line: 625, column: 9, scope: !3409)
!3446 = !DILocation(line: 625, column: 2, scope: !3409)
!3447 = distinct !DISubprogram(name: "acpi_evaluate_dsm", scope: !3, file: !3, line: 644, type: !3448, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!103, !138, !3450, !91, !91, !103}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !3453, line: 25, baseType: !3454)
!3453 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3453, line: 23, size: 128, elements: !3455)
!3455 = !{!3456}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3454, file: !3453, line: 24, baseType: !3457, size: 128)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !895)
!3458 = !DILocalVariable(name: "handle", arg: 1, scope: !3447, file: !3, line: 644, type: !138)
!3459 = !DILocation(line: 644, column: 31, scope: !3447)
!3460 = !DILocalVariable(name: "guid", arg: 2, scope: !3447, file: !3, line: 644, type: !3450)
!3461 = !DILocation(line: 644, column: 53, scope: !3447)
!3462 = !DILocalVariable(name: "rev", arg: 3, scope: !3447, file: !3, line: 644, type: !91)
!3463 = !DILocation(line: 644, column: 63, scope: !3447)
!3464 = !DILocalVariable(name: "func", arg: 4, scope: !3447, file: !3, line: 644, type: !91)
!3465 = !DILocation(line: 644, column: 72, scope: !3447)
!3466 = !DILocalVariable(name: "argv4", arg: 5, scope: !3447, file: !3, line: 645, type: !103)
!3467 = !DILocation(line: 645, column: 24, scope: !3447)
!3468 = !DILocalVariable(name: "ret", scope: !3447, file: !3, line: 647, type: !84)
!3469 = !DILocation(line: 647, column: 14, scope: !3447)
!3470 = !DILocalVariable(name: "buf", scope: !3447, file: !3, line: 648, type: !2474)
!3471 = !DILocation(line: 648, column: 21, scope: !3447)
!3472 = !DILocalVariable(name: "params", scope: !3447, file: !3, line: 649, type: !3473)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 768, elements: !464)
!3474 = !DILocation(line: 649, column: 20, scope: !3447)
!3475 = !DILocalVariable(name: "input", scope: !3447, file: !3, line: 650, type: !2852)
!3476 = !DILocation(line: 650, column: 26, scope: !3447)
!3477 = !DILocation(line: 650, column: 34, scope: !3447)
!3478 = !DILocation(line: 652, column: 14, scope: !3447)
!3479 = !DILocation(line: 655, column: 2, scope: !3447)
!3480 = !DILocation(line: 655, column: 12, scope: !3447)
!3481 = !DILocation(line: 655, column: 17, scope: !3447)
!3482 = !DILocation(line: 656, column: 2, scope: !3447)
!3483 = !DILocation(line: 656, column: 12, scope: !3447)
!3484 = !DILocation(line: 656, column: 19, scope: !3447)
!3485 = !DILocation(line: 656, column: 26, scope: !3447)
!3486 = !DILocation(line: 657, column: 35, scope: !3447)
!3487 = !DILocation(line: 657, column: 29, scope: !3447)
!3488 = !DILocation(line: 657, column: 2, scope: !3447)
!3489 = !DILocation(line: 657, column: 12, scope: !3447)
!3490 = !DILocation(line: 657, column: 19, scope: !3447)
!3491 = !DILocation(line: 657, column: 27, scope: !3447)
!3492 = !DILocation(line: 658, column: 2, scope: !3447)
!3493 = !DILocation(line: 658, column: 12, scope: !3447)
!3494 = !DILocation(line: 658, column: 17, scope: !3447)
!3495 = !DILocation(line: 659, column: 28, scope: !3447)
!3496 = !DILocation(line: 659, column: 2, scope: !3447)
!3497 = !DILocation(line: 659, column: 12, scope: !3447)
!3498 = !DILocation(line: 659, column: 20, scope: !3447)
!3499 = !DILocation(line: 659, column: 26, scope: !3447)
!3500 = !DILocation(line: 660, column: 2, scope: !3447)
!3501 = !DILocation(line: 660, column: 12, scope: !3447)
!3502 = !DILocation(line: 660, column: 17, scope: !3447)
!3503 = !DILocation(line: 661, column: 28, scope: !3447)
!3504 = !DILocation(line: 661, column: 2, scope: !3447)
!3505 = !DILocation(line: 661, column: 12, scope: !3447)
!3506 = !DILocation(line: 661, column: 20, scope: !3447)
!3507 = !DILocation(line: 661, column: 26, scope: !3447)
!3508 = !DILocation(line: 662, column: 6, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 662, column: 6)
!3510 = !DILocation(line: 662, column: 6, scope: !3447)
!3511 = !DILocation(line: 663, column: 3, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 662, column: 13)
!3513 = !DILocation(line: 663, column: 16, scope: !3512)
!3514 = !DILocation(line: 663, column: 15, scope: !3512)
!3515 = !DILocation(line: 664, column: 2, scope: !3512)
!3516 = !DILocation(line: 665, column: 3, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 664, column: 9)
!3518 = !DILocation(line: 665, column: 13, scope: !3517)
!3519 = !DILocation(line: 665, column: 18, scope: !3517)
!3520 = !DILocation(line: 666, column: 3, scope: !3517)
!3521 = !DILocation(line: 666, column: 13, scope: !3517)
!3522 = !DILocation(line: 666, column: 21, scope: !3517)
!3523 = !DILocation(line: 666, column: 27, scope: !3517)
!3524 = !DILocation(line: 667, column: 3, scope: !3517)
!3525 = !DILocation(line: 667, column: 13, scope: !3517)
!3526 = !DILocation(line: 667, column: 21, scope: !3517)
!3527 = !DILocation(line: 667, column: 30, scope: !3517)
!3528 = !DILocation(line: 670, column: 29, scope: !3447)
!3529 = !DILocation(line: 670, column: 8, scope: !3447)
!3530 = !DILocation(line: 670, column: 6, scope: !3447)
!3531 = !DILocation(line: 671, column: 6, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 671, column: 6)
!3533 = !DILocation(line: 671, column: 6, scope: !3447)
!3534 = !DILocation(line: 672, column: 35, scope: !3532)
!3535 = !DILocation(line: 672, column: 10, scope: !3532)
!3536 = !DILocation(line: 672, column: 3, scope: !3532)
!3537 = !DILocation(line: 674, column: 6, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 674, column: 6)
!3539 = !DILocation(line: 674, column: 10, scope: !3538)
!3540 = !DILocation(line: 674, column: 6, scope: !3447)
!3541 = !DILocation(line: 675, column: 3, scope: !3538)
!3542 = !DILocation(line: 678, column: 2, scope: !3447)
!3543 = !DILocation(line: 679, column: 1, scope: !3447)
!3544 = distinct !DISubprogram(name: "acpi_check_dsm", scope: !3, file: !3, line: 693, type: !3545, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!199, !138, !3450, !91, !91}
!3547 = !DILocalVariable(name: "handle", arg: 1, scope: !3544, file: !3, line: 693, type: !138)
!3548 = !DILocation(line: 693, column: 33, scope: !3544)
!3549 = !DILocalVariable(name: "guid", arg: 2, scope: !3544, file: !3, line: 693, type: !3450)
!3550 = !DILocation(line: 693, column: 55, scope: !3544)
!3551 = !DILocalVariable(name: "rev", arg: 3, scope: !3544, file: !3, line: 693, type: !91)
!3552 = !DILocation(line: 693, column: 65, scope: !3544)
!3553 = !DILocalVariable(name: "funcs", arg: 4, scope: !3544, file: !3, line: 693, type: !91)
!3554 = !DILocation(line: 693, column: 74, scope: !3544)
!3555 = !DILocalVariable(name: "i", scope: !3544, file: !3, line: 695, type: !174)
!3556 = !DILocation(line: 695, column: 6, scope: !3544)
!3557 = !DILocalVariable(name: "mask", scope: !3544, file: !3, line: 696, type: !91)
!3558 = !DILocation(line: 696, column: 6, scope: !3544)
!3559 = !DILocalVariable(name: "obj", scope: !3544, file: !3, line: 697, type: !103)
!3560 = !DILocation(line: 697, column: 21, scope: !3544)
!3561 = !DILocation(line: 699, column: 6, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 699, column: 6)
!3563 = !DILocation(line: 699, column: 12, scope: !3562)
!3564 = !DILocation(line: 699, column: 6, scope: !3544)
!3565 = !DILocation(line: 700, column: 3, scope: !3562)
!3566 = !DILocation(line: 702, column: 26, scope: !3544)
!3567 = !DILocation(line: 702, column: 34, scope: !3544)
!3568 = !DILocation(line: 702, column: 40, scope: !3544)
!3569 = !DILocation(line: 702, column: 8, scope: !3544)
!3570 = !DILocation(line: 702, column: 6, scope: !3544)
!3571 = !DILocation(line: 703, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 703, column: 6)
!3573 = !DILocation(line: 703, column: 6, scope: !3544)
!3574 = !DILocation(line: 704, column: 3, scope: !3572)
!3575 = !DILocation(line: 707, column: 6, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 707, column: 6)
!3577 = !DILocation(line: 707, column: 11, scope: !3576)
!3578 = !DILocation(line: 707, column: 16, scope: !3576)
!3579 = !DILocation(line: 707, column: 6, scope: !3544)
!3580 = !DILocation(line: 708, column: 10, scope: !3576)
!3581 = !DILocation(line: 708, column: 15, scope: !3576)
!3582 = !DILocation(line: 708, column: 23, scope: !3576)
!3583 = !DILocation(line: 708, column: 8, scope: !3576)
!3584 = !DILocation(line: 708, column: 3, scope: !3576)
!3585 = !DILocation(line: 709, column: 11, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 709, column: 11)
!3587 = !DILocation(line: 709, column: 16, scope: !3586)
!3588 = !DILocation(line: 709, column: 21, scope: !3586)
!3589 = !DILocation(line: 709, column: 11, scope: !3576)
!3590 = !DILocation(line: 710, column: 10, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 710, column: 3)
!3592 = !DILocation(line: 710, column: 8, scope: !3591)
!3593 = !DILocation(line: 710, column: 15, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 710, column: 3)
!3595 = !DILocation(line: 710, column: 19, scope: !3594)
!3596 = !DILocation(line: 710, column: 24, scope: !3594)
!3597 = !DILocation(line: 710, column: 31, scope: !3594)
!3598 = !DILocation(line: 710, column: 17, scope: !3594)
!3599 = !DILocation(line: 710, column: 38, scope: !3594)
!3600 = !DILocation(line: 710, column: 41, scope: !3594)
!3601 = !DILocation(line: 710, column: 43, scope: !3594)
!3602 = !DILocation(line: 0, scope: !3594)
!3603 = !DILocation(line: 710, column: 3, scope: !3591)
!3604 = !DILocation(line: 711, column: 19, scope: !3594)
!3605 = !DILocation(line: 711, column: 24, scope: !3594)
!3606 = !DILocation(line: 711, column: 31, scope: !3594)
!3607 = !DILocation(line: 711, column: 39, scope: !3594)
!3608 = !DILocation(line: 711, column: 14, scope: !3594)
!3609 = !DILocation(line: 711, column: 47, scope: !3594)
!3610 = !DILocation(line: 711, column: 49, scope: !3594)
!3611 = !DILocation(line: 711, column: 43, scope: !3594)
!3612 = !DILocation(line: 711, column: 9, scope: !3594)
!3613 = !DILocation(line: 711, column: 4, scope: !3594)
!3614 = !DILocation(line: 710, column: 49, scope: !3594)
!3615 = !DILocation(line: 710, column: 3, scope: !3594)
!3616 = distinct !{!3616, !3603, !3617}
!3617 = !DILocation(line: 711, column: 53, scope: !3591)
!3618 = !DILocation(line: 712, column: 2, scope: !3544)
!3619 = !DILocation(line: 718, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 718, column: 6)
!3621 = !DILocation(line: 718, column: 12, scope: !3620)
!3622 = !DILocation(line: 718, column: 19, scope: !3620)
!3623 = !DILocation(line: 718, column: 23, scope: !3620)
!3624 = !DILocation(line: 718, column: 30, scope: !3620)
!3625 = !DILocation(line: 718, column: 28, scope: !3620)
!3626 = !DILocation(line: 718, column: 40, scope: !3620)
!3627 = !DILocation(line: 718, column: 37, scope: !3620)
!3628 = !DILocation(line: 718, column: 6, scope: !3544)
!3629 = !DILocation(line: 719, column: 3, scope: !3620)
!3630 = !DILocation(line: 721, column: 2, scope: !3544)
!3631 = !DILocation(line: 722, column: 1, scope: !3544)
!3632 = distinct !DISubprogram(name: "acpi_os_free", scope: !2813, file: !2813, line: 60, type: !1513, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3633 = !DILocalVariable(name: "memory", arg: 1, scope: !3632, file: !2813, line: 60, type: !101)
!3634 = !DILocation(line: 60, column: 39, scope: !3632)
!3635 = !DILocation(line: 62, column: 8, scope: !3632)
!3636 = !DILocation(line: 62, column: 2, scope: !3632)
!3637 = !DILocation(line: 63, column: 1, scope: !3632)
!3638 = distinct !DISubprogram(name: "acpi_dev_hid_uid_match", scope: !3, file: !3, line: 734, type: !3639, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!199, !169, !218, !218}
!3641 = !DILocalVariable(name: "adev", arg: 1, scope: !3638, file: !3, line: 734, type: !169)
!3642 = !DILocation(line: 734, column: 49, scope: !3638)
!3643 = !DILocalVariable(name: "hid2", arg: 2, scope: !3638, file: !3, line: 735, type: !218)
!3644 = !DILocation(line: 735, column: 20, scope: !3638)
!3645 = !DILocalVariable(name: "uid2", arg: 3, scope: !3638, file: !3, line: 735, type: !218)
!3646 = !DILocation(line: 735, column: 38, scope: !3638)
!3647 = !DILocalVariable(name: "hid1", scope: !3638, file: !3, line: 737, type: !218)
!3648 = !DILocation(line: 737, column: 14, scope: !3638)
!3649 = !DILocation(line: 737, column: 37, scope: !3638)
!3650 = !DILocation(line: 737, column: 21, scope: !3638)
!3651 = !DILocalVariable(name: "uid1", scope: !3638, file: !3, line: 738, type: !218)
!3652 = !DILocation(line: 738, column: 14, scope: !3638)
!3653 = !DILocation(line: 738, column: 21, scope: !3638)
!3654 = !DILocation(line: 740, column: 13, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 740, column: 6)
!3656 = !DILocation(line: 740, column: 19, scope: !3655)
!3657 = !DILocation(line: 740, column: 6, scope: !3655)
!3658 = !DILocation(line: 740, column: 6, scope: !3638)
!3659 = !DILocation(line: 741, column: 3, scope: !3655)
!3660 = !DILocation(line: 743, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 743, column: 6)
!3662 = !DILocation(line: 743, column: 6, scope: !3638)
!3663 = !DILocation(line: 744, column: 3, scope: !3661)
!3664 = !DILocation(line: 746, column: 9, scope: !3638)
!3665 = !DILocation(line: 746, column: 14, scope: !3638)
!3666 = !DILocation(line: 746, column: 25, scope: !3638)
!3667 = !DILocation(line: 746, column: 31, scope: !3638)
!3668 = !DILocation(line: 746, column: 18, scope: !3638)
!3669 = !DILocation(line: 746, column: 17, scope: !3638)
!3670 = !DILocation(line: 0, scope: !3638)
!3671 = !DILocation(line: 746, column: 2, scope: !3638)
!3672 = !DILocation(line: 747, column: 1, scope: !3638)
!3673 = distinct !DISubprogram(name: "acpi_dev_found", scope: !3, file: !3, line: 763, type: !3674, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!199, !218}
!3676 = !DILocalVariable(name: "hid", arg: 1, scope: !3673, file: !3, line: 763, type: !218)
!3677 = !DILocation(line: 763, column: 33, scope: !3673)
!3678 = !DILocalVariable(name: "acpi_device_bus_id", scope: !3673, file: !3, line: 765, type: !153)
!3679 = !DILocation(line: 765, column: 29, scope: !3673)
!3680 = !DILocalVariable(name: "found", scope: !3673, file: !3, line: 766, type: !199)
!3681 = !DILocation(line: 766, column: 7, scope: !3673)
!3682 = !DILocation(line: 768, column: 2, scope: !3673)
!3683 = !DILocalVariable(name: "__mptr", scope: !3684, file: !3, line: 769, type: !101)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 769, column: 2)
!3685 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 769, column: 2)
!3686 = !DILocation(line: 769, column: 2, scope: !3684)
!3687 = !DILocation(line: 769, column: 2, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 769, column: 2)
!3689 = !DILocation(line: 769, column: 2, scope: !3685)
!3690 = !DILocation(line: 769, column: 2, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 769, column: 2)
!3692 = !DILocation(line: 770, column: 15, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 770, column: 7)
!3694 = !DILocation(line: 770, column: 35, scope: !3693)
!3695 = !DILocation(line: 770, column: 43, scope: !3693)
!3696 = !DILocation(line: 770, column: 8, scope: !3693)
!3697 = !DILocation(line: 770, column: 7, scope: !3691)
!3698 = !DILocation(line: 771, column: 10, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 770, column: 49)
!3700 = !DILocation(line: 772, column: 4, scope: !3699)
!3701 = !DILocation(line: 770, column: 46, scope: !3693)
!3702 = !DILocalVariable(name: "__mptr", scope: !3703, file: !3, line: 769, type: !101)
!3703 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 769, column: 2)
!3704 = !DILocation(line: 769, column: 2, scope: !3703)
!3705 = !DILocation(line: 769, column: 2, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 769, column: 2)
!3707 = distinct !{!3707, !3689, !3708}
!3708 = !DILocation(line: 773, column: 3, scope: !3685)
!3709 = !DILocation(line: 774, column: 2, scope: !3673)
!3710 = !DILocation(line: 776, column: 9, scope: !3673)
!3711 = !DILocation(line: 776, column: 2, scope: !3673)
!3712 = distinct !DISubprogram(name: "acpi_dev_present", scope: !3, file: !3, line: 830, type: !3713, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!199, !218, !218, !419}
!3715 = !DILocalVariable(name: "hid", arg: 1, scope: !3712, file: !3, line: 830, type: !218)
!3716 = !DILocation(line: 830, column: 35, scope: !3712)
!3717 = !DILocalVariable(name: "uid", arg: 2, scope: !3712, file: !3, line: 830, type: !218)
!3718 = !DILocation(line: 830, column: 52, scope: !3712)
!3719 = !DILocalVariable(name: "hrv", arg: 3, scope: !3712, file: !3, line: 830, type: !419)
!3720 = !DILocation(line: 830, column: 61, scope: !3712)
!3721 = !DILocalVariable(name: "match", scope: !3712, file: !3, line: 832, type: !3722)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dev_match_info", file: !3, line: 780, size: 640, elements: !3723)
!3723 = !{!3724, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !3722, file: !3, line: 781, baseType: !3725, size: 512)
!3725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 512, elements: !1076)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3722, file: !3, line: 782, baseType: !218, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "hrv", scope: !3722, file: !3, line: 783, baseType: !419, size: 64, offset: 576)
!3728 = !DILocation(line: 832, column: 29, scope: !3712)
!3729 = !DILocalVariable(name: "dev", scope: !3712, file: !3, line: 833, type: !1701)
!3730 = !DILocation(line: 833, column: 17, scope: !3712)
!3731 = !DILocation(line: 835, column: 16, scope: !3712)
!3732 = !DILocation(line: 835, column: 10, scope: !3712)
!3733 = !DILocation(line: 835, column: 23, scope: !3712)
!3734 = !DILocation(line: 835, column: 27, scope: !3712)
!3735 = !DILocation(line: 835, column: 2, scope: !3712)
!3736 = !DILocation(line: 836, column: 14, scope: !3712)
!3737 = !DILocation(line: 836, column: 8, scope: !3712)
!3738 = !DILocation(line: 836, column: 12, scope: !3712)
!3739 = !DILocation(line: 837, column: 14, scope: !3712)
!3740 = !DILocation(line: 837, column: 8, scope: !3712)
!3741 = !DILocation(line: 837, column: 12, scope: !3712)
!3742 = !DILocation(line: 839, column: 46, scope: !3712)
!3743 = !DILocation(line: 839, column: 8, scope: !3712)
!3744 = !DILocation(line: 839, column: 6, scope: !3712)
!3745 = !DILocation(line: 840, column: 13, scope: !3712)
!3746 = !DILocation(line: 840, column: 2, scope: !3712)
!3747 = !DILocation(line: 841, column: 11, scope: !3712)
!3748 = !DILocation(line: 841, column: 10, scope: !3712)
!3749 = !DILocation(line: 841, column: 9, scope: !3712)
!3750 = !DILocation(line: 841, column: 2, scope: !3712)
!3751 = distinct !DISubprogram(name: "acpi_dev_match_cb", scope: !3, file: !3, line: 786, type: !3752, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!174, !1701, !207}
!3754 = !DILocalVariable(name: "dev", arg: 1, scope: !3751, file: !3, line: 786, type: !1701)
!3755 = !DILocation(line: 786, column: 45, scope: !3751)
!3756 = !DILocalVariable(name: "data", arg: 2, scope: !3751, file: !3, line: 786, type: !207)
!3757 = !DILocation(line: 786, column: 62, scope: !3751)
!3758 = !DILocalVariable(name: "adev", scope: !3751, file: !3, line: 788, type: !169)
!3759 = !DILocation(line: 788, column: 22, scope: !3751)
!3760 = !DILocalVariable(name: "__mptr", scope: !3761, file: !3, line: 788, type: !101)
!3761 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 788, column: 29)
!3762 = !DILocation(line: 788, column: 29, scope: !3761)
!3763 = !DILocation(line: 788, column: 29, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 788, column: 29)
!3765 = !DILocalVariable(name: "match", scope: !3751, file: !3, line: 789, type: !3766)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3722)
!3768 = !DILocation(line: 789, column: 36, scope: !3751)
!3769 = !DILocation(line: 789, column: 44, scope: !3751)
!3770 = !DILocalVariable(name: "hrv", scope: !3751, file: !3, line: 790, type: !93)
!3771 = !DILocation(line: 790, column: 21, scope: !3751)
!3772 = !DILocalVariable(name: "status", scope: !3751, file: !3, line: 791, type: !84)
!3773 = !DILocation(line: 791, column: 14, scope: !3751)
!3774 = !DILocation(line: 793, column: 28, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 793, column: 6)
!3776 = !DILocation(line: 793, column: 34, scope: !3775)
!3777 = !DILocation(line: 793, column: 41, scope: !3775)
!3778 = !DILocation(line: 793, column: 6, scope: !3775)
!3779 = !DILocation(line: 793, column: 6, scope: !3751)
!3780 = !DILocation(line: 794, column: 3, scope: !3775)
!3781 = !DILocation(line: 796, column: 6, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 796, column: 6)
!3783 = !DILocation(line: 796, column: 13, scope: !3782)
!3784 = !DILocation(line: 796, column: 17, scope: !3782)
!3785 = !DILocation(line: 796, column: 22, scope: !3782)
!3786 = !DILocation(line: 796, column: 28, scope: !3782)
!3787 = !DILocation(line: 796, column: 32, scope: !3782)
!3788 = !DILocation(line: 796, column: 42, scope: !3782)
!3789 = !DILocation(line: 797, column: 13, scope: !3782)
!3790 = !DILocation(line: 797, column: 19, scope: !3782)
!3791 = !DILocation(line: 797, column: 23, scope: !3782)
!3792 = !DILocation(line: 797, column: 34, scope: !3782)
!3793 = !DILocation(line: 797, column: 41, scope: !3782)
!3794 = !DILocation(line: 797, column: 6, scope: !3782)
!3795 = !DILocation(line: 796, column: 6, scope: !3751)
!3796 = !DILocation(line: 798, column: 3, scope: !3782)
!3797 = !DILocation(line: 800, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 800, column: 6)
!3799 = !DILocation(line: 800, column: 13, scope: !3798)
!3800 = !DILocation(line: 800, column: 17, scope: !3798)
!3801 = !DILocation(line: 800, column: 6, scope: !3751)
!3802 = !DILocation(line: 801, column: 3, scope: !3798)
!3803 = !DILocation(line: 803, column: 33, scope: !3751)
!3804 = !DILocation(line: 803, column: 39, scope: !3751)
!3805 = !DILocation(line: 803, column: 11, scope: !3751)
!3806 = !DILocation(line: 803, column: 9, scope: !3751)
!3807 = !DILocation(line: 804, column: 6, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 804, column: 6)
!3809 = !DILocation(line: 804, column: 6, scope: !3751)
!3810 = !DILocation(line: 805, column: 3, scope: !3808)
!3811 = !DILocation(line: 807, column: 9, scope: !3751)
!3812 = !DILocation(line: 807, column: 16, scope: !3751)
!3813 = !DILocation(line: 807, column: 23, scope: !3751)
!3814 = !DILocation(line: 807, column: 13, scope: !3751)
!3815 = !DILocation(line: 807, column: 2, scope: !3751)
!3816 = !DILocation(line: 808, column: 1, scope: !3751)
!3817 = distinct !DISubprogram(name: "acpi_dev_get_first_match_dev", scope: !3, file: !3, line: 859, type: !3818, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!169, !218, !218, !419}
!3820 = !DILocalVariable(name: "hid", arg: 1, scope: !3817, file: !3, line: 859, type: !218)
!3821 = !DILocation(line: 859, column: 42, scope: !3817)
!3822 = !DILocalVariable(name: "uid", arg: 2, scope: !3817, file: !3, line: 859, type: !218)
!3823 = !DILocation(line: 859, column: 59, scope: !3817)
!3824 = !DILocalVariable(name: "hrv", arg: 3, scope: !3817, file: !3, line: 859, type: !419)
!3825 = !DILocation(line: 859, column: 68, scope: !3817)
!3826 = !DILocalVariable(name: "match", scope: !3817, file: !3, line: 861, type: !3722)
!3827 = !DILocation(line: 861, column: 29, scope: !3817)
!3828 = !DILocalVariable(name: "dev", scope: !3817, file: !3, line: 862, type: !1701)
!3829 = !DILocation(line: 862, column: 17, scope: !3817)
!3830 = !DILocation(line: 864, column: 16, scope: !3817)
!3831 = !DILocation(line: 864, column: 10, scope: !3817)
!3832 = !DILocation(line: 864, column: 23, scope: !3817)
!3833 = !DILocation(line: 864, column: 27, scope: !3817)
!3834 = !DILocation(line: 864, column: 2, scope: !3817)
!3835 = !DILocation(line: 865, column: 14, scope: !3817)
!3836 = !DILocation(line: 865, column: 8, scope: !3817)
!3837 = !DILocation(line: 865, column: 12, scope: !3817)
!3838 = !DILocation(line: 866, column: 14, scope: !3817)
!3839 = !DILocation(line: 866, column: 8, scope: !3817)
!3840 = !DILocation(line: 866, column: 12, scope: !3817)
!3841 = !DILocation(line: 868, column: 46, scope: !3817)
!3842 = !DILocation(line: 868, column: 8, scope: !3817)
!3843 = !DILocation(line: 868, column: 6, scope: !3817)
!3844 = !DILocation(line: 869, column: 9, scope: !3817)
!3845 = !DILocalVariable(name: "__mptr", scope: !3846, file: !3, line: 869, type: !101)
!3846 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 869, column: 15)
!3847 = !DILocation(line: 869, column: 15, scope: !3846)
!3848 = !DILocation(line: 869, column: 15, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 869, column: 15)
!3850 = !DILocation(line: 869, column: 2, scope: !3817)
!3851 = distinct !DISubprogram(name: "acpi_backlight", scope: !3, file: !3, line: 880, type: !2458, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3852 = !DILocalVariable(name: "str", arg: 1, scope: !3851, file: !3, line: 880, type: !119)
!3853 = !DILocation(line: 880, column: 40, scope: !3851)
!3854 = !DILocation(line: 882, column: 39, scope: !3851)
!3855 = !DILocation(line: 882, column: 2, scope: !3851)
!3856 = !DILocation(line: 884, column: 2, scope: !3851)
!3857 = distinct !DISubprogram(name: "acpi_match_platform_list", scope: !3, file: !3, line: 895, type: !3858, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!174, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3862)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_platform_list", file: !70, line: 630, size: 448, elements: !3863)
!3863 = !{!3864, !3868, !3870, !3871, !3872, !3873, !3874}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3862, file: !70, line: 631, baseType: !3865, size: 56)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 56, elements: !3866)
!3866 = !{!3867}
!3867 = !DISubrange(count: 7)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3862, file: !70, line: 632, baseType: !3869, size: 72, offset: 56)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 72, elements: !1805)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !3862, file: !70, line: 633, baseType: !86, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !3862, file: !70, line: 634, baseType: !119, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !3862, file: !70, line: 635, baseType: !69, size: 32, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !3862, file: !70, line: 636, baseType: !119, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3862, file: !70, line: 637, baseType: !86, size: 32, offset: 384)
!3875 = !DILocalVariable(name: "plat", arg: 1, scope: !3857, file: !3, line: 895, type: !3860)
!3876 = !DILocation(line: 895, column: 63, scope: !3857)
!3877 = !DILocalVariable(name: "hdr", scope: !3857, file: !3, line: 897, type: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !3879, line: 68, size: 288, elements: !3880)
!3879 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!3880 = !{!3881, !3883, !3884, !3885, !3886, !3888, !3889, !3890, !3891}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !3878, file: !3879, line: 69, baseType: !3882, size: 32)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !464)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3878, file: !3879, line: 70, baseType: !86, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3878, file: !3879, line: 71, baseType: !97, size: 8, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3878, file: !3879, line: 72, baseType: !97, size: 8, offset: 72)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3878, file: !3879, line: 73, baseType: !3887, size: 48, offset: 80)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 48, elements: !1408)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3878, file: !3879, line: 74, baseType: !1041, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !3878, file: !3879, line: 75, baseType: !86, size: 32, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !3878, file: !3879, line: 76, baseType: !3882, size: 32, offset: 224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !3878, file: !3879, line: 77, baseType: !86, size: 32, offset: 256)
!3892 = !DILocation(line: 897, column: 27, scope: !3857)
!3893 = !DILocalVariable(name: "idx", scope: !3857, file: !3, line: 898, type: !174)
!3894 = !DILocation(line: 898, column: 6, scope: !3857)
!3895 = !DILocation(line: 900, column: 6, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 900, column: 6)
!3897 = !DILocation(line: 900, column: 6, scope: !3857)
!3898 = !DILocation(line: 901, column: 3, scope: !3896)
!3899 = !DILocation(line: 903, column: 2, scope: !3857)
!3900 = !DILocation(line: 903, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 903, column: 2)
!3902 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 903, column: 2)
!3903 = !DILocation(line: 903, column: 15, scope: !3901)
!3904 = !DILocation(line: 903, column: 2, scope: !3902)
!3905 = !DILocation(line: 904, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 904, column: 7)
!3907 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 903, column: 41)
!3908 = !DILocation(line: 904, column: 7, scope: !3907)
!3909 = !DILocation(line: 905, column: 4, scope: !3906)
!3910 = !DILocation(line: 907, column: 15, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 907, column: 7)
!3912 = !DILocation(line: 907, column: 21, scope: !3911)
!3913 = !DILocation(line: 907, column: 33, scope: !3911)
!3914 = !DILocation(line: 907, column: 29, scope: !3911)
!3915 = !DILocation(line: 907, column: 7, scope: !3911)
!3916 = !DILocation(line: 907, column: 7, scope: !3907)
!3917 = !DILocation(line: 908, column: 4, scope: !3911)
!3918 = !DILocation(line: 910, column: 15, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 910, column: 7)
!3920 = !DILocation(line: 910, column: 21, scope: !3919)
!3921 = !DILocation(line: 910, column: 39, scope: !3919)
!3922 = !DILocation(line: 910, column: 35, scope: !3919)
!3923 = !DILocation(line: 910, column: 7, scope: !3919)
!3924 = !DILocation(line: 910, column: 7, scope: !3907)
!3925 = !DILocation(line: 911, column: 4, scope: !3919)
!3926 = !DILocation(line: 913, column: 8, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 913, column: 7)
!3928 = !DILocation(line: 913, column: 14, scope: !3927)
!3929 = !DILocation(line: 913, column: 19, scope: !3927)
!3930 = !DILocation(line: 913, column: 36, scope: !3927)
!3931 = !DILocation(line: 914, column: 8, scope: !3927)
!3932 = !DILocation(line: 914, column: 14, scope: !3927)
!3933 = !DILocation(line: 914, column: 19, scope: !3927)
!3934 = !DILocation(line: 914, column: 41, scope: !3927)
!3935 = !DILocation(line: 914, column: 48, scope: !3927)
!3936 = !DILocation(line: 914, column: 64, scope: !3927)
!3937 = !DILocation(line: 914, column: 70, scope: !3927)
!3938 = !DILocation(line: 914, column: 61, scope: !3927)
!3939 = !DILocation(line: 914, column: 84, scope: !3927)
!3940 = !DILocation(line: 915, column: 8, scope: !3927)
!3941 = !DILocation(line: 915, column: 14, scope: !3927)
!3942 = !DILocation(line: 915, column: 19, scope: !3927)
!3943 = !DILocation(line: 915, column: 44, scope: !3927)
!3944 = !DILocation(line: 915, column: 51, scope: !3927)
!3945 = !DILocation(line: 915, column: 67, scope: !3927)
!3946 = !DILocation(line: 915, column: 73, scope: !3927)
!3947 = !DILocation(line: 915, column: 64, scope: !3927)
!3948 = !DILocation(line: 915, column: 87, scope: !3927)
!3949 = !DILocation(line: 916, column: 8, scope: !3927)
!3950 = !DILocation(line: 916, column: 14, scope: !3927)
!3951 = !DILocation(line: 916, column: 19, scope: !3927)
!3952 = !DILocation(line: 916, column: 28, scope: !3927)
!3953 = !DILocation(line: 916, column: 35, scope: !3927)
!3954 = !DILocation(line: 916, column: 51, scope: !3927)
!3955 = !DILocation(line: 916, column: 57, scope: !3927)
!3956 = !DILocation(line: 916, column: 48, scope: !3927)
!3957 = !DILocation(line: 913, column: 7, scope: !3907)
!3958 = !DILocation(line: 917, column: 11, scope: !3927)
!3959 = !DILocation(line: 917, column: 4, scope: !3927)
!3960 = !DILocation(line: 918, column: 2, scope: !3907)
!3961 = !DILocation(line: 903, column: 30, scope: !3901)
!3962 = !DILocation(line: 903, column: 37, scope: !3901)
!3963 = !DILocation(line: 903, column: 2, scope: !3901)
!3964 = distinct !{!3964, !3904, !3965}
!3965 = !DILocation(line: 918, column: 2, scope: !3902)
!3966 = !DILocation(line: 920, column: 2, scope: !3857)
!3967 = !DILocation(line: 921, column: 1, scope: !3857)
!3968 = distinct !DISubprogram(name: "kzalloc", scope: !77, file: !77, line: 662, type: !3969, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!101, !316, !1572}
!3971 = !DILocalVariable(name: "s", arg: 1, scope: !3972, file: !77, line: 445, type: !1152)
!3972 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !77, file: !77, line: 445, type: !3973, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!101, !1152, !1572, !316}
!3975 = !DILocation(line: 445, column: 72, scope: !3972, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 552, column: 10, scope: !3977, inlinedAt: !3980)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !77, line: 540, column: 34)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !77, line: 540, column: 6)
!3979 = distinct !DISubprogram(name: "kmalloc", scope: !77, file: !77, line: 538, type: !3969, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3980 = distinct !DILocation(line: 664, column: 9, scope: !3968)
!3981 = !DILocalVariable(name: "flags", arg: 2, scope: !3972, file: !77, line: 446, type: !1572)
!3982 = !DILocation(line: 446, column: 9, scope: !3972, inlinedAt: !3976)
!3983 = !DILocalVariable(name: "size", arg: 3, scope: !3972, file: !77, line: 446, type: !316)
!3984 = !DILocation(line: 446, column: 23, scope: !3972, inlinedAt: !3976)
!3985 = !DILocalVariable(name: "ret", scope: !3972, file: !77, line: 448, type: !101)
!3986 = !DILocation(line: 448, column: 8, scope: !3972, inlinedAt: !3976)
!3987 = !DILocalVariable(name: "flags", arg: 1, scope: !3988, file: !77, line: 318, type: !1572)
!3988 = distinct !DISubprogram(name: "kmalloc_type", scope: !77, file: !77, line: 318, type: !3989, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!76, !1572}
!3991 = !DILocation(line: 318, column: 67, scope: !3988, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 553, column: 20, scope: !3977, inlinedAt: !3980)
!3993 = !DILocalVariable(name: "size", arg: 1, scope: !3994, file: !77, line: 346, type: !316)
!3994 = distinct !DISubprogram(name: "kmalloc_index", scope: !77, file: !77, line: 346, type: !3995, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!7, !316}
!3997 = !DILocation(line: 346, column: 58, scope: !3994, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 547, column: 11, scope: !3977, inlinedAt: !3980)
!3999 = !DILocalVariable(name: "size", arg: 1, scope: !4000, file: !77, line: 472, type: !316)
!4000 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !77, file: !77, line: 472, type: !4001, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!101, !316, !1572, !7}
!4003 = !DILocation(line: 472, column: 28, scope: !4000, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 481, column: 9, scope: !4005, inlinedAt: !4006)
!4005 = distinct !DISubprogram(name: "kmalloc_large", scope: !77, file: !77, line: 478, type: !3969, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4006 = distinct !DILocation(line: 545, column: 11, scope: !4007, inlinedAt: !3980)
!4007 = distinct !DILexicalBlock(scope: !3977, file: !77, line: 544, column: 7)
!4008 = !DILocalVariable(name: "flags", arg: 2, scope: !4000, file: !77, line: 472, type: !1572)
!4009 = !DILocation(line: 472, column: 40, scope: !4000, inlinedAt: !4004)
!4010 = !DILocalVariable(name: "order", arg: 3, scope: !4000, file: !77, line: 472, type: !7)
!4011 = !DILocation(line: 472, column: 60, scope: !4000, inlinedAt: !4004)
!4012 = !DILocalVariable(name: "size", arg: 1, scope: !4005, file: !77, line: 478, type: !316)
!4013 = !DILocation(line: 478, column: 51, scope: !4005, inlinedAt: !4006)
!4014 = !DILocalVariable(name: "flags", arg: 2, scope: !4005, file: !77, line: 478, type: !1572)
!4015 = !DILocation(line: 478, column: 63, scope: !4005, inlinedAt: !4006)
!4016 = !DILocalVariable(name: "order", scope: !4005, file: !77, line: 480, type: !7)
!4017 = !DILocation(line: 480, column: 15, scope: !4005, inlinedAt: !4006)
!4018 = !DILocalVariable(name: "size", arg: 1, scope: !3979, file: !77, line: 538, type: !316)
!4019 = !DILocation(line: 538, column: 45, scope: !3979, inlinedAt: !3980)
!4020 = !DILocalVariable(name: "flags", arg: 2, scope: !3979, file: !77, line: 538, type: !1572)
!4021 = !DILocation(line: 538, column: 57, scope: !3979, inlinedAt: !3980)
!4022 = !DILocalVariable(name: "index", scope: !3977, file: !77, line: 542, type: !7)
!4023 = !DILocation(line: 542, column: 16, scope: !3977, inlinedAt: !3980)
!4024 = !DILocalVariable(name: "size", arg: 1, scope: !3968, file: !77, line: 662, type: !316)
!4025 = !DILocation(line: 662, column: 36, scope: !3968)
!4026 = !DILocalVariable(name: "flags", arg: 2, scope: !3968, file: !77, line: 662, type: !1572)
!4027 = !DILocation(line: 662, column: 48, scope: !3968)
!4028 = !DILocation(line: 664, column: 17, scope: !3968)
!4029 = !DILocation(line: 664, column: 23, scope: !3968)
!4030 = !DILocation(line: 664, column: 29, scope: !3968)
!4031 = !DILocation(line: 540, column: 27, scope: !3978, inlinedAt: !3980)
!4032 = !DILocation(line: 540, column: 6, scope: !3978, inlinedAt: !3980)
!4033 = !DILocation(line: 540, column: 6, scope: !3979, inlinedAt: !3980)
!4034 = !DILocation(line: 544, column: 7, scope: !4007, inlinedAt: !3980)
!4035 = !DILocation(line: 544, column: 12, scope: !4007, inlinedAt: !3980)
!4036 = !DILocation(line: 544, column: 7, scope: !3977, inlinedAt: !3980)
!4037 = !DILocation(line: 545, column: 25, scope: !4007, inlinedAt: !3980)
!4038 = !DILocation(line: 545, column: 31, scope: !4007, inlinedAt: !3980)
!4039 = !DILocation(line: 480, column: 33, scope: !4005, inlinedAt: !4006)
!4040 = !DILocation(line: 480, column: 23, scope: !4005, inlinedAt: !4006)
!4041 = !DILocation(line: 481, column: 29, scope: !4005, inlinedAt: !4006)
!4042 = !DILocation(line: 481, column: 35, scope: !4005, inlinedAt: !4006)
!4043 = !DILocation(line: 481, column: 42, scope: !4005, inlinedAt: !4006)
!4044 = !DILocation(line: 474, column: 23, scope: !4000, inlinedAt: !4004)
!4045 = !DILocation(line: 474, column: 29, scope: !4000, inlinedAt: !4004)
!4046 = !DILocation(line: 474, column: 36, scope: !4000, inlinedAt: !4004)
!4047 = !DILocation(line: 474, column: 9, scope: !4000, inlinedAt: !4004)
!4048 = !DILocation(line: 545, column: 4, scope: !4007, inlinedAt: !3980)
!4049 = !DILocation(line: 547, column: 25, scope: !3977, inlinedAt: !3980)
!4050 = !DILocation(line: 348, column: 7, scope: !4051, inlinedAt: !3998)
!4051 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 348, column: 6)
!4052 = !DILocation(line: 348, column: 6, scope: !3994, inlinedAt: !3998)
!4053 = !DILocation(line: 349, column: 3, scope: !4051, inlinedAt: !3998)
!4054 = !DILocation(line: 351, column: 6, scope: !4055, inlinedAt: !3998)
!4055 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 351, column: 6)
!4056 = !DILocation(line: 351, column: 11, scope: !4055, inlinedAt: !3998)
!4057 = !DILocation(line: 351, column: 6, scope: !3994, inlinedAt: !3998)
!4058 = !DILocation(line: 352, column: 3, scope: !4055, inlinedAt: !3998)
!4059 = !DILocation(line: 354, column: 32, scope: !4060, inlinedAt: !3998)
!4060 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 354, column: 6)
!4061 = !DILocation(line: 354, column: 37, scope: !4060, inlinedAt: !3998)
!4062 = !DILocation(line: 354, column: 42, scope: !4060, inlinedAt: !3998)
!4063 = !DILocation(line: 354, column: 45, scope: !4060, inlinedAt: !3998)
!4064 = !DILocation(line: 354, column: 50, scope: !4060, inlinedAt: !3998)
!4065 = !DILocation(line: 354, column: 6, scope: !3994, inlinedAt: !3998)
!4066 = !DILocation(line: 355, column: 3, scope: !4060, inlinedAt: !3998)
!4067 = !DILocation(line: 356, column: 32, scope: !4068, inlinedAt: !3998)
!4068 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 356, column: 6)
!4069 = !DILocation(line: 356, column: 37, scope: !4068, inlinedAt: !3998)
!4070 = !DILocation(line: 356, column: 43, scope: !4068, inlinedAt: !3998)
!4071 = !DILocation(line: 356, column: 46, scope: !4068, inlinedAt: !3998)
!4072 = !DILocation(line: 356, column: 51, scope: !4068, inlinedAt: !3998)
!4073 = !DILocation(line: 356, column: 6, scope: !3994, inlinedAt: !3998)
!4074 = !DILocation(line: 357, column: 3, scope: !4068, inlinedAt: !3998)
!4075 = !DILocation(line: 358, column: 6, scope: !4076, inlinedAt: !3998)
!4076 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 358, column: 6)
!4077 = !DILocation(line: 358, column: 11, scope: !4076, inlinedAt: !3998)
!4078 = !DILocation(line: 358, column: 6, scope: !3994, inlinedAt: !3998)
!4079 = !DILocation(line: 358, column: 26, scope: !4076, inlinedAt: !3998)
!4080 = !DILocation(line: 359, column: 6, scope: !4081, inlinedAt: !3998)
!4081 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 359, column: 6)
!4082 = !DILocation(line: 359, column: 11, scope: !4081, inlinedAt: !3998)
!4083 = !DILocation(line: 359, column: 6, scope: !3994, inlinedAt: !3998)
!4084 = !DILocation(line: 359, column: 26, scope: !4081, inlinedAt: !3998)
!4085 = !DILocation(line: 360, column: 6, scope: !4086, inlinedAt: !3998)
!4086 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 360, column: 6)
!4087 = !DILocation(line: 360, column: 11, scope: !4086, inlinedAt: !3998)
!4088 = !DILocation(line: 360, column: 6, scope: !3994, inlinedAt: !3998)
!4089 = !DILocation(line: 360, column: 26, scope: !4086, inlinedAt: !3998)
!4090 = !DILocation(line: 361, column: 6, scope: !4091, inlinedAt: !3998)
!4091 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 361, column: 6)
!4092 = !DILocation(line: 361, column: 11, scope: !4091, inlinedAt: !3998)
!4093 = !DILocation(line: 361, column: 6, scope: !3994, inlinedAt: !3998)
!4094 = !DILocation(line: 361, column: 26, scope: !4091, inlinedAt: !3998)
!4095 = !DILocation(line: 362, column: 6, scope: !4096, inlinedAt: !3998)
!4096 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 362, column: 6)
!4097 = !DILocation(line: 362, column: 11, scope: !4096, inlinedAt: !3998)
!4098 = !DILocation(line: 362, column: 6, scope: !3994, inlinedAt: !3998)
!4099 = !DILocation(line: 362, column: 26, scope: !4096, inlinedAt: !3998)
!4100 = !DILocation(line: 363, column: 6, scope: !4101, inlinedAt: !3998)
!4101 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 363, column: 6)
!4102 = !DILocation(line: 363, column: 11, scope: !4101, inlinedAt: !3998)
!4103 = !DILocation(line: 363, column: 6, scope: !3994, inlinedAt: !3998)
!4104 = !DILocation(line: 363, column: 26, scope: !4101, inlinedAt: !3998)
!4105 = !DILocation(line: 364, column: 6, scope: !4106, inlinedAt: !3998)
!4106 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 364, column: 6)
!4107 = !DILocation(line: 364, column: 11, scope: !4106, inlinedAt: !3998)
!4108 = !DILocation(line: 364, column: 6, scope: !3994, inlinedAt: !3998)
!4109 = !DILocation(line: 364, column: 26, scope: !4106, inlinedAt: !3998)
!4110 = !DILocation(line: 365, column: 6, scope: !4111, inlinedAt: !3998)
!4111 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 365, column: 6)
!4112 = !DILocation(line: 365, column: 11, scope: !4111, inlinedAt: !3998)
!4113 = !DILocation(line: 365, column: 6, scope: !3994, inlinedAt: !3998)
!4114 = !DILocation(line: 365, column: 26, scope: !4111, inlinedAt: !3998)
!4115 = !DILocation(line: 366, column: 6, scope: !4116, inlinedAt: !3998)
!4116 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 366, column: 6)
!4117 = !DILocation(line: 366, column: 11, scope: !4116, inlinedAt: !3998)
!4118 = !DILocation(line: 366, column: 6, scope: !3994, inlinedAt: !3998)
!4119 = !DILocation(line: 366, column: 26, scope: !4116, inlinedAt: !3998)
!4120 = !DILocation(line: 367, column: 6, scope: !4121, inlinedAt: !3998)
!4121 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 367, column: 6)
!4122 = !DILocation(line: 367, column: 11, scope: !4121, inlinedAt: !3998)
!4123 = !DILocation(line: 367, column: 6, scope: !3994, inlinedAt: !3998)
!4124 = !DILocation(line: 367, column: 26, scope: !4121, inlinedAt: !3998)
!4125 = !DILocation(line: 368, column: 6, scope: !4126, inlinedAt: !3998)
!4126 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 368, column: 6)
!4127 = !DILocation(line: 368, column: 11, scope: !4126, inlinedAt: !3998)
!4128 = !DILocation(line: 368, column: 6, scope: !3994, inlinedAt: !3998)
!4129 = !DILocation(line: 368, column: 26, scope: !4126, inlinedAt: !3998)
!4130 = !DILocation(line: 369, column: 6, scope: !4131, inlinedAt: !3998)
!4131 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 369, column: 6)
!4132 = !DILocation(line: 369, column: 11, scope: !4131, inlinedAt: !3998)
!4133 = !DILocation(line: 369, column: 6, scope: !3994, inlinedAt: !3998)
!4134 = !DILocation(line: 369, column: 26, scope: !4131, inlinedAt: !3998)
!4135 = !DILocation(line: 370, column: 6, scope: !4136, inlinedAt: !3998)
!4136 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 370, column: 6)
!4137 = !DILocation(line: 370, column: 11, scope: !4136, inlinedAt: !3998)
!4138 = !DILocation(line: 370, column: 6, scope: !3994, inlinedAt: !3998)
!4139 = !DILocation(line: 370, column: 26, scope: !4136, inlinedAt: !3998)
!4140 = !DILocation(line: 371, column: 6, scope: !4141, inlinedAt: !3998)
!4141 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 371, column: 6)
!4142 = !DILocation(line: 371, column: 11, scope: !4141, inlinedAt: !3998)
!4143 = !DILocation(line: 371, column: 6, scope: !3994, inlinedAt: !3998)
!4144 = !DILocation(line: 371, column: 26, scope: !4141, inlinedAt: !3998)
!4145 = !DILocation(line: 372, column: 6, scope: !4146, inlinedAt: !3998)
!4146 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 372, column: 6)
!4147 = !DILocation(line: 372, column: 11, scope: !4146, inlinedAt: !3998)
!4148 = !DILocation(line: 372, column: 6, scope: !3994, inlinedAt: !3998)
!4149 = !DILocation(line: 372, column: 26, scope: !4146, inlinedAt: !3998)
!4150 = !DILocation(line: 373, column: 6, scope: !4151, inlinedAt: !3998)
!4151 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 373, column: 6)
!4152 = !DILocation(line: 373, column: 11, scope: !4151, inlinedAt: !3998)
!4153 = !DILocation(line: 373, column: 6, scope: !3994, inlinedAt: !3998)
!4154 = !DILocation(line: 373, column: 26, scope: !4151, inlinedAt: !3998)
!4155 = !DILocation(line: 374, column: 6, scope: !4156, inlinedAt: !3998)
!4156 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 374, column: 6)
!4157 = !DILocation(line: 374, column: 11, scope: !4156, inlinedAt: !3998)
!4158 = !DILocation(line: 374, column: 6, scope: !3994, inlinedAt: !3998)
!4159 = !DILocation(line: 374, column: 26, scope: !4156, inlinedAt: !3998)
!4160 = !DILocation(line: 375, column: 6, scope: !4161, inlinedAt: !3998)
!4161 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 375, column: 6)
!4162 = !DILocation(line: 375, column: 11, scope: !4161, inlinedAt: !3998)
!4163 = !DILocation(line: 375, column: 6, scope: !3994, inlinedAt: !3998)
!4164 = !DILocation(line: 375, column: 27, scope: !4161, inlinedAt: !3998)
!4165 = !DILocation(line: 376, column: 6, scope: !4166, inlinedAt: !3998)
!4166 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 376, column: 6)
!4167 = !DILocation(line: 376, column: 11, scope: !4166, inlinedAt: !3998)
!4168 = !DILocation(line: 376, column: 6, scope: !3994, inlinedAt: !3998)
!4169 = !DILocation(line: 376, column: 32, scope: !4166, inlinedAt: !3998)
!4170 = !DILocation(line: 377, column: 6, scope: !4171, inlinedAt: !3998)
!4171 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 377, column: 6)
!4172 = !DILocation(line: 377, column: 11, scope: !4171, inlinedAt: !3998)
!4173 = !DILocation(line: 377, column: 6, scope: !3994, inlinedAt: !3998)
!4174 = !DILocation(line: 377, column: 32, scope: !4171, inlinedAt: !3998)
!4175 = !DILocation(line: 378, column: 6, scope: !4176, inlinedAt: !3998)
!4176 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 378, column: 6)
!4177 = !DILocation(line: 378, column: 11, scope: !4176, inlinedAt: !3998)
!4178 = !DILocation(line: 378, column: 6, scope: !3994, inlinedAt: !3998)
!4179 = !DILocation(line: 378, column: 32, scope: !4176, inlinedAt: !3998)
!4180 = !DILocation(line: 379, column: 6, scope: !4181, inlinedAt: !3998)
!4181 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 379, column: 6)
!4182 = !DILocation(line: 379, column: 11, scope: !4181, inlinedAt: !3998)
!4183 = !DILocation(line: 379, column: 6, scope: !3994, inlinedAt: !3998)
!4184 = !DILocation(line: 379, column: 33, scope: !4181, inlinedAt: !3998)
!4185 = !DILocation(line: 380, column: 6, scope: !4186, inlinedAt: !3998)
!4186 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 380, column: 6)
!4187 = !DILocation(line: 380, column: 11, scope: !4186, inlinedAt: !3998)
!4188 = !DILocation(line: 380, column: 6, scope: !3994, inlinedAt: !3998)
!4189 = !DILocation(line: 380, column: 33, scope: !4186, inlinedAt: !3998)
!4190 = !DILocation(line: 381, column: 6, scope: !4191, inlinedAt: !3998)
!4191 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 381, column: 6)
!4192 = !DILocation(line: 381, column: 11, scope: !4191, inlinedAt: !3998)
!4193 = !DILocation(line: 381, column: 6, scope: !3994, inlinedAt: !3998)
!4194 = !DILocation(line: 381, column: 33, scope: !4191, inlinedAt: !3998)
!4195 = !DILocation(line: 382, column: 2, scope: !4196, inlinedAt: !3998)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !77, line: 382, column: 2)
!4197 = distinct !DILexicalBlock(scope: !3994, file: !77, line: 382, column: 2)
!4198 = !{i32 -2144223498, i32 -2144223469, i32 -2144223423, i32 -2144223365, i32 -2144223311, i32 -2144223257, i32 -2144223202, i32 -2144223171}
!4199 = !DILocation(line: 382, column: 2, scope: !4200, inlinedAt: !3998)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !77, line: 382, column: 2)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !77, line: 382, column: 2)
!4202 = !{i32 -2144222728, i32 -2144222721, i32 -2144222667, i32 -2144222636, i32 -2144222606}
!4203 = !DILocation(line: 382, column: 2, scope: !4201, inlinedAt: !3998)
!4204 = !DILocation(line: 386, column: 1, scope: !3994, inlinedAt: !3998)
!4205 = !DILocation(line: 547, column: 9, scope: !3977, inlinedAt: !3980)
!4206 = !DILocation(line: 549, column: 8, scope: !4207, inlinedAt: !3980)
!4207 = distinct !DILexicalBlock(scope: !3977, file: !77, line: 549, column: 7)
!4208 = !DILocation(line: 549, column: 7, scope: !3977, inlinedAt: !3980)
!4209 = !DILocation(line: 550, column: 4, scope: !4207, inlinedAt: !3980)
!4210 = !DILocation(line: 553, column: 33, scope: !3977, inlinedAt: !3980)
!4211 = !DILocation(line: 325, column: 6, scope: !4212, inlinedAt: !3992)
!4212 = distinct !DILexicalBlock(scope: !3988, file: !77, line: 325, column: 6)
!4213 = !DILocation(line: 325, column: 6, scope: !3988, inlinedAt: !3992)
!4214 = !DILocation(line: 326, column: 3, scope: !4212, inlinedAt: !3992)
!4215 = !DILocation(line: 332, column: 9, scope: !3988, inlinedAt: !3992)
!4216 = !DILocation(line: 332, column: 15, scope: !3988, inlinedAt: !3992)
!4217 = !DILocation(line: 332, column: 2, scope: !3988, inlinedAt: !3992)
!4218 = !DILocation(line: 336, column: 1, scope: !3988, inlinedAt: !3992)
!4219 = !DILocation(line: 553, column: 5, scope: !3977, inlinedAt: !3980)
!4220 = !DILocation(line: 553, column: 41, scope: !3977, inlinedAt: !3980)
!4221 = !DILocation(line: 554, column: 5, scope: !3977, inlinedAt: !3980)
!4222 = !DILocation(line: 554, column: 12, scope: !3977, inlinedAt: !3980)
!4223 = !DILocation(line: 448, column: 31, scope: !3972, inlinedAt: !3976)
!4224 = !DILocation(line: 448, column: 34, scope: !3972, inlinedAt: !3976)
!4225 = !DILocation(line: 448, column: 14, scope: !3972, inlinedAt: !3976)
!4226 = !DILocation(line: 450, column: 22, scope: !3972, inlinedAt: !3976)
!4227 = !DILocation(line: 450, column: 25, scope: !3972, inlinedAt: !3976)
!4228 = !DILocation(line: 450, column: 30, scope: !3972, inlinedAt: !3976)
!4229 = !DILocation(line: 450, column: 36, scope: !3972, inlinedAt: !3976)
!4230 = !DILocation(line: 450, column: 8, scope: !3972, inlinedAt: !3976)
!4231 = !DILocation(line: 450, column: 6, scope: !3972, inlinedAt: !3976)
!4232 = !DILocation(line: 451, column: 9, scope: !3972, inlinedAt: !3976)
!4233 = !DILocation(line: 552, column: 3, scope: !3977, inlinedAt: !3980)
!4234 = !DILocation(line: 557, column: 19, scope: !3979, inlinedAt: !3980)
!4235 = !DILocation(line: 557, column: 25, scope: !3979, inlinedAt: !3980)
!4236 = !DILocation(line: 557, column: 9, scope: !3979, inlinedAt: !3980)
!4237 = !DILocation(line: 557, column: 2, scope: !3979, inlinedAt: !3980)
!4238 = !DILocation(line: 558, column: 1, scope: !3979, inlinedAt: !3980)
!4239 = !DILocation(line: 664, column: 2, scope: !3968)
!4240 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4241, file: !4241, line: 646, type: !4242, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4241 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!319}
!4244 = !DILocalVariable(name: "__ret", scope: !4245, file: !4241, line: 648, type: !319)
!4245 = distinct !DILexicalBlock(scope: !4240, file: !4241, line: 648, column: 9)
!4246 = !DILocation(line: 648, column: 9, scope: !4245)
!4247 = !DILocalVariable(name: "__edi", scope: !4245, file: !4241, line: 648, type: !319)
!4248 = !DILocalVariable(name: "__esi", scope: !4245, file: !4241, line: 648, type: !319)
!4249 = !DILocalVariable(name: "__edx", scope: !4245, file: !4241, line: 648, type: !319)
!4250 = !DILocalVariable(name: "__ecx", scope: !4245, file: !4241, line: 648, type: !319)
!4251 = !DILocalVariable(name: "__eax", scope: !4245, file: !4241, line: 648, type: !319)
!4252 = !DILocation(line: 648, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !4241, line: 648, column: 9)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !4241, line: 648, column: 9)
!4255 = !{i32 -2145767132, i32 -2145764817, i32 -2145764583, i32 -2145764532, i32 -2145764504, i32 -2145764479, i32 -2145764795, i32 -2145764782, i32 -2145764344, i32 -2145764225, i32 -2145764690, i32 -2145764663, i32 -2145764635, i32 -2145764605}
!4256 = !DILocalVariable(name: "__mask", scope: !4257, file: !4241, line: 648, type: !319)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !4241, line: 648, column: 9)
!4258 = !DILocation(line: 648, column: 9, scope: !4257)
!4259 = !DILocation(line: 648, column: 9, scope: !4254)
!4260 = !DILocation(line: 648, column: 2, scope: !4240)
!4261 = distinct !DISubprogram(name: "get_order", scope: !4262, file: !4262, line: 29, type: !2819, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4262 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4263 = !DILocalVariable(name: "x", arg: 1, scope: !4264, file: !4265, line: 366, type: !92)
!4264 = distinct !DISubprogram(name: "fls64", scope: !4265, file: !4265, line: 366, type: !4266, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4265 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!174, !92}
!4268 = !DILocation(line: 366, column: 40, scope: !4264, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 46, column: 9, scope: !4261)
!4270 = !DILocalVariable(name: "bitpos", scope: !4264, file: !4265, line: 368, type: !174)
!4271 = !DILocation(line: 368, column: 6, scope: !4264, inlinedAt: !4269)
!4272 = !DILocalVariable(name: "size", arg: 1, scope: !4261, file: !4262, line: 29, type: !319)
!4273 = !DILocation(line: 29, column: 63, scope: !4261)
!4274 = !DILocation(line: 31, column: 27, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4261, file: !4262, line: 31, column: 6)
!4276 = !DILocation(line: 31, column: 6, scope: !4275)
!4277 = !DILocation(line: 31, column: 6, scope: !4261)
!4278 = !DILocation(line: 32, column: 8, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !4262, line: 32, column: 7)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !4262, line: 31, column: 34)
!4281 = !DILocation(line: 32, column: 7, scope: !4280)
!4282 = !DILocation(line: 33, column: 4, scope: !4279)
!4283 = !DILocation(line: 35, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4280, file: !4262, line: 35, column: 7)
!4285 = !DILocation(line: 35, column: 12, scope: !4284)
!4286 = !DILocation(line: 35, column: 7, scope: !4280)
!4287 = !DILocation(line: 36, column: 4, scope: !4284)
!4288 = !DILocation(line: 38, column: 10, scope: !4280)
!4289 = !DILocation(line: 38, column: 28, scope: !4280)
!4290 = !DILocation(line: 38, column: 41, scope: !4280)
!4291 = !DILocation(line: 38, column: 3, scope: !4280)
!4292 = !DILocation(line: 41, column: 6, scope: !4261)
!4293 = !DILocation(line: 42, column: 7, scope: !4261)
!4294 = !DILocation(line: 46, column: 15, scope: !4261)
!4295 = !DILocation(line: 374, column: 2, scope: !4264, inlinedAt: !4269)
!4296 = !DILocation(line: 376, column: 14, scope: !4264, inlinedAt: !4269)
!4297 = !{i32 263258}
!4298 = !DILocation(line: 377, column: 9, scope: !4264, inlinedAt: !4269)
!4299 = !DILocation(line: 377, column: 16, scope: !4264, inlinedAt: !4269)
!4300 = !DILocation(line: 46, column: 2, scope: !4261)
!4301 = !DILocation(line: 48, column: 1, scope: !4261)
!4302 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4303, file: !4303, line: 30, type: !4304, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4303 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!174, !91}
!4306 = !DILocation(line: 366, column: 40, scope: !4264, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 32, column: 9, scope: !4302)
!4308 = !DILocation(line: 368, column: 6, scope: !4264, inlinedAt: !4307)
!4309 = !DILocalVariable(name: "n", arg: 1, scope: !4302, file: !4303, line: 30, type: !91)
!4310 = !DILocation(line: 30, column: 21, scope: !4302)
!4311 = !DILocation(line: 32, column: 15, scope: !4302)
!4312 = !DILocation(line: 374, column: 2, scope: !4264, inlinedAt: !4307)
!4313 = !DILocation(line: 376, column: 14, scope: !4264, inlinedAt: !4307)
!4314 = !DILocation(line: 377, column: 9, scope: !4264, inlinedAt: !4307)
!4315 = !DILocation(line: 377, column: 16, scope: !4264, inlinedAt: !4307)
!4316 = !DILocation(line: 32, column: 18, scope: !4302)
!4317 = !DILocation(line: 32, column: 2, scope: !4302)
!4318 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4319, file: !4319, line: 137, type: !4320, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4319 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!101, !1152, !207, !316, !1572}
!4322 = !DILocalVariable(name: "s", arg: 1, scope: !4318, file: !4319, line: 137, type: !1152)
!4323 = !DILocation(line: 137, column: 54, scope: !4318)
!4324 = !DILocalVariable(name: "object", arg: 2, scope: !4318, file: !4319, line: 137, type: !207)
!4325 = !DILocation(line: 137, column: 69, scope: !4318)
!4326 = !DILocalVariable(name: "size", arg: 3, scope: !4318, file: !4319, line: 138, type: !316)
!4327 = !DILocation(line: 138, column: 12, scope: !4318)
!4328 = !DILocalVariable(name: "flags", arg: 4, scope: !4318, file: !4319, line: 138, type: !1572)
!4329 = !DILocation(line: 138, column: 24, scope: !4318)
!4330 = !DILocation(line: 140, column: 17, scope: !4318)
!4331 = !DILocation(line: 140, column: 2, scope: !4318)
