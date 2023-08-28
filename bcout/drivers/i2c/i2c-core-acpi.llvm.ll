; ModuleID = '../bcout/drivers/i2c/i2c-core-acpi.llvm.bc'
source_filename = "drivers/i2c/i2c-core-acpi.c"
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.notifier_block = type { {}*, %struct.notifier_block*, i32 }
%struct.kmem_cache = type opaque
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_i2c_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, i8*, i8, i16, i32 }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.47 }
%union.anon.47 = type { i8* }
%struct.i2c_acpi_lookup = type { %struct.i2c_board_info*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.i2c_acpi_handler_data = type { %struct.acpi_connection_info, %struct.i2c_adapter* }
%struct.acpi_connection_info = type { i8*, i16, i8 }
%struct.gsb_buffer = type { i8, i8, %union.anon.49 }
%union.anon.49 = type { i16 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enumerate I2C slaves\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to find I2C bus speed from ACPI\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"[Firmware Bug]: DSDT uses known not-working I2C bus speed %d, forcing it to %d\0A\00", align 1
@i2c_bus_type = external dso_local global %struct.bus_type, align 8
@i2c_acpi_notifier = dso_local global { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 } { i32 (%struct.notifier_block*, i64, i8*)* @i2c_acpi_notify, %struct.notifier_block* null, i32 0 }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [36 x i8] c"Error installing i2c space handler\0A\00", align 1
@i2c_acpi_ignored_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"LNXVIDEO\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2453
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to add I2C device %s from ACPI\0A\00", align 1
@i2c_acpi_force_400khz_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"MSSL1680\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2456
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"protocol 0x%02x not supported for client 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"i2c read %d bytes from client@%#x starting at reg %#x failed, error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"i2c write failed: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @i2c_acpi_get_i2c_resource(%struct.acpi_resource* %ares, %struct.acpi_resource_i2c_serialbus** %i2c) #0 !dbg !2474 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %i2c.addr = alloca %struct.acpi_resource_i2c_serialbus**, align 8
  %sb = alloca %struct.acpi_resource_i2c_serialbus*, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store %struct.acpi_resource_i2c_serialbus** %i2c, %struct.acpi_resource_i2c_serialbus*** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_i2c_serialbus*** %i2c.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_i2c_serialbus** %sb, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !2847
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %0, i32 0, i32 0, !dbg !2849
  %1 = load i32, i32* %type, align 1, !dbg !2849
  %cmp = icmp ne i32 %1, 19, !dbg !2850
  br i1 %cmp, label %if.then, label %if.end, !dbg !2851

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !2852
  br label %return, !dbg !2852

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !2853
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 2, !dbg !2854
  %i2c_serial_bus = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_i2c_serialbus*, !dbg !2855
  store %struct.acpi_resource_i2c_serialbus* %i2c_serial_bus, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !2856
  %3 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !2857
  %type1 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %3, i32 0, i32 1, !dbg !2859
  %4 = load i8, i8* %type1, align 1, !dbg !2859
  %conv = zext i8 %4 to i32, !dbg !2857
  %cmp2 = icmp ne i32 %conv, 1, !dbg !2860
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2861

if.then4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !2862
  br label %return, !dbg !2862

if.end5:                                          ; preds = %if.end
  %5 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !2863
  %6 = load %struct.acpi_resource_i2c_serialbus**, %struct.acpi_resource_i2c_serialbus*** %i2c.addr, align 8, !dbg !2864
  store %struct.acpi_resource_i2c_serialbus* %5, %struct.acpi_resource_i2c_serialbus** %6, align 8, !dbg !2865
  store i1 true, i1* %retval, align 1, !dbg !2866
  br label %return, !dbg !2866

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !2867
  ret i1 %7, !dbg !2867
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_acpi_get_irq(%struct.i2c_client* %client) #0 !dbg !2868 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %irq = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3008, metadata !DIExpression()), !dbg !3010
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3010
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !3010
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !3010
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3010
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3010
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3010
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #8, !dbg !3010
  br i1 %call, label %cond.true, label %cond.false, !dbg !3010

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3011, metadata !DIExpression()), !dbg !3013
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3013
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3013
  store i8* %4, i8** %__mptr, align 8, !dbg !3013
  br label %do.body, !dbg !3013

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3014

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3013
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !3013
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3013
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !3014
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !3013
  br label %cond.end, !dbg !3010

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3010

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !3010
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3010
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3010
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i32 -2, i32* %irq, align 4, !dbg !3019
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #8, !dbg !3022
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3023
  %10 = bitcast i32* %irq to i8*, !dbg !3024
  %call2 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %9, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* @i2c_acpi_add_resource, i8* %10) #8, !dbg !3025
  store i32 %call2, i32* %ret, align 4, !dbg !3026
  %11 = load i32, i32* %ret, align 4, !dbg !3027
  %cmp = icmp slt i32 %11, 0, !dbg !3029
  br i1 %cmp, label %if.then, label %if.end, !dbg !3030

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %ret, align 4, !dbg !3031
  store i32 %12, i32* %retval, align 4, !dbg !3032
  br label %return, !dbg !3032

if.end:                                           ; preds = %cond.end
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #8, !dbg !3033
  %13 = load i32, i32* %irq, align 4, !dbg !3034
  %cmp3 = icmp eq i32 %13, -2, !dbg !3036
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3037

if.then4:                                         ; preds = %if.end
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3038
  %call5 = call i32 @acpi_dev_gpio_irq_get(%struct.acpi_device* %14, i32 0) #8, !dbg !3039
  store i32 %call5, i32* %irq, align 4, !dbg !3040
  br label %if.end6, !dbg !3041

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load i32, i32* %irq, align 4, !dbg !3042
  store i32 %15, i32* %retval, align 4, !dbg !3043
  br label %return, !dbg !3043

return:                                           ; preds = %if.end6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3044
  ret i32 %16, !dbg !3044
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3045 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3049, metadata !DIExpression()), !dbg !3050
  br label %do.body, !dbg !3051

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3052

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3054

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3052

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3056
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3056
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3056
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3056
  br label %do.end3, !dbg !3056

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3052

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3058
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3059
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3060
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3061
  ret void, !dbg !3062
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32 (%struct.acpi_resource*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_add_resource(%struct.acpi_resource* %ares, i8* %data) #0 !dbg !3063 {
entry:
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %data.addr = alloca i8*, align 8
  %irq = alloca i32*, align 8
  %r = alloca %struct.resource, align 8
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata i32** %irq, metadata !3070, metadata !DIExpression()), !dbg !3071
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3072
  %1 = bitcast i8* %0 to i32*, !dbg !3072
  store i32* %1, i32** %irq, align 8, !dbg !3071
  call void @llvm.dbg.declare(metadata %struct.resource* %r, metadata !3073, metadata !DIExpression()), !dbg !3087
  %2 = load i32*, i32** %irq, align 8, !dbg !3088
  %3 = load i32, i32* %2, align 4, !dbg !3090
  %cmp = icmp sle i32 %3, 0, !dbg !3091
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3092

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3093
  %call = call zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource* %4, i32 0, %struct.resource* %r) #8, !dbg !3094
  br i1 %call, label %if.then, label %if.end, !dbg !3095

if.then:                                          ; preds = %land.lhs.true
  %call1 = call i32 @i2c_dev_irq_from_resources(%struct.resource* %r, i32 1) #8, !dbg !3096
  %5 = load i32*, i32** %irq, align 8, !dbg !3097
  store i32 %call1, i32* %5, align 4, !dbg !3098
  br label %if.end, !dbg !3099

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 1, !dbg !3100
}

; Function Attrs: noredzone
declare dso_local void @acpi_dev_free_resource_list(%struct.list_head*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_dev_gpio_irq_get(%struct.acpi_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @i2c_acpi_register_devices(%struct.i2c_adapter* %adap) #0 !dbg !3101 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %status = alloca i32, align 4
  %handle = alloca i8*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp12 = alloca %struct.acpi_device*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3106, metadata !DIExpression()), !dbg !3107
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3108
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !3110
  %call = call zeroext i1 @has_acpi_companion(%struct.device* %dev) #8, !dbg !3111
  br i1 %call, label %if.end, label %if.then, !dbg !3112

if.then:                                          ; preds = %entry
  br label %return, !dbg !3113

if.end:                                           ; preds = %entry
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3114
  %2 = bitcast %struct.i2c_adapter* %1 to i8*, !dbg !3114
  %call1 = call i32 @acpi_walk_namespace(i32 6, i8* inttoptr (i64 -1 to i8*), i32 32, i32 (i8*, i32, i8*, i8**)* @i2c_acpi_add_device, i32 (i8*, i32, i8*, i8**)* null, i8* %2, i8** null) #8, !dbg !3115
  store i32 %call1, i32* %status, align 4, !dbg !3116
  %3 = load i32, i32* %status, align 4, !dbg !3117
  %tobool = icmp ne i32 %3, 0, !dbg !3117
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !3119

if.then2:                                         ; preds = %if.end
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3120
  %dev3 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 9, !dbg !3120
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3120
  br label %if.end4, !dbg !3120

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3121
  %dev5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 9, !dbg !3123
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 1, !dbg !3124
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3124
  %tobool6 = icmp ne %struct.device* %6, null, !dbg !3121
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3125

if.then7:                                         ; preds = %if.end4
  br label %return, !dbg !3126

if.end8:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3127, metadata !DIExpression()), !dbg !3129
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3129
  %dev9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 9, !dbg !3129
  %parent10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 1, !dbg !3129
  %8 = load %struct.device*, %struct.device** %parent10, align 8, !dbg !3129
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 24, !dbg !3129
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3129
  store %struct.fwnode_handle* %9, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3129
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3129
  %call11 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %10) #8, !dbg !3129
  br i1 %call11, label %cond.true, label %cond.false, !dbg !3129

cond.true:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3130, metadata !DIExpression()), !dbg !3132
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3132
  %12 = bitcast %struct.fwnode_handle* %11 to i8*, !dbg !3132
  store i8* %12, i8** %__mptr, align 8, !dbg !3132
  br label %do.body, !dbg !3132

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3133

do.end:                                           ; preds = %do.body
  %13 = load i8*, i8** %__mptr, align 8, !dbg !3132
  %add.ptr = getelementptr i8, i8* %13, i64 -16, !dbg !3132
  %14 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3132
  store %struct.acpi_device* %14, %struct.acpi_device** %tmp12, align 8, !dbg !3133
  %15 = load %struct.acpi_device*, %struct.acpi_device** %tmp12, align 8, !dbg !3132
  br label %cond.end, !dbg !3129

cond.false:                                       ; preds = %if.end8
  br label %cond.end, !dbg !3129

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %15, %do.end ], [ null, %cond.false ], !dbg !3129
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3129
  %16 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3129
  %call13 = call i8* @acpi_device_handle(%struct.acpi_device* %16) #8, !dbg !3135
  store i8* %call13, i8** %handle, align 8, !dbg !3136
  %17 = load i8*, i8** %handle, align 8, !dbg !3137
  %tobool14 = icmp ne i8* %17, null, !dbg !3137
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3139

if.then15:                                        ; preds = %cond.end
  br label %return, !dbg !3140

if.end16:                                         ; preds = %cond.end
  %18 = load i8*, i8** %handle, align 8, !dbg !3141
  call void @acpi_walk_dep_device_list(i8* %18) #8, !dbg !3142
  br label %return, !dbg !3143

return:                                           ; preds = %if.end16, %if.then15, %if.then7, %if.then
  ret void, !dbg !3143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_acpi_companion(%struct.device* %dev) #0 !dbg !3144 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3150
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !3151
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3151
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %1) #8, !dbg !3152
  ret i1 %call, !dbg !3153
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_namespace(i32, i8*, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_add_device(i8* %handle, i32 %level, i8* %data, i8** %return_value) #0 !dbg !3154 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %info = alloca %struct.i2c_board_info, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3165, metadata !DIExpression()), !dbg !3166
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3167
  %1 = bitcast i8* %0 to %struct.i2c_adapter*, !dbg !3167
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %adapter, align 8, !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %info, metadata !3170, metadata !DIExpression()), !dbg !3211
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3212
  %call = call i32 @acpi_bus_get_device(i8* %2, %struct.acpi_device** %adev) #8, !dbg !3214
  %tobool = icmp ne i32 %call, 0, !dbg !3214
  br i1 %tobool, label %if.then, label %if.end, !dbg !3215

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3216
  br label %return, !dbg !3216

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3217
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3219
  %call1 = call i32 @i2c_acpi_get_info(%struct.acpi_device* %3, %struct.i2c_board_info* %info, %struct.i2c_adapter* %4, i8** null) #8, !dbg !3220
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3220
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3221

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3222
  br label %return, !dbg !3222

if.end4:                                          ; preds = %if.end
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3223
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3224
  call void @i2c_acpi_register_device(%struct.i2c_adapter* %5, %struct.acpi_device* %6, %struct.i2c_board_info* %info) #8, !dbg !3225
  store i32 0, i32* %retval, align 4, !dbg !3226
  br label %return, !dbg !3226

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3227
  ret i32 %7, !dbg !3227
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_device_handle(%struct.acpi_device* %adev) #0 !dbg !3228 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3233
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3233
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3233

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3234
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !3235
  %2 = load i8*, i8** %handle, align 8, !dbg !3235
  br label %cond.end, !dbg !3233

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3233

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ], !dbg !3233
  ret i8* %cond, !dbg !3236
}

; Function Attrs: noredzone
declare dso_local void @acpi_walk_dep_device_list(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_acpi_find_bus_speed(%struct.device* %dev) #0 !dbg !3237 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %lookup = alloca %struct.i2c_acpi_lookup, align 8
  %dummy = alloca %struct.i2c_board_info, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup* %lookup, metadata !3242, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %dummy, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3258, metadata !DIExpression()), !dbg !3259
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3260
  %call = call zeroext i1 @has_acpi_companion(%struct.device* %0) #8, !dbg !3262
  br i1 %call, label %if.end, label %if.then, !dbg !3263

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.i2c_acpi_lookup* %lookup to i8*, !dbg !3265
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 56, i1 false), !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3266, metadata !DIExpression()), !dbg !3268
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3268
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !3268
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3268
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3268
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3268
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #8, !dbg !3268
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3268

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3269, metadata !DIExpression()), !dbg !3271
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3271
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !3271
  store i8* %6, i8** %__mptr, align 8, !dbg !3271
  br label %do.body, !dbg !3271

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3272

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3271
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !3271
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3271
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp2, align 8, !dbg !3272
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3271
  br label %cond.end, !dbg !3268

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3268

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !3268
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3268
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3268
  %call3 = call i8* @acpi_device_handle(%struct.acpi_device* %10) #8, !dbg !3274
  %search_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 3, !dbg !3275
  store i8* %call3, i8** %search_handle, align 8, !dbg !3276
  %min_speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 7, !dbg !3277
  store i32 -1, i32* %min_speed, align 4, !dbg !3278
  %info = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 0, !dbg !3279
  store %struct.i2c_board_info* %dummy, %struct.i2c_board_info** %info, align 8, !dbg !3280
  %index = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 5, !dbg !3281
  store i32 -1, i32* %index, align 4, !dbg !3282
  %11 = bitcast %struct.i2c_acpi_lookup* %lookup to i8*, !dbg !3283
  %call4 = call i32 @acpi_walk_namespace(i32 6, i8* inttoptr (i64 -1 to i8*), i32 32, i32 (i8*, i32, i8*, i8**)* @i2c_acpi_lookup_speed, i32 (i8*, i32, i8*, i8**)* null, i8* %11, i8** null) #8, !dbg !3284
  store i32 %call4, i32* %status, align 4, !dbg !3285
  %12 = load i32, i32* %status, align 4, !dbg !3286
  %tobool = icmp ne i32 %12, 0, !dbg !3286
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !3288

if.then5:                                         ; preds = %cond.end
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3289
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3289
  store i32 0, i32* %retval, align 4, !dbg !3291
  br label %return, !dbg !3291

if.end6:                                          ; preds = %cond.end
  %force_speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 8, !dbg !3292
  %14 = load i32, i32* %force_speed, align 8, !dbg !3292
  %tobool7 = icmp ne i32 %14, 0, !dbg !3294
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !3295

if.then8:                                         ; preds = %if.end6
  %force_speed9 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 8, !dbg !3296
  %15 = load i32, i32* %force_speed9, align 8, !dbg !3296
  %min_speed10 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 7, !dbg !3299
  %16 = load i32, i32* %min_speed10, align 4, !dbg !3299
  %cmp = icmp ne i32 %15, %16, !dbg !3300
  br i1 %cmp, label %if.then11, label %if.end14, !dbg !3301

if.then11:                                        ; preds = %if.then8
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3302
  %min_speed12 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 7, !dbg !3302
  %18 = load i32, i32* %min_speed12, align 4, !dbg !3302
  %force_speed13 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 8, !dbg !3302
  %19 = load i32, i32* %force_speed13, align 8, !dbg !3302
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %17, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19) #9, !dbg !3302
  br label %if.end14, !dbg !3302

if.end14:                                         ; preds = %if.then11, %if.then8
  %force_speed15 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 8, !dbg !3303
  %20 = load i32, i32* %force_speed15, align 8, !dbg !3303
  store i32 %20, i32* %retval, align 4, !dbg !3304
  br label %return, !dbg !3304

if.else:                                          ; preds = %if.end6
  %min_speed16 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 7, !dbg !3305
  %21 = load i32, i32* %min_speed16, align 4, !dbg !3305
  %cmp17 = icmp ne i32 %21, -1, !dbg !3307
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !3308

if.then18:                                        ; preds = %if.else
  %min_speed19 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 7, !dbg !3309
  %22 = load i32, i32* %min_speed19, align 4, !dbg !3309
  store i32 %22, i32* %retval, align 4, !dbg !3311
  br label %return, !dbg !3311

if.else20:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !3312
  br label %return, !dbg !3312

return:                                           ; preds = %if.else20, %if.then18, %if.end14, %if.then5, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !3314
  ret i32 %23, !dbg !3314
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_lookup_speed(i8* %handle, i32 %level, i8* %data, i8** %return_value) #0 !dbg !3315 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %lookup = alloca %struct.i2c_acpi_lookup*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup** %lookup, metadata !3324, metadata !DIExpression()), !dbg !3326
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3327
  %1 = bitcast i8* %0 to %struct.i2c_acpi_lookup*, !dbg !3327
  store %struct.i2c_acpi_lookup* %1, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3326
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3328, metadata !DIExpression()), !dbg !3329
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3330
  %call = call i32 @acpi_bus_get_device(i8* %2, %struct.acpi_device** %adev) #8, !dbg !3332
  %tobool = icmp ne i32 %call, 0, !dbg !3332
  br i1 %tobool, label %if.then, label %if.end, !dbg !3333

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3334
  br label %return, !dbg !3334

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3335
  %4 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3337
  %call1 = call i32 @i2c_acpi_do_lookup(%struct.acpi_device* %3, %struct.i2c_acpi_lookup* %4) #8, !dbg !3338
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3338
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3339

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3340
  br label %return, !dbg !3340

if.end4:                                          ; preds = %if.end
  %5 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3341
  %search_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %5, i32 0, i32 3, !dbg !3343
  %6 = load i8*, i8** %search_handle, align 8, !dbg !3343
  %7 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3344
  %adapter_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %7, i32 0, i32 1, !dbg !3345
  %8 = load i8*, i8** %adapter_handle, align 8, !dbg !3345
  %cmp = icmp ne i8* %6, %8, !dbg !3346
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3347

if.then5:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !3348
  br label %return, !dbg !3348

if.end6:                                          ; preds = %if.end4
  %9 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3349
  %speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %9, i32 0, i32 6, !dbg !3351
  %10 = load i32, i32* %speed, align 8, !dbg !3351
  %11 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3352
  %min_speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %11, i32 0, i32 7, !dbg !3353
  %12 = load i32, i32* %min_speed, align 4, !dbg !3353
  %cmp7 = icmp ule i32 %10, %12, !dbg !3354
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !3355

if.then8:                                         ; preds = %if.end6
  %13 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3356
  %speed9 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %13, i32 0, i32 6, !dbg !3357
  %14 = load i32, i32* %speed9, align 8, !dbg !3357
  %15 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3358
  %min_speed10 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %15, i32 0, i32 7, !dbg !3359
  store i32 %14, i32* %min_speed10, align 4, !dbg !3360
  br label %if.end11, !dbg !3358

if.end11:                                         ; preds = %if.then8, %if.end6
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3361
  %call12 = call i32 @acpi_match_device_ids(%struct.acpi_device* %16, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @i2c_acpi_force_400khz_device_ids, i64 0, i64 0)) #8, !dbg !3363
  %cmp13 = icmp eq i32 %call12, 0, !dbg !3364
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3365

if.then14:                                        ; preds = %if.end11
  %17 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3366
  %force_speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %17, i32 0, i32 8, !dbg !3367
  store i32 400000, i32* %force_speed, align 8, !dbg !3368
  br label %if.end15, !dbg !3366

if.end15:                                         ; preds = %if.then14, %if.end11
  store i32 0, i32* %retval, align 4, !dbg !3369
  br label %return, !dbg !3369

return:                                           ; preds = %if.end15, %if.then5, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3370
  ret i32 %18, !dbg !3370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i8* %handle) #0 !dbg !3371 {
entry:
  %handle.addr = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3376, metadata !DIExpression()), !dbg !3377
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !3378
  %call = call %struct.device* @bus_find_device(%struct.bus_type* @i2c_bus_type, %struct.device* null, i8* %0, i32 (%struct.device*, i8*)* @i2c_acpi_find_match_adapter) #8, !dbg !3379
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !3380
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3381
  %tobool = icmp ne %struct.device* %1, null, !dbg !3381
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3381

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3382
  %call1 = call %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %2) #8, !dbg !3383
  br label %cond.end, !dbg !3381

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.i2c_adapter* [ %call1, %cond.true ], [ null, %cond.false ], !dbg !3381
  ret %struct.i2c_adapter* %cond, !dbg !3384
}

; Function Attrs: noredzone
declare dso_local %struct.device* @bus_find_device(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_find_match_adapter(%struct.device* %dev, i8* %data) #0 !dbg !3385 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3392, metadata !DIExpression()), !dbg !3393
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3394
  %call = call %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %0) #8, !dbg !3395
  store %struct.i2c_adapter* %call, %struct.i2c_adapter** %adapter, align 8, !dbg !3393
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3396
  %tobool = icmp ne %struct.i2c_adapter* %1, null, !dbg !3396
  br i1 %tobool, label %if.end, label %if.then, !dbg !3398

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3399
  br label %return, !dbg !3399

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3400, metadata !DIExpression()), !dbg !3402
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3402
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !3402
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3402
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3402
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3402
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #8, !dbg !3402
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3402

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3403, metadata !DIExpression()), !dbg !3405
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3405
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !3405
  store i8* %6, i8** %__mptr, align 8, !dbg !3405
  br label %do.body, !dbg !3405

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3406

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3405
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !3405
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3405
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp2, align 8, !dbg !3406
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3405
  br label %cond.end, !dbg !3402

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3402

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !3402
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3402
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3402
  %call3 = call i8* @acpi_device_handle(%struct.acpi_device* %10) #8, !dbg !3408
  %11 = load i8*, i8** %data.addr, align 8, !dbg !3409
  %cmp = icmp eq i8* %call3, %11, !dbg !3410
  %conv = zext i1 %cmp to i32, !dbg !3410
  store i32 %conv, i32* %retval, align 4, !dbg !3411
  br label %return, !dbg !3411

return:                                           ; preds = %cond.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3412
  ret i32 %12, !dbg !3412
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_adapter* @i2c_verify_adapter(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_notify(%struct.notifier_block* %nb, i64 %value, i8* %arg) #0 !dbg !3413 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %value.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %info = alloca %struct.i2c_board_info, align 8
  %adapter_handle = alloca i8*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3420, metadata !DIExpression()), !dbg !3421
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !3422
  %1 = bitcast i8* %0 to %struct.acpi_device*, !dbg !3422
  store %struct.acpi_device* %1, %struct.acpi_device** %adev, align 8, !dbg !3421
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %info, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata i8** %adapter_handle, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3427, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !3429, metadata !DIExpression()), !dbg !3430
  %2 = load i64, i64* %value.addr, align 8, !dbg !3431
  switch i64 %2, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb5
  ], !dbg !3432

sw.bb:                                            ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3433
  %call = call i32 @i2c_acpi_get_info(%struct.acpi_device* %3, %struct.i2c_board_info* %info, %struct.i2c_adapter* null, i8** %adapter_handle) #8, !dbg !3436
  %tobool = icmp ne i32 %call, 0, !dbg !3436
  br i1 %tobool, label %if.then, label %if.end, !dbg !3437

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !3438

if.end:                                           ; preds = %sw.bb
  %4 = load i8*, i8** %adapter_handle, align 8, !dbg !3439
  %call1 = call %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i8* %4) #8, !dbg !3440
  store %struct.i2c_adapter* %call1, %struct.i2c_adapter** %adapter, align 8, !dbg !3441
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3442
  %tobool2 = icmp ne %struct.i2c_adapter* %5, null, !dbg !3442
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3444

if.then3:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !3445

if.end4:                                          ; preds = %if.end
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3446
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3447
  call void @i2c_acpi_register_device(%struct.i2c_adapter* %6, %struct.acpi_device* %7, %struct.i2c_board_info* %info) #8, !dbg !3448
  br label %sw.epilog, !dbg !3449

sw.bb5:                                           ; preds = %entry
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3450
  %call6 = call zeroext i1 @acpi_device_enumerated(%struct.acpi_device* %8) #8, !dbg !3452
  br i1 %call6, label %if.end8, label %if.then7, !dbg !3453

if.then7:                                         ; preds = %sw.bb5
  br label %sw.epilog, !dbg !3454

if.end8:                                          ; preds = %sw.bb5
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3455
  %call9 = call %struct.i2c_client* @i2c_acpi_find_client_by_adev(%struct.acpi_device* %9) #8, !dbg !3456
  store %struct.i2c_client* %call9, %struct.i2c_client** %client, align 8, !dbg !3457
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3458
  %tobool10 = icmp ne %struct.i2c_client* %10, null, !dbg !3458
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3460

if.then11:                                        ; preds = %if.end8
  br label %sw.epilog, !dbg !3461

if.end12:                                         ; preds = %if.end8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3462
  call void @i2c_unregister_device(%struct.i2c_client* %11) #8, !dbg !3463
  %12 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3464
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 4, !dbg !3465
  call void @put_device(%struct.device* %dev) #8, !dbg !3466
  br label %sw.epilog, !dbg !3467

sw.epilog:                                        ; preds = %entry, %if.end12, %if.then11, %if.then7, %if.end4, %if.then3, %if.then
  ret i32 1, !dbg !3468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_client* @i2c_acpi_new_device(%struct.device* %dev, i32 %index, %struct.i2c_board_info* %info) #0 !dbg !3469 {
entry:
  %retval = alloca %struct.i2c_client*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i32, align 4
  %info.addr = alloca %struct.i2c_board_info*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %lookup = alloca %struct.i2c_acpi_lookup, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3474, metadata !DIExpression()), !dbg !3475
  store %struct.i2c_board_info* %info, %struct.i2c_board_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info.addr, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3480, metadata !DIExpression()), !dbg !3482
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3482
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !3482
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3482
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3482
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3482
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #8, !dbg !3482
  br i1 %call, label %cond.true, label %cond.false, !dbg !3482

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3483, metadata !DIExpression()), !dbg !3485
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3485
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3485
  store i8* %4, i8** %__mptr, align 8, !dbg !3485
  br label %do.body, !dbg !3485

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3486

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3485
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !3485
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3485
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !3486
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !3485
  br label %cond.end, !dbg !3482

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3482

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !3482
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3482
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3482
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup* %lookup, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !3492, metadata !DIExpression()), !dbg !3493
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resource_list, i32 0, i32 0, !dbg !3493
  store %struct.list_head* %resource_list, %struct.list_head** %next, align 8, !dbg !3493
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %resource_list, i32 0, i32 1, !dbg !3493
  store %struct.list_head* %resource_list, %struct.list_head** %prev, align 8, !dbg !3493
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3494, metadata !DIExpression()), !dbg !3495
  %9 = bitcast %struct.i2c_acpi_lookup* %lookup to i8*, !dbg !3496
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 56, i1 false), !dbg !3496
  %10 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !3497
  %info2 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 0, !dbg !3498
  store %struct.i2c_board_info* %10, %struct.i2c_board_info** %info2, align 8, !dbg !3499
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3500
  %call3 = call i8* @acpi_device_handle(%struct.acpi_device* %11) #8, !dbg !3501
  %device_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 2, !dbg !3502
  store i8* %call3, i8** %device_handle, align 8, !dbg !3503
  %12 = load i32, i32* %index.addr, align 4, !dbg !3504
  %index4 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 5, !dbg !3505
  store i32 %12, i32* %index4, align 4, !dbg !3506
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3507
  %14 = bitcast %struct.i2c_acpi_lookup* %lookup to i8*, !dbg !3508
  %call5 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %13, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* @i2c_acpi_fill_info, i8* %14) #8, !dbg !3509
  store i32 %call5, i32* %ret, align 4, !dbg !3510
  %15 = load i32, i32* %ret, align 4, !dbg !3511
  %cmp = icmp slt i32 %15, 0, !dbg !3513
  br i1 %cmp, label %if.then, label %if.end, !dbg !3514

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %ret, align 4, !dbg !3515
  %conv = sext i32 %16 to i64, !dbg !3515
  %call6 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !3516
  %17 = bitcast i8* %call6 to %struct.i2c_client*, !dbg !3516
  store %struct.i2c_client* %17, %struct.i2c_client** %retval, align 8, !dbg !3517
  br label %return, !dbg !3517

if.end:                                           ; preds = %cond.end
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #8, !dbg !3518
  %18 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !3519
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %18, i32 0, i32 2, !dbg !3521
  %19 = load i16, i16* %addr, align 2, !dbg !3521
  %tobool = icmp ne i16 %19, 0, !dbg !3519
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !3522

if.then7:                                         ; preds = %if.end
  %call8 = call i8* @ERR_PTR(i64 -99) #8, !dbg !3523
  %20 = bitcast i8* %call8 to %struct.i2c_client*, !dbg !3523
  store %struct.i2c_client* %20, %struct.i2c_client** %retval, align 8, !dbg !3524
  br label %return, !dbg !3524

if.end9:                                          ; preds = %if.end
  %adapter_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 1, !dbg !3525
  %21 = load i8*, i8** %adapter_handle, align 8, !dbg !3525
  %call10 = call %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i8* %21) #8, !dbg !3526
  store %struct.i2c_adapter* %call10, %struct.i2c_adapter** %adapter, align 8, !dbg !3527
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3528
  %tobool11 = icmp ne %struct.i2c_adapter* %22, null, !dbg !3528
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !3530

if.then12:                                        ; preds = %if.end9
  %call13 = call i8* @ERR_PTR(i64 -517) #8, !dbg !3531
  %23 = bitcast i8* %call13 to %struct.i2c_client*, !dbg !3531
  store %struct.i2c_client* %23, %struct.i2c_client** %retval, align 8, !dbg !3532
  br label %return, !dbg !3532

if.end14:                                         ; preds = %if.end9
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3533
  %25 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !3534
  %call15 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %24, %struct.i2c_board_info* %25) #8, !dbg !3535
  store %struct.i2c_client* %call15, %struct.i2c_client** %retval, align 8, !dbg !3536
  br label %return, !dbg !3536

return:                                           ; preds = %if.end14, %if.then12, %if.then7, %if.then
  %26 = load %struct.i2c_client*, %struct.i2c_client** %retval, align 8, !dbg !3537
  ret %struct.i2c_client* %26, !dbg !3537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_fill_info(%struct.acpi_resource* %ares, i8* %data) #0 !dbg !3538 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %data.addr = alloca i8*, align 8
  %lookup = alloca %struct.i2c_acpi_lookup*, align 8
  %info = alloca %struct.i2c_board_info*, align 8
  %sb = alloca %struct.acpi_resource_i2c_serialbus*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3539, metadata !DIExpression()), !dbg !3540
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup** %lookup, metadata !3543, metadata !DIExpression()), !dbg !3544
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3545
  %1 = bitcast i8* %0 to %struct.i2c_acpi_lookup*, !dbg !3545
  store %struct.i2c_acpi_lookup* %1, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3544
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info, metadata !3546, metadata !DIExpression()), !dbg !3547
  %2 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3548
  %info1 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %2, i32 0, i32 0, !dbg !3549
  %3 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info1, align 8, !dbg !3549
  store %struct.i2c_board_info* %3, %struct.i2c_board_info** %info, align 8, !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_i2c_serialbus** %sb, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3552, metadata !DIExpression()), !dbg !3553
  %4 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info, align 8, !dbg !3554
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %4, i32 0, i32 2, !dbg !3556
  %5 = load i16, i16* %addr, align 2, !dbg !3556
  %conv = zext i16 %5 to i32, !dbg !3554
  %tobool = icmp ne i32 %conv, 0, !dbg !3554
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3557

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3558
  %call = call zeroext i1 @i2c_acpi_get_i2c_resource(%struct.acpi_resource* %6, %struct.acpi_resource_i2c_serialbus** %sb) #8, !dbg !3559
  br i1 %call, label %if.end, label %if.then, !dbg !3560

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !3561
  br label %return, !dbg !3561

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3562
  %index = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %7, i32 0, i32 5, !dbg !3564
  %8 = load i32, i32* %index, align 4, !dbg !3564
  %cmp = icmp ne i32 %8, -1, !dbg !3565
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !3566

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3567
  %n = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %9, i32 0, i32 4, !dbg !3568
  %10 = load i32, i32* %n, align 8, !dbg !3569
  %inc = add i32 %10, 1, !dbg !3569
  store i32 %inc, i32* %n, align 8, !dbg !3569
  %11 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3570
  %index3 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %11, i32 0, i32 5, !dbg !3571
  %12 = load i32, i32* %index3, align 4, !dbg !3571
  %cmp4 = icmp ne i32 %10, %12, !dbg !3572
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !3573

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !3574
  br label %return, !dbg !3574

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %13 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3575
  %device_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %13, i32 0, i32 2, !dbg !3576
  %14 = load i8*, i8** %device_handle, align 8, !dbg !3576
  %15 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !3577
  %resource_source = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %15, i32 0, i32 8, !dbg !3578
  %string_ptr = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source, i32 0, i32 2, !dbg !3579
  %16 = load i8*, i8** %string_ptr, align 1, !dbg !3579
  %17 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3580
  %adapter_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %17, i32 0, i32 1, !dbg !3581
  %call8 = call i32 @acpi_get_handle(i8* %14, i8* %16, i8** %adapter_handle) #8, !dbg !3582
  store i32 %call8, i32* %status, align 4, !dbg !3583
  %18 = load i32, i32* %status, align 4, !dbg !3584
  %tobool9 = icmp ne i32 %18, 0, !dbg !3584
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3586

if.then10:                                        ; preds = %if.end7
  store i32 1, i32* %retval, align 4, !dbg !3587
  br label %return, !dbg !3587

if.end11:                                         ; preds = %if.end7
  %19 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !3588
  %slave_address = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %19, i32 0, i32 11, !dbg !3589
  %20 = load i16, i16* %slave_address, align 1, !dbg !3589
  %21 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info, align 8, !dbg !3590
  %addr12 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %21, i32 0, i32 2, !dbg !3591
  store i16 %20, i16* %addr12, align 2, !dbg !3592
  %22 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !3593
  %connection_speed = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %22, i32 0, i32 12, !dbg !3594
  %23 = load i32, i32* %connection_speed, align 1, !dbg !3594
  %24 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup, align 8, !dbg !3595
  %speed = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %24, i32 0, i32 6, !dbg !3596
  store i32 %23, i32* %speed, align 8, !dbg !3597
  %25 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !3598
  %access_mode = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %25, i32 0, i32 10, !dbg !3600
  %26 = load i8, i8* %access_mode, align 1, !dbg !3600
  %conv13 = zext i8 %26 to i32, !dbg !3598
  %cmp14 = icmp eq i32 %conv13, 1, !dbg !3601
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !3602

if.then16:                                        ; preds = %if.end11
  %27 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info, align 8, !dbg !3603
  %flags = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %27, i32 0, i32 1, !dbg !3604
  %28 = load i16, i16* %flags, align 4, !dbg !3605
  %conv17 = zext i16 %28 to i32, !dbg !3605
  %or = or i32 %conv17, 16, !dbg !3605
  %conv18 = trunc i32 %or to i16, !dbg !3605
  store i16 %conv18, i16* %flags, align 4, !dbg !3605
  br label %if.end19, !dbg !3603

if.end19:                                         ; preds = %if.then16, %if.end11
  store i32 1, i32* %retval, align 4, !dbg !3606
  br label %return, !dbg !3606

return:                                           ; preds = %if.end19, %if.then10, %if.then6, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !3607
  ret i32 %29, !dbg !3607
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3608 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  %0 = load i64, i64* %error.addr, align 8, !dbg !3614
  %1 = inttoptr i64 %0 to i8*, !dbg !3615
  ret i8* %1, !dbg !3616
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_acpi_install_space_handler(%struct.i2c_adapter* %adapter) #0 !dbg !3617 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %handle = alloca i8*, align 8
  %data = alloca %struct.i2c_acpi_handler_data*, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp3 = alloca %struct.acpi_device*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_handler_data** %data, metadata !3622, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3634, metadata !DIExpression()), !dbg !3635
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3636
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !3638
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !3639
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3639
  %tobool = icmp ne %struct.device* %1, null, !dbg !3636
  br i1 %tobool, label %if.end, label %if.then, !dbg !3640

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3641
  br label %return, !dbg !3641

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3642, metadata !DIExpression()), !dbg !3644
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3644
  %dev1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %2, i32 0, i32 9, !dbg !3644
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 1, !dbg !3644
  %3 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !3644
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 24, !dbg !3644
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3644
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3644
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3644
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %5) #8, !dbg !3644
  br i1 %call, label %cond.true, label %cond.false, !dbg !3644

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3645, metadata !DIExpression()), !dbg !3647
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3647
  %7 = bitcast %struct.fwnode_handle* %6 to i8*, !dbg !3647
  store i8* %7, i8** %__mptr, align 8, !dbg !3647
  br label %do.body, !dbg !3647

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3648

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !3647
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !3647
  %9 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3647
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp3, align 8, !dbg !3648
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp3, align 8, !dbg !3647
  br label %cond.end, !dbg !3644

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3644

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %10, %do.end ], [ null, %cond.false ], !dbg !3644
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3644
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3644
  %call4 = call i8* @acpi_device_handle(%struct.acpi_device* %11) #8, !dbg !3650
  store i8* %call4, i8** %handle, align 8, !dbg !3651
  %12 = load i8*, i8** %handle, align 8, !dbg !3652
  %tobool5 = icmp ne i8* %12, null, !dbg !3652
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3654

if.then6:                                         ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !3655
  br label %return, !dbg !3655

if.end7:                                          ; preds = %cond.end
  %call8 = call i8* @kzalloc(i64 24, i32 3264) #8, !dbg !3656
  %13 = bitcast i8* %call8 to %struct.i2c_acpi_handler_data*, !dbg !3656
  store %struct.i2c_acpi_handler_data* %13, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3657
  %14 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3658
  %tobool9 = icmp ne %struct.i2c_acpi_handler_data* %14, null, !dbg !3658
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3660

if.then10:                                        ; preds = %if.end7
  store i32 -12, i32* %retval, align 4, !dbg !3661
  br label %return, !dbg !3661

if.end11:                                         ; preds = %if.end7
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3662
  %16 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3663
  %adapter12 = getelementptr inbounds %struct.i2c_acpi_handler_data, %struct.i2c_acpi_handler_data* %16, i32 0, i32 1, !dbg !3664
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %adapter12, align 8, !dbg !3665
  %17 = load i8*, i8** %handle, align 8, !dbg !3666
  %18 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3667
  %19 = bitcast %struct.i2c_acpi_handler_data* %18 to i8*, !dbg !3668
  %call13 = call i32 @acpi_bus_attach_private_data(i8* %17, i8* %19) #8, !dbg !3669
  store i32 %call13, i32* %status, align 4, !dbg !3670
  %20 = load i32, i32* %status, align 4, !dbg !3671
  %tobool14 = icmp ne i32 %20, 0, !dbg !3671
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3673

if.then15:                                        ; preds = %if.end11
  %21 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3674
  %22 = bitcast %struct.i2c_acpi_handler_data* %21 to i8*, !dbg !3674
  call void @kfree(i8* %22) #8, !dbg !3676
  store i32 -12, i32* %retval, align 4, !dbg !3677
  br label %return, !dbg !3677

if.end16:                                         ; preds = %if.end11
  %23 = load i8*, i8** %handle, align 8, !dbg !3678
  %24 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3679
  %25 = bitcast %struct.i2c_acpi_handler_data* %24 to i8*, !dbg !3679
  %call17 = call i32 @acpi_install_address_space_handler(i8* %23, i8 zeroext 9, i32 (i32, i64, i32, i64*, i8*, i8*)* @i2c_acpi_space_handler, i32 (i8*, i32, i8*, i8**)* null, i8* %25) #8, !dbg !3680
  store i32 %call17, i32* %status, align 4, !dbg !3681
  %26 = load i32, i32* %status, align 4, !dbg !3682
  %tobool18 = icmp ne i32 %26, 0, !dbg !3682
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3684

if.then19:                                        ; preds = %if.end16
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3685
  %dev20 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 9, !dbg !3685
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !3685
  %28 = load i8*, i8** %handle, align 8, !dbg !3687
  call void @acpi_bus_detach_private_data(i8* %28) #8, !dbg !3688
  %29 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3689
  %30 = bitcast %struct.i2c_acpi_handler_data* %29 to i8*, !dbg !3689
  call void @kfree(i8* %30) #8, !dbg !3690
  store i32 -12, i32* %retval, align 4, !dbg !3691
  br label %return, !dbg !3691

if.end21:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4, !dbg !3692
  br label %return, !dbg !3692

return:                                           ; preds = %if.end21, %if.then19, %if.then15, %if.then10, %if.then6, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !3693
  ret i32 %31, !dbg !3693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3694 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3697, metadata !DIExpression()), !dbg !3701
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3707, metadata !DIExpression()), !dbg !3708
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3709, metadata !DIExpression()), !dbg !3710
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3711, metadata !DIExpression()), !dbg !3712
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3713, metadata !DIExpression()), !dbg !3717
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3719, metadata !DIExpression()), !dbg !3723
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3725, metadata !DIExpression()), !dbg !3729
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3734, metadata !DIExpression()), !dbg !3735
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3736, metadata !DIExpression()), !dbg !3737
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3738, metadata !DIExpression()), !dbg !3739
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3740, metadata !DIExpression()), !dbg !3741
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3742, metadata !DIExpression()), !dbg !3743
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3744, metadata !DIExpression()), !dbg !3745
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3746, metadata !DIExpression()), !dbg !3747
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3748, metadata !DIExpression()), !dbg !3749
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  %0 = load i64, i64* %size.addr, align 8, !dbg !3754
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3755
  %or = or i32 %1, 256, !dbg !3756
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3757
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3758
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3759

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3760
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3761
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3762

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3763
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3764
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3765
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3766
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3743
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3767
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3768
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3769
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3770
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3771
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3772
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3773
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3773
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3773
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3773
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3773
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3774
  br label %kmalloc.exit, !dbg !3774

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3775
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3776
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3776
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3778

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3779
  br label %kmalloc_index.exit.i, !dbg !3779

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3780
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3782
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3783

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3784
  br label %kmalloc_index.exit.i, !dbg !3784

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3785
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3787
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3788

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3789
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3790
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3791

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3792
  br label %kmalloc_index.exit.i, !dbg !3792

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3793
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3795
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3796

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3797
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3798
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3799

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3800
  br label %kmalloc_index.exit.i, !dbg !3800

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3801
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3803
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3804

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3805
  br label %kmalloc_index.exit.i, !dbg !3805

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3806
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3808
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3809

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3810
  br label %kmalloc_index.exit.i, !dbg !3810

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3811
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3813
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3814

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3815
  br label %kmalloc_index.exit.i, !dbg !3815

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3816
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3818
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3819

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3820
  br label %kmalloc_index.exit.i, !dbg !3820

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3821
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3823
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3824

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3825
  br label %kmalloc_index.exit.i, !dbg !3825

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3826
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3828
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3829

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3830
  br label %kmalloc_index.exit.i, !dbg !3830

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3831
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3833
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3834

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3835
  br label %kmalloc_index.exit.i, !dbg !3835

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3836
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3838
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3839

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3840
  br label %kmalloc_index.exit.i, !dbg !3840

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3841
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3843
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3844

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3845
  br label %kmalloc_index.exit.i, !dbg !3845

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3846
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3848
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3849

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3850
  br label %kmalloc_index.exit.i, !dbg !3850

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3851
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3853
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3854

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3855
  br label %kmalloc_index.exit.i, !dbg !3855

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3856
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3858
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3859

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3860
  br label %kmalloc_index.exit.i, !dbg !3860

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3861
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3863
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3864

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3865
  br label %kmalloc_index.exit.i, !dbg !3865

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3866
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3868
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3869

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3870
  br label %kmalloc_index.exit.i, !dbg !3870

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3871
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3873
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3874

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3875
  br label %kmalloc_index.exit.i, !dbg !3875

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3876
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3878
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3879

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3880
  br label %kmalloc_index.exit.i, !dbg !3880

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3881
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3883
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3884

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3885
  br label %kmalloc_index.exit.i, !dbg !3885

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3886
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3888
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3889

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3890
  br label %kmalloc_index.exit.i, !dbg !3890

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3891
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3893
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3894

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3895
  br label %kmalloc_index.exit.i, !dbg !3895

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3896
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3898
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3899

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3900
  br label %kmalloc_index.exit.i, !dbg !3900

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3901
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3903
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3904

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3905
  br label %kmalloc_index.exit.i, !dbg !3905

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3906
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3908
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3909

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3910
  br label %kmalloc_index.exit.i, !dbg !3910

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3911
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3913
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3914

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3915
  br label %kmalloc_index.exit.i, !dbg !3915

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3916
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3918
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3919

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3920
  br label %kmalloc_index.exit.i, !dbg !3920

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3921, !srcloc !3924
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #10, !dbg !3925, !srcloc !3928
  unreachable, !dbg !3929

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3930
  store i32 %45, i32* %index.i, align 4, !dbg !3931
  %46 = load i32, i32* %index.i, align 4, !dbg !3932
  %tobool.i = icmp ne i32 %46, 0, !dbg !3932
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3934

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3935
  br label %kmalloc.exit, !dbg !3935

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3936
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3937
  %and.i.i = and i32 %48, 17, !dbg !3937
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3937
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3937
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3937
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3937
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3939

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3940
  br label %kmalloc_type.exit.i, !dbg !3940

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3941
  %and2.i.i = and i32 %49, 1, !dbg !3942
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3941
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3941
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3941
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3943
  br label %kmalloc_type.exit.i, !dbg !3943

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3944
  %idxprom.i = zext i32 %51 to i64, !dbg !3945
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3945
  %52 = load i32, i32* %index.i, align 4, !dbg !3946
  %idxprom6.i = zext i32 %52 to i64, !dbg !3945
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3945
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3945
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3947
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3948
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3949
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3950
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3951
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3951
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3951
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3951
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3951
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3712
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3952
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3953
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3954
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3955
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3956
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3957
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3958
  store i8* %62, i8** %retval.i, align 8, !dbg !3959
  br label %kmalloc.exit, !dbg !3959

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3960
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3961
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3962
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3962
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3962
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3962
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3962
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3963
  br label %kmalloc.exit, !dbg !3963

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3964
  ret i8* %65, !dbg !3965
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_attach_private_data(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_address_space_handler(i8*, i8 zeroext, i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i8*, i32, i8*, i8**)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_space_handler(i32 %function, i64 %command, i32 %bits, i64* %value64, i8* %handler_context, i8* %region_context) #0 !dbg !3966 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %command.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %value64.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %gsb = alloca %struct.gsb_buffer*, align 8
  %data = alloca %struct.i2c_acpi_handler_data*, align 8
  %info = alloca %struct.acpi_connection_info*, align 8
  %sb = alloca %struct.acpi_resource_i2c_serialbus*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %ares = alloca %struct.acpi_resource*, align 8
  %accessor_type = alloca i32, align 4
  %action = alloca i8, align 1
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  store i64 %command, i64* %command.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %command.addr, metadata !3972, metadata !DIExpression()), !dbg !3973
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !3974, metadata !DIExpression()), !dbg !3975
  store i64* %value64, i64** %value64.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value64.addr, metadata !3976, metadata !DIExpression()), !dbg !3977
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !3978, metadata !DIExpression()), !dbg !3979
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata %struct.gsb_buffer** %gsb, metadata !3982, metadata !DIExpression()), !dbg !3983
  %0 = load i64*, i64** %value64.addr, align 8, !dbg !3984
  %1 = bitcast i64* %0 to %struct.gsb_buffer*, !dbg !3985
  store %struct.gsb_buffer* %1, %struct.gsb_buffer** %gsb, align 8, !dbg !3983
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_handler_data** %data, metadata !3986, metadata !DIExpression()), !dbg !3987
  %2 = load i8*, i8** %handler_context.addr, align 8, !dbg !3988
  %3 = bitcast i8* %2 to %struct.i2c_acpi_handler_data*, !dbg !3988
  store %struct.i2c_acpi_handler_data* %3, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3987
  call void @llvm.dbg.declare(metadata %struct.acpi_connection_info** %info, metadata !3989, metadata !DIExpression()), !dbg !3991
  %4 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3992
  %info1 = getelementptr inbounds %struct.i2c_acpi_handler_data, %struct.i2c_acpi_handler_data* %4, i32 0, i32 0, !dbg !3993
  store %struct.acpi_connection_info* %info1, %struct.acpi_connection_info** %info, align 8, !dbg !3991
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_i2c_serialbus** %sb, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3996, metadata !DIExpression()), !dbg !3997
  %5 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !3998
  %adapter2 = getelementptr inbounds %struct.i2c_acpi_handler_data, %struct.i2c_acpi_handler_data* %5, i32 0, i32 1, !dbg !3999
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter2, align 8, !dbg !3999
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %adapter, align 8, !dbg !3997
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.declare(metadata i32* %accessor_type, metadata !4004, metadata !DIExpression()), !dbg !4005
  %7 = load i32, i32* %function.addr, align 4, !dbg !4006
  %shr = lshr i32 %7, 16, !dbg !4007
  store i32 %shr, i32* %accessor_type, align 4, !dbg !4005
  call void @llvm.dbg.declare(metadata i8* %action, metadata !4008, metadata !DIExpression()), !dbg !4009
  %8 = load i32, i32* %function.addr, align 4, !dbg !4010
  %and = and i32 %8, 1, !dbg !4011
  %conv = trunc i32 %and to i8, !dbg !4010
  store i8 %conv, i8* %action, align 1, !dbg !4009
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4012, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4014, metadata !DIExpression()), !dbg !4015
  %9 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %info, align 8, !dbg !4016
  %connection = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %9, i32 0, i32 0, !dbg !4017
  %10 = load i8*, i8** %connection, align 8, !dbg !4017
  %11 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %info, align 8, !dbg !4018
  %length = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %11, i32 0, i32 1, !dbg !4019
  %12 = load i16, i16* %length, align 8, !dbg !4019
  %call = call i32 @acpi_buffer_to_resource(i8* %10, i16 zeroext %12, %struct.acpi_resource** %ares) #8, !dbg !4020
  store i32 %call, i32* %ret, align 4, !dbg !4021
  %13 = load i32, i32* %ret, align 4, !dbg !4022
  %tobool = icmp ne i32 %13, 0, !dbg !4022
  br i1 %tobool, label %if.then, label %if.end, !dbg !4024

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %ret, align 4, !dbg !4025
  store i32 %14, i32* %retval, align 4, !dbg !4026
  br label %return, !dbg !4026

if.end:                                           ; preds = %entry
  %call3 = call i8* @kzalloc(i64 752, i32 3264) #8, !dbg !4027
  %15 = bitcast i8* %call3 to %struct.i2c_client*, !dbg !4027
  store %struct.i2c_client* %15, %struct.i2c_client** %client, align 8, !dbg !4028
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4029
  %tobool4 = icmp ne %struct.i2c_client* %16, null, !dbg !4029
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4031

if.then5:                                         ; preds = %if.end
  store i32 4, i32* %ret, align 4, !dbg !4032
  br label %err, !dbg !4034

if.end6:                                          ; preds = %if.end
  %17 = load i64*, i64** %value64.addr, align 8, !dbg !4035
  %tobool7 = icmp ne i64* %17, null, !dbg !4035
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !4037

lor.lhs.false:                                    ; preds = %if.end6
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %ares, align 8, !dbg !4038
  %call8 = call zeroext i1 @i2c_acpi_get_i2c_resource(%struct.acpi_resource* %18, %struct.acpi_resource_i2c_serialbus** %sb) #8, !dbg !4039
  br i1 %call8, label %if.end10, label %if.then9, !dbg !4040

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store i32 4097, i32* %ret, align 4, !dbg !4041
  br label %err, !dbg !4043

if.end10:                                         ; preds = %lor.lhs.false
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4044
  %20 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4045
  %adapter11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 3, !dbg !4046
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %adapter11, align 8, !dbg !4047
  %21 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !4048
  %slave_address = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %21, i32 0, i32 11, !dbg !4049
  %22 = load i16, i16* %slave_address, align 1, !dbg !4049
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4050
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1, !dbg !4051
  store i16 %22, i16* %addr, align 2, !dbg !4052
  %24 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %sb, align 8, !dbg !4053
  %access_mode = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %24, i32 0, i32 10, !dbg !4055
  %25 = load i8, i8* %access_mode, align 1, !dbg !4055
  %conv12 = zext i8 %25 to i32, !dbg !4053
  %cmp = icmp eq i32 %conv12, 1, !dbg !4056
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !4057

if.then14:                                        ; preds = %if.end10
  %26 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4058
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0, !dbg !4059
  %27 = load i16, i16* %flags, align 8, !dbg !4060
  %conv15 = zext i16 %27 to i32, !dbg !4060
  %or = or i32 %conv15, 16, !dbg !4060
  %conv16 = trunc i32 %or to i16, !dbg !4060
  store i16 %conv16, i16* %flags, align 8, !dbg !4060
  br label %if.end17, !dbg !4058

if.end17:                                         ; preds = %if.then14, %if.end10
  %28 = load i32, i32* %accessor_type, align 4, !dbg !4061
  switch i32 %28, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb31
    i32 8, label %sw.bb49
    i32 10, label %sw.bb66
    i32 11, label %sw.bb86
  ], !dbg !4062

sw.bb:                                            ; preds = %if.end17
  %29 = load i8, i8* %action, align 1, !dbg !4063
  %conv18 = zext i8 %29 to i32, !dbg !4063
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !4066
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !4067

if.then21:                                        ; preds = %sw.bb
  %30 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4068
  %call22 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %30) #8, !dbg !4070
  store i32 %call22, i32* %status, align 4, !dbg !4071
  %31 = load i32, i32* %status, align 4, !dbg !4072
  %cmp23 = icmp sge i32 %31, 0, !dbg !4074
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4075

if.then25:                                        ; preds = %if.then21
  %32 = load i32, i32* %status, align 4, !dbg !4076
  %conv26 = trunc i32 %32 to i8, !dbg !4076
  %33 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4078
  %34 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %33, i32 0, i32 2, !dbg !4079
  %bdata = bitcast %union.anon.49* %34 to i8*, !dbg !4079
  store i8 %conv26, i8* %bdata, align 1, !dbg !4080
  store i32 0, i32* %status, align 4, !dbg !4081
  br label %if.end27, !dbg !4082

if.end27:                                         ; preds = %if.then25, %if.then21
  br label %if.end30, !dbg !4083

if.else:                                          ; preds = %sw.bb
  %35 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4084
  %36 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4086
  %37 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %36, i32 0, i32 2, !dbg !4087
  %bdata28 = bitcast %union.anon.49* %37 to i8*, !dbg !4087
  %38 = load i8, i8* %bdata28, align 1, !dbg !4087
  %call29 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %35, i8 zeroext %38) #8, !dbg !4088
  store i32 %call29, i32* %status, align 4, !dbg !4089
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end27
  br label %sw.epilog, !dbg !4090

sw.bb31:                                          ; preds = %if.end17
  %39 = load i8, i8* %action, align 1, !dbg !4091
  %conv32 = zext i8 %39 to i32, !dbg !4091
  %cmp33 = icmp eq i32 %conv32, 0, !dbg !4093
  br i1 %cmp33, label %if.then35, label %if.else44, !dbg !4094

if.then35:                                        ; preds = %sw.bb31
  %40 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4095
  %41 = load i64, i64* %command.addr, align 8, !dbg !4097
  %conv36 = trunc i64 %41 to i8, !dbg !4097
  %call37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i8 zeroext %conv36) #8, !dbg !4098
  store i32 %call37, i32* %status, align 4, !dbg !4099
  %42 = load i32, i32* %status, align 4, !dbg !4100
  %cmp38 = icmp sge i32 %42, 0, !dbg !4102
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !4103

if.then40:                                        ; preds = %if.then35
  %43 = load i32, i32* %status, align 4, !dbg !4104
  %conv41 = trunc i32 %43 to i8, !dbg !4104
  %44 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4106
  %45 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %44, i32 0, i32 2, !dbg !4107
  %bdata42 = bitcast %union.anon.49* %45 to i8*, !dbg !4107
  store i8 %conv41, i8* %bdata42, align 1, !dbg !4108
  store i32 0, i32* %status, align 4, !dbg !4109
  br label %if.end43, !dbg !4110

if.end43:                                         ; preds = %if.then40, %if.then35
  br label %if.end48, !dbg !4111

if.else44:                                        ; preds = %sw.bb31
  %46 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4112
  %47 = load i64, i64* %command.addr, align 8, !dbg !4114
  %conv45 = trunc i64 %47 to i8, !dbg !4114
  %48 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4115
  %49 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %48, i32 0, i32 2, !dbg !4116
  %bdata46 = bitcast %union.anon.49* %49 to i8*, !dbg !4116
  %50 = load i8, i8* %bdata46, align 1, !dbg !4116
  %call47 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i8 zeroext %conv45, i8 zeroext %50) #8, !dbg !4117
  store i32 %call47, i32* %status, align 4, !dbg !4118
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.end43
  br label %sw.epilog, !dbg !4119

sw.bb49:                                          ; preds = %if.end17
  %51 = load i8, i8* %action, align 1, !dbg !4120
  %conv50 = zext i8 %51 to i32, !dbg !4120
  %cmp51 = icmp eq i32 %conv50, 0, !dbg !4122
  br i1 %cmp51, label %if.then53, label %if.else61, !dbg !4123

if.then53:                                        ; preds = %sw.bb49
  %52 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4124
  %53 = load i64, i64* %command.addr, align 8, !dbg !4126
  %conv54 = trunc i64 %53 to i8, !dbg !4126
  %call55 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %52, i8 zeroext %conv54) #8, !dbg !4127
  store i32 %call55, i32* %status, align 4, !dbg !4128
  %54 = load i32, i32* %status, align 4, !dbg !4129
  %cmp56 = icmp sge i32 %54, 0, !dbg !4131
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !4132

if.then58:                                        ; preds = %if.then53
  %55 = load i32, i32* %status, align 4, !dbg !4133
  %conv59 = trunc i32 %55 to i16, !dbg !4133
  %56 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4135
  %57 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %56, i32 0, i32 2, !dbg !4136
  %wdata = bitcast %union.anon.49* %57 to i16*, !dbg !4136
  store i16 %conv59, i16* %wdata, align 1, !dbg !4137
  store i32 0, i32* %status, align 4, !dbg !4138
  br label %if.end60, !dbg !4139

if.end60:                                         ; preds = %if.then58, %if.then53
  br label %if.end65, !dbg !4140

if.else61:                                        ; preds = %sw.bb49
  %58 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4141
  %59 = load i64, i64* %command.addr, align 8, !dbg !4143
  %conv62 = trunc i64 %59 to i8, !dbg !4143
  %60 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4144
  %61 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %60, i32 0, i32 2, !dbg !4145
  %wdata63 = bitcast %union.anon.49* %61 to i16*, !dbg !4145
  %62 = load i16, i16* %wdata63, align 1, !dbg !4145
  %call64 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %58, i8 zeroext %conv62, i16 zeroext %62) #8, !dbg !4146
  store i32 %call64, i32* %status, align 4, !dbg !4147
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.end60
  br label %sw.epilog, !dbg !4148

sw.bb66:                                          ; preds = %if.end17
  %63 = load i8, i8* %action, align 1, !dbg !4149
  %conv67 = zext i8 %63 to i32, !dbg !4149
  %cmp68 = icmp eq i32 %conv67, 0, !dbg !4151
  br i1 %cmp68, label %if.then70, label %if.else79, !dbg !4152

if.then70:                                        ; preds = %sw.bb66
  %64 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4153
  %65 = load i64, i64* %command.addr, align 8, !dbg !4155
  %conv71 = trunc i64 %65 to i8, !dbg !4155
  %66 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4156
  %67 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %66, i32 0, i32 2, !dbg !4157
  %data72 = bitcast %union.anon.49* %67 to [0 x i8]*, !dbg !4157
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data72, i64 0, i64 0, !dbg !4156
  %call73 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %64, i8 zeroext %conv71, i8* %arraydecay) #8, !dbg !4158
  store i32 %call73, i32* %status, align 4, !dbg !4159
  %68 = load i32, i32* %status, align 4, !dbg !4160
  %cmp74 = icmp sge i32 %68, 0, !dbg !4162
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !4163

if.then76:                                        ; preds = %if.then70
  %69 = load i32, i32* %status, align 4, !dbg !4164
  %conv77 = trunc i32 %69 to i8, !dbg !4164
  %70 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4166
  %len = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %70, i32 0, i32 1, !dbg !4167
  store i8 %conv77, i8* %len, align 1, !dbg !4168
  store i32 0, i32* %status, align 4, !dbg !4169
  br label %if.end78, !dbg !4170

if.end78:                                         ; preds = %if.then76, %if.then70
  br label %if.end85, !dbg !4171

if.else79:                                        ; preds = %sw.bb66
  %71 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4172
  %72 = load i64, i64* %command.addr, align 8, !dbg !4174
  %conv80 = trunc i64 %72 to i8, !dbg !4174
  %73 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4175
  %len81 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %73, i32 0, i32 1, !dbg !4176
  %74 = load i8, i8* %len81, align 1, !dbg !4176
  %75 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4177
  %76 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %75, i32 0, i32 2, !dbg !4178
  %data82 = bitcast %union.anon.49* %76 to [0 x i8]*, !dbg !4178
  %arraydecay83 = getelementptr inbounds [0 x i8], [0 x i8]* %data82, i64 0, i64 0, !dbg !4177
  %call84 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %71, i8 zeroext %conv80, i8 zeroext %74, i8* %arraydecay83) #8, !dbg !4179
  store i32 %call84, i32* %status, align 4, !dbg !4180
  br label %if.end85

if.end85:                                         ; preds = %if.else79, %if.end78
  br label %sw.epilog, !dbg !4181

sw.bb86:                                          ; preds = %if.end17
  %77 = load i8, i8* %action, align 1, !dbg !4182
  %conv87 = zext i8 %77 to i32, !dbg !4182
  %cmp88 = icmp eq i32 %conv87, 0, !dbg !4184
  br i1 %cmp88, label %if.then90, label %if.else95, !dbg !4185

if.then90:                                        ; preds = %sw.bb86
  %78 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4186
  %79 = load i64, i64* %command.addr, align 8, !dbg !4188
  %conv91 = trunc i64 %79 to i8, !dbg !4188
  %80 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4189
  %81 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %80, i32 0, i32 2, !dbg !4190
  %data92 = bitcast %union.anon.49* %81 to [0 x i8]*, !dbg !4190
  %arraydecay93 = getelementptr inbounds [0 x i8], [0 x i8]* %data92, i64 0, i64 0, !dbg !4189
  %82 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %info, align 8, !dbg !4191
  %access_length = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %82, i32 0, i32 2, !dbg !4192
  %83 = load i8, i8* %access_length, align 2, !dbg !4192
  %call94 = call i32 @acpi_gsb_i2c_read_bytes(%struct.i2c_client* %78, i8 zeroext %conv91, i8* %arraydecay93, i8 zeroext %83) #8, !dbg !4193
  store i32 %call94, i32* %status, align 4, !dbg !4194
  br label %if.end101, !dbg !4195

if.else95:                                        ; preds = %sw.bb86
  %84 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4196
  %85 = load i64, i64* %command.addr, align 8, !dbg !4198
  %conv96 = trunc i64 %85 to i8, !dbg !4198
  %86 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4199
  %87 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %86, i32 0, i32 2, !dbg !4200
  %data97 = bitcast %union.anon.49* %87 to [0 x i8]*, !dbg !4200
  %arraydecay98 = getelementptr inbounds [0 x i8], [0 x i8]* %data97, i64 0, i64 0, !dbg !4199
  %88 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %info, align 8, !dbg !4201
  %access_length99 = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %88, i32 0, i32 2, !dbg !4202
  %89 = load i8, i8* %access_length99, align 2, !dbg !4202
  %call100 = call i32 @acpi_gsb_i2c_write_bytes(%struct.i2c_client* %84, i8 zeroext %conv96, i8* %arraydecay98, i8 zeroext %89) #8, !dbg !4203
  store i32 %call100, i32* %status, align 4, !dbg !4204
  br label %if.end101

if.end101:                                        ; preds = %if.else95, %if.then90
  br label %sw.epilog, !dbg !4205

sw.default:                                       ; preds = %if.end17
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4206
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %90, i32 0, i32 9, !dbg !4206
  %91 = load i32, i32* %accessor_type, align 4, !dbg !4206
  %92 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4206
  %addr102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 1, !dbg !4206
  %93 = load i16, i16* %addr102, align 2, !dbg !4206
  %conv103 = zext i16 %93 to i32, !dbg !4206
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %conv103) #9, !dbg !4206
  store i32 4097, i32* %ret, align 4, !dbg !4207
  br label %err, !dbg !4208

sw.epilog:                                        ; preds = %if.end101, %if.end85, %if.end65, %if.end48, %if.end30
  %94 = load i32, i32* %status, align 4, !dbg !4209
  %conv104 = trunc i32 %94 to i8, !dbg !4209
  %95 = load %struct.gsb_buffer*, %struct.gsb_buffer** %gsb, align 8, !dbg !4210
  %status105 = getelementptr inbounds %struct.gsb_buffer, %struct.gsb_buffer* %95, i32 0, i32 0, !dbg !4211
  store i8 %conv104, i8* %status105, align 1, !dbg !4212
  br label %err, !dbg !4210

err:                                              ; preds = %sw.epilog, %sw.default, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !4213), !dbg !4214
  %96 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4215
  %97 = bitcast %struct.i2c_client* %96 to i8*, !dbg !4215
  call void @kfree(i8* %97) #8, !dbg !4216
  %98 = load %struct.acpi_resource*, %struct.acpi_resource** %ares, align 8, !dbg !4217
  %99 = bitcast %struct.acpi_resource* %98 to i8*, !dbg !4217
  call void @acpi_os_free(i8* %99) #8, !dbg !4217
  %100 = load i32, i32* %ret, align 4, !dbg !4218
  store i32 %100, i32* %retval, align 4, !dbg !4219
  br label %return, !dbg !4219

return:                                           ; preds = %err, %if.then
  %101 = load i32, i32* %retval, align 4, !dbg !4220
  ret i32 %101, !dbg !4220
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @acpi_bus_detach_private_data(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @i2c_acpi_remove_space_handler(%struct.i2c_adapter* %adapter) #0 !dbg !4221 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %handle = alloca i8*, align 8
  %data = alloca %struct.i2c_acpi_handler_data*, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp3 = alloca %struct.acpi_device*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_handler_data** %data, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4228, metadata !DIExpression()), !dbg !4229
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4230
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !4232
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4233
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4233
  %tobool = icmp ne %struct.device* %1, null, !dbg !4230
  br i1 %tobool, label %if.end, label %if.then, !dbg !4234

if.then:                                          ; preds = %entry
  br label %return, !dbg !4235

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4236, metadata !DIExpression()), !dbg !4238
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4238
  %dev1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %2, i32 0, i32 9, !dbg !4238
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 1, !dbg !4238
  %3 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !4238
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 24, !dbg !4238
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4238
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4238
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4238
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %5) #8, !dbg !4238
  br i1 %call, label %cond.true, label %cond.false, !dbg !4238

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4239, metadata !DIExpression()), !dbg !4241
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4241
  %7 = bitcast %struct.fwnode_handle* %6 to i8*, !dbg !4241
  store i8* %7, i8** %__mptr, align 8, !dbg !4241
  br label %do.body, !dbg !4241

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4242

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4241
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !4241
  %9 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4241
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp3, align 8, !dbg !4242
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp3, align 8, !dbg !4241
  br label %cond.end, !dbg !4238

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4238

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %10, %do.end ], [ null, %cond.false ], !dbg !4238
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4238
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4238
  %call4 = call i8* @acpi_device_handle(%struct.acpi_device* %11) #8, !dbg !4244
  store i8* %call4, i8** %handle, align 8, !dbg !4245
  %12 = load i8*, i8** %handle, align 8, !dbg !4246
  %tobool5 = icmp ne i8* %12, null, !dbg !4246
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4248

if.then6:                                         ; preds = %cond.end
  br label %return, !dbg !4249

if.end7:                                          ; preds = %cond.end
  %13 = load i8*, i8** %handle, align 8, !dbg !4250
  %call8 = call i32 @acpi_remove_address_space_handler(i8* %13, i8 zeroext 9, i32 (i32, i64, i32, i64*, i8*, i8*)* @i2c_acpi_space_handler) #8, !dbg !4251
  %14 = load i8*, i8** %handle, align 8, !dbg !4252
  %15 = bitcast %struct.i2c_acpi_handler_data** %data to i8**, !dbg !4253
  %call9 = call i32 @acpi_bus_get_private_data(i8* %14, i8** %15) #8, !dbg !4254
  store i32 %call9, i32* %status, align 4, !dbg !4255
  %16 = load i32, i32* %status, align 4, !dbg !4256
  %tobool10 = icmp ne i32 %16, 0, !dbg !4256
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4258

if.then11:                                        ; preds = %if.end7
  %17 = load %struct.i2c_acpi_handler_data*, %struct.i2c_acpi_handler_data** %data, align 8, !dbg !4259
  %18 = bitcast %struct.i2c_acpi_handler_data* %17 to i8*, !dbg !4259
  call void @kfree(i8* %18) #8, !dbg !4260
  br label %if.end12, !dbg !4260

if.end12:                                         ; preds = %if.then11, %if.end7
  %19 = load i8*, i8** %handle, align 8, !dbg !4261
  call void @acpi_bus_detach_private_data(i8* %19) #8, !dbg !4262
  br label %return, !dbg !4263

return:                                           ; preds = %if.end12, %if.then6, %if.then
  ret void, !dbg !4263
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_address_space_handler(i8*, i8 zeroext, i32 (i32, i64, i32, i64*, i8*, i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_private_data(i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource*, i32, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_dev_irq_from_resources(%struct.resource*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_get_info(%struct.acpi_device* %adev, %struct.i2c_board_info* %info, %struct.i2c_adapter* %adapter, i8** %adapter_handle) #0 !dbg !4264 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %info.addr = alloca %struct.i2c_board_info*, align 8
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %adapter_handle.addr = alloca i8**, align 8
  %lookup = alloca %struct.i2c_acpi_lookup, align 8
  %ret = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp8 = alloca %struct.acpi_device*, align 8
  %adapter_adev = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4268, metadata !DIExpression()), !dbg !4269
  store %struct.i2c_board_info* %info, %struct.i2c_board_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i8** %adapter_handle, i8*** %adapter_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %adapter_handle.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup* %lookup, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4278, metadata !DIExpression()), !dbg !4279
  %0 = bitcast %struct.i2c_acpi_lookup* %lookup to i8*, !dbg !4280
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !4280
  %1 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !4281
  %info1 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 0, !dbg !4282
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %info1, align 8, !dbg !4283
  %index = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 5, !dbg !4284
  store i32 -1, i32* %index, align 4, !dbg !4285
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4286
  %call = call zeroext i1 @acpi_device_enumerated(%struct.acpi_device* %2) #8, !dbg !4288
  br i1 %call, label %if.then, label %if.end, !dbg !4289

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4290
  br label %return, !dbg !4290

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4291
  %call2 = call i32 @i2c_acpi_do_lookup(%struct.acpi_device* %3, %struct.i2c_acpi_lookup* %lookup) #8, !dbg !4292
  store i32 %call2, i32* %ret, align 4, !dbg !4293
  %4 = load i32, i32* %ret, align 4, !dbg !4294
  %tobool = icmp ne i32 %4, 0, !dbg !4294
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4296

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !4297
  store i32 %5, i32* %retval, align 4, !dbg !4298
  br label %return, !dbg !4298

if.end4:                                          ; preds = %if.end
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4299
  %tobool5 = icmp ne %struct.i2c_adapter* %6, null, !dbg !4299
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !4301

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4302, metadata !DIExpression()), !dbg !4306
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4306
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 9, !dbg !4306
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !4306
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4306
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4306
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4306
  %call7 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %9) #8, !dbg !4306
  br i1 %call7, label %cond.true, label %cond.false, !dbg !4306

cond.true:                                        ; preds = %if.then6
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4307, metadata !DIExpression()), !dbg !4309
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4309
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !4309
  store i8* %11, i8** %__mptr, align 8, !dbg !4309
  br label %do.body, !dbg !4309

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4310

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !4309
  %add.ptr = getelementptr i8, i8* %12, i64 -16, !dbg !4309
  %13 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4309
  store %struct.acpi_device* %13, %struct.acpi_device** %tmp8, align 8, !dbg !4310
  %14 = load %struct.acpi_device*, %struct.acpi_device** %tmp8, align 8, !dbg !4309
  br label %cond.end, !dbg !4306

cond.false:                                       ; preds = %if.then6
  br label %cond.end, !dbg !4306

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %14, %do.end ], [ null, %cond.false ], !dbg !4306
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4306
  %15 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4306
  %call9 = call i8* @acpi_device_handle(%struct.acpi_device* %15) #8, !dbg !4312
  %adapter_handle10 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 1, !dbg !4313
  %16 = load i8*, i8** %adapter_handle10, align 8, !dbg !4313
  %cmp = icmp ne i8* %call9, %16, !dbg !4314
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4315

if.then11:                                        ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !4316
  br label %return, !dbg !4316

if.end12:                                         ; preds = %cond.end
  br label %if.end23, !dbg !4317

if.else:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adapter_adev, metadata !4318, metadata !DIExpression()), !dbg !4320
  %adapter_handle13 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 1, !dbg !4321
  %17 = load i8*, i8** %adapter_handle13, align 8, !dbg !4321
  %call14 = call i32 @acpi_bus_get_device(i8* %17, %struct.acpi_device** %adapter_adev) #8, !dbg !4323
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4323
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4324

if.then16:                                        ; preds = %if.else
  store i32 -19, i32* %retval, align 4, !dbg !4325
  br label %return, !dbg !4325

if.end17:                                         ; preds = %if.else
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adapter_adev, align 8, !dbg !4326
  %call18 = call i32 @acpi_bus_get_status(%struct.acpi_device* %18) #8, !dbg !4328
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4328
  br i1 %tobool19, label %if.then21, label %lor.lhs.false, !dbg !4329

lor.lhs.false:                                    ; preds = %if.end17
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adapter_adev, align 8, !dbg !4330
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 8, !dbg !4331
  %20 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !4332
  %bf.load = load i32, i32* %20, align 8, !dbg !4332
  %bf.clear = and i32 %bf.load, 1, !dbg !4332
  %tobool20 = icmp ne i32 %bf.clear, 0, !dbg !4330
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4333

if.then21:                                        ; preds = %lor.lhs.false, %if.end17
  store i32 -19, i32* %retval, align 4, !dbg !4334
  br label %return, !dbg !4334

if.end22:                                         ; preds = %lor.lhs.false
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end12
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4335
  %call24 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %21) #8, !dbg !4336
  %22 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !4337
  %fwnode25 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 6, !dbg !4338
  store %struct.fwnode_handle* %call24, %struct.fwnode_handle** %fwnode25, align 8, !dbg !4339
  %23 = load i8**, i8*** %adapter_handle.addr, align 8, !dbg !4340
  %tobool26 = icmp ne i8** %23, null, !dbg !4340
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !4342

if.then27:                                        ; preds = %if.end23
  %adapter_handle28 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %lookup, i32 0, i32 1, !dbg !4343
  %24 = load i8*, i8** %adapter_handle28, align 8, !dbg !4343
  %25 = load i8**, i8*** %adapter_handle.addr, align 8, !dbg !4344
  store i8* %24, i8** %25, align 8, !dbg !4345
  br label %if.end29, !dbg !4346

if.end29:                                         ; preds = %if.then27, %if.end23
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4347
  %27 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4348
  %dev30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 21, !dbg !4349
  %call31 = call i8* @dev_name(%struct.device* %dev30) #8, !dbg !4350
  %28 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !4351
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %28, i32 0, i32 0, !dbg !4352
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !4351
  call void @acpi_set_modalias(%struct.acpi_device* %26, i8* %call31, i8* %arraydecay, i64 20) #8, !dbg !4353
  store i32 0, i32* %retval, align 4, !dbg !4354
  br label %return, !dbg !4354

return:                                           ; preds = %if.end29, %if.then21, %if.then16, %if.then11, %if.then3, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4355
  ret i32 %29, !dbg !4355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_acpi_register_device(%struct.i2c_adapter* %adapter, %struct.acpi_device* %adev, %struct.i2c_board_info* %info) #0 !dbg !4356 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %info.addr = alloca %struct.i2c_board_info*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  store %struct.i2c_board_info* %info, %struct.i2c_board_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4365
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 11, !dbg !4366
  %flags = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !4367
  %1 = bitcast %struct.acpi_device_power_flags* %flags to i32*, !dbg !4368
  %bf.load = load i32, i32* %1, align 4, !dbg !4369
  %bf.clear = and i32 %bf.load, -17, !dbg !4369
  %bf.set = or i32 %bf.clear, 16, !dbg !4369
  store i32 %bf.set, i32* %1, align 4, !dbg !4369
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4370
  call void @acpi_device_set_enumerated(%struct.acpi_device* %2) #8, !dbg !4371
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4372
  %4 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !4374
  %call = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %3, %struct.i2c_board_info* %4) #8, !dbg !4375
  %5 = bitcast %struct.i2c_client* %call to i8*, !dbg !4375
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !4376
  br i1 %call1, label %if.then, label %if.end, !dbg !4377

if.then:                                          ; preds = %entry
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4378
  %power2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 11, !dbg !4380
  %flags3 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power2, i32 0, i32 1, !dbg !4381
  %7 = bitcast %struct.acpi_device_power_flags* %flags3 to i32*, !dbg !4382
  %bf.load4 = load i32, i32* %7, align 4, !dbg !4383
  %bf.clear5 = and i32 %bf.load4, -17, !dbg !4383
  store i32 %bf.clear5, i32* %7, align 4, !dbg !4383
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4384
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 9, !dbg !4384
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4384
  %dev6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 21, !dbg !4384
  %call7 = call i8* @dev_name(%struct.device* %dev6) #8, !dbg !4384
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %call7) #9, !dbg !4384
  br label %if.end, !dbg !4385

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_device_enumerated(%struct.acpi_device* %adev) #0 !dbg !4387 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4392
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !4392
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !4393

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4394
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 9, !dbg !4395
  %2 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !4396
  %bf.load = load i32, i32* %2, align 4, !dbg !4396
  %bf.lshr = lshr i32 %bf.load, 5, !dbg !4396
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4396
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !4394
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !4397

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4398
  %flags2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 9, !dbg !4399
  %4 = bitcast %struct.acpi_device_flags* %flags2 to i32*, !dbg !4400
  %bf.load3 = load i32, i32* %4, align 4, !dbg !4400
  %bf.lshr4 = lshr i32 %bf.load3, 6, !dbg !4400
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !4400
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !4397
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !4401
  ret i1 %5, !dbg !4402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_acpi_do_lookup(%struct.acpi_device* %adev, %struct.i2c_acpi_lookup* %lookup) #0 !dbg !4403 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %lookup.addr = alloca %struct.i2c_acpi_lookup*, align 8
  %info = alloca %struct.i2c_board_info*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store %struct.i2c_acpi_lookup* %lookup, %struct.i2c_acpi_lookup** %lookup.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_acpi_lookup** %lookup.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info, metadata !4410, metadata !DIExpression()), !dbg !4411
  %0 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup.addr, align 8, !dbg !4412
  %info1 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %0, i32 0, i32 0, !dbg !4413
  %1 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info1, align 8, !dbg !4413
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %info, align 8, !dbg !4411
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4416, metadata !DIExpression()), !dbg !4417
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4418
  %call = call i32 @acpi_bus_get_status(%struct.acpi_device* %2) #8, !dbg !4420
  %tobool = icmp ne i32 %call, 0, !dbg !4420
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4421

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4422
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 8, !dbg !4423
  %4 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !4424
  %bf.load = load i32, i32* %4, align 8, !dbg !4424
  %bf.clear = and i32 %bf.load, 1, !dbg !4424
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !4422
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4425

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4426
  br label %return, !dbg !4426

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4427
  %call3 = call i32 @acpi_match_device_ids(%struct.acpi_device* %5, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @i2c_acpi_ignored_device_ids, i64 0, i64 0)) #8, !dbg !4429
  %cmp = icmp eq i32 %call3, 0, !dbg !4430
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4431

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4432
  br label %return, !dbg !4432

if.end5:                                          ; preds = %if.end
  %6 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info, align 8, !dbg !4433
  %7 = bitcast %struct.i2c_board_info* %6 to i8*, !dbg !4434
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 80, i1 false), !dbg !4434
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4435
  %call6 = call i8* @acpi_device_handle(%struct.acpi_device* %8) #8, !dbg !4436
  %9 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup.addr, align 8, !dbg !4437
  %device_handle = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %9, i32 0, i32 2, !dbg !4438
  store i8* %call6, i8** %device_handle, align 8, !dbg !4439
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #8, !dbg !4440
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4441
  %11 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %lookup.addr, align 8, !dbg !4442
  %12 = bitcast %struct.i2c_acpi_lookup* %11 to i8*, !dbg !4442
  %call7 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %10, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* @i2c_acpi_fill_info, i8* %12) #8, !dbg !4443
  store i32 %call7, i32* %ret, align 4, !dbg !4444
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #8, !dbg !4445
  %13 = load i32, i32* %ret, align 4, !dbg !4446
  %cmp8 = icmp slt i32 %13, 0, !dbg !4448
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !4449

lor.lhs.false9:                                   ; preds = %if.end5
  %14 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info, align 8, !dbg !4450
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %14, i32 0, i32 2, !dbg !4451
  %15 = load i16, i16* %addr, align 2, !dbg !4451
  %tobool10 = icmp ne i16 %15, 0, !dbg !4450
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4452

if.then11:                                        ; preds = %lor.lhs.false9, %if.end5
  store i32 -22, i32* %retval, align 4, !dbg !4453
  br label %return, !dbg !4453

if.end12:                                         ; preds = %lor.lhs.false9
  store i32 0, i32* %retval, align 4, !dbg !4454
  br label %return, !dbg !4454

return:                                           ; preds = %if.end12, %if.then11, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4455
  ret i32 %16, !dbg !4455
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_status(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !4456 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4461
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !4462
  ret %struct.fwnode_handle* %fwnode, !dbg !4463
}

; Function Attrs: noredzone
declare dso_local void @acpi_set_modalias(%struct.acpi_device*, i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4464 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4469
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4471
  %1 = load i8*, i8** %init_name, align 8, !dbg !4471
  %tobool = icmp ne i8* %1, null, !dbg !4469
  br i1 %tobool, label %if.then, label %if.end, !dbg !4472

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4473
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4474
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4474
  store i8* %3, i8** %retval, align 8, !dbg !4475
  br label %return, !dbg !4475

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4476
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4477
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !4478
  store i8* %call, i8** %retval, align 8, !dbg !4479
  br label %return, !dbg !4479

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4480
  ret i8* %5, !dbg !4480
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4481 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4486, metadata !DIExpression()), !dbg !4487
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4488
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4489
  %1 = load i8*, i8** %name, align 8, !dbg !4489
  ret i8* %1, !dbg !4490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_device_set_enumerated(%struct.acpi_device* %adev) #0 !dbg !4491 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4494
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 9, !dbg !4495
  %1 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !4496
  %bf.load = load i32, i32* %1, align 4, !dbg !4497
  %bf.clear = and i32 %bf.load, -65, !dbg !4497
  %bf.set = or i32 %bf.clear, 64, !dbg !4497
  store i32 %bf.set, i32* %1, align 4, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4499 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4504
  %1 = ptrtoint i8* %0 to i64, !dbg !4504
  %2 = inttoptr i64 %1 to i8*, !dbg !4504
  %3 = ptrtoint i8* %2 to i64, !dbg !4504
  %cmp = icmp uge i64 %3, -4095, !dbg !4504
  %lnot = xor i1 %cmp, true, !dbg !4504
  %lnot1 = xor i1 %lnot, true, !dbg !4504
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4504
  %conv = sext i32 %lnot.ext to i64, !dbg !4504
  %tobool = icmp ne i64 %conv, 0, !dbg !4504
  ret i1 %tobool, !dbg !4505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.i2c_client* @i2c_acpi_find_client_by_adev(%struct.acpi_device* %adev) #0 !dbg !4506 {
entry:
  %retval = alloca %struct.i2c_client*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev = alloca %struct.device*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4515
  %call = call %struct.device* @bus_find_device_by_acpi_dev(%struct.bus_type* @i2c_bus_type, %struct.acpi_device* %0) #8, !dbg !4516
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4517
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4518
  %tobool = icmp ne %struct.device* %1, null, !dbg !4518
  br i1 %tobool, label %if.end, label %if.then, !dbg !4520

if.then:                                          ; preds = %entry
  store %struct.i2c_client* null, %struct.i2c_client** %retval, align 8, !dbg !4521
  br label %return, !dbg !4521

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4522
  %call1 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %2) #8, !dbg !4523
  store %struct.i2c_client* %call1, %struct.i2c_client** %client, align 8, !dbg !4524
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4525
  %tobool2 = icmp ne %struct.i2c_client* %3, null, !dbg !4525
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4527

if.then3:                                         ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4528
  call void @put_device(%struct.device* %4) #8, !dbg !4529
  br label %if.end4, !dbg !4529

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4530
  store %struct.i2c_client* %5, %struct.i2c_client** %retval, align 8, !dbg !4531
  br label %return, !dbg !4531

return:                                           ; preds = %if.end4, %if.then
  %6 = load %struct.i2c_client*, %struct.i2c_client** %retval, align 8, !dbg !4532
  ret %struct.i2c_client* %6, !dbg !4532
}

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @bus_find_device_by_acpi_dev(%struct.bus_type* %bus, %struct.acpi_device* %adev) #0 !dbg !4533 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4542
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4543
  %2 = bitcast %struct.acpi_device* %1 to i8*, !dbg !4543
  %call = call %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_acpi_dev) #8, !dbg !4544
  ret %struct.device* %call, !dbg !4545
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_acpi_dev(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4546 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4550, metadata !DIExpression()), !dbg !4555
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4557, metadata !DIExpression()), !dbg !4558
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  %0 = load i64, i64* %size.addr, align 8, !dbg !4561
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4563
  br i1 %1, label %if.then, label %if.end447, !dbg !4564

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4565
  %tobool = icmp ne i64 %2, 0, !dbg !4565
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4568

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4569
  br label %return, !dbg !4569

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4570
  %cmp = icmp ult i64 %3, 4096, !dbg !4572
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4573

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub = sub i64 %4, 1, !dbg !4575
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4575
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4575

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub4 = sub i64 %6, 1, !dbg !4575
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4575
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4575

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub6 = sub i64 %8, 1, !dbg !4575
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4575
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4575

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4575

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub9 = sub i64 %9, 1, !dbg !4575
  %and = and i64 %sub9, -9223372036854775808, !dbg !4575
  %tobool10 = icmp ne i64 %and, 0, !dbg !4575
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4575

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4575

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub13 = sub i64 %10, 1, !dbg !4575
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4575
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4575
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4575

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4575

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub18 = sub i64 %11, 1, !dbg !4575
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4575
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4575
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4575

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4575

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub23 = sub i64 %12, 1, !dbg !4575
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4575
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4575
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4575

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4575

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub28 = sub i64 %13, 1, !dbg !4575
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4575
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4575
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4575

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4575

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub33 = sub i64 %14, 1, !dbg !4575
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4575
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4575
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4575

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4575

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub38 = sub i64 %15, 1, !dbg !4575
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4575
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4575
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4575

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4575

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub43 = sub i64 %16, 1, !dbg !4575
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4575
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4575
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4575

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4575

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub48 = sub i64 %17, 1, !dbg !4575
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4575
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4575
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4575

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4575

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub53 = sub i64 %18, 1, !dbg !4575
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4575
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4575
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4575

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4575

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub58 = sub i64 %19, 1, !dbg !4575
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4575
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4575
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4575

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4575

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub63 = sub i64 %20, 1, !dbg !4575
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4575
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4575
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4575

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4575

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub68 = sub i64 %21, 1, !dbg !4575
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4575
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4575
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4575

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4575

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub73 = sub i64 %22, 1, !dbg !4575
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4575
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4575
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4575

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4575

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub78 = sub i64 %23, 1, !dbg !4575
  %and79 = and i64 %sub78, 562949953421312, !dbg !4575
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4575
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4575

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4575

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub83 = sub i64 %24, 1, !dbg !4575
  %and84 = and i64 %sub83, 281474976710656, !dbg !4575
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4575
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4575

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4575

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub88 = sub i64 %25, 1, !dbg !4575
  %and89 = and i64 %sub88, 140737488355328, !dbg !4575
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4575
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4575

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4575

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub93 = sub i64 %26, 1, !dbg !4575
  %and94 = and i64 %sub93, 70368744177664, !dbg !4575
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4575
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4575

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4575

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub98 = sub i64 %27, 1, !dbg !4575
  %and99 = and i64 %sub98, 35184372088832, !dbg !4575
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4575
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4575

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4575

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub103 = sub i64 %28, 1, !dbg !4575
  %and104 = and i64 %sub103, 17592186044416, !dbg !4575
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4575
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4575

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4575

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub108 = sub i64 %29, 1, !dbg !4575
  %and109 = and i64 %sub108, 8796093022208, !dbg !4575
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4575
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4575

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4575

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub113 = sub i64 %30, 1, !dbg !4575
  %and114 = and i64 %sub113, 4398046511104, !dbg !4575
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4575
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4575

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4575

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub118 = sub i64 %31, 1, !dbg !4575
  %and119 = and i64 %sub118, 2199023255552, !dbg !4575
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4575
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4575

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4575

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub123 = sub i64 %32, 1, !dbg !4575
  %and124 = and i64 %sub123, 1099511627776, !dbg !4575
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4575
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4575

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4575

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub128 = sub i64 %33, 1, !dbg !4575
  %and129 = and i64 %sub128, 549755813888, !dbg !4575
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4575
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4575

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4575

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub133 = sub i64 %34, 1, !dbg !4575
  %and134 = and i64 %sub133, 274877906944, !dbg !4575
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4575
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4575

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4575

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub138 = sub i64 %35, 1, !dbg !4575
  %and139 = and i64 %sub138, 137438953472, !dbg !4575
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4575
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4575

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4575

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub143 = sub i64 %36, 1, !dbg !4575
  %and144 = and i64 %sub143, 68719476736, !dbg !4575
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4575
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4575

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4575

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub148 = sub i64 %37, 1, !dbg !4575
  %and149 = and i64 %sub148, 34359738368, !dbg !4575
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4575
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4575

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4575

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub153 = sub i64 %38, 1, !dbg !4575
  %and154 = and i64 %sub153, 17179869184, !dbg !4575
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4575
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4575

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4575

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub158 = sub i64 %39, 1, !dbg !4575
  %and159 = and i64 %sub158, 8589934592, !dbg !4575
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4575
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4575

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4575

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub163 = sub i64 %40, 1, !dbg !4575
  %and164 = and i64 %sub163, 4294967296, !dbg !4575
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4575
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4575

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4575

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub168 = sub i64 %41, 1, !dbg !4575
  %and169 = and i64 %sub168, 2147483648, !dbg !4575
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4575
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4575

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4575

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub173 = sub i64 %42, 1, !dbg !4575
  %and174 = and i64 %sub173, 1073741824, !dbg !4575
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4575
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4575

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4575

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub178 = sub i64 %43, 1, !dbg !4575
  %and179 = and i64 %sub178, 536870912, !dbg !4575
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4575
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4575

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4575

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub183 = sub i64 %44, 1, !dbg !4575
  %and184 = and i64 %sub183, 268435456, !dbg !4575
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4575
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4575

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4575

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub188 = sub i64 %45, 1, !dbg !4575
  %and189 = and i64 %sub188, 134217728, !dbg !4575
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4575
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4575

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4575

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub193 = sub i64 %46, 1, !dbg !4575
  %and194 = and i64 %sub193, 67108864, !dbg !4575
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4575
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4575

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4575

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub198 = sub i64 %47, 1, !dbg !4575
  %and199 = and i64 %sub198, 33554432, !dbg !4575
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4575
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4575

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4575

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub203 = sub i64 %48, 1, !dbg !4575
  %and204 = and i64 %sub203, 16777216, !dbg !4575
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4575
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4575

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4575

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub208 = sub i64 %49, 1, !dbg !4575
  %and209 = and i64 %sub208, 8388608, !dbg !4575
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4575
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4575

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4575

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub213 = sub i64 %50, 1, !dbg !4575
  %and214 = and i64 %sub213, 4194304, !dbg !4575
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4575
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4575

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4575

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub218 = sub i64 %51, 1, !dbg !4575
  %and219 = and i64 %sub218, 2097152, !dbg !4575
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4575
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4575

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4575

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub223 = sub i64 %52, 1, !dbg !4575
  %and224 = and i64 %sub223, 1048576, !dbg !4575
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4575
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4575

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4575

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub228 = sub i64 %53, 1, !dbg !4575
  %and229 = and i64 %sub228, 524288, !dbg !4575
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4575
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4575

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4575

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub233 = sub i64 %54, 1, !dbg !4575
  %and234 = and i64 %sub233, 262144, !dbg !4575
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4575
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4575

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4575

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub238 = sub i64 %55, 1, !dbg !4575
  %and239 = and i64 %sub238, 131072, !dbg !4575
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4575
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4575

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4575

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub243 = sub i64 %56, 1, !dbg !4575
  %and244 = and i64 %sub243, 65536, !dbg !4575
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4575
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4575

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4575

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub248 = sub i64 %57, 1, !dbg !4575
  %and249 = and i64 %sub248, 32768, !dbg !4575
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4575
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4575

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4575

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub253 = sub i64 %58, 1, !dbg !4575
  %and254 = and i64 %sub253, 16384, !dbg !4575
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4575
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4575

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4575

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub258 = sub i64 %59, 1, !dbg !4575
  %and259 = and i64 %sub258, 8192, !dbg !4575
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4575
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4575

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4575

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub263 = sub i64 %60, 1, !dbg !4575
  %and264 = and i64 %sub263, 4096, !dbg !4575
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4575
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4575

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4575

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub268 = sub i64 %61, 1, !dbg !4575
  %and269 = and i64 %sub268, 2048, !dbg !4575
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4575
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4575

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4575

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub273 = sub i64 %62, 1, !dbg !4575
  %and274 = and i64 %sub273, 1024, !dbg !4575
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4575
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4575

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4575

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub278 = sub i64 %63, 1, !dbg !4575
  %and279 = and i64 %sub278, 512, !dbg !4575
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4575
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4575

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4575

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub283 = sub i64 %64, 1, !dbg !4575
  %and284 = and i64 %sub283, 256, !dbg !4575
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4575
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4575

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4575

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub288 = sub i64 %65, 1, !dbg !4575
  %and289 = and i64 %sub288, 128, !dbg !4575
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4575
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4575

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4575

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub293 = sub i64 %66, 1, !dbg !4575
  %and294 = and i64 %sub293, 64, !dbg !4575
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4575
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4575

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4575

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub298 = sub i64 %67, 1, !dbg !4575
  %and299 = and i64 %sub298, 32, !dbg !4575
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4575
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4575

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4575

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub303 = sub i64 %68, 1, !dbg !4575
  %and304 = and i64 %sub303, 16, !dbg !4575
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4575
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4575

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4575

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub308 = sub i64 %69, 1, !dbg !4575
  %and309 = and i64 %sub308, 8, !dbg !4575
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4575
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4575

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4575

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub313 = sub i64 %70, 1, !dbg !4575
  %and314 = and i64 %sub313, 4, !dbg !4575
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4575
  %71 = zext i1 %tobool315 to i64, !dbg !4575
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4575
  br label %cond.end, !dbg !4575

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4575
  br label %cond.end317, !dbg !4575

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4575
  br label %cond.end319, !dbg !4575

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4575
  br label %cond.end321, !dbg !4575

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4575
  br label %cond.end323, !dbg !4575

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4575
  br label %cond.end325, !dbg !4575

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4575
  br label %cond.end327, !dbg !4575

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4575
  br label %cond.end329, !dbg !4575

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4575
  br label %cond.end331, !dbg !4575

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4575
  br label %cond.end333, !dbg !4575

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4575
  br label %cond.end335, !dbg !4575

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4575
  br label %cond.end337, !dbg !4575

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4575
  br label %cond.end339, !dbg !4575

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4575
  br label %cond.end341, !dbg !4575

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4575
  br label %cond.end343, !dbg !4575

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4575
  br label %cond.end345, !dbg !4575

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4575
  br label %cond.end347, !dbg !4575

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4575
  br label %cond.end349, !dbg !4575

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4575
  br label %cond.end351, !dbg !4575

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4575
  br label %cond.end353, !dbg !4575

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4575
  br label %cond.end355, !dbg !4575

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4575
  br label %cond.end357, !dbg !4575

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4575
  br label %cond.end359, !dbg !4575

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4575
  br label %cond.end361, !dbg !4575

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4575
  br label %cond.end363, !dbg !4575

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4575
  br label %cond.end365, !dbg !4575

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4575
  br label %cond.end367, !dbg !4575

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4575
  br label %cond.end369, !dbg !4575

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4575
  br label %cond.end371, !dbg !4575

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4575
  br label %cond.end373, !dbg !4575

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4575
  br label %cond.end375, !dbg !4575

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4575
  br label %cond.end377, !dbg !4575

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4575
  br label %cond.end379, !dbg !4575

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4575
  br label %cond.end381, !dbg !4575

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4575
  br label %cond.end383, !dbg !4575

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4575
  br label %cond.end385, !dbg !4575

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4575
  br label %cond.end387, !dbg !4575

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4575
  br label %cond.end389, !dbg !4575

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4575
  br label %cond.end391, !dbg !4575

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4575
  br label %cond.end393, !dbg !4575

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4575
  br label %cond.end395, !dbg !4575

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4575
  br label %cond.end397, !dbg !4575

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4575
  br label %cond.end399, !dbg !4575

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4575
  br label %cond.end401, !dbg !4575

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4575
  br label %cond.end403, !dbg !4575

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4575
  br label %cond.end405, !dbg !4575

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4575
  br label %cond.end407, !dbg !4575

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4575
  br label %cond.end409, !dbg !4575

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4575
  br label %cond.end411, !dbg !4575

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4575
  br label %cond.end413, !dbg !4575

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4575
  br label %cond.end415, !dbg !4575

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4575
  br label %cond.end417, !dbg !4575

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4575
  br label %cond.end419, !dbg !4575

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4575
  br label %cond.end421, !dbg !4575

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4575
  br label %cond.end423, !dbg !4575

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4575
  br label %cond.end425, !dbg !4575

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4575
  br label %cond.end427, !dbg !4575

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4575
  br label %cond.end429, !dbg !4575

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4575
  br label %cond.end431, !dbg !4575

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4575
  br label %cond.end433, !dbg !4575

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4575
  br label %cond.end435, !dbg !4575

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4575
  br label %cond.end437, !dbg !4575

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4575
  br label %cond.end440, !dbg !4575

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4575

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4575
  br label %cond.end444, !dbg !4575

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4575
  %sub443 = sub i64 %72, 1, !dbg !4575
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4575
  br label %cond.end444, !dbg !4575

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4575
  %sub446 = sub i32 %cond445, 12, !dbg !4576
  %add = add i32 %sub446, 1, !dbg !4577
  store i32 %add, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4579
  %dec = add i64 %73, -1, !dbg !4579
  store i64 %dec, i64* %size.addr, align 8, !dbg !4579
  %74 = load i64, i64* %size.addr, align 8, !dbg !4580
  %shr = lshr i64 %74, 12, !dbg !4580
  store i64 %shr, i64* %size.addr, align 8, !dbg !4580
  %75 = load i64, i64* %size.addr, align 8, !dbg !4581
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4558
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4582
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4583
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4582, !srcloc !4584
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4582
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4585
  %add.i = add i32 %79, 1, !dbg !4586
  store i32 %add.i, i32* %retval, align 4, !dbg !4587
  br label %return, !dbg !4587

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4588
  ret i32 %80, !dbg !4588
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4589 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4550, metadata !DIExpression()), !dbg !4593
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4557, metadata !DIExpression()), !dbg !4595
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  %0 = load i64, i64* %n.addr, align 8, !dbg !4598
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4595
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4599
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4600
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4599, !srcloc !4584
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4599
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4601
  %add.i = add i32 %4, 1, !dbg !4602
  %sub = sub i32 %add.i, 1, !dbg !4603
  ret i32 %sub, !dbg !4604
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4605 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4617
  ret i8* %0, !dbg !4618
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_buffer_to_resource(i8*, i16 zeroext, %struct.acpi_resource**) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i8 zeroext, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i8 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_write_block_data(%struct.i2c_client*, i8 zeroext, i8 zeroext, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_gsb_i2c_read_bytes(%struct.i2c_client* %client, i8 zeroext %cmd, i8* %data, i8 zeroext %data_len) #0 !dbg !4619 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %cmd.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 16
  %ret = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i8 %data_len, i8* %data_len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data_len.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msgs, metadata !4630, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load i8, i8* %data_len.addr, align 1, !dbg !4637
  %conv = zext i8 %0 to i64, !dbg !4637
  %call = call i8* @kzalloc(i64 %conv, i32 3264) #8, !dbg !4638
  store i8* %call, i8** %buffer, align 8, !dbg !4639
  %1 = load i8*, i8** %buffer, align 8, !dbg !4640
  %tobool = icmp ne i8* %1, null, !dbg !4640
  br i1 %tobool, label %if.end, label %if.then, !dbg !4642

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4644
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !4645
  %3 = load i16, i16* %addr, align 2, !dbg !4645
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4646
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !4647
  store i16 %3, i16* %addr1, align 16, !dbg !4648
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4649
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !4650
  %5 = load i16, i16* %flags, align 8, !dbg !4650
  %arrayidx2 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4651
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx2, i32 0, i32 1, !dbg !4652
  store i16 %5, i16* %flags3, align 2, !dbg !4653
  %arrayidx4 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4654
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx4, i32 0, i32 2, !dbg !4655
  store i16 1, i16* %len, align 4, !dbg !4656
  %arrayidx5 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4657
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx5, i32 0, i32 3, !dbg !4658
  store i8* %cmd.addr, i8** %buf, align 8, !dbg !4659
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4660
  %addr6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1, !dbg !4661
  %7 = load i16, i16* %addr6, align 2, !dbg !4661
  %arrayidx7 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 1, !dbg !4662
  %addr8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx7, i32 0, i32 0, !dbg !4663
  store i16 %7, i16* %addr8, align 16, !dbg !4664
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4665
  %flags9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0, !dbg !4666
  %9 = load i16, i16* %flags9, align 8, !dbg !4666
  %conv10 = zext i16 %9 to i32, !dbg !4665
  %or = or i32 %conv10, 1, !dbg !4667
  %conv11 = trunc i32 %or to i16, !dbg !4665
  %arrayidx12 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 1, !dbg !4668
  %flags13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx12, i32 0, i32 1, !dbg !4669
  store i16 %conv11, i16* %flags13, align 2, !dbg !4670
  %10 = load i8, i8* %data_len.addr, align 1, !dbg !4671
  %conv14 = zext i8 %10 to i16, !dbg !4671
  %arrayidx15 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 1, !dbg !4672
  %len16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx15, i32 0, i32 2, !dbg !4673
  store i16 %conv14, i16* %len16, align 4, !dbg !4674
  %11 = load i8*, i8** %buffer, align 8, !dbg !4675
  %arrayidx17 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 1, !dbg !4676
  %buf18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx17, i32 0, i32 3, !dbg !4677
  store i8* %11, i8** %buf18, align 8, !dbg !4678
  %12 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4679
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 3, !dbg !4680
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4680
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4681
  %call19 = call i32 @i2c_transfer(%struct.i2c_adapter* %13, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !4682
  store i32 %call19, i32* %ret, align 4, !dbg !4683
  %14 = load i32, i32* %ret, align 4, !dbg !4684
  %cmp = icmp slt i32 %14, 0, !dbg !4686
  br i1 %cmp, label %if.then21, label %if.else31, !dbg !4687

if.then21:                                        ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !4688
  %cmp22 = icmp eq i32 %15, -121, !dbg !4691
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !4692

if.then24:                                        ; preds = %if.then21
  br label %if.end30, !dbg !4693

if.else:                                          ; preds = %if.then21
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4694
  %adapter25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 3, !dbg !4694
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter25, align 8, !dbg !4694
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 9, !dbg !4694
  %18 = load i8, i8* %data_len.addr, align 1, !dbg !4694
  %conv26 = zext i8 %18 to i32, !dbg !4694
  %19 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4694
  %addr27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1, !dbg !4694
  %20 = load i16, i16* %addr27, align 2, !dbg !4694
  %conv28 = zext i16 %20 to i32, !dbg !4694
  %21 = load i8, i8* %cmd.addr, align 1, !dbg !4694
  %conv29 = zext i8 %21 to i32, !dbg !4694
  %22 = load i32, i32* %ret, align 4, !dbg !4694
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 %conv26, i32 %conv28, i32 %conv29, i32 %22) #9, !dbg !4694
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24
  br label %if.end38, !dbg !4695

if.else31:                                        ; preds = %if.end
  %23 = load i32, i32* %ret, align 4, !dbg !4696
  %cmp32 = icmp eq i32 %23, 2, !dbg !4698
  br i1 %cmp32, label %if.then34, label %if.else36, !dbg !4699

if.then34:                                        ; preds = %if.else31
  %24 = load i8*, i8** %data.addr, align 8, !dbg !4700
  %25 = load i8*, i8** %buffer, align 8, !dbg !4702
  %26 = load i8, i8* %data_len.addr, align 1, !dbg !4703
  %conv35 = zext i8 %26 to i64, !dbg !4703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 %conv35, i1 false), !dbg !4704
  store i32 0, i32* %ret, align 4, !dbg !4705
  br label %if.end37, !dbg !4706

if.else36:                                        ; preds = %if.else31
  store i32 -5, i32* %ret, align 4, !dbg !4707
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then34
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end30
  %27 = load i8*, i8** %buffer, align 8, !dbg !4709
  call void @kfree(i8* %27) #8, !dbg !4710
  %28 = load i32, i32* %ret, align 4, !dbg !4711
  store i32 %28, i32* %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

return:                                           ; preds = %if.end38, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4713
  ret i32 %29, !dbg !4713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_gsb_i2c_write_bytes(%struct.i2c_client* %client, i8 zeroext %cmd, i8* %data, i8 zeroext %data_len) #0 !dbg !4714 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %cmd.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i8, align 1
  %msgs = alloca [1 x %struct.i2c_msg], align 16
  %buffer = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i8 %data_len, i8* %data_len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data_len.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata [1 x %struct.i2c_msg]* %msgs, metadata !4723, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !4726, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4728, metadata !DIExpression()), !dbg !4729
  store i32 0, i32* %ret, align 4, !dbg !4729
  %0 = load i8, i8* %data_len.addr, align 1, !dbg !4730
  %conv = zext i8 %0 to i32, !dbg !4730
  %add = add i32 %conv, 1, !dbg !4731
  %conv1 = sext i32 %add to i64, !dbg !4730
  %call = call i8* @kzalloc(i64 %conv1, i32 3264) #8, !dbg !4732
  store i8* %call, i8** %buffer, align 8, !dbg !4733
  %1 = load i8*, i8** %buffer, align 8, !dbg !4734
  %tobool = icmp ne i8* %1, null, !dbg !4734
  br i1 %tobool, label %if.end, label %if.then, !dbg !4736

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !4737
  br label %return, !dbg !4737

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %cmd.addr, align 1, !dbg !4738
  %3 = load i8*, i8** %buffer, align 8, !dbg !4739
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !4739
  store i8 %2, i8* %arrayidx, align 1, !dbg !4740
  %4 = load i8*, i8** %buffer, align 8, !dbg !4741
  %add.ptr = getelementptr i8, i8* %4, i64 1, !dbg !4742
  %5 = load i8*, i8** %data.addr, align 8, !dbg !4743
  %6 = load i8, i8* %data_len.addr, align 1, !dbg !4744
  %conv2 = zext i8 %6 to i64, !dbg !4744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %5, i64 %conv2, i1 false), !dbg !4745
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4746
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1, !dbg !4747
  %8 = load i16, i16* %addr, align 2, !dbg !4747
  %arrayidx3 = getelementptr [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4748
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx3, i32 0, i32 0, !dbg !4749
  store i16 %8, i16* %addr4, align 16, !dbg !4750
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4751
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0, !dbg !4752
  %10 = load i16, i16* %flags, align 8, !dbg !4752
  %arrayidx5 = getelementptr [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4753
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx5, i32 0, i32 1, !dbg !4754
  store i16 %10, i16* %flags6, align 2, !dbg !4755
  %11 = load i8, i8* %data_len.addr, align 1, !dbg !4756
  %conv7 = zext i8 %11 to i32, !dbg !4756
  %add8 = add i32 %conv7, 1, !dbg !4757
  %conv9 = trunc i32 %add8 to i16, !dbg !4756
  %arrayidx10 = getelementptr [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4758
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx10, i32 0, i32 2, !dbg !4759
  store i16 %conv9, i16* %len, align 4, !dbg !4760
  %12 = load i8*, i8** %buffer, align 8, !dbg !4761
  %arrayidx11 = getelementptr [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4762
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx11, i32 0, i32 3, !dbg !4763
  store i8* %12, i8** %buf, align 8, !dbg !4764
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4765
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 3, !dbg !4766
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4766
  %arraydecay = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %msgs, i64 0, i64 0, !dbg !4767
  %call12 = call i32 @i2c_transfer(%struct.i2c_adapter* %14, %struct.i2c_msg* %arraydecay, i32 1) #8, !dbg !4768
  store i32 %call12, i32* %ret, align 4, !dbg !4769
  %15 = load i8*, i8** %buffer, align 8, !dbg !4770
  call void @kfree(i8* %15) #8, !dbg !4771
  %16 = load i32, i32* %ret, align 4, !dbg !4772
  %cmp = icmp slt i32 %16, 0, !dbg !4774
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !4775

if.then14:                                        ; preds = %if.end
  %17 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4776
  %adapter15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 3, !dbg !4776
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter15, align 8, !dbg !4776
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !4776
  %19 = load i32, i32* %ret, align 4, !dbg !4776
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %19) #9, !dbg !4776
  %20 = load i32, i32* %ret, align 4, !dbg !4778
  store i32 %20, i32* %retval, align 4, !dbg !4779
  br label %return, !dbg !4779

if.end16:                                         ; preds = %if.end
  %21 = load i32, i32* %ret, align 4, !dbg !4780
  %cmp17 = icmp eq i32 %21, 1, !dbg !4781
  %22 = zext i1 %cmp17 to i64, !dbg !4782
  %cond = select i1 %cmp17, i32 0, i32 -5, !dbg !4782
  store i32 %cond, i32* %retval, align 4, !dbg !4783
  br label %return, !dbg !4783

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4784
  ret i32 %23, !dbg !4784
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !4785 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !4789
  call void @kfree(i8* %0) #8, !dbg !4790
  ret void, !dbg !4791
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2469, !2470, !2471, !2472}
!llvm.ident = !{!2473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i2c_acpi_notifier", scope: !2, file: !3, line: 446, type: !2458, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, globals: !2452, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/i2c-core-acpi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !16, !22, !28, !34, !41, !49, !55, !69, !78}
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
!85 = !{!86, !87, !94, !2435, !316, !1508, !2436, !2437, !2438, !2440, !247, !2441, !92}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !89, line: 351, size: 10880, elements: !90)
!89 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !93, !96, !2162, !2163, !2164, !2165, !2166, !2167, !2176, !2193, !2267, !2296, !2320, !2341, !2347, !2356, !2388, !2402, !2424, !2428, !2429, !2430, !2431, !2432, !2433, !2434}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !88, file: !89, line: 352, baseType: !92, size: 32)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !88, file: !89, line: 353, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !95, line: 424, baseType: !86)
!95 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !88, file: !89, line: 354, baseType: !97, size: 192, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !98, line: 17, size: 192, elements: !99)
!98 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !102, !2161}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !97, file: !98, line: 18, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !97, file: !98, line: 19, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !98, line: 110, size: 1152, elements: !106)
!106 = !{!107, !111, !115, !124, !2103, !2107, !2111, !2116, !2120, !2121, !2125, !2129, !2133, !2144, !2145, !2146, !2147, !2157}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !105, file: !98, line: 111, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!101, !101}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !105, file: !98, line: 112, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !101}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !105, file: !98, line: 113, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !122}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 30, baseType: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !105, file: !98, line: 114, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !122, !130}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !35, line: 461, size: 5568, elements: !133)
!133 = !{!134, !1636, !1638, !1641, !1642, !1693, !1790, !1791, !1792, !1793, !1794, !1803, !1908, !1921, !2028, !2029, !2033, !2035, !2036, !2037, !2041, !2047, !2048, !2051, !2052, !2053, !2056, !2057, !2058, !2059, !2091, !2092, !2093, !2096, !2099, !2100, !2101, !2102}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !132, file: !35, line: 462, baseType: !135, size: 512)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !136, line: 64, size: 512, elements: !137)
!136 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !142, !148, !150, !210, !1472, !1626, !1631, !1632, !1633, !1634, !1635}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 65, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !135, file: !136, line: 66, baseType: !143, size: 128, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !120, line: 178, size: 128, elements: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !120, line: 179, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !120, line: 179, baseType: !146, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !136, line: 67, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !135, file: !136, line: 68, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !136, line: 192, size: 704, elements: !153)
!153 = !{!154, !155, !171, !172}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !152, file: !136, line: 193, baseType: !143, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !152, file: !136, line: 194, baseType: !156, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !157, line: 83, baseType: !158)
!157 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !157, line: 71, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !157, line: 72, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !157, line: 72, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !161, file: !157, line: 73, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !157, line: 20, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !164, file: !157, line: 21, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !168, line: 25, baseType: !169)
!168 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 25, elements: !170)
!170 = !{}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !136, line: 195, baseType: !135, size: 512, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !152, file: !136, line: 196, baseType: !173, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !136, line: 156, size: 192, elements: !176)
!176 = !{!177, !182, !187}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !175, file: !136, line: 157, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!92, !151, !149}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !136, line: 158, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!139, !151, !149}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !175, file: !136, line: 159, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!92, !151, !149, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !136, line: 148, size: 20736, elements: !194)
!194 = !{!195, !200, !204, !205, !209}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !193, file: !136, line: 149, baseType: !196, size: 192)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 192, elements: !198)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!198 = !{!199}
!199 = !DISubrange(count: 3)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !193, file: !136, line: 150, baseType: !201, size: 4096, offset: 192)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 4096, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !193, file: !136, line: 151, baseType: !92, size: 32, offset: 4288)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !193, file: !136, line: 152, baseType: !206, size: 16384, offset: 4320)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 16384, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 2048)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !193, file: !136, line: 153, baseType: !92, size: 32, offset: 20704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !135, file: !136, line: 69, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !136, line: 138, size: 448, elements: !213)
!213 = !{!214, !218, !248, !250, !1419, !1450, !1454}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !212, file: !136, line: 139, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !149}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !212, file: !136, line: 140, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !222, line: 230, size: 128, elements: !223)
!222 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!223 = !{!224, !240}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !221, file: !222, line: 231, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !149, !233, !197}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !120, line: 60, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !230, line: 73, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !230, line: 15, baseType: !232)
!232 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !222, line: 30, size: 128, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !222, line: 31, baseType: !139, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !234, file: !222, line: 32, baseType: !238, size: 16, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !120, line: 19, baseType: !239)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !221, file: !222, line: 232, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!228, !149, !233, !139, !244}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 55, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !230, line: 72, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !230, line: 16, baseType: !247)
!247 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !212, file: !136, line: 141, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !212, file: !136, line: 142, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !222, line: 84, size: 320, elements: !255)
!255 = !{!256, !257, !261, !1416, !1417}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !222, line: 85, baseType: !139, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !254, file: !222, line: 86, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!238, !149, !233, !92}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !254, file: !222, line: 88, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!238, !149, !265, !92}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !222, line: 168, size: 448, elements: !267)
!267 = !{!268, !269, !270, !271, !281, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !266, file: !222, line: 169, baseType: !234, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !266, file: !222, line: 170, baseType: !244, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !266, file: !222, line: 171, baseType: !86, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !266, file: !222, line: 172, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!228, !275, !149, !265, !197, !278, !244}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !277, line: 526, flags: DIFlagFwdDecl)
!277 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !120, line: 46, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !230, line: 88, baseType: !280)
!280 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !266, file: !222, line: 174, baseType: !272, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !266, file: !222, line: 176, baseType: !283, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!92, !275, !149, !265, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !288, line: 305, size: 1472, elements: !289)
!288 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !291, !292, !293, !294, !302, !303, !1390, !1396, !1397, !1402, !1403, !1406, !1410, !1411, !1412, !1413, !1414}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !287, file: !288, line: 308, baseType: !247, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !287, file: !288, line: 309, baseType: !247, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !287, file: !288, line: 313, baseType: !286, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !287, file: !288, line: 313, baseType: !286, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !287, file: !288, line: 315, baseType: !295, size: 192, align: 64, offset: 256)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !296, line: 24, size: 192, align: 64, elements: !297)
!296 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !295, file: !296, line: 25, baseType: !247, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !295, file: !296, line: 26, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !295, file: !296, line: 27, baseType: !300, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !287, file: !288, line: 323, baseType: !247, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !287, file: !288, line: 327, baseType: !304, size: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !288, line: 388, size: 7296, elements: !306)
!306 = !{!307, !1386}
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !288, line: 389, baseType: !308, size: 7296)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !288, line: 389, size: 7296, elements: !309)
!309 = !{!310, !311, !315, !321, !325, !326, !327, !328, !329, !337, !342, !343, !344, !345, !354, !355, !356, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !391, !399, !402, !450, !451, !1357, !1358, !1361, !1364, !1365, !1368, !1369, !1370, !1373, !1385}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !308, file: !288, line: 390, baseType: !286, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !308, file: !288, line: 391, baseType: !312, size: 64, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !296, line: 31, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !312, file: !296, line: 32, baseType: !300, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !308, file: !288, line: 392, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !317, line: 23, baseType: !318)
!317 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !319, line: 31, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !308, file: !288, line: 394, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!247, !275, !247, !247, !247, !247}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !308, file: !288, line: 398, baseType: !247, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !308, file: !288, line: 399, baseType: !247, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !308, file: !288, line: 405, baseType: !247, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !308, file: !288, line: 406, baseType: !247, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !308, file: !288, line: 407, baseType: !330, size: 64, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !277, line: 286, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 286, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !332, file: !277, line: 286, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !336, line: 18, baseType: !247)
!336 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !308, file: !288, line: 416, baseType: !338, size: 32, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 168, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 166, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !339, file: !120, line: 167, baseType: !92, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !308, file: !288, line: 428, baseType: !338, size: 32, offset: 608)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !308, file: !288, line: 437, baseType: !338, size: 32, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !308, file: !288, line: 447, baseType: !338, size: 32, offset: 672)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !308, file: !288, line: 450, baseType: !346, size: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !347, line: 13, baseType: !348)
!347 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !120, line: 175, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 173, size: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !349, file: !120, line: 174, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !317, line: 22, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !319, line: 30, baseType: !280)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !308, file: !288, line: 452, baseType: !92, size: 32, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !308, file: !288, line: 454, baseType: !156, offset: 800)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !308, file: !288, line: 457, baseType: !357, size: 256, offset: 832)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !358, line: 35, size: 256, elements: !359)
!358 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !361, !362, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !357, file: !358, line: 36, baseType: !346, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !357, file: !358, line: 42, baseType: !346, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !357, file: !358, line: 46, baseType: !363, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !157, line: 29, baseType: !164)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !357, file: !358, line: 47, baseType: !143, size: 128, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !308, file: !288, line: 459, baseType: !143, size: 128, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !308, file: !288, line: 466, baseType: !247, size: 64, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !308, file: !288, line: 467, baseType: !247, size: 64, offset: 1280)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !308, file: !288, line: 469, baseType: !247, size: 64, offset: 1344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !308, file: !288, line: 470, baseType: !247, size: 64, offset: 1408)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !308, file: !288, line: 471, baseType: !348, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !308, file: !288, line: 472, baseType: !247, size: 64, offset: 1536)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !308, file: !288, line: 473, baseType: !247, size: 64, offset: 1600)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !308, file: !288, line: 474, baseType: !247, size: 64, offset: 1664)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !308, file: !288, line: 475, baseType: !247, size: 64, offset: 1728)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !308, file: !288, line: 477, baseType: !156, offset: 1792)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !308, file: !288, line: 478, baseType: !247, size: 64, offset: 1792)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !308, file: !288, line: 478, baseType: !247, size: 64, offset: 1856)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !308, file: !288, line: 478, baseType: !247, size: 64, offset: 1920)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !308, file: !288, line: 478, baseType: !247, size: 64, offset: 1984)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !308, file: !288, line: 479, baseType: !247, size: 64, offset: 2048)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !308, file: !288, line: 479, baseType: !247, size: 64, offset: 2112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !308, file: !288, line: 479, baseType: !247, size: 64, offset: 2176)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !308, file: !288, line: 480, baseType: !247, size: 64, offset: 2240)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !308, file: !288, line: 480, baseType: !247, size: 64, offset: 2304)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !308, file: !288, line: 480, baseType: !247, size: 64, offset: 2368)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !308, file: !288, line: 480, baseType: !247, size: 64, offset: 2432)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !308, file: !288, line: 482, baseType: !388, size: 2816, offset: 2496)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 2816, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 44)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !308, file: !288, line: 488, baseType: !392, size: 256, offset: 5312)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !393, line: 60, size: 256, elements: !394)
!393 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !393, line: 61, baseType: !396, size: 256)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !308, file: !288, line: 490, baseType: !400, size: 64, offset: 5568)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !288, line: 490, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !308, file: !288, line: 493, baseType: !403, size: 896, offset: 5632)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !404, line: 53, baseType: !405)
!404 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 13, size: 896, elements: !406)
!406 = !{!407, !408, !409, !410, !413, !414, !421, !422, !442, !443, !446}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !405, file: !404, line: 18, baseType: !316, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !405, file: !404, line: 28, baseType: !348, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !405, file: !404, line: 31, baseType: !357, size: 256, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !405, file: !404, line: 32, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !404, line: 32, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !405, file: !404, line: 37, baseType: !239, size: 16, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !404, line: 40, baseType: !415, size: 192, offset: 512)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !416, line: 53, size: 192, elements: !417)
!416 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !415, file: !416, line: 54, baseType: !346, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !415, file: !416, line: 55, baseType: !156, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !415, file: !416, line: 59, baseType: !143, size: 128, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !405, file: !404, line: 41, baseType: !86, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !405, file: !404, line: 42, baseType: !423, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !426, line: 13, size: 896, elements: !427)
!426 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !425, file: !426, line: 14, baseType: !86, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !425, file: !426, line: 15, baseType: !247, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !425, file: !426, line: 17, baseType: !247, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !425, file: !426, line: 17, baseType: !247, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !425, file: !426, line: 19, baseType: !232, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !425, file: !426, line: 21, baseType: !232, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !425, file: !426, line: 22, baseType: !232, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !425, file: !426, line: 23, baseType: !232, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !425, file: !426, line: 24, baseType: !232, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !425, file: !426, line: 25, baseType: !232, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !425, file: !426, line: 26, baseType: !232, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !425, file: !426, line: 27, baseType: !232, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !425, file: !426, line: 28, baseType: !232, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !425, file: !426, line: 29, baseType: !232, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !405, file: !404, line: 44, baseType: !338, size: 32, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !405, file: !404, line: 50, baseType: !444, size: 16, offset: 864)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !317, line: 19, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !319, line: 24, baseType: !239)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !405, file: !404, line: 51, baseType: !447, size: 16, offset: 880)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !317, line: 18, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !319, line: 23, baseType: !449)
!449 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !288, line: 495, baseType: !247, size: 64, offset: 6528)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !308, file: !288, line: 497, baseType: !452, size: 64, offset: 6592)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !288, line: 381, size: 384, elements: !454)
!454 = !{!455, !456, !1356}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !453, file: !288, line: 382, baseType: !338, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !453, file: !288, line: 383, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !288, line: 376, size: 128, elements: !458)
!458 = !{!459, !1354}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !457, file: !288, line: 377, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !462, line: 640, size: 48640, elements: !463)
!462 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !472, !474, !475, !481, !482, !483, !484, !485, !486, !487, !488, !492, !510, !521, !616, !617, !618, !629, !630, !632, !633, !634, !635, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !714, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !770, !772, !773, !774, !786, !788, !789, !790, !791, !792, !798, !799, !800, !801, !802, !803, !804, !816, !821, !825, !826, !827, !830, !834, !837, !840, !843, !846, !849, !852, !855, !861, !862, !863, !869, !870, !871, !872, !873, !882, !883, !884, !885, !886, !891, !892, !893, !896, !897, !900, !903, !906, !909, !912, !915, !916, !996, !999, !1002, !1003, !1006, !1007, !1008, !1014, !1015, !1016, !1029, !1030, !1031, !1041, !1046, !1049, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !461, file: !462, line: 646, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !466, line: 56, size: 128, elements: !467)
!466 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !466, line: 57, baseType: !247, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !465, file: !466, line: 58, baseType: !470, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !317, line: 21, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !319, line: 27, baseType: !7)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !461, file: !462, line: 649, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !232)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !461, file: !462, line: 657, baseType: !86, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !461, file: !462, line: 658, baseType: !476, size: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !477, line: 113, baseType: !478)
!477 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !477, line: 111, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !478, file: !477, line: 112, baseType: !338, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !462, line: 660, baseType: !7, size: 32, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !461, file: !462, line: 661, baseType: !7, size: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !461, file: !462, line: 684, baseType: !92, size: 32, offset: 352)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !461, file: !462, line: 686, baseType: !92, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !461, file: !462, line: 687, baseType: !92, size: 32, offset: 416)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !461, file: !462, line: 688, baseType: !92, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !461, file: !462, line: 689, baseType: !7, size: 32, offset: 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !461, file: !462, line: 691, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !462, line: 691, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !461, file: !462, line: 692, baseType: !493, size: 832, offset: 576)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !462, line: 451, size: 832, elements: !494)
!494 = !{!495, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !493, file: !462, line: 453, baseType: !496, size: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !462, line: 325, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !496, file: !462, line: 326, baseType: !247, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !496, file: !462, line: 327, baseType: !470, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !493, file: !462, line: 454, baseType: !295, size: 192, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !493, file: !462, line: 455, baseType: !143, size: 128, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !493, file: !462, line: 456, baseType: !7, size: 32, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !493, file: !462, line: 458, baseType: !316, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !493, file: !462, line: 459, baseType: !316, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !493, file: !462, line: 460, baseType: !316, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !493, file: !462, line: 461, baseType: !316, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !493, file: !462, line: 463, baseType: !316, size: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !493, file: !462, line: 465, baseType: !509, offset: 832)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !462, line: 415, elements: !170)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !461, file: !462, line: 693, baseType: !511, size: 384, offset: 1408)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !462, line: 489, size: 384, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !511, file: !462, line: 490, baseType: !143, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !511, file: !462, line: 491, baseType: !247, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !511, file: !462, line: 492, baseType: !247, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !511, file: !462, line: 493, baseType: !7, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !511, file: !462, line: 494, baseType: !239, size: 16, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !511, file: !462, line: 495, baseType: !239, size: 16, offset: 304)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !511, file: !462, line: 497, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !461, file: !462, line: 697, baseType: !522, size: 1792, offset: 1792)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !462, line: 507, size: 1792, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !613, !614}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !522, file: !462, line: 508, baseType: !295, size: 192, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !522, file: !462, line: 515, baseType: !316, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !522, file: !462, line: 516, baseType: !316, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !522, file: !462, line: 517, baseType: !316, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !522, file: !462, line: 518, baseType: !316, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !522, file: !462, line: 519, baseType: !316, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !522, file: !462, line: 526, baseType: !352, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !522, file: !462, line: 527, baseType: !316, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !462, line: 528, baseType: !7, size: 32, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !522, file: !462, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !522, file: !462, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !522, file: !462, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !522, file: !462, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !522, file: !462, line: 563, baseType: !538, size: 512, offset: 704)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !539)
!539 = !{!540, !548, !549, !554, !606, !610, !611, !612}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !538, file: !12, line: 119, baseType: !541, size: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !542, line: 9, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !541, file: !542, line: 10, baseType: !295, size: 192, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !541, file: !542, line: 11, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !547, line: 29, baseType: !352)
!547 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !538, file: !12, line: 120, baseType: !546, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !538, file: !12, line: 121, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!11, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !538, file: !12, line: 122, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !557)
!557 = !{!558, !578, !579, !582, !592, !593, !601, !605}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !556, file: !12, line: 160, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !12, line: 215, baseType: !363)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !560, file: !12, line: 216, baseType: !7, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !560, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !560, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !560, file: !12, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !560, file: !12, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !560, file: !12, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !560, file: !12, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !560, file: !12, line: 233, baseType: !546, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !560, file: !12, line: 234, baseType: !553, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !560, file: !12, line: 235, baseType: !546, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !560, file: !12, line: 236, baseType: !553, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !560, file: !12, line: 237, baseType: !575, size: 4096, offset: 512)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 4096, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 8)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !556, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !556, file: !12, line: 162, baseType: !580, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !120, line: 27, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !230, line: 96, baseType: !92)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !556, file: !12, line: 163, baseType: !583, size: 32, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !584, line: 276, baseType: !585)
!584 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !584, line: 276, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !585, file: !584, line: 276, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !584, line: 70, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !584, line: 65, size: 32, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !589, file: !584, line: 66, baseType: !7, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !556, file: !12, line: 164, baseType: !553, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !556, file: !12, line: 165, baseType: !594, size: 128, offset: 256)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !542, line: 14, size: 128, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !594, file: !542, line: 15, baseType: !597, size: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !296, line: 125, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !597, file: !296, line: 126, baseType: !312, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !597, file: !296, line: 127, baseType: !300, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !556, file: !12, line: 166, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!546}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !556, file: !12, line: 167, baseType: !546, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !538, file: !12, line: 123, baseType: !607, size: 8, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !317, line: 17, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !319, line: 21, baseType: !609)
!609 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !538, file: !12, line: 124, baseType: !607, size: 8, offset: 456)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !538, file: !12, line: 125, baseType: !607, size: 8, offset: 464)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !538, file: !12, line: 126, baseType: !607, size: 8, offset: 472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !522, file: !462, line: 572, baseType: !538, size: 512, offset: 1216)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !522, file: !462, line: 580, baseType: !615, size: 64, offset: 1728)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !461, file: !462, line: 721, baseType: !7, size: 32, offset: 3584)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !461, file: !462, line: 722, baseType: !92, size: 32, offset: 3616)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !461, file: !462, line: 723, baseType: !619, size: 64, offset: 3648)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !622, line: 17, baseType: !623)
!622 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !622, line: 17, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !623, file: !622, line: 17, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 64, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 1)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !461, file: !462, line: 724, baseType: !621, size: 64, offset: 3712)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !461, file: !462, line: 749, baseType: !631, offset: 3776)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !462, line: 290, elements: !170)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !461, file: !462, line: 751, baseType: !143, size: 128, offset: 3776)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !461, file: !462, line: 757, baseType: !304, size: 64, offset: 3904)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !461, file: !462, line: 758, baseType: !304, size: 64, offset: 3968)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !461, file: !462, line: 761, baseType: !636, size: 320, offset: 4032)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !393, line: 34, size: 320, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !636, file: !393, line: 35, baseType: !316, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !636, file: !393, line: 36, baseType: !640, size: 256, offset: 64)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !397)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !461, file: !462, line: 766, baseType: !92, size: 32, offset: 4352)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !461, file: !462, line: 767, baseType: !92, size: 32, offset: 4384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !461, file: !462, line: 768, baseType: !92, size: 32, offset: 4416)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !461, file: !462, line: 770, baseType: !92, size: 32, offset: 4448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !461, file: !462, line: 772, baseType: !247, size: 64, offset: 4480)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !461, file: !462, line: 775, baseType: !7, size: 32, offset: 4544)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !461, file: !462, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !461, file: !462, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !461, file: !462, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !461, file: !462, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !461, file: !462, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !461, file: !462, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !461, file: !462, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !461, file: !462, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !461, file: !462, line: 831, baseType: !247, size: 64, offset: 4672)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !461, file: !462, line: 833, baseType: !657, size: 384, offset: 4736)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !658)
!658 = !{!659, !664}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !657, file: !17, line: 26, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!232, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !17, line: 27, baseType: !665, size: 320, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !17, line: 27, size: 320, elements: !666)
!666 = !{!667, !677, !704}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !665, file: !17, line: 36, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !17, line: 29, size: 320, elements: !669)
!669 = !{!670, !672, !673, !674, !675, !676}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !668, file: !17, line: 30, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !17, line: 31, baseType: !470, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !17, line: 32, baseType: !470, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !668, file: !17, line: 33, baseType: !470, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !668, file: !17, line: 34, baseType: !316, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !668, file: !17, line: 35, baseType: !671, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !665, file: !17, line: 46, baseType: !678, size: 192)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !17, line: 38, size: 192, elements: !679)
!679 = !{!680, !681, !682, !703}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !678, file: !17, line: 39, baseType: !580, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !17, line: 41, baseType: !683, size: 64, offset: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !17, line: 41, size: 64, elements: !684)
!684 = !{!685, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !683, file: !17, line: 42, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !688, line: 7, size: 128, elements: !689)
!688 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!689 = !{!690, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !687, file: !688, line: 8, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !230, line: 93, baseType: !280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !687, file: !688, line: 9, baseType: !280, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !683, file: !17, line: 43, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !696, line: 7, size: 64, elements: !697)
!696 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!697 = !{!698, !702}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !695, file: !696, line: 8, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !696, line: 5, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !317, line: 20, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !319, line: 26, baseType: !92)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !695, file: !696, line: 9, baseType: !700, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !678, file: !17, line: 45, baseType: !316, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !665, file: !17, line: 54, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !17, line: 48, size: 256, elements: !706)
!706 = !{!707, !710, !711, !712, !713}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !705, file: !17, line: 49, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !705, file: !17, line: 50, baseType: !92, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !705, file: !17, line: 51, baseType: !92, size: 32, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !705, file: !17, line: 52, baseType: !247, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !705, file: !17, line: 53, baseType: !247, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !461, file: !462, line: 835, baseType: !715, size: 32, offset: 5120)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !120, line: 22, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !230, line: 28, baseType: !92)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !461, file: !462, line: 836, baseType: !715, size: 32, offset: 5152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !461, file: !462, line: 840, baseType: !247, size: 64, offset: 5184)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !461, file: !462, line: 849, baseType: !460, size: 64, offset: 5248)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !461, file: !462, line: 852, baseType: !460, size: 64, offset: 5312)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !461, file: !462, line: 857, baseType: !143, size: 128, offset: 5376)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !461, file: !462, line: 858, baseType: !143, size: 128, offset: 5504)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !461, file: !462, line: 859, baseType: !460, size: 64, offset: 5632)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !461, file: !462, line: 867, baseType: !143, size: 128, offset: 5696)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !461, file: !462, line: 868, baseType: !143, size: 128, offset: 5824)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !461, file: !462, line: 871, baseType: !727, size: 64, offset: 5952)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !729, line: 59, size: 768, elements: !730)
!729 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !732, !733, !734, !745, !746, !753, !762}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !728, file: !729, line: 61, baseType: !476, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !728, file: !729, line: 62, baseType: !7, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !729, line: 63, baseType: !156, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !728, file: !729, line: 65, baseType: !735, size: 256, offset: 64)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 256, elements: !397)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !120, line: 182, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !736, file: !120, line: 183, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !120, line: 186, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !120, line: 187, baseType: !739, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !740, file: !120, line: 187, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !728, file: !729, line: 66, baseType: !736, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !728, file: !729, line: 68, baseType: !747, size: 128, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !748, line: 40, baseType: !749)
!748 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !748, line: 36, size: 128, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !749, file: !748, line: 37, baseType: !156)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !749, file: !748, line: 38, baseType: !143, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !728, file: !729, line: 69, baseType: !754, size: 128, align: 64, offset: 512)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !120, line: 216, size: 128, align: 64, elements: !755)
!755 = !{!756, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !120, line: 217, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !754, file: !120, line: 218, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !757}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !728, file: !729, line: 70, baseType: !763, size: 128, offset: 640)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 128, elements: !627)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !729, line: 54, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !764, file: !729, line: 55, baseType: !92, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !764, file: !729, line: 56, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !729, line: 56, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !461, file: !462, line: 872, baseType: !771, size: 512, offset: 6016)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 512, elements: !397)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !461, file: !462, line: 873, baseType: !143, size: 128, offset: 6528)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !461, file: !462, line: 874, baseType: !143, size: 128, offset: 6656)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !461, file: !462, line: 876, baseType: !775, size: 64, offset: 6784)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !777, line: 26, size: 192, elements: !778)
!777 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !776, file: !777, line: 27, baseType: !7, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !776, file: !777, line: 28, baseType: !781, size: 128, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !782, line: 43, size: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !782, line: 44, baseType: !363)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !781, file: !782, line: 45, baseType: !143, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !461, file: !462, line: 879, baseType: !787, size: 64, offset: 6848)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !461, file: !462, line: 882, baseType: !787, size: 64, offset: 6912)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !461, file: !462, line: 884, baseType: !316, size: 64, offset: 6976)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !461, file: !462, line: 885, baseType: !316, size: 64, offset: 7040)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !461, file: !462, line: 890, baseType: !316, size: 64, offset: 7104)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !461, file: !462, line: 891, baseType: !793, size: 128, offset: 7168)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !462, line: 242, size: 128, elements: !794)
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !793, file: !462, line: 244, baseType: !316, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !793, file: !462, line: 245, baseType: !316, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !793, file: !462, line: 246, baseType: !363, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !461, file: !462, line: 900, baseType: !247, size: 64, offset: 7296)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !461, file: !462, line: 901, baseType: !247, size: 64, offset: 7360)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !461, file: !462, line: 904, baseType: !316, size: 64, offset: 7424)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !461, file: !462, line: 907, baseType: !316, size: 64, offset: 7488)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !461, file: !462, line: 910, baseType: !247, size: 64, offset: 7552)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !461, file: !462, line: 911, baseType: !247, size: 64, offset: 7616)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !461, file: !462, line: 914, baseType: !805, size: 640, offset: 7680)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !806, line: 123, size: 640, elements: !807)
!806 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !814, !815}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !805, file: !806, line: 124, baseType: !809, size: 576)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 576, elements: !198)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !806, line: 108, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !810, file: !806, line: 109, baseType: !316, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !810, file: !806, line: 110, baseType: !594, size: 128, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !805, file: !806, line: 125, baseType: !7, size: 32, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !805, file: !806, line: 126, baseType: !7, size: 32, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !461, file: !462, line: 917, baseType: !817, size: 192, offset: 8320)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !806, line: 134, size: 192, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !817, file: !806, line: 135, baseType: !754, size: 128, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !817, file: !806, line: 136, baseType: !7, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !461, file: !462, line: 923, baseType: !822, size: 64, offset: 8512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !462, line: 923, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !461, file: !462, line: 926, baseType: !822, size: 64, offset: 8576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !461, file: !462, line: 929, baseType: !822, size: 64, offset: 8640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !461, file: !462, line: 933, baseType: !828, size: 64, offset: 8704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !462, line: 933, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !461, file: !462, line: 943, baseType: !831, size: 128, offset: 8768)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 16)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !461, file: !462, line: 945, baseType: !835, size: 64, offset: 8896)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !462, line: 49, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !461, file: !462, line: 956, baseType: !838, size: 64, offset: 8960)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !462, line: 45, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !461, file: !462, line: 959, baseType: !841, size: 64, offset: 9024)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !462, line: 959, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !461, file: !462, line: 962, baseType: !844, size: 64, offset: 9088)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !462, line: 66, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !461, file: !462, line: 966, baseType: !847, size: 64, offset: 9152)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !462, line: 50, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !461, file: !462, line: 969, baseType: !850, size: 64, offset: 9216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !806, line: 223, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !461, file: !462, line: 970, baseType: !853, size: 64, offset: 9280)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !462, line: 62, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !461, file: !462, line: 971, baseType: !856, size: 64, offset: 9344)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !857, line: 25, baseType: !858)
!857 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 23, size: 64, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !858, file: !857, line: 24, baseType: !626, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !461, file: !462, line: 972, baseType: !856, size: 64, offset: 9408)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !461, file: !462, line: 974, baseType: !856, size: 64, offset: 9472)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !461, file: !462, line: 975, baseType: !864, size: 192, offset: 9536)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !865, line: 30, size: 192, elements: !866)
!865 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !864, file: !865, line: 31, baseType: !143, size: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !864, file: !865, line: 32, baseType: !856, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !461, file: !462, line: 976, baseType: !247, size: 64, offset: 9728)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !461, file: !462, line: 977, baseType: !244, size: 64, offset: 9792)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !461, file: !462, line: 978, baseType: !7, size: 32, offset: 9856)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !461, file: !462, line: 980, baseType: !757, size: 64, offset: 9920)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !461, file: !462, line: 989, baseType: !874, size: 128, offset: 9984)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !875, line: 35, size: 128, elements: !876)
!875 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !874, file: !875, line: 36, baseType: !92, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !874, file: !875, line: 37, baseType: !338, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !874, file: !875, line: 38, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !875, line: 23, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !461, file: !462, line: 992, baseType: !316, size: 64, offset: 10112)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !461, file: !462, line: 993, baseType: !316, size: 64, offset: 10176)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !461, file: !462, line: 996, baseType: !156, offset: 10240)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !461, file: !462, line: 999, baseType: !363, offset: 10240)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !461, file: !462, line: 1001, baseType: !887, size: 64, offset: 10240)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !462, line: 636, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !462, line: 637, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !461, file: !462, line: 1005, baseType: !597, size: 128, offset: 10304)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !461, file: !462, line: 1007, baseType: !460, size: 64, offset: 10432)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !461, file: !462, line: 1009, baseType: !894, size: 64, offset: 10496)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !462, line: 1009, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !461, file: !462, line: 1043, baseType: !86, size: 64, offset: 10560)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !461, file: !462, line: 1046, baseType: !898, size: 64, offset: 10624)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !462, line: 41, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !461, file: !462, line: 1050, baseType: !901, size: 64, offset: 10688)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !462, line: 42, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !461, file: !462, line: 1054, baseType: !904, size: 64, offset: 10752)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !462, line: 55, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !461, file: !462, line: 1056, baseType: !907, size: 64, offset: 10816)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !462, line: 40, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !461, file: !462, line: 1058, baseType: !910, size: 64, offset: 10880)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !462, line: 47, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !461, file: !462, line: 1061, baseType: !913, size: 64, offset: 10944)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !462, line: 43, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !461, file: !462, line: 1064, baseType: !247, size: 64, offset: 11008)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !461, file: !462, line: 1065, baseType: !917, size: 64, offset: 11072)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !865, line: 14, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !865, line: 12, size: 384, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !865, line: 13, baseType: !922, size: 384)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !865, line: 13, size: 384, elements: !923)
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !922, file: !865, line: 13, baseType: !92, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !922, file: !865, line: 13, baseType: !92, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !922, file: !865, line: 13, baseType: !92, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !922, file: !865, line: 13, baseType: !928, size: 256, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !929, line: 32, size: 256, elements: !930)
!929 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!930 = !{!931, !937, !950, !956, !965, !985, !990}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !928, file: !929, line: 37, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 34, size: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !932, file: !929, line: 35, baseType: !716, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !932, file: !929, line: 36, baseType: !936, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !230, line: 49, baseType: !7)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !928, file: !929, line: 45, baseType: !938, size: 192)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 40, size: 192, elements: !939)
!939 = !{!940, !942, !943, !949}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !938, file: !929, line: 41, baseType: !941, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !230, line: 95, baseType: !92)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !938, file: !929, line: 42, baseType: !92, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !938, file: !929, line: 43, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !929, line: 11, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !929, line: 8, size: 64, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !945, file: !929, line: 9, baseType: !92, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !945, file: !929, line: 10, baseType: !86, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !938, file: !929, line: 44, baseType: !92, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !928, file: !929, line: 52, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 48, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !951, file: !929, line: 49, baseType: !716, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !951, file: !929, line: 50, baseType: !936, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !951, file: !929, line: 51, baseType: !944, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !928, file: !929, line: 61, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 55, size: 256, elements: !958)
!958 = !{!959, !960, !961, !962, !964}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !957, file: !929, line: 56, baseType: !716, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !957, file: !929, line: 57, baseType: !936, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !957, file: !929, line: 58, baseType: !92, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !957, file: !929, line: 59, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !230, line: 94, baseType: !231)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !957, file: !929, line: 60, baseType: !963, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !928, file: !929, line: 95, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 64, size: 256, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !966, file: !929, line: 65, baseType: !86, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !929, line: 77, baseType: !970, size: 192, offset: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !929, line: 77, size: 192, elements: !971)
!971 = !{!972, !973, !980}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !970, file: !929, line: 82, baseType: !449, size: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !970, file: !929, line: 88, baseType: !974, size: 192)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !929, line: 84, size: 192, elements: !975)
!975 = !{!976, !978, !979}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !974, file: !929, line: 85, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !974, file: !929, line: 86, baseType: !86, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !974, file: !929, line: 87, baseType: !86, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !970, file: !929, line: 93, baseType: !981, size: 96)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !929, line: 90, size: 96, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !981, file: !929, line: 91, baseType: !977, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !981, file: !929, line: 92, baseType: !471, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !928, file: !929, line: 101, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 98, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !986, file: !929, line: 99, baseType: !232, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !986, file: !929, line: 100, baseType: !92, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !928, file: !929, line: 108, baseType: !991, size: 128)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 104, size: 128, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !991, file: !929, line: 105, baseType: !86, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !991, file: !929, line: 106, baseType: !92, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !991, file: !929, line: 107, baseType: !7, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !461, file: !462, line: 1067, baseType: !997, offset: 11136)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !998, line: 12, elements: !170)
!998 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!999 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !461, file: !462, line: 1099, baseType: !1000, size: 64, offset: 11136)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !462, line: 56, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !461, file: !462, line: 1103, baseType: !143, size: 128, offset: 11200)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !461, file: !462, line: 1104, baseType: !1004, size: 64, offset: 11328)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !462, line: 46, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !461, file: !462, line: 1105, baseType: !415, size: 192, offset: 11392)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !461, file: !462, line: 1106, baseType: !7, size: 32, offset: 11584)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !461, file: !462, line: 1109, baseType: !1009, size: 128, offset: 11648)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 128, elements: !1012)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !462, line: 51, flags: DIFlagFwdDecl)
!1012 = !{!1013}
!1013 = !DISubrange(count: 2)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !461, file: !462, line: 1110, baseType: !415, size: 192, offset: 11776)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !461, file: !462, line: 1111, baseType: !143, size: 128, offset: 11968)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !461, file: !462, line: 1173, baseType: !1017, size: 64, offset: 12096)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1019, line: 62, size: 256, align: 256, elements: !1020)
!1019 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1020 = !{!1021, !1022, !1023, !1028}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1018, file: !1019, line: 75, baseType: !471, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1018, file: !1019, line: 90, baseType: !471, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1018, file: !1019, line: 124, baseType: !1024, size: 64, offset: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !1019, line: 109, size: 64, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1024, file: !1019, line: 110, baseType: !318, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1024, file: !1019, line: 112, baseType: !318, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !1019, line: 144, baseType: !471, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !461, file: !462, line: 1174, baseType: !470, size: 32, offset: 12160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !461, file: !462, line: 1179, baseType: !247, size: 64, offset: 12224)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !461, file: !462, line: 1182, baseType: !1032, size: 128, offset: 12288)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !393, line: 76, size: 128, elements: !1033)
!1033 = !{!1034, !1039, !1040}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1032, file: !393, line: 85, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1036, line: 7, size: 64, elements: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1035, file: !1036, line: 12, baseType: !623, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1032, file: !393, line: 88, baseType: !119, size: 8, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1032, file: !393, line: 95, baseType: !119, size: 8, offset: 72)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !462, line: 1184, baseType: !1042, size: 128, offset: 12416)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 1184, size: 128, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1042, file: !462, line: 1185, baseType: !476, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1042, file: !462, line: 1186, baseType: !754, size: 128, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !461, file: !462, line: 1190, baseType: !1047, size: 64, offset: 12544)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !462, line: 53, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !461, file: !462, line: 1192, baseType: !1050, size: 128, offset: 12608)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !393, line: 64, size: 128, elements: !1051)
!1051 = !{!1052, !1145, !1146}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1050, file: !393, line: 65, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !288, line: 68, size: 512, align: 128, elements: !1055)
!1055 = !{!1056, !1057, !1137, !1144}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !288, line: 69, baseType: !247, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !288, line: 77, baseType: !1058, size: 320, offset: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !288, line: 77, size: 320, elements: !1059)
!1059 = !{!1060, !1069, !1074, !1102, !1110, !1116, !1129, !1136}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 78, baseType: !1061, size: 320)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 78, size: 320, elements: !1062)
!1062 = !{!1063, !1064, !1067, !1068}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1061, file: !288, line: 84, baseType: !143, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1061, file: !288, line: 86, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !288, line: 26, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1061, file: !288, line: 87, baseType: !247, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1061, file: !288, line: 94, baseType: !247, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 96, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 96, size: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1070, file: !288, line: 101, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !120, line: 143, baseType: !316)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 103, baseType: !1075, size: 320)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 103, size: 320, elements: !1076)
!1076 = !{!1077, !1087, !1090, !1091}
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !288, line: 104, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !288, line: 104, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1078, file: !288, line: 105, baseType: !143, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !288, line: 106, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !288, line: 106, size: 128, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !288, line: 107, baseType: !1053, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1082, file: !288, line: 109, baseType: !92, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1082, file: !288, line: 110, baseType: !92, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1075, file: !288, line: 117, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !288, line: 117, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1075, file: !288, line: 119, baseType: !86, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !288, line: 120, baseType: !1092, size: 64, offset: 256)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !288, line: 120, size: 64, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1092, file: !288, line: 121, baseType: !86, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1092, file: !288, line: 122, baseType: !247, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !288, line: 123, baseType: !1097, size: 32)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !288, line: 123, size: 32, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1097, file: !288, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1097, file: !288, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1097, file: !288, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 130, baseType: !1103, size: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 130, size: 192, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1103, file: !288, line: 131, baseType: !247, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1103, file: !288, line: 134, baseType: !609, size: 8, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1103, file: !288, line: 135, baseType: !609, size: 8, offset: 72)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1103, file: !288, line: 136, baseType: !338, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1103, file: !288, line: 137, baseType: !7, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 139, baseType: !1111, size: 256)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 139, size: 256, elements: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1111, file: !288, line: 140, baseType: !247, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1111, file: !288, line: 141, baseType: !338, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1111, file: !288, line: 143, baseType: !143, size: 128, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 145, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 145, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1122, !1123, !1128}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1117, file: !288, line: 146, baseType: !247, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1117, file: !288, line: 147, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !277, line: 509, baseType: !1053)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1117, file: !288, line: 148, baseType: !247, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !288, line: 149, baseType: !1124, size: 64, offset: 192)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !288, line: 149, size: 64, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1124, file: !288, line: 150, baseType: !304, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1124, file: !288, line: 151, baseType: !338, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1117, file: !288, line: 156, baseType: !156, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !288, line: 159, baseType: !1130, size: 128)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !288, line: 159, size: 128, elements: !1131)
!1131 = !{!1132, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1130, file: !288, line: 161, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !288, line: 161, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1130, file: !288, line: 162, baseType: !86, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1058, file: !288, line: 176, baseType: !754, size: 128, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !288, line: 179, baseType: !1138, size: 32, offset: 384)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !288, line: 179, size: 32, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1138, file: !288, line: 184, baseType: !338, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1138, file: !288, line: 192, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1138, file: !288, line: 194, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1138, file: !288, line: 195, baseType: !92, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1054, file: !288, line: 199, baseType: !338, size: 32, offset: 416)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1050, file: !393, line: 67, baseType: !471, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1050, file: !393, line: 68, baseType: !471, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !461, file: !462, line: 1206, baseType: !92, size: 32, offset: 12736)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !461, file: !462, line: 1207, baseType: !92, size: 32, offset: 12768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !461, file: !462, line: 1209, baseType: !247, size: 64, offset: 12800)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !461, file: !462, line: 1219, baseType: !316, size: 64, offset: 12864)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !461, file: !462, line: 1220, baseType: !316, size: 64, offset: 12928)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !461, file: !462, line: 1317, baseType: !92, size: 32, offset: 12992)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !461, file: !462, line: 1319, baseType: !460, size: 64, offset: 13056)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !461, file: !462, line: 1322, baseType: !1155, size: 64, offset: 13120)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1157, line: 56, size: 512, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1165, !1166, !1168}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1156, file: !1157, line: 57, baseType: !1155, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1156, file: !1157, line: 58, baseType: !86, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1156, file: !1157, line: 59, baseType: !247, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1156, file: !1157, line: 60, baseType: !247, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1156, file: !1157, line: 61, baseType: !1164, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1156, file: !1157, line: 62, baseType: !7, size: 32, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1156, file: !1157, line: 63, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 153, baseType: !316)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1156, file: !1157, line: 64, baseType: !128, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !461, file: !462, line: 1326, baseType: !476, size: 32, offset: 13184)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !461, file: !462, line: 1342, baseType: !86, size: 64, offset: 13248)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !461, file: !462, line: 1343, baseType: !318, size: 64, offset: 13312)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !461, file: !462, line: 1344, baseType: !316, size: 64, offset: 13376)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !461, file: !462, line: 1345, baseType: !318, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !461, file: !462, line: 1346, baseType: !318, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !461, file: !462, line: 1347, baseType: !318, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !461, file: !462, line: 1348, baseType: !754, size: 128, align: 64, offset: 13504)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !461, file: !462, line: 1358, baseType: !1178, size: 34816, offset: 13824)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1179, line: 485, size: 34816, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1220}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1178, file: !1179, line: 487, baseType: !1182, size: 192)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !198)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1184, line: 16, size: 64, elements: !1185)
!1184 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1183, file: !1184, line: 17, baseType: !444, size: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1183, file: !1184, line: 18, baseType: !444, size: 16, offset: 16)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1183, file: !1184, line: 19, baseType: !444, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1183, file: !1184, line: 19, baseType: !444, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1183, file: !1184, line: 19, baseType: !444, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1183, file: !1184, line: 19, baseType: !444, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1183, file: !1184, line: 19, baseType: !444, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1183, file: !1184, line: 20, baseType: !444, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1183, file: !1184, line: 20, baseType: !444, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1183, file: !1184, line: 20, baseType: !444, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1183, file: !1184, line: 20, baseType: !444, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1183, file: !1184, line: 20, baseType: !444, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1183, file: !1184, line: 20, baseType: !444, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1178, file: !1179, line: 491, baseType: !247, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1178, file: !1179, line: 495, baseType: !239, size: 16, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1178, file: !1179, line: 496, baseType: !239, size: 16, offset: 272)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1178, file: !1179, line: 497, baseType: !239, size: 16, offset: 288)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1178, file: !1179, line: 498, baseType: !239, size: 16, offset: 304)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1178, file: !1179, line: 502, baseType: !247, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1178, file: !1179, line: 503, baseType: !247, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1178, file: !1179, line: 514, baseType: !1207, size: 256, offset: 448)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 256, elements: !397)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1179, line: 483, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1178, file: !1179, line: 516, baseType: !247, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1178, file: !1179, line: 518, baseType: !247, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1178, file: !1179, line: 520, baseType: !247, size: 64, offset: 832)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1178, file: !1179, line: 521, baseType: !247, size: 64, offset: 896)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1178, file: !1179, line: 522, baseType: !247, size: 64, offset: 960)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1178, file: !1179, line: 528, baseType: !1216, size: 64, offset: 1024)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1179, line: 10, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1178, file: !1179, line: 535, baseType: !247, size: 64, offset: 1088)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1178, file: !1179, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1178, file: !1179, line: 540, baseType: !1221, size: 33280, offset: 1536)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1222, line: 317, size: 33280, elements: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1221, file: !1222, line: 330, baseType: !7, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1221, file: !1222, line: 337, baseType: !247, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1221, file: !1222, line: 348, baseType: !1227, size: 32768, offset: 512)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1222, line: 304, size: 32768, elements: !1228)
!1228 = !{!1229, !1244, !1283, !1333, !1350}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1227, file: !1222, line: 305, baseType: !1230, size: 896)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1222, line: 12, size: 896, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1243}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1230, file: !1222, line: 13, baseType: !470, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1230, file: !1222, line: 14, baseType: !470, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1230, file: !1222, line: 15, baseType: !470, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1230, file: !1222, line: 16, baseType: !470, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1230, file: !1222, line: 17, baseType: !470, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1230, file: !1222, line: 18, baseType: !470, size: 32, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1230, file: !1222, line: 19, baseType: !470, size: 32, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1230, file: !1222, line: 22, baseType: !1240, size: 640, offset: 224)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 640, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 20)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1230, file: !1222, line: 25, baseType: !470, size: 32, offset: 864)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1227, file: !1222, line: 306, baseType: !1245, size: 4096, align: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1222, line: 34, size: 4096, align: 128, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1266, !1267, !1268, !1272, !1274, !1278}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1245, file: !1222, line: 35, baseType: !444, size: 16)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1245, file: !1222, line: 36, baseType: !444, size: 16, offset: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1245, file: !1222, line: 37, baseType: !444, size: 16, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1245, file: !1222, line: 38, baseType: !444, size: 16, offset: 48)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1222, line: 39, baseType: !1252, size: 128, offset: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1222, line: 39, size: 128, elements: !1253)
!1253 = !{!1254, !1259}
!1254 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !1222, line: 40, baseType: !1255, size: 128)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1222, line: 40, size: 128, elements: !1256)
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1255, file: !1222, line: 41, baseType: !316, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1255, file: !1222, line: 42, baseType: !316, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !1222, line: 44, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !1222, line: 44, size: 128, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1260, file: !1222, line: 45, baseType: !470, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1260, file: !1222, line: 46, baseType: !470, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1260, file: !1222, line: 47, baseType: !470, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1260, file: !1222, line: 48, baseType: !470, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1245, file: !1222, line: 51, baseType: !470, size: 32, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1245, file: !1222, line: 52, baseType: !470, size: 32, offset: 224)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1245, file: !1222, line: 55, baseType: !1269, size: 1024, offset: 256)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 1024, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1245, file: !1222, line: 58, baseType: !1273, size: 2048, offset: 1280)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 2048, elements: !202)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1245, file: !1222, line: 60, baseType: !1275, size: 384, offset: 3328)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 384, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 12)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1222, line: 62, baseType: !1279, size: 384, offset: 3712)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1222, line: 62, size: 384, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1279, file: !1222, line: 63, baseType: !1275, size: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1279, file: !1222, line: 64, baseType: !1275, size: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1227, file: !1222, line: 307, baseType: !1284, size: 1088)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1222, line: 79, size: 1088, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1332}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1284, file: !1222, line: 80, baseType: !470, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1284, file: !1222, line: 81, baseType: !470, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1284, file: !1222, line: 82, baseType: !470, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1284, file: !1222, line: 83, baseType: !470, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1284, file: !1222, line: 84, baseType: !470, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1284, file: !1222, line: 85, baseType: !470, size: 32, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1284, file: !1222, line: 86, baseType: !470, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1284, file: !1222, line: 88, baseType: !1240, size: 640, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1284, file: !1222, line: 89, baseType: !607, size: 8, offset: 864)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1284, file: !1222, line: 90, baseType: !607, size: 8, offset: 872)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1284, file: !1222, line: 91, baseType: !607, size: 8, offset: 880)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1284, file: !1222, line: 92, baseType: !607, size: 8, offset: 888)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1284, file: !1222, line: 93, baseType: !607, size: 8, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1284, file: !1222, line: 94, baseType: !607, size: 8, offset: 904)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1284, file: !1222, line: 95, baseType: !1301, size: 64, offset: 960)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1303, line: 11, size: 128, elements: !1304)
!1303 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1302, file: !1303, line: 12, baseType: !232, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1302, file: !1303, line: 13, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1309, line: 56, size: 1344, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1308, file: !1309, line: 61, baseType: !247, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1308, file: !1309, line: 62, baseType: !247, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1308, file: !1309, line: 63, baseType: !247, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1308, file: !1309, line: 64, baseType: !247, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1308, file: !1309, line: 65, baseType: !247, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1308, file: !1309, line: 66, baseType: !247, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1308, file: !1309, line: 68, baseType: !247, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1308, file: !1309, line: 69, baseType: !247, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1308, file: !1309, line: 70, baseType: !247, size: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1308, file: !1309, line: 71, baseType: !247, size: 64, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1308, file: !1309, line: 72, baseType: !247, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1308, file: !1309, line: 73, baseType: !247, size: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1308, file: !1309, line: 74, baseType: !247, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1308, file: !1309, line: 75, baseType: !247, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1308, file: !1309, line: 76, baseType: !247, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1308, file: !1309, line: 81, baseType: !247, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1308, file: !1309, line: 83, baseType: !247, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1308, file: !1309, line: 84, baseType: !247, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1309, line: 85, baseType: !247, size: 64, offset: 1152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1308, file: !1309, line: 86, baseType: !247, size: 64, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1308, file: !1309, line: 87, baseType: !247, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1284, file: !1222, line: 96, baseType: !470, size: 32, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1227, file: !1222, line: 308, baseType: !1334, size: 4608, align: 512)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1222, line: 289, size: 4608, align: 512, elements: !1335)
!1335 = !{!1336, !1337, !1346}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1334, file: !1222, line: 290, baseType: !1245, size: 4096, align: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1334, file: !1222, line: 291, baseType: !1338, size: 512, offset: 4096)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1222, line: 268, size: 512, elements: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1338, file: !1222, line: 269, baseType: !316, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1338, file: !1222, line: 270, baseType: !316, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1338, file: !1222, line: 271, baseType: !1343, size: 384, offset: 128)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 384, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 6)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1334, file: !1222, line: 292, baseType: !1347, offset: 4608)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 0)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1227, file: !1222, line: 309, baseType: !1351, size: 32768)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32768, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 4096)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !288, line: 378, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !453, file: !288, line: 384, baseType: !776, size: 192, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !308, file: !288, line: 500, baseType: !156, offset: 6656)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !308, file: !288, line: 501, baseType: !1359, size: 64, offset: 6656)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !288, line: 387, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !308, file: !288, line: 516, baseType: !1362, size: 64, offset: 6720)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !288, line: 516, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !308, file: !288, line: 519, baseType: !275, size: 64, offset: 6784)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !308, file: !288, line: 521, baseType: !1366, size: 64, offset: 6848)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !288, line: 521, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !308, file: !288, line: 545, baseType: !338, size: 32, offset: 6912)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !308, file: !288, line: 548, baseType: !119, size: 8, offset: 6944)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !308, file: !288, line: 550, baseType: !1371, offset: 6952)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1372, line: 142, elements: !170)
!1372 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !308, file: !288, line: 554, baseType: !1374, size: 256, offset: 6976)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1375, line: 102, size: 256, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1374, file: !1375, line: 103, baseType: !346, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1374, file: !1375, line: 104, baseType: !143, size: 128, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1374, file: !1375, line: 105, baseType: !1380, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1375, line: 21, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !308, file: !288, line: 557, baseType: !470, size: 32, offset: 7232)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !305, file: !288, line: 565, baseType: !1387, offset: 7296)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: -1)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !287, file: !288, line: 333, baseType: !1391, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !277, line: 284, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !277, line: 284, size: 64, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1392, file: !277, line: 284, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !336, line: 19, baseType: !247)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !287, file: !288, line: 334, baseType: !247, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !287, file: !288, line: 343, baseType: !1398, size: 256, offset: 704)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !288, line: 340, size: 256, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1398, file: !288, line: 341, baseType: !295, size: 192, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1398, file: !288, line: 342, baseType: !247, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !287, file: !288, line: 351, baseType: !143, size: 128, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !287, file: !288, line: 353, baseType: !1404, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !288, line: 353, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !287, file: !288, line: 356, baseType: !1407, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !288, line: 356, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !287, file: !288, line: 359, baseType: !247, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !287, file: !288, line: 361, baseType: !275, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !287, file: !288, line: 362, baseType: !86, size: 64, offset: 1344)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !287, file: !288, line: 365, baseType: !346, size: 64, offset: 1408)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !287, file: !288, line: 373, baseType: !1415, offset: 1472)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !288, line: 296, elements: !170)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !254, file: !222, line: 90, baseType: !249, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !254, file: !222, line: 91, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !212, file: !136, line: 143, baseType: !1420, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1423, !149}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !23, line: 39, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1432, !1436, !1442, !1446}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1425, file: !23, line: 40, baseType: !22, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1425, file: !23, line: 41, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!119}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1425, file: !23, line: 42, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!86}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1425, file: !23, line: 43, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!128, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !23, line: 19, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1425, file: !23, line: 44, baseType: !1443, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!128}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1425, file: !23, line: 45, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !86}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !212, file: !136, line: 144, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!128, !149}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !212, file: !136, line: 145, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !149, !1458, !1465}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1460, line: 23, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 21, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1461, file: !1460, line: 22, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !120, line: 32, baseType: !936)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1460, line: 28, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 26, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1467, file: !1460, line: 27, baseType: !1470, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !120, line: 33, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !230, line: 50, baseType: !7)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !135, file: !136, line: 70, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1475, line: 123, size: 1024, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1619, !1620, !1621, !1622, !1623}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1474, file: !1475, line: 124, baseType: !338, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1474, file: !1475, line: 125, baseType: !338, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1474, file: !1475, line: 135, baseType: !1473, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1474, file: !1475, line: 136, baseType: !139, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1474, file: !1475, line: 138, baseType: !295, size: 192, align: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1474, file: !1475, line: 140, baseType: !128, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1474, file: !1475, line: 141, baseType: !7, size: 32, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 142, baseType: !1485, size: 256, offset: 512)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 142, size: 256, elements: !1486)
!1486 = !{!1487, !1542, !1546}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1485, file: !1475, line: 143, baseType: !1488, size: 192)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1475, line: 91, size: 192, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1488, file: !1475, line: 92, baseType: !247, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1488, file: !1475, line: 94, baseType: !312, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1488, file: !1475, line: 100, baseType: !1493, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1475, line: 180, size: 704, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1512, !1513, !1514, !1540, !1541}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1494, file: !1475, line: 182, baseType: !1473, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1494, file: !1475, line: 183, baseType: !7, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1494, file: !1475, line: 186, baseType: !1499, size: 192, offset: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1500, line: 19, size: 192, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1510, !1511}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1499, file: !1500, line: 20, baseType: !1503, size: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1504, line: 292, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1507, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1503, file: !1504, line: 293, baseType: !156)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1503, file: !1504, line: 295, baseType: !1508, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !120, line: 148, baseType: !7)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1503, file: !1504, line: 296, baseType: !86, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1499, file: !1500, line: 21, baseType: !7, size: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1499, file: !1500, line: 22, baseType: !7, size: 32, offset: 160)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1494, file: !1475, line: 187, baseType: !470, size: 32, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1494, file: !1475, line: 188, baseType: !470, size: 32, offset: 352)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1494, file: !1475, line: 189, baseType: !1515, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1475, line: 168, size: 320, elements: !1517)
!1517 = !{!1518, !1524, !1528, !1532, !1536}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1516, file: !1475, line: 169, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!92, !1522, !1493}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !277, line: 539, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1516, file: !1475, line: 171, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!92, !1473, !139, !238}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1516, file: !1475, line: 173, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!92, !1473}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1516, file: !1475, line: 174, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!92, !1473, !1473, !139}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1516, file: !1475, line: 176, baseType: !1537, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!92, !1522, !1473, !1493}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1494, file: !1475, line: 192, baseType: !143, size: 128, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1494, file: !1475, line: 194, baseType: !747, size: 128, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1485, file: !1475, line: 144, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1475, line: 103, size: 64, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1543, file: !1475, line: 104, baseType: !1473, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1485, file: !1475, line: 145, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1475, line: 107, size: 256, elements: !1548)
!1548 = !{!1549, !1614, !1617, !1618}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1547, file: !1475, line: 108, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1475, line: 217, size: 768, elements: !1553)
!1553 = !{!1554, !1574, !1578, !1582, !1587, !1591, !1595, !1599, !1600, !1601, !1602, !1610}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1552, file: !1475, line: 222, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!92, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1475, line: 197, size: 1088, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1559, file: !1475, line: 199, baseType: !1473, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1559, file: !1475, line: 200, baseType: !275, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1559, file: !1475, line: 201, baseType: !1522, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1559, file: !1475, line: 202, baseType: !86, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1559, file: !1475, line: 205, baseType: !415, size: 192, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1559, file: !1475, line: 206, baseType: !415, size: 192, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1559, file: !1475, line: 207, baseType: !92, size: 32, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1559, file: !1475, line: 208, baseType: !143, size: 128, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1559, file: !1475, line: 209, baseType: !197, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1559, file: !1475, line: 211, baseType: !244, size: 64, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1559, file: !1475, line: 212, baseType: !119, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1559, file: !1475, line: 213, baseType: !119, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1559, file: !1475, line: 214, baseType: !1407, size: 64, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1552, file: !1475, line: 223, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1558}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1552, file: !1475, line: 236, baseType: !1579, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!92, !1522, !86}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1552, file: !1475, line: 238, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!86, !1522, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1552, file: !1475, line: 239, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!86, !1522, !86, !1586}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1552, file: !1475, line: 240, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1522, !86}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1552, file: !1475, line: 242, baseType: !1596, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!228, !1558, !197, !244, !278}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1552, file: !1475, line: 252, baseType: !244, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1552, file: !1475, line: 259, baseType: !119, size: 8, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1552, file: !1475, line: 260, baseType: !1596, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1552, file: !1475, line: 263, baseType: !1603, size: 64, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1606, !1558, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1607, line: 52, baseType: !7)
!1607 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1475, line: 27, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1552, file: !1475, line: 266, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!92, !1558, !286}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1547, file: !1475, line: 109, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1475, line: 31, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1547, file: !1475, line: 110, baseType: !278, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1547, file: !1475, line: 111, baseType: !1473, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1474, file: !1475, line: 148, baseType: !86, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1474, file: !1475, line: 154, baseType: !316, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !1475, line: 156, baseType: !239, size: 16, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1474, file: !1475, line: 157, baseType: !238, size: 16, offset: 912)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1474, file: !1475, line: 158, baseType: !1624, size: 64, offset: 960)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1475, line: 32, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !135, file: !136, line: 71, baseType: !1627, size: 32, offset: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1628, line: 19, size: 32, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1627, file: !1628, line: 20, baseType: !476, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !135, file: !136, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !135, file: !136, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !135, file: !136, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !135, file: !136, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !135, file: !136, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !35, line: 463, baseType: !1637, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !132, file: !35, line: 465, baseType: !1639, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !35, line: 36, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !132, file: !35, line: 467, baseType: !139, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !35, line: 468, baseType: !1643, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !35, line: 87, size: 384, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1653, !1658, !1662}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !35, line: 88, baseType: !139, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1645, file: !35, line: 89, baseType: !251, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1645, file: !35, line: 90, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!92, !1637, !192}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1645, file: !35, line: 91, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!197, !1637, !1657, !1458, !1465}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1645, file: !35, line: 93, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !1637}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1645, file: !35, line: 95, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !42, line: 278, size: 1472, elements: !1666)
!1666 = !{!1667, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1665, file: !42, line: 279, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!92, !1637}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1665, file: !42, line: 280, baseType: !1659, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1665, file: !42, line: 281, baseType: !1668, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1665, file: !42, line: 282, baseType: !1668, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1665, file: !42, line: 283, baseType: !1668, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1665, file: !42, line: 284, baseType: !1668, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1665, file: !42, line: 285, baseType: !1668, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1665, file: !42, line: 286, baseType: !1668, size: 64, offset: 448)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1665, file: !42, line: 287, baseType: !1668, size: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1665, file: !42, line: 288, baseType: !1668, size: 64, offset: 576)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1665, file: !42, line: 289, baseType: !1668, size: 64, offset: 640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1665, file: !42, line: 290, baseType: !1668, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1665, file: !42, line: 291, baseType: !1668, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1665, file: !42, line: 292, baseType: !1668, size: 64, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1665, file: !42, line: 293, baseType: !1668, size: 64, offset: 896)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1665, file: !42, line: 294, baseType: !1668, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1665, file: !42, line: 295, baseType: !1668, size: 64, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1665, file: !42, line: 296, baseType: !1668, size: 64, offset: 1088)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1665, file: !42, line: 297, baseType: !1668, size: 64, offset: 1152)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1665, file: !42, line: 298, baseType: !1668, size: 64, offset: 1216)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1665, file: !42, line: 299, baseType: !1668, size: 64, offset: 1280)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1665, file: !42, line: 300, baseType: !1668, size: 64, offset: 1344)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1665, file: !42, line: 301, baseType: !1668, size: 64, offset: 1408)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !132, file: !35, line: 470, baseType: !1694, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1696, line: 82, size: 1408, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1783, !1786, !1789}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1695, file: !1696, line: 83, baseType: !139, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1695, file: !1696, line: 84, baseType: !139, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1695, file: !1696, line: 85, baseType: !1637, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1695, file: !1696, line: 86, baseType: !251, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1695, file: !1696, line: 87, baseType: !251, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1695, file: !1696, line: 88, baseType: !251, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1695, file: !1696, line: 90, baseType: !1705, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!92, !1637, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !29, line: 95, size: 1152, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1717, !1718, !1719, !1720, !1734, !1747, !1748, !1749, !1750, !1751, !1759, !1760, !1761, !1762, !1763, !1764}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !29, line: 96, baseType: !139, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1709, file: !29, line: 97, baseType: !1694, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1709, file: !29, line: 99, baseType: !1714, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1716, line: 76, flags: DIFlagFwdDecl)
!1716 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1709, file: !29, line: 100, baseType: !139, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1709, file: !29, line: 102, baseType: !119, size: 8, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1709, file: !29, line: 103, baseType: !28, size: 32, offset: 288)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1709, file: !29, line: 105, baseType: !1721, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1724, line: 262, size: 1600, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1728, !1729, !1733}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !1724, line: 263, baseType: !1727, size: 256)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !1270)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1723, file: !1724, line: 264, baseType: !1727, size: 256, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1723, file: !1724, line: 265, baseType: !1730, size: 1024, offset: 512)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1723, file: !1724, line: 266, baseType: !128, size: 64, offset: 1536)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1709, file: !29, line: 106, baseType: !1735, size: 64, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1724, line: 210, size: 256, elements: !1738)
!1738 = !{!1739, !1743, !1745, !1746}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1737, file: !1724, line: 211, baseType: !1740, size: 72)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 72, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 9)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1737, file: !1724, line: 212, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1724, line: 14, baseType: !247)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1737, file: !1724, line: 213, baseType: !471, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1737, file: !1724, line: 214, baseType: !471, size: 32, offset: 224)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1709, file: !29, line: 108, baseType: !1668, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1709, file: !29, line: 109, baseType: !1659, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1709, file: !29, line: 110, baseType: !1668, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1709, file: !29, line: 111, baseType: !1659, size: 64, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1709, file: !29, line: 112, baseType: !1752, size: 64, offset: 704)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!92, !1637, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !42, line: 52, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !42, line: 50, size: 32, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1756, file: !42, line: 51, baseType: !92, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1709, file: !29, line: 113, baseType: !1668, size: 64, offset: 768)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1709, file: !29, line: 114, baseType: !251, size: 64, offset: 832)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1709, file: !29, line: 115, baseType: !251, size: 64, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1709, file: !29, line: 117, baseType: !1663, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1709, file: !29, line: 118, baseType: !1659, size: 64, offset: 1024)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1709, file: !29, line: 120, baseType: !1765, size: 64, offset: 1088)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !29, line: 120, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1695, file: !1696, line: 91, baseType: !1650, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1695, file: !1696, line: 92, baseType: !1668, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1695, file: !1696, line: 93, baseType: !1659, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1695, file: !1696, line: 94, baseType: !1668, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1695, file: !1696, line: 95, baseType: !1659, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1695, file: !1696, line: 97, baseType: !1668, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1695, file: !1696, line: 98, baseType: !1668, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1695, file: !1696, line: 100, baseType: !1752, size: 64, offset: 896)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1695, file: !1696, line: 101, baseType: !1668, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1695, file: !1696, line: 103, baseType: !1668, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1695, file: !1696, line: 105, baseType: !1668, size: 64, offset: 1088)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1695, file: !1696, line: 107, baseType: !1663, size: 64, offset: 1152)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1695, file: !1696, line: 109, baseType: !1780, size: 64, offset: 1216)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1696, line: 109, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1695, file: !1696, line: 111, baseType: !1784, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1696, line: 111, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1695, file: !1696, line: 112, baseType: !1787, offset: 1344)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1788, line: 187, elements: !170)
!1788 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1695, file: !1696, line: 114, baseType: !119, size: 8, offset: 1344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !132, file: !35, line: 471, baseType: !1708, size: 64, offset: 832)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !132, file: !35, line: 473, baseType: !86, size: 64, offset: 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !132, file: !35, line: 475, baseType: !86, size: 64, offset: 960)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !132, file: !35, line: 480, baseType: !415, size: 192, offset: 1024)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !132, file: !35, line: 484, baseType: !1795, size: 576, offset: 1216)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !35, line: 361, size: 576, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1795, file: !35, line: 362, baseType: !143, size: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1795, file: !35, line: 363, baseType: !143, size: 128, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1795, file: !35, line: 364, baseType: !143, size: 128, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1795, file: !35, line: 365, baseType: !143, size: 128, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1795, file: !35, line: 366, baseType: !119, size: 8, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1795, file: !35, line: 367, baseType: !34, size: 32, offset: 544)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !132, file: !35, line: 485, baseType: !1804, size: 2304, offset: 1792)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !42, line: 565, size: 2304, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1901, !1905}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1804, file: !42, line: 566, baseType: !1755, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1804, file: !42, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1804, file: !42, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1804, file: !42, line: 569, baseType: !119, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1804, file: !42, line: 570, baseType: !119, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1804, file: !42, line: 571, baseType: !119, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1804, file: !42, line: 572, baseType: !119, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1804, file: !42, line: 573, baseType: !119, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1804, file: !42, line: 574, baseType: !119, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1804, file: !42, line: 575, baseType: !119, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1804, file: !42, line: 576, baseType: !119, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1804, file: !42, line: 577, baseType: !470, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1804, file: !42, line: 578, baseType: !156, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1804, file: !42, line: 580, baseType: !143, size: 128, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1804, file: !42, line: 581, baseType: !776, size: 192, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1804, file: !42, line: 582, baseType: !1822, size: 64, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1824, line: 43, size: 1472, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1833, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1823, file: !1824, line: 44, baseType: !139, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1823, file: !1824, line: 45, baseType: !92, size: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1823, file: !1824, line: 46, baseType: !143, size: 128, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1823, file: !1824, line: 47, baseType: !156, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1823, file: !1824, line: 48, baseType: !1831, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !42, line: 533, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1823, file: !1824, line: 49, baseType: !1834, size: 320, offset: 320)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1835, line: 11, size: 320, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1838, !1839, !1844}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1834, file: !1835, line: 16, baseType: !740, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1834, file: !1835, line: 17, baseType: !247, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1834, file: !1835, line: 18, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1834, file: !1835, line: 19, baseType: !470, size: 32, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1823, file: !1824, line: 50, baseType: !247, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1823, file: !1824, line: 51, baseType: !546, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1823, file: !1824, line: 52, baseType: !546, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1823, file: !1824, line: 53, baseType: !546, size: 64, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1823, file: !1824, line: 54, baseType: !546, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1823, file: !1824, line: 55, baseType: !546, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1823, file: !1824, line: 56, baseType: !247, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1823, file: !1824, line: 57, baseType: !247, size: 64, offset: 1088)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1823, file: !1824, line: 58, baseType: !247, size: 64, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1823, file: !1824, line: 59, baseType: !247, size: 64, offset: 1216)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1823, file: !1824, line: 60, baseType: !247, size: 64, offset: 1280)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1823, file: !1824, line: 61, baseType: !1637, size: 64, offset: 1344)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1823, file: !1824, line: 62, baseType: !119, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1823, file: !1824, line: 63, baseType: !119, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1804, file: !42, line: 583, baseType: !119, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1804, file: !42, line: 584, baseType: !119, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1804, file: !42, line: 585, baseType: !119, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1804, file: !42, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1804, file: !42, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1804, file: !42, line: 592, baseType: !538, size: 512, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1804, file: !42, line: 593, baseType: !316, size: 64, offset: 1088)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1804, file: !42, line: 594, baseType: !1374, size: 256, offset: 1152)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1804, file: !42, line: 595, baseType: !747, size: 128, offset: 1408)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1804, file: !42, line: 596, baseType: !1831, size: 64, offset: 1536)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1804, file: !42, line: 597, baseType: !338, size: 32, offset: 1600)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1804, file: !42, line: 598, baseType: !338, size: 32, offset: 1632)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1804, file: !42, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1804, file: !42, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1804, file: !42, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1804, file: !42, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1804, file: !42, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1804, file: !42, line: 604, baseType: !119, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1804, file: !42, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1804, file: !42, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1804, file: !42, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1804, file: !42, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1804, file: !42, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1804, file: !42, line: 610, baseType: !7, size: 32, offset: 1696)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1804, file: !42, line: 611, baseType: !41, size: 32, offset: 1728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1804, file: !42, line: 612, baseType: !49, size: 32, offset: 1760)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1804, file: !42, line: 613, baseType: !92, size: 32, offset: 1792)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1804, file: !42, line: 614, baseType: !92, size: 32, offset: 1824)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1804, file: !42, line: 615, baseType: !316, size: 64, offset: 1856)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1804, file: !42, line: 616, baseType: !316, size: 64, offset: 1920)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1804, file: !42, line: 617, baseType: !316, size: 64, offset: 1984)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1804, file: !42, line: 618, baseType: !316, size: 64, offset: 2048)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1804, file: !42, line: 620, baseType: !1892, size: 64, offset: 2112)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !42, line: 536, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1893, file: !42, line: 537, baseType: !156)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1893, file: !42, line: 538, baseType: !7, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1893, file: !42, line: 540, baseType: !143, size: 128, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1893, file: !42, line: 543, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !42, line: 534, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1804, file: !42, line: 621, baseType: !1902, size: 64, offset: 2176)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1637, !700}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1804, file: !42, line: 622, baseType: !1906, size: 64, offset: 2240)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !42, line: 622, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !132, file: !35, line: 486, baseType: !1909, size: 64, offset: 4096)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !42, line: 642, size: 1792, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1918, !1919, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1910, file: !42, line: 643, baseType: !1665, size: 1472)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1910, file: !42, line: 644, baseType: !1668, size: 64, offset: 1472)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1910, file: !42, line: 645, baseType: !1915, size: 64, offset: 1536)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1637, !119}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1910, file: !42, line: 646, baseType: !1668, size: 64, offset: 1600)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1910, file: !42, line: 647, baseType: !1659, size: 64, offset: 1664)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1910, file: !42, line: 648, baseType: !1659, size: 64, offset: 1728)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !132, file: !35, line: 493, baseType: !1922, size: 64, offset: 4160)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !56, line: 162, size: 1088, elements: !1924)
!1924 = !{!1925, !1926, !1927, !2012, !2013, !2014, !2015, !2016, !2017, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1923, file: !56, line: 163, baseType: !143, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1923, file: !56, line: 164, baseType: !139, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1923, file: !56, line: 165, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !56, line: 105, size: 640, elements: !1931)
!1931 = !{!1932, !1961, !1972, !1977, !1981, !1989, !1993, !1997, !2004, !2008}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1930, file: !56, line: 106, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!92, !1922, !1936, !55}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1938, line: 51, size: 1344, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1943, !1944, !1945, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !1938, line: 52, baseType: !139, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1937, file: !1938, line: 53, baseType: !1942, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1938, line: 28, baseType: !470)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1937, file: !1938, line: 54, baseType: !139, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1937, file: !1938, line: 55, baseType: !97, size: 192, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1937, file: !1938, line: 57, baseType: !1946, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1938, line: 31, size: 704, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1938, line: 32, baseType: !197, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1947, file: !1938, line: 33, baseType: !92, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1947, file: !1938, line: 34, baseType: !86, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1947, file: !1938, line: 35, baseType: !1946, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1947, file: !1938, line: 43, baseType: !266, size: 448, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1937, file: !1938, line: 58, baseType: !1946, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1937, file: !1938, line: 59, baseType: !1936, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1937, file: !1938, line: 60, baseType: !1936, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1937, file: !1938, line: 61, baseType: !1936, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1937, file: !1938, line: 63, baseType: !135, size: 512, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1937, file: !1938, line: 65, baseType: !247, size: 64, offset: 1216)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1937, file: !1938, line: 66, baseType: !86, size: 64, offset: 1280)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1930, file: !56, line: 108, baseType: !1962, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!92, !1922, !1965, !55}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !56, line: 63, size: 640, elements: !1967)
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1966, file: !56, line: 64, baseType: !101, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1966, file: !56, line: 65, baseType: !92, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1966, file: !56, line: 66, baseType: !1971, size: 512, offset: 96)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 512, elements: !832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1930, file: !56, line: 110, baseType: !1973, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!92, !1922, !7, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !120, line: 164, baseType: !247)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1930, file: !56, line: 111, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1922, !7}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1930, file: !56, line: 112, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!92, !1922, !1936, !1985, !7, !1987, !1988}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1930, file: !56, line: 117, baseType: !1990, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!92, !1922, !7, !7, !86}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1930, file: !56, line: 119, baseType: !1994, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1922, !7, !7}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1930, file: !56, line: 121, baseType: !1998, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!92, !1922, !2001, !119}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2003, line: 11, flags: DIFlagFwdDecl)
!2003 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1930, file: !56, line: 122, baseType: !2005, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1922, !2001}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1930, file: !56, line: 123, baseType: !2009, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!92, !1922, !1965, !1987, !1988}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1923, file: !56, line: 166, baseType: !86, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1923, file: !56, line: 167, baseType: !7, size: 32, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1923, file: !56, line: 168, baseType: !7, size: 32, offset: 352)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1923, file: !56, line: 171, baseType: !101, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1923, file: !56, line: 172, baseType: !55, size: 32, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1923, file: !56, line: 173, baseType: !2018, size: 64, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !56, line: 134, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1923, file: !56, line: 175, baseType: !1922, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1923, file: !56, line: 182, baseType: !1976, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1923, file: !56, line: 183, baseType: !7, size: 32, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1923, file: !56, line: 184, baseType: !7, size: 32, offset: 736)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1923, file: !56, line: 185, baseType: !1503, size: 128, offset: 768)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1923, file: !56, line: 186, baseType: !415, size: 192, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1923, file: !56, line: 187, baseType: !2027, offset: 1088)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1388)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !132, file: !35, line: 499, baseType: !143, size: 128, offset: 4224)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !132, file: !35, line: 502, baseType: !2030, size: 64, offset: 4352)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !35, line: 502, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !132, file: !35, line: 504, baseType: !2034, size: 64, offset: 4416)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !132, file: !35, line: 505, baseType: !316, size: 64, offset: 4480)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !132, file: !35, line: 510, baseType: !316, size: 64, offset: 4544)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !132, file: !35, line: 511, baseType: !2038, size: 64, offset: 4608)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2040)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !35, line: 511, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !132, file: !35, line: 513, baseType: !2042, size: 64, offset: 4672)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !35, line: 288, size: 128, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2043, file: !35, line: 293, baseType: !7, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2043, file: !35, line: 294, baseType: !247, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !132, file: !35, line: 515, baseType: !143, size: 128, offset: 4736)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !132, file: !35, line: 526, baseType: !2049, offset: 4864)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2050, line: 5, elements: !170)
!2050 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !132, file: !35, line: 528, baseType: !1936, size: 64, offset: 4864)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !132, file: !35, line: 529, baseType: !101, size: 64, offset: 4928)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !132, file: !35, line: 534, baseType: !2054, size: 32, offset: 4992)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !120, line: 16, baseType: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !120, line: 13, baseType: !470)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !35, line: 535, baseType: !470, size: 32, offset: 5024)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !132, file: !35, line: 537, baseType: !156, offset: 5056)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !132, file: !35, line: 538, baseType: !143, size: 128, offset: 5056)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !132, file: !35, line: 540, baseType: !2060, size: 64, offset: 5184)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2062, line: 54, size: 960, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2074, !2078, !2079, !2080, !2081, !2085, !2089, !2090}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2061, file: !2062, line: 55, baseType: !139, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2061, file: !2062, line: 56, baseType: !1714, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2061, file: !2062, line: 58, baseType: !251, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2061, file: !2062, line: 59, baseType: !251, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2061, file: !2062, line: 60, baseType: !149, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2061, file: !2062, line: 62, baseType: !1650, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2061, file: !2062, line: 63, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!197, !1637, !1657}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2061, file: !2062, line: 65, baseType: !2075, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !2060}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2061, file: !2062, line: 66, baseType: !1659, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2061, file: !2062, line: 68, baseType: !1668, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2061, file: !2062, line: 70, baseType: !1423, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2061, file: !2062, line: 71, baseType: !2082, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!128, !1637}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2061, file: !2062, line: 73, baseType: !2086, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !1637, !1458, !1465}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2061, file: !2062, line: 75, baseType: !1663, size: 64, offset: 832)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2061, file: !2062, line: 77, baseType: !1784, size: 64, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !132, file: !35, line: 541, baseType: !251, size: 64, offset: 5248)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !132, file: !35, line: 543, baseType: !1659, size: 64, offset: 5312)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !132, file: !35, line: 544, baseType: !2094, size: 64, offset: 5376)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !35, line: 45, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !132, file: !35, line: 545, baseType: !2097, size: 64, offset: 5440)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !35, line: 47, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !132, file: !35, line: 547, baseType: !119, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !132, file: !35, line: 548, baseType: !119, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !132, file: !35, line: 549, baseType: !119, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !132, file: !35, line: 550, baseType: !119, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !105, file: !98, line: 116, baseType: !2104, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!119, !122, !139}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !105, file: !98, line: 118, baseType: !2108, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!92, !122, !139, !7, !86, !244}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !105, file: !98, line: 123, baseType: !2112, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!92, !122, !139, !2115, !244}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !105, file: !98, line: 126, baseType: !2117, size: 64, offset: 448)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!139, !122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !105, file: !98, line: 127, baseType: !2117, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !105, file: !98, line: 128, baseType: !2122, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!101, !122}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !105, file: !98, line: 130, baseType: !2126, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!101, !122, !101}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !105, file: !98, line: 133, baseType: !2130, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!101, !122, !139}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !105, file: !98, line: 135, baseType: !2134, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!92, !122, !139, !139, !7, !7, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !98, line: 43, size: 640, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2138, file: !98, line: 44, baseType: !101, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2138, file: !98, line: 45, baseType: !7, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2138, file: !98, line: 46, baseType: !2143, size: 512, offset: 128)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 512, elements: !576)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !105, file: !98, line: 140, baseType: !2126, size: 64, offset: 832)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !105, file: !98, line: 143, baseType: !2122, size: 64, offset: 896)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !105, file: !98, line: 145, baseType: !108, size: 64, offset: 960)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !105, file: !98, line: 146, baseType: !2148, size: 64, offset: 1024)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!92, !122, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !98, line: 29, size: 128, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2152, file: !98, line: 30, baseType: !7, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2152, file: !98, line: 31, baseType: !7, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2152, file: !98, line: 32, baseType: !122, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !105, file: !98, line: 148, baseType: !2158, size: 64, offset: 1088)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!92, !122, !1637}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !97, file: !98, line: 20, baseType: !1637, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !89, line: 355, baseType: !87, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !88, file: !89, line: 356, baseType: !143, size: 128, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !89, line: 357, baseType: !143, size: 128, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !88, file: !89, line: 358, baseType: !143, size: 128, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !88, file: !89, line: 359, baseType: !143, size: 128, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !88, file: !89, line: 360, baseType: !2168, size: 32, offset: 896)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !89, line: 179, size: 32, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2168, file: !89, line: 180, baseType: !470, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2168, file: !89, line: 181, baseType: !470, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2168, file: !89, line: 182, baseType: !470, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2168, file: !89, line: 183, baseType: !470, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2168, file: !89, line: 184, baseType: !470, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2168, file: !89, line: 185, baseType: !470, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !89, line: 361, baseType: !2177, size: 32, offset: 928)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !89, line: 190, size: 32, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2177, file: !89, line: 191, baseType: !470, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2177, file: !89, line: 192, baseType: !470, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2177, file: !89, line: 193, baseType: !470, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2177, file: !89, line: 194, baseType: !470, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2177, file: !89, line: 195, baseType: !470, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2177, file: !89, line: 196, baseType: !470, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2177, file: !89, line: 197, baseType: !470, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2177, file: !89, line: 198, baseType: !470, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2177, file: !89, line: 199, baseType: !470, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2177, file: !89, line: 200, baseType: !470, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2177, file: !89, line: 201, baseType: !470, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2177, file: !89, line: 202, baseType: !470, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2177, file: !89, line: 203, baseType: !470, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2177, file: !89, line: 204, baseType: !470, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !88, file: !89, line: 362, baseType: !2194, size: 960, offset: 960)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !89, line: 234, size: 960, elements: !2195)
!2195 = !{!2196, !2198, !2205, !2207, !2208, !2209, !2214, !2217}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2194, file: !89, line: 235, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !89, line: 217, baseType: !977)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2194, file: !89, line: 236, baseType: !2199, size: 32, offset: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !89, line: 227, size: 32, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2199, file: !89, line: 228, baseType: !470, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2199, file: !89, line: 229, baseType: !470, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2199, file: !89, line: 230, baseType: !470, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2199, file: !89, line: 231, baseType: !470, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2194, file: !89, line: 237, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !89, line: 218, baseType: !316)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2194, file: !89, line: 238, baseType: !197, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2194, file: !89, line: 239, baseType: !143, size: 128, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2194, file: !89, line: 240, baseType: !2210, size: 320, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !89, line: 219, baseType: !2211)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 320, elements: !2212)
!2212 = !{!2213}
!2213 = !DISubrange(count: 40)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2194, file: !89, line: 241, baseType: !2215, size: 160, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !89, line: 220, baseType: !2216)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 160, elements: !1241)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2194, file: !89, line: 242, baseType: !2218, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !95, line: 899, size: 192, elements: !2220)
!2220 = !{!2221, !2223, !2228, !2234, !2241, !2247, !2253, !2261}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !95, line: 900, baseType: !2222, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !95, line: 635, baseType: !470)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2219, file: !95, line: 904, baseType: !2224, size: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 901, size: 128, elements: !2225)
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2224, file: !95, line: 902, baseType: !2222, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2224, file: !95, line: 903, baseType: !316, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2219, file: !95, line: 910, baseType: !2229, size: 128)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 906, size: 128, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !95, line: 907, baseType: !2222, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2229, file: !95, line: 908, baseType: !470, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2229, file: !95, line: 909, baseType: !197, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2219, file: !95, line: 916, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 912, size: 128, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2235, file: !95, line: 913, baseType: !2222, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2235, file: !95, line: 914, baseType: !470, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2235, file: !95, line: 915, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2219, file: !95, line: 922, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 918, size: 128, elements: !2243)
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2242, file: !95, line: 919, baseType: !2222, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2242, file: !95, line: 920, baseType: !470, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2242, file: !95, line: 921, baseType: !2218, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2219, file: !95, line: 928, baseType: !2248, size: 128)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 924, size: 128, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2248, file: !95, line: 925, baseType: !2222, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2248, file: !95, line: 926, baseType: !2222, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2248, file: !95, line: 927, baseType: !94, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2219, file: !95, line: 935, baseType: !2254, size: 192)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 930, size: 192, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2260}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2254, file: !95, line: 931, baseType: !2222, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2254, file: !95, line: 932, baseType: !470, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2254, file: !95, line: 933, baseType: !2259, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !95, line: 128, baseType: !316)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2254, file: !95, line: 934, baseType: !470, size: 32, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2219, file: !95, line: 941, baseType: !2262, size: 96)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !95, line: 937, size: 96, elements: !2263)
!2263 = !{!2264, !2265, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2262, file: !95, line: 938, baseType: !2222, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2262, file: !95, line: 939, baseType: !470, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2262, file: !95, line: 940, baseType: !470, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !88, file: !89, line: 363, baseType: !2268, size: 1344, offset: 1920)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !89, line: 275, size: 1344, elements: !2269)
!2269 = !{!2270, !2271, !2281}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2268, file: !89, line: 276, baseType: !92, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !89, line: 277, baseType: !2272, size: 32, offset: 32)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !89, line: 254, size: 32, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2272, file: !89, line: 255, baseType: !470, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2272, file: !89, line: 256, baseType: !470, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2272, file: !89, line: 257, baseType: !470, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2272, file: !89, line: 258, baseType: !470, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2272, file: !89, line: 259, baseType: !470, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2272, file: !89, line: 260, baseType: !470, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2272, file: !89, line: 261, baseType: !470, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2268, file: !89, line: 278, baseType: !2282, size: 1280, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 1280, elements: !2294)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !89, line: 264, size: 256, elements: !2284)
!2284 = !{!2285, !2291, !2292, !2293}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !89, line: 269, baseType: !2286, size: 8)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2283, file: !89, line: 265, size: 8, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2286, file: !89, line: 266, baseType: !607, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2286, file: !89, line: 267, baseType: !607, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2286, file: !89, line: 268, baseType: !607, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2283, file: !89, line: 270, baseType: !92, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2283, file: !89, line: 271, baseType: !92, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2283, file: !89, line: 272, baseType: !143, size: 128, offset: 128)
!2294 = !{!2295}
!2295 = !DISubrange(count: 5)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !88, file: !89, line: 364, baseType: !2297, size: 640, offset: 3264)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !89, line: 315, size: 640, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2308, !2317, !2318, !2319}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2297, file: !89, line: 316, baseType: !94, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2297, file: !89, line: 317, baseType: !316, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2297, file: !89, line: 318, baseType: !316, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2297, file: !89, line: 319, baseType: !143, size: 128, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !89, line: 320, baseType: !2304, size: 8, offset: 320)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !89, line: 305, size: 8, elements: !2305)
!2305 = !{!2306, !2307}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2304, file: !89, line: 306, baseType: !607, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2304, file: !89, line: 307, baseType: !607, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2297, file: !89, line: 321, baseType: !2309, size: 128, offset: 384)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !89, line: 310, size: 128, elements: !2310)
!2310 = !{!2311, !2316}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2309, file: !89, line: 311, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2309, file: !89, line: 312, baseType: !1637, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2297, file: !89, line: 322, baseType: !1822, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2297, file: !89, line: 323, baseType: !92, size: 32, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2297, file: !89, line: 324, baseType: !92, size: 32, offset: 608)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !88, file: !89, line: 365, baseType: !2321, size: 192, offset: 3904)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !89, line: 297, size: 192, elements: !2322)
!2322 = !{!2323, !2324, !2328, !2329}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2321, file: !89, line: 298, baseType: !92, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !89, line: 299, baseType: !2325, size: 8, offset: 32)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !89, line: 283, size: 8, elements: !2326)
!2326 = !{!2327}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2325, file: !89, line: 284, baseType: !607, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2321, file: !89, line: 300, baseType: !92, size: 32, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2321, file: !89, line: 301, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !89, line: 287, size: 64, elements: !2332)
!2332 = !{!2333, !2338, !2339, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2331, file: !89, line: 291, baseType: !2334, size: 8)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2331, file: !89, line: 288, size: 8, elements: !2335)
!2335 = !{!2336, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2334, file: !89, line: 289, baseType: !607, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2334, file: !89, line: 290, baseType: !607, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2331, file: !89, line: 292, baseType: !607, size: 8, offset: 8)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2331, file: !89, line: 293, baseType: !607, size: 8, offset: 16)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2331, file: !89, line: 294, baseType: !92, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !88, file: !89, line: 366, baseType: !2342, size: 64, offset: 4096)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !89, line: 209, size: 64, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2342, file: !89, line: 210, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !89, line: 84, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !89, line: 367, baseType: !2348, size: 384, offset: 4160)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !89, line: 341, size: 384, elements: !2349)
!2349 = !{!2350, !2353, !2354, !2355}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2348, file: !89, line: 342, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2348, file: !89, line: 343, baseType: !143, size: 128, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2348, file: !89, line: 344, baseType: !2351, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2348, file: !89, line: 345, baseType: !143, size: 128, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !88, file: !89, line: 368, baseType: !2357, size: 64, offset: 4544)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !89, line: 122, size: 1216, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2367, !2371, !2375, !2376, !2377}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2358, file: !89, line: 123, baseType: !1735, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2358, file: !89, line: 124, baseType: !143, size: 128, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2358, file: !89, line: 125, baseType: !2363, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!119, !139, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2358, file: !89, line: 126, baseType: !2368, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!92, !87, !1735}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2358, file: !89, line: 127, baseType: !2372, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !87}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2358, file: !89, line: 128, baseType: !1659, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2358, file: !89, line: 129, baseType: !1659, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2358, file: !89, line: 130, baseType: !2378, size: 704, offset: 512)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !89, line: 108, size: 704, elements: !2379)
!2379 = !{!2380, !2381, !2385, !2386, !2387}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2378, file: !89, line: 109, baseType: !135, size: 512)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2378, file: !89, line: 110, baseType: !2382, size: 64, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!92, !87}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2378, file: !89, line: 111, baseType: !2372, size: 64, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2378, file: !89, line: 112, baseType: !119, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2378, file: !89, line: 113, baseType: !119, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !88, file: !89, line: 369, baseType: !2389, size: 64, offset: 4608)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !89, line: 138, size: 256, elements: !2391)
!2391 = !{!2392, !2393, !2397, !2401}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2390, file: !89, line: 139, baseType: !87, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2390, file: !89, line: 140, baseType: !2394, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!92, !87, !470}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2390, file: !89, line: 141, baseType: !2398, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !87, !470}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2390, file: !89, line: 142, baseType: !2372, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !88, file: !89, line: 370, baseType: !2403, size: 64, offset: 4672)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !89, line: 162, size: 2816, elements: !2405)
!2405 = !{!2406, !2410, !2411, !2412, !2413, !2422, !2423}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2404, file: !89, line: 163, baseType: !2407, size: 640)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !2408)
!2408 = !{!2409}
!2409 = !DISubrange(count: 80)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2404, file: !89, line: 164, baseType: !2407, size: 640, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2404, file: !89, line: 165, baseType: !1735, size: 64, offset: 1280)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2404, file: !89, line: 166, baseType: !7, size: 32, offset: 1344)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2404, file: !89, line: 167, baseType: !2414, size: 192, offset: 1408)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !89, line: 154, size: 192, elements: !2415)
!2415 = !{!2416, !2418, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2414, file: !89, line: 155, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !89, line: 150, baseType: !2382)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2414, file: !89, line: 156, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !89, line: 151, baseType: !2382)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2414, file: !89, line: 157, baseType: !2421, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !89, line: 152, baseType: !2398)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2404, file: !89, line: 168, baseType: !1709, size: 1152, offset: 1600)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2404, file: !89, line: 169, baseType: !1714, size: 64, offset: 2752)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !88, file: !89, line: 371, baseType: !2425, size: 64, offset: 4736)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !89, line: 348, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !88, file: !89, line: 372, baseType: !86, size: 64, offset: 4800)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !88, file: !89, line: 373, baseType: !132, size: 5568, offset: 4864)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !88, file: !89, line: 374, baseType: !7, size: 32, offset: 10432)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !88, file: !89, line: 375, baseType: !7, size: 32, offset: 10464)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !88, file: !89, line: 376, baseType: !143, size: 128, offset: 10496)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !88, file: !89, line: 377, baseType: !415, size: 192, offset: 10624)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !88, file: !89, line: 378, baseType: !2372, size: 64, offset: 10816)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !95, line: 127, baseType: !316)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !95, line: 805, baseType: !607)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !95, line: 421, baseType: !470)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsb_buffer", file: !3, line: 23, size: 32, elements: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2442, file: !3, line: 24, baseType: !607, size: 8)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2442, file: !3, line: 25, baseType: !607, size: 8, offset: 8)
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !3, line: 26, baseType: !2447, size: 16, offset: 16)
!2447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !3, line: 26, size: 16, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !2447, file: !3, line: 27, baseType: !444, size: 16)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bdata", scope: !2447, file: !3, line: 28, baseType: !607, size: 8)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2447, file: !3, line: 29, baseType: !1347)
!2452 = !{!0, !2453, !2456}
!2453 = !DIGlobalVariableExpression(var: !2454, expr: !DIExpression())
!2454 = distinct !DIGlobalVariable(name: "i2c_acpi_ignored_device_ids", scope: !2, file: !3, line: 99, type: !2455, isLocal: true, isDefinition: true)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 512, elements: !1012)
!2456 = !DIGlobalVariableExpression(var: !2457, expr: !DIExpression())
!2457 = distinct !DIGlobalVariable(name: "i2c_acpi_force_400khz_device_ids", scope: !2, file: !3, line: 289, type: !2455, isLocal: true, isDefinition: true)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2459, line: 54, size: 192, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2460 = !{!2461, !2467, !2468}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2458, file: !2459, line: 55, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2459, line: 51, baseType: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!92, !2466, !247, !86}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2458, file: !2459, line: 56, baseType: !2466, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2458, file: !2459, line: 57, baseType: !92, size: 32, offset: 128)
!2469 = !{i32 7, !"Dwarf Version", i32 4}
!2470 = !{i32 2, !"Debug Info Version", i32 3}
!2471 = !{i32 1, !"wchar_size", i32 2}
!2472 = !{i32 1, !"Code Model", i32 2}
!2473 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2474 = distinct !DISubprogram(name: "i2c_acpi_get_i2c_resource", scope: !3, file: !3, line: 55, type: !2475, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!119, !2477, !2839}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !2479, line: 651, size: 544, elements: !2480)
!2479 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2482, !2483}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !2479, line: 652, baseType: !470, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2478, file: !2479, line: 653, baseType: !470, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2478, file: !2479, line: 654, baseType: !2484, size: 480, offset: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !2479, line: 614, size: 480, elements: !2485)
!2485 = !{!2486, !2497, !2505, !2511, !2519, !2524, !2530, !2535, !2543, !2547, !2555, !2563, !2569, !2609, !2627, !2645, !2657, !2669, !2677, !2697, !2713, !2733, !2755, !2768, !2780, !2793, !2807, !2818, !2830}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2484, file: !2479, line: 615, baseType: !2487, size: 56)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !2479, line: 138, size: 56, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2487, file: !2479, line: 139, baseType: !607, size: 8)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2487, file: !2479, line: 140, baseType: !607, size: 8, offset: 8)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2487, file: !2479, line: 141, baseType: !607, size: 8, offset: 16)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2487, file: !2479, line: 142, baseType: !607, size: 8, offset: 24)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2487, file: !2479, line: 143, baseType: !607, size: 8, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2487, file: !2479, line: 144, baseType: !607, size: 8, offset: 40)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2487, file: !2479, line: 145, baseType: !2496, size: 8, offset: 48)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 8, elements: !627)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2484, file: !2479, line: 616, baseType: !2498, size: 40)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !2479, line: 148, size: 40, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2498, file: !2479, line: 149, baseType: !607, size: 8)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !2498, file: !2479, line: 150, baseType: !607, size: 8, offset: 8)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !2498, file: !2479, line: 151, baseType: !607, size: 8, offset: 16)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !2498, file: !2479, line: 152, baseType: !607, size: 8, offset: 24)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2498, file: !2479, line: 153, baseType: !2496, size: 8, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !2484, file: !2479, line: 617, baseType: !2506, size: 24)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !2479, line: 156, size: 24, elements: !2507)
!2507 = !{!2508, !2509, !2510}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2506, file: !2479, line: 157, baseType: !607, size: 8)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !2506, file: !2479, line: 158, baseType: !607, size: 8, offset: 8)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !2506, file: !2479, line: 159, baseType: !607, size: 8, offset: 16)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2484, file: !2479, line: 618, baseType: !2512, size: 56)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !2479, line: 167, size: 56, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !2512, file: !2479, line: 168, baseType: !607, size: 8)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2512, file: !2479, line: 169, baseType: !607, size: 8, offset: 8)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2512, file: !2479, line: 170, baseType: !607, size: 8, offset: 16)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2512, file: !2479, line: 171, baseType: !444, size: 16, offset: 24)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2512, file: !2479, line: 172, baseType: !444, size: 16, offset: 40)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !2484, file: !2479, line: 619, baseType: !2520, size: 24)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !2479, line: 175, size: 24, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2520, file: !2479, line: 176, baseType: !444, size: 16)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2520, file: !2479, line: 177, baseType: !607, size: 8, offset: 16)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !2484, file: !2479, line: 620, baseType: !2525, size: 40)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !2479, line: 180, size: 40, elements: !2526)
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !2525, file: !2479, line: 181, baseType: !444, size: 16)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2525, file: !2479, line: 182, baseType: !444, size: 16, offset: 16)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2525, file: !2479, line: 183, baseType: !607, size: 8, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2484, file: !2479, line: 621, baseType: !2531, size: 24)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !2479, line: 195, size: 24, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2531, file: !2479, line: 196, baseType: !444, size: 16)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2531, file: !2479, line: 197, baseType: !2496, size: 8, offset: 16)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !2484, file: !2479, line: 622, baseType: !2536, size: 160)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !2479, line: 202, size: 160, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2542}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2536, file: !2479, line: 203, baseType: !444, size: 16)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !2536, file: !2479, line: 204, baseType: !607, size: 8, offset: 16)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2536, file: !2479, line: 205, baseType: !2541, size: 128, offset: 24)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !832)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2536, file: !2479, line: 206, baseType: !2496, size: 8, offset: 152)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !2484, file: !2479, line: 623, baseType: !2544, size: 8)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !2479, line: 209, size: 8, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2544, file: !2479, line: 210, baseType: !607, size: 8)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !2484, file: !2479, line: 624, baseType: !2548, size: 72)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !2479, line: 213, size: 72, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2548, file: !2479, line: 214, baseType: !607, size: 8)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2548, file: !2479, line: 215, baseType: !444, size: 16, offset: 8)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2548, file: !2479, line: 216, baseType: !444, size: 16, offset: 24)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2548, file: !2479, line: 217, baseType: !444, size: 16, offset: 40)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2548, file: !2479, line: 218, baseType: !444, size: 16, offset: 56)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !2484, file: !2479, line: 625, baseType: !2556, size: 136)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !2479, line: 221, size: 136, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2556, file: !2479, line: 222, baseType: !607, size: 8)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2556, file: !2479, line: 223, baseType: !470, size: 32, offset: 8)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2556, file: !2479, line: 224, baseType: !470, size: 32, offset: 40)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2556, file: !2479, line: 225, baseType: !470, size: 32, offset: 72)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2556, file: !2479, line: 226, baseType: !470, size: 32, offset: 104)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !2484, file: !2479, line: 626, baseType: !2564, size: 72)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !2479, line: 229, size: 72, elements: !2565)
!2565 = !{!2566, !2567, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2564, file: !2479, line: 230, baseType: !607, size: 8)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2564, file: !2479, line: 231, baseType: !470, size: 32, offset: 8)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2564, file: !2479, line: 232, baseType: !470, size: 32, offset: 40)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !2484, file: !2479, line: 627, baseType: !2570, size: 240)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !2479, line: 306, size: 240, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2595, !2603}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2570, file: !2479, line: 307, baseType: !607, size: 8)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2570, file: !2479, line: 307, baseType: !607, size: 8, offset: 8)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2570, file: !2479, line: 307, baseType: !607, size: 8, offset: 16)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2570, file: !2479, line: 307, baseType: !607, size: 8, offset: 24)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2570, file: !2479, line: 307, baseType: !607, size: 8, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2570, file: !2479, line: 307, baseType: !2578, size: 32, offset: 40)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !2479, line: 249, size: 32, elements: !2579)
!2579 = !{!2580, !2587, !2594}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2578, file: !2479, line: 250, baseType: !2581, size: 32)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !2479, line: 235, size: 32, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2581, file: !2479, line: 236, baseType: !607, size: 8)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !2581, file: !2479, line: 237, baseType: !607, size: 8, offset: 8)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2581, file: !2479, line: 238, baseType: !607, size: 8, offset: 16)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2581, file: !2479, line: 239, baseType: !607, size: 8, offset: 24)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2578, file: !2479, line: 251, baseType: !2588, size: 32)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !2479, line: 242, size: 32, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2588, file: !2479, line: 243, baseType: !607, size: 8)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2588, file: !2479, line: 244, baseType: !607, size: 8, offset: 8)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !2588, file: !2479, line: 245, baseType: !607, size: 8, offset: 16)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2588, file: !2479, line: 246, baseType: !607, size: 8, offset: 24)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2578, file: !2479, line: 255, baseType: !607, size: 8)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2570, file: !2479, line: 307, baseType: !2596, size: 80, offset: 72)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !2479, line: 279, size: 80, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2596, file: !2479, line: 280, baseType: !444, size: 16)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2596, file: !2479, line: 281, baseType: !444, size: 16, offset: 16)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2596, file: !2479, line: 282, baseType: !444, size: 16, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2596, file: !2479, line: 283, baseType: !444, size: 16, offset: 48)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2596, file: !2479, line: 284, baseType: !444, size: 16, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2570, file: !2479, line: 308, baseType: !2604, size: 88, offset: 152)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !2479, line: 263, size: 88, elements: !2605)
!2605 = !{!2606, !2607, !2608}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2604, file: !2479, line: 264, baseType: !607, size: 8)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2604, file: !2479, line: 265, baseType: !444, size: 16, offset: 8)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2604, file: !2479, line: 266, baseType: !197, size: 64, offset: 24)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !2484, file: !2479, line: 628, baseType: !2610, size: 320)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !2479, line: 311, size: 320, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2626}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2610, file: !2479, line: 312, baseType: !607, size: 8)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2610, file: !2479, line: 312, baseType: !607, size: 8, offset: 8)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2610, file: !2479, line: 312, baseType: !607, size: 8, offset: 16)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2610, file: !2479, line: 312, baseType: !607, size: 8, offset: 24)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2610, file: !2479, line: 312, baseType: !607, size: 8, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2610, file: !2479, line: 312, baseType: !2578, size: 32, offset: 40)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2610, file: !2479, line: 312, baseType: !2619, size: 160, offset: 72)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !2479, line: 287, size: 160, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2619, file: !2479, line: 288, baseType: !470, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2619, file: !2479, line: 289, baseType: !470, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2619, file: !2479, line: 290, baseType: !470, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2619, file: !2479, line: 291, baseType: !470, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2619, file: !2479, line: 292, baseType: !470, size: 32, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2610, file: !2479, line: 313, baseType: !2604, size: 88, offset: 232)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !2484, file: !2479, line: 629, baseType: !2628, size: 480)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !2479, line: 316, size: 480, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2644}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2628, file: !2479, line: 317, baseType: !607, size: 8)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2628, file: !2479, line: 317, baseType: !607, size: 8, offset: 8)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2628, file: !2479, line: 317, baseType: !607, size: 8, offset: 16)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2628, file: !2479, line: 317, baseType: !607, size: 8, offset: 24)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2628, file: !2479, line: 317, baseType: !607, size: 8, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2628, file: !2479, line: 317, baseType: !2578, size: 32, offset: 40)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2628, file: !2479, line: 317, baseType: !2637, size: 320, offset: 72)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !2479, line: 295, size: 320, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2637, file: !2479, line: 296, baseType: !316, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2637, file: !2479, line: 297, baseType: !316, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2637, file: !2479, line: 298, baseType: !316, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2637, file: !2479, line: 299, baseType: !316, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2637, file: !2479, line: 300, baseType: !316, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2628, file: !2479, line: 318, baseType: !2604, size: 88, offset: 392)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !2484, file: !2479, line: 630, baseType: !2646, size: 464)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !2479, line: 321, size: 464, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8, offset: 8)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8, offset: 16)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8, offset: 24)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8, offset: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2646, file: !2479, line: 322, baseType: !2578, size: 32, offset: 40)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !2646, file: !2479, line: 322, baseType: !607, size: 8, offset: 72)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2646, file: !2479, line: 323, baseType: !2637, size: 320, offset: 80)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2646, file: !2479, line: 324, baseType: !316, size: 64, offset: 400)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !2484, file: !2479, line: 631, baseType: !2658, size: 168)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !2479, line: 327, size: 168, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2658, file: !2479, line: 328, baseType: !607, size: 8)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2658, file: !2479, line: 329, baseType: !607, size: 8, offset: 8)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2658, file: !2479, line: 330, baseType: !607, size: 8, offset: 16)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2658, file: !2479, line: 331, baseType: !607, size: 8, offset: 24)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2658, file: !2479, line: 332, baseType: !607, size: 8, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2658, file: !2479, line: 333, baseType: !607, size: 8, offset: 40)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2658, file: !2479, line: 334, baseType: !2604, size: 88, offset: 48)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2658, file: !2479, line: 335, baseType: !2668, size: 32, offset: 136)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 32, elements: !627)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !2484, file: !2479, line: 632, baseType: !2670, size: 96)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !2479, line: 338, size: 96, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2670, file: !2479, line: 339, baseType: !607, size: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2670, file: !2479, line: 340, baseType: !607, size: 8, offset: 8)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2670, file: !2479, line: 341, baseType: !607, size: 8, offset: 16)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2670, file: !2479, line: 342, baseType: !607, size: 8, offset: 24)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2670, file: !2479, line: 343, baseType: !316, size: 64, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !2484, file: !2479, line: 633, baseType: !2678, size: 352)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !2479, line: 346, size: 352, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2696}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2678, file: !2479, line: 347, baseType: !607, size: 8)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !2678, file: !2479, line: 348, baseType: !607, size: 8, offset: 8)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2678, file: !2479, line: 349, baseType: !607, size: 8, offset: 16)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2678, file: !2479, line: 350, baseType: !607, size: 8, offset: 24)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2678, file: !2479, line: 351, baseType: !607, size: 8, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2678, file: !2479, line: 352, baseType: !607, size: 8, offset: 40)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !2678, file: !2479, line: 353, baseType: !607, size: 8, offset: 48)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2678, file: !2479, line: 354, baseType: !607, size: 8, offset: 56)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2678, file: !2479, line: 355, baseType: !607, size: 8, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2678, file: !2479, line: 356, baseType: !444, size: 16, offset: 72)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !2678, file: !2479, line: 357, baseType: !444, size: 16, offset: 88)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2678, file: !2479, line: 358, baseType: !444, size: 16, offset: 104)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2678, file: !2479, line: 359, baseType: !444, size: 16, offset: 120)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2678, file: !2479, line: 360, baseType: !2604, size: 88, offset: 136)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2678, file: !2479, line: 361, baseType: !2695, size: 64, offset: 224)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2678, file: !2479, line: 362, baseType: !2240, size: 64, offset: 288)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !2484, file: !2479, line: 634, baseType: !2698, size: 288)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !2479, line: 412, size: 288, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 8)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 16)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 24)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 40)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2698, file: !2479, line: 413, baseType: !444, size: 16, offset: 48)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2698, file: !2479, line: 413, baseType: !444, size: 16, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2698, file: !2479, line: 413, baseType: !2604, size: 88, offset: 80)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2698, file: !2479, line: 413, baseType: !2240, size: 64, offset: 168)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !2698, file: !2479, line: 413, baseType: !607, size: 8, offset: 232)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !2698, file: !2479, line: 414, baseType: !444, size: 16, offset: 240)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2698, file: !2479, line: 415, baseType: !470, size: 32, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !2484, file: !2479, line: 635, baseType: !2714, size: 320)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !2479, line: 423, size: 320, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 8)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 16)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 24)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 40)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2714, file: !2479, line: 424, baseType: !444, size: 16, offset: 48)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2714, file: !2479, line: 424, baseType: !444, size: 16, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2714, file: !2479, line: 424, baseType: !2604, size: 88, offset: 80)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2714, file: !2479, line: 424, baseType: !2240, size: 64, offset: 168)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !2714, file: !2479, line: 424, baseType: !607, size: 8, offset: 232)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !2714, file: !2479, line: 425, baseType: !607, size: 8, offset: 240)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !2714, file: !2479, line: 426, baseType: !607, size: 8, offset: 248)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !2714, file: !2479, line: 427, baseType: !607, size: 8, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !2714, file: !2479, line: 428, baseType: !607, size: 8, offset: 264)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !2714, file: !2479, line: 429, baseType: !444, size: 16, offset: 272)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2714, file: !2479, line: 430, baseType: !470, size: 32, offset: 288)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !2484, file: !2479, line: 636, baseType: !2734, size: 344)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !2479, line: 453, size: 344, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 16)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 24)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 40)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2734, file: !2479, line: 454, baseType: !444, size: 16, offset: 48)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2734, file: !2479, line: 454, baseType: !444, size: 16, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2734, file: !2479, line: 454, baseType: !2604, size: 88, offset: 80)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2734, file: !2479, line: 454, baseType: !2240, size: 64, offset: 168)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2734, file: !2479, line: 454, baseType: !607, size: 8, offset: 232)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !2734, file: !2479, line: 455, baseType: !607, size: 8, offset: 240)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !2734, file: !2479, line: 456, baseType: !607, size: 8, offset: 248)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !2734, file: !2479, line: 457, baseType: !607, size: 8, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2734, file: !2479, line: 458, baseType: !607, size: 8, offset: 264)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !2734, file: !2479, line: 459, baseType: !607, size: 8, offset: 272)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !2734, file: !2479, line: 460, baseType: !444, size: 16, offset: 280)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !2734, file: !2479, line: 461, baseType: !444, size: 16, offset: 296)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !2734, file: !2479, line: 462, baseType: !470, size: 32, offset: 312)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !2484, file: !2479, line: 637, baseType: !2756, size: 232)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !2479, line: 398, size: 232, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8, offset: 8)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8, offset: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8, offset: 24)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2756, file: !2479, line: 399, baseType: !607, size: 8, offset: 40)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2756, file: !2479, line: 399, baseType: !444, size: 16, offset: 48)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2756, file: !2479, line: 399, baseType: !444, size: 16, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2756, file: !2479, line: 399, baseType: !2604, size: 88, offset: 80)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2756, file: !2479, line: 399, baseType: !2240, size: 64, offset: 168)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !2484, file: !2479, line: 638, baseType: !2769, size: 288)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !2479, line: 508, size: 288, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2769, file: !2479, line: 509, baseType: !607, size: 8)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2769, file: !2479, line: 510, baseType: !607, size: 8, offset: 8)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2769, file: !2479, line: 511, baseType: !607, size: 8, offset: 16)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2769, file: !2479, line: 512, baseType: !444, size: 16, offset: 24)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2769, file: !2479, line: 513, baseType: !444, size: 16, offset: 40)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2769, file: !2479, line: 514, baseType: !444, size: 16, offset: 56)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2769, file: !2479, line: 515, baseType: !2604, size: 88, offset: 72)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2769, file: !2479, line: 516, baseType: !2695, size: 64, offset: 160)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2769, file: !2479, line: 517, baseType: !2240, size: 64, offset: 224)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2484, file: !2479, line: 639, baseType: !2781, size: 312)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !2479, line: 520, size: 312, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2781, file: !2479, line: 521, baseType: !607, size: 8)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2781, file: !2479, line: 522, baseType: !607, size: 8, offset: 8)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2781, file: !2479, line: 523, baseType: !607, size: 8, offset: 16)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2781, file: !2479, line: 524, baseType: !607, size: 8, offset: 24)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2781, file: !2479, line: 525, baseType: !470, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2781, file: !2479, line: 526, baseType: !444, size: 16, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2781, file: !2479, line: 527, baseType: !444, size: 16, offset: 80)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2781, file: !2479, line: 528, baseType: !2604, size: 88, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2781, file: !2479, line: 529, baseType: !2695, size: 64, offset: 184)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2781, file: !2479, line: 530, baseType: !2240, size: 64, offset: 248)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !2484, file: !2479, line: 640, baseType: !2794, size: 256)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !2479, line: 550, size: 256, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2806}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2794, file: !2479, line: 551, baseType: !607, size: 8)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2794, file: !2479, line: 552, baseType: !607, size: 8, offset: 8)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2794, file: !2479, line: 553, baseType: !444, size: 16, offset: 16)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2794, file: !2479, line: 554, baseType: !444, size: 16, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2794, file: !2479, line: 555, baseType: !2695, size: 64, offset: 48)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !2794, file: !2479, line: 556, baseType: !2802, size: 80, offset: 112)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !2479, line: 258, size: 80, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2802, file: !2479, line: 259, baseType: !444, size: 16)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2802, file: !2479, line: 260, baseType: !197, size: 64, offset: 16)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2794, file: !2479, line: 557, baseType: !2240, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !2484, file: !2479, line: 641, baseType: !2808, size: 288)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !2479, line: 560, size: 288, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2808, file: !2479, line: 561, baseType: !607, size: 8)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2808, file: !2479, line: 562, baseType: !607, size: 8, offset: 8)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2808, file: !2479, line: 563, baseType: !607, size: 8, offset: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2808, file: !2479, line: 564, baseType: !444, size: 16, offset: 24)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2808, file: !2479, line: 565, baseType: !444, size: 16, offset: 40)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2808, file: !2479, line: 566, baseType: !2604, size: 88, offset: 56)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2808, file: !2479, line: 567, baseType: !2802, size: 80, offset: 144)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2808, file: !2479, line: 568, baseType: !2240, size: 64, offset: 224)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !2484, file: !2479, line: 642, baseType: !2819, size: 312)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !2479, line: 571, size: 312, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2819, file: !2479, line: 572, baseType: !607, size: 8)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2819, file: !2479, line: 573, baseType: !607, size: 8, offset: 8)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2819, file: !2479, line: 574, baseType: !607, size: 8, offset: 16)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2819, file: !2479, line: 575, baseType: !607, size: 8, offset: 24)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2819, file: !2479, line: 576, baseType: !470, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2819, file: !2479, line: 577, baseType: !444, size: 16, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2819, file: !2479, line: 578, baseType: !2604, size: 88, offset: 80)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2819, file: !2479, line: 579, baseType: !2802, size: 80, offset: 168)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2819, file: !2479, line: 580, baseType: !2240, size: 64, offset: 248)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2484, file: !2479, line: 646, baseType: !2831, size: 72)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !2479, line: 303, size: 72, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2831, file: !2479, line: 304, baseType: !607, size: 8)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2831, file: !2479, line: 304, baseType: !607, size: 8, offset: 8)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2831, file: !2479, line: 304, baseType: !607, size: 8, offset: 16)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2831, file: !2479, line: 304, baseType: !607, size: 8, offset: 24)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2831, file: !2479, line: 304, baseType: !607, size: 8, offset: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2831, file: !2479, line: 304, baseType: !2578, size: 32, offset: 40)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2841 = !DILocalVariable(name: "ares", arg: 1, scope: !2474, file: !3, line: 55, type: !2477)
!2842 = !DILocation(line: 55, column: 54, scope: !2474)
!2843 = !DILocalVariable(name: "i2c", arg: 2, scope: !2474, file: !3, line: 56, type: !2839)
!2844 = !DILocation(line: 56, column: 48, scope: !2474)
!2845 = !DILocalVariable(name: "sb", scope: !2474, file: !3, line: 58, type: !2840)
!2846 = !DILocation(line: 58, column: 38, scope: !2474)
!2847 = !DILocation(line: 60, column: 6, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 60, column: 6)
!2849 = !DILocation(line: 60, column: 12, scope: !2848)
!2850 = !DILocation(line: 60, column: 17, scope: !2848)
!2851 = !DILocation(line: 60, column: 6, scope: !2474)
!2852 = !DILocation(line: 61, column: 3, scope: !2848)
!2853 = !DILocation(line: 63, column: 8, scope: !2474)
!2854 = !DILocation(line: 63, column: 14, scope: !2474)
!2855 = !DILocation(line: 63, column: 19, scope: !2474)
!2856 = !DILocation(line: 63, column: 5, scope: !2474)
!2857 = !DILocation(line: 64, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 64, column: 6)
!2859 = !DILocation(line: 64, column: 10, scope: !2858)
!2860 = !DILocation(line: 64, column: 15, scope: !2858)
!2861 = !DILocation(line: 64, column: 6, scope: !2474)
!2862 = !DILocation(line: 65, column: 3, scope: !2858)
!2863 = !DILocation(line: 67, column: 9, scope: !2474)
!2864 = !DILocation(line: 67, column: 3, scope: !2474)
!2865 = !DILocation(line: 67, column: 7, scope: !2474)
!2866 = !DILocation(line: 68, column: 2, scope: !2474)
!2867 = !DILocation(line: 69, column: 1, scope: !2474)
!2868 = distinct !DISubprogram(name: "i2c_acpi_get_irq", scope: !3, file: !3, line: 155, type: !2869, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!92, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !2873, line: 314, size: 6016, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2874 = !{!2875, !2876, !2877, !2878, !3000, !3001, !3002, !3003}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2872, file: !2873, line: 315, baseType: !239, size: 16)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2872, file: !2873, line: 325, baseType: !239, size: 16, offset: 16)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2872, file: !2873, line: 328, baseType: !2216, size: 160, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !2872, file: !2873, line: 329, baseType: !2879, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !2873, line: 695, size: 7552, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2921, !2922, !2936, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2953, !2954, !2955, !2956, !2988, !2999}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2880, file: !2873, line: 696, baseType: !1714, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2880, file: !2873, line: 697, baseType: !7, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2880, file: !2873, line: 698, baseType: !2885, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !2873, line: 519, size: 320, elements: !2888)
!2888 = !{!2889, !2902, !2903, !2916, !2917}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !2887, file: !2873, line: 529, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!92, !2879, !2893, !92}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2895, line: 69, size: 128, elements: !2896)
!2895 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2894, file: !2895, line: 70, baseType: !445, size: 16)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2894, file: !2895, line: 71, baseType: !445, size: 16, offset: 16)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2894, file: !2895, line: 84, baseType: !445, size: 16, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2894, file: !2895, line: 85, baseType: !2901, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !2887, file: !2873, line: 531, baseType: !2890, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !2887, file: !2873, line: 533, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!92, !2879, !444, !239, !141, !607, !92, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2895, line: 135, size: 272, elements: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2908, file: !2895, line: 136, baseType: !608, size: 8)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2908, file: !2895, line: 137, baseType: !445, size: 16)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2908, file: !2895, line: 138, baseType: !2913, size: 272)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 272, elements: !2914)
!2914 = !{!2915}
!2915 = !DISubrange(count: 34)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !2887, file: !2873, line: 536, baseType: !2904, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !2887, file: !2873, line: 541, baseType: !2918, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!470, !2879}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !2880, file: !2873, line: 699, baseType: !86, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !2880, file: !2873, line: 702, baseType: !2923, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !2873, line: 557, size: 192, elements: !2926)
!2926 = !{!2927, !2931, !2935}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !2925, file: !2873, line: 558, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2879, !7}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !2925, file: !2873, line: 559, baseType: !2932, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!92, !2879, !7}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !2925, file: !2873, line: 560, baseType: !2928, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !2880, file: !2873, line: 703, baseType: !2937, size: 192, offset: 320)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !2938, line: 30, size: 192, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2937, file: !2938, line: 31, baseType: !363)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2937, file: !2938, line: 32, baseType: !597, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2937, file: !2938, line: 33, baseType: !460, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !2880, file: !2873, line: 704, baseType: !2937, size: 192, offset: 512)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2880, file: !2873, line: 706, baseType: !92, size: 32, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2880, file: !2873, line: 707, baseType: !92, size: 32, offset: 736)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2880, file: !2873, line: 708, baseType: !132, size: 5568, offset: 768)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !2880, file: !2873, line: 709, baseType: !247, size: 64, offset: 6336)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2880, file: !2873, line: 713, baseType: !92, size: 32, offset: 6400)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2880, file: !2873, line: 714, baseType: !2950, size: 384, offset: 6432)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 384, elements: !2951)
!2951 = !{!2952}
!2952 = !DISubrange(count: 48)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !2880, file: !2873, line: 715, baseType: !776, size: 192, offset: 6848)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !2880, file: !2873, line: 717, baseType: !415, size: 192, offset: 7040)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !2880, file: !2873, line: 718, baseType: !143, size: 128, offset: 7232)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !2880, file: !2873, line: 720, baseType: !2957, size: 64, offset: 7360)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !2873, line: 618, size: 832, elements: !2959)
!2959 = !{!2960, !2964, !2965, !2969, !2970, !2971, !2972, !2976, !2977, !2980, !2981, !2984, !2987}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2958, file: !2873, line: 619, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!92, !2879}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2958, file: !2873, line: 621, baseType: !2961, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2958, file: !2873, line: 622, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2879, !92}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2958, file: !2873, line: 623, baseType: !2961, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2958, file: !2873, line: 624, baseType: !2966, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2958, file: !2873, line: 625, baseType: !2961, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2958, file: !2873, line: 627, baseType: !2973, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2879}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2958, file: !2873, line: 628, baseType: !2973, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2958, file: !2873, line: 631, baseType: !2978, size: 64, offset: 512)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !2873, line: 631, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2958, file: !2873, line: 632, baseType: !2978, size: 64, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2958, file: !2873, line: 633, baseType: !2982, size: 64, offset: 640)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !2873, line: 633, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2958, file: !2873, line: 634, baseType: !2985, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !2873, line: 634, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2958, file: !2873, line: 635, baseType: !2985, size: 64, offset: 768)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2880, file: !2873, line: 721, baseType: !2989, size: 64, offset: 7424)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !2873, line: 664, size: 192, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2991, file: !2873, line: 665, baseType: !316, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2991, file: !2873, line: 666, baseType: !92, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2991, file: !2873, line: 667, baseType: !444, size: 16, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2991, file: !2873, line: 668, baseType: !444, size: 16, offset: 112)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2991, file: !2873, line: 669, baseType: !444, size: 16, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2991, file: !2873, line: 670, baseType: !444, size: 16, offset: 144)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !2880, file: !2873, line: 723, baseType: !1922, size: 64, offset: 7488)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2872, file: !2873, line: 330, baseType: !132, size: 5568, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !2872, file: !2873, line: 331, baseType: !92, size: 32, offset: 5824)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2872, file: !2873, line: 332, baseType: !92, size: 32, offset: 5856)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !2872, file: !2873, line: 333, baseType: !143, size: 128, offset: 5888)
!3004 = !DILocalVariable(name: "client", arg: 1, scope: !2868, file: !3, line: 155, type: !2871)
!3005 = !DILocation(line: 155, column: 41, scope: !2868)
!3006 = !DILocalVariable(name: "adev", scope: !2868, file: !3, line: 157, type: !87)
!3007 = !DILocation(line: 157, column: 22, scope: !2868)
!3008 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3009, file: !3, line: 157, type: !101)
!3009 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 157, column: 29)
!3010 = !DILocation(line: 157, column: 29, scope: !3009)
!3011 = !DILocalVariable(name: "__mptr", scope: !3012, file: !3, line: 157, type: !86)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 157, column: 29)
!3013 = !DILocation(line: 157, column: 29, scope: !3012)
!3014 = !DILocation(line: 157, column: 29, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 157, column: 29)
!3016 = !DILocalVariable(name: "resource_list", scope: !2868, file: !3, line: 158, type: !143)
!3017 = !DILocation(line: 158, column: 19, scope: !2868)
!3018 = !DILocalVariable(name: "irq", scope: !2868, file: !3, line: 159, type: !92)
!3019 = !DILocation(line: 159, column: 6, scope: !2868)
!3020 = !DILocalVariable(name: "ret", scope: !2868, file: !3, line: 160, type: !92)
!3021 = !DILocation(line: 160, column: 6, scope: !2868)
!3022 = !DILocation(line: 162, column: 2, scope: !2868)
!3023 = !DILocation(line: 164, column: 31, scope: !2868)
!3024 = !DILocation(line: 165, column: 33, scope: !2868)
!3025 = !DILocation(line: 164, column: 8, scope: !2868)
!3026 = !DILocation(line: 164, column: 6, scope: !2868)
!3027 = !DILocation(line: 166, column: 6, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 166, column: 6)
!3029 = !DILocation(line: 166, column: 10, scope: !3028)
!3030 = !DILocation(line: 166, column: 6, scope: !2868)
!3031 = !DILocation(line: 167, column: 10, scope: !3028)
!3032 = !DILocation(line: 167, column: 3, scope: !3028)
!3033 = !DILocation(line: 169, column: 2, scope: !2868)
!3034 = !DILocation(line: 171, column: 6, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 171, column: 6)
!3036 = !DILocation(line: 171, column: 10, scope: !3035)
!3037 = !DILocation(line: 171, column: 6, scope: !2868)
!3038 = !DILocation(line: 172, column: 31, scope: !3035)
!3039 = !DILocation(line: 172, column: 9, scope: !3035)
!3040 = !DILocation(line: 172, column: 7, scope: !3035)
!3041 = !DILocation(line: 172, column: 3, scope: !3035)
!3042 = !DILocation(line: 174, column: 9, scope: !2868)
!3043 = !DILocation(line: 174, column: 2, scope: !2868)
!3044 = !DILocation(line: 175, column: 1, scope: !2868)
!3045 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3046, file: !3046, line: 33, type: !3047, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3046 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !146}
!3049 = !DILocalVariable(name: "list", arg: 1, scope: !3045, file: !3046, line: 33, type: !146)
!3050 = !DILocation(line: 33, column: 53, scope: !3045)
!3051 = !DILocation(line: 35, column: 2, scope: !3045)
!3052 = !DILocation(line: 35, column: 2, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3045, file: !3046, line: 35, column: 2)
!3054 = !DILocation(line: 35, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3053, file: !3046, line: 35, column: 2)
!3056 = !DILocation(line: 35, column: 2, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3053, file: !3046, line: 35, column: 2)
!3058 = !DILocation(line: 36, column: 15, scope: !3045)
!3059 = !DILocation(line: 36, column: 2, scope: !3045)
!3060 = !DILocation(line: 36, column: 8, scope: !3045)
!3061 = !DILocation(line: 36, column: 13, scope: !3045)
!3062 = !DILocation(line: 37, column: 1, scope: !3045)
!3063 = distinct !DISubprogram(name: "i2c_acpi_add_resource", scope: !3, file: !3, line: 136, type: !3064, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!92, !2477, !86}
!3066 = !DILocalVariable(name: "ares", arg: 1, scope: !3063, file: !3, line: 136, type: !2477)
!3067 = !DILocation(line: 136, column: 56, scope: !3063)
!3068 = !DILocalVariable(name: "data", arg: 2, scope: !3063, file: !3, line: 136, type: !86)
!3069 = !DILocation(line: 136, column: 68, scope: !3063)
!3070 = !DILocalVariable(name: "irq", scope: !3063, file: !3, line: 138, type: !787)
!3071 = !DILocation(line: 138, column: 7, scope: !3063)
!3072 = !DILocation(line: 138, column: 13, scope: !3063)
!3073 = !DILocalVariable(name: "r", scope: !3063, file: !3, line: 139, type: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3075, line: 20, size: 512, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !{!3077, !3079, !3080, !3081, !3082, !3083, !3085, !3086}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3074, file: !3075, line: 21, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !120, line: 158, baseType: !1167)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3074, file: !3075, line: 22, baseType: !3078, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3074, file: !3075, line: 23, baseType: !139, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3074, file: !3075, line: 24, baseType: !247, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3074, file: !3075, line: 25, baseType: !247, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3074, file: !3075, line: 26, baseType: !3084, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3074, file: !3075, line: 26, baseType: !3084, size: 64, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3074, file: !3075, line: 26, baseType: !3084, size: 64, offset: 448)
!3087 = !DILocation(line: 139, column: 18, scope: !3063)
!3088 = !DILocation(line: 141, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 141, column: 6)
!3090 = !DILocation(line: 141, column: 6, scope: !3089)
!3091 = !DILocation(line: 141, column: 11, scope: !3089)
!3092 = !DILocation(line: 141, column: 16, scope: !3089)
!3093 = !DILocation(line: 141, column: 47, scope: !3089)
!3094 = !DILocation(line: 141, column: 19, scope: !3089)
!3095 = !DILocation(line: 141, column: 6, scope: !3063)
!3096 = !DILocation(line: 142, column: 10, scope: !3089)
!3097 = !DILocation(line: 142, column: 4, scope: !3089)
!3098 = !DILocation(line: 142, column: 8, scope: !3089)
!3099 = !DILocation(line: 142, column: 3, scope: !3089)
!3100 = !DILocation(line: 144, column: 2, scope: !3063)
!3101 = distinct !DISubprogram(name: "i2c_acpi_register_devices", scope: !3, file: !3, line: 264, type: !2974, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3102 = !DILocalVariable(name: "adap", arg: 1, scope: !3101, file: !3, line: 264, type: !2879)
!3103 = !DILocation(line: 264, column: 52, scope: !3101)
!3104 = !DILocalVariable(name: "status", scope: !3101, file: !3, line: 266, type: !2440)
!3105 = !DILocation(line: 266, column: 14, scope: !3101)
!3106 = !DILocalVariable(name: "handle", scope: !3101, file: !3, line: 267, type: !94)
!3107 = !DILocation(line: 267, column: 14, scope: !3101)
!3108 = !DILocation(line: 269, column: 27, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 269, column: 6)
!3110 = !DILocation(line: 269, column: 33, scope: !3109)
!3111 = !DILocation(line: 269, column: 7, scope: !3109)
!3112 = !DILocation(line: 269, column: 6, scope: !3101)
!3113 = !DILocation(line: 270, column: 3, scope: !3109)
!3114 = !DILocation(line: 275, column: 10, scope: !3101)
!3115 = !DILocation(line: 272, column: 11, scope: !3101)
!3116 = !DILocation(line: 272, column: 9, scope: !3101)
!3117 = !DILocation(line: 276, column: 6, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 276, column: 6)
!3119 = !DILocation(line: 276, column: 6, scope: !3101)
!3120 = !DILocation(line: 277, column: 3, scope: !3118)
!3121 = !DILocation(line: 279, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 279, column: 6)
!3123 = !DILocation(line: 279, column: 13, scope: !3122)
!3124 = !DILocation(line: 279, column: 17, scope: !3122)
!3125 = !DILocation(line: 279, column: 6, scope: !3101)
!3126 = !DILocation(line: 280, column: 3, scope: !3122)
!3127 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3128, file: !3, line: 282, type: !101)
!3128 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 282, column: 11)
!3129 = !DILocation(line: 282, column: 11, scope: !3128)
!3130 = !DILocalVariable(name: "__mptr", scope: !3131, file: !3, line: 282, type: !86)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 282, column: 11)
!3132 = !DILocation(line: 282, column: 11, scope: !3131)
!3133 = !DILocation(line: 282, column: 11, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 282, column: 11)
!3135 = !DILocation(line: 282, column: 11, scope: !3101)
!3136 = !DILocation(line: 282, column: 9, scope: !3101)
!3137 = !DILocation(line: 283, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 283, column: 6)
!3139 = !DILocation(line: 283, column: 6, scope: !3101)
!3140 = !DILocation(line: 284, column: 3, scope: !3138)
!3141 = !DILocation(line: 286, column: 28, scope: !3101)
!3142 = !DILocation(line: 286, column: 2, scope: !3101)
!3143 = !DILocation(line: 287, column: 1, scope: !3101)
!3144 = distinct !DISubprogram(name: "has_acpi_companion", scope: !3145, file: !3145, line: 84, type: !3146, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3145 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!119, !1637}
!3148 = !DILocalVariable(name: "dev", arg: 1, scope: !3144, file: !3145, line: 84, type: !1637)
!3149 = !DILocation(line: 84, column: 54, scope: !3144)
!3150 = !DILocation(line: 86, column: 29, scope: !3144)
!3151 = !DILocation(line: 86, column: 34, scope: !3144)
!3152 = !DILocation(line: 86, column: 9, scope: !3144)
!3153 = !DILocation(line: 86, column: 2, scope: !3144)
!3154 = distinct !DISubprogram(name: "i2c_acpi_add_device", scope: !3, file: !3, line: 236, type: !3155, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!2440, !94, !470, !86, !2437}
!3157 = !DILocalVariable(name: "handle", arg: 1, scope: !3154, file: !3, line: 236, type: !94)
!3158 = !DILocation(line: 236, column: 52, scope: !3154)
!3159 = !DILocalVariable(name: "level", arg: 2, scope: !3154, file: !3, line: 236, type: !470)
!3160 = !DILocation(line: 236, column: 64, scope: !3154)
!3161 = !DILocalVariable(name: "data", arg: 3, scope: !3154, file: !3, line: 237, type: !86)
!3162 = !DILocation(line: 237, column: 18, scope: !3154)
!3163 = !DILocalVariable(name: "return_value", arg: 4, scope: !3154, file: !3, line: 237, type: !2437)
!3164 = !DILocation(line: 237, column: 31, scope: !3154)
!3165 = !DILocalVariable(name: "adapter", scope: !3154, file: !3, line: 239, type: !2879)
!3166 = !DILocation(line: 239, column: 22, scope: !3154)
!3167 = !DILocation(line: 239, column: 32, scope: !3154)
!3168 = !DILocalVariable(name: "adev", scope: !3154, file: !3, line: 240, type: !87)
!3169 = !DILocation(line: 240, column: 22, scope: !3154)
!3170 = !DILocalVariable(name: "info", scope: !3154, file: !3, line: 241, type: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !2873, line: 410, size: 640, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3206, !3209, !3210}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3171, file: !2873, line: 411, baseType: !2216, size: 160)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3171, file: !2873, line: 412, baseType: !239, size: 16, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3171, file: !2873, line: 413, baseType: !239, size: 16, offset: 176)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3171, file: !2873, line: 414, baseType: !139, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3171, file: !2873, line: 415, baseType: !86, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3171, file: !2873, line: 416, baseType: !1936, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3171, file: !2873, line: 417, baseType: !101, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3171, file: !2873, line: 418, baseType: !3181, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !70, line: 263, size: 256, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3183, file: !70, line: 264, baseType: !139, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3183, file: !70, line: 265, baseType: !244, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !3183, file: !70, line: 266, baseType: !119, size: 8, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3183, file: !70, line: 267, baseType: !69, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !70, line: 268, baseType: !3190, size: 64, offset: 192)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !70, line: 268, size: 64, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3190, file: !70, line: 269, baseType: !128, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3190, file: !70, line: 276, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !70, line: 270, size: 64, elements: !3195)
!3195 = !{!3196, !3198, !3200, !3202, !3204}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !3194, file: !70, line: 271, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !3194, file: !70, line: 272, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !397)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !3194, file: !70, line: 273, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 64, elements: !1012)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !3194, file: !70, line: 274, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !627)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3194, file: !70, line: 275, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !627)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3171, file: !2873, line: 419, baseType: !3207, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !3171, file: !2873, line: 420, baseType: !7, size: 32, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3171, file: !2873, line: 421, baseType: !92, size: 32, offset: 608)
!3211 = !DILocation(line: 241, column: 24, scope: !3154)
!3212 = !DILocation(line: 243, column: 26, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 243, column: 6)
!3214 = !DILocation(line: 243, column: 6, scope: !3213)
!3215 = !DILocation(line: 243, column: 6, scope: !3154)
!3216 = !DILocation(line: 244, column: 3, scope: !3213)
!3217 = !DILocation(line: 246, column: 24, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 246, column: 6)
!3219 = !DILocation(line: 246, column: 37, scope: !3218)
!3220 = !DILocation(line: 246, column: 6, scope: !3218)
!3221 = !DILocation(line: 246, column: 6, scope: !3154)
!3222 = !DILocation(line: 247, column: 3, scope: !3218)
!3223 = !DILocation(line: 249, column: 27, scope: !3154)
!3224 = !DILocation(line: 249, column: 36, scope: !3154)
!3225 = !DILocation(line: 249, column: 2, scope: !3154)
!3226 = !DILocation(line: 251, column: 2, scope: !3154)
!3227 = !DILocation(line: 252, column: 1, scope: !3154)
!3228 = distinct !DISubprogram(name: "acpi_device_handle", scope: !3145, file: !3145, line: 38, type: !3229, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!94, !87}
!3231 = !DILocalVariable(name: "adev", arg: 1, scope: !3228, file: !3145, line: 38, type: !87)
!3232 = !DILocation(line: 38, column: 66, scope: !3228)
!3233 = !DILocation(line: 40, column: 9, scope: !3228)
!3234 = !DILocation(line: 40, column: 16, scope: !3228)
!3235 = !DILocation(line: 40, column: 22, scope: !3228)
!3236 = !DILocation(line: 40, column: 2, scope: !3228)
!3237 = distinct !DISubprogram(name: "i2c_acpi_find_bus_speed", scope: !3, file: !3, line: 335, type: !3238, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!470, !1637}
!3240 = !DILocalVariable(name: "dev", arg: 1, scope: !3237, file: !3, line: 335, type: !1637)
!3241 = !DILocation(line: 335, column: 44, scope: !3237)
!3242 = !DILocalVariable(name: "lookup", scope: !3237, file: !3, line: 337, type: !3243)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_acpi_lookup", file: !3, line: 33, size: 448, elements: !3244)
!3244 = !{!3245, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3243, file: !3, line: 34, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "adapter_handle", scope: !3243, file: !3, line: 35, baseType: !94, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !3243, file: !3, line: 36, baseType: !94, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "search_handle", scope: !3243, file: !3, line: 37, baseType: !94, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3243, file: !3, line: 38, baseType: !92, size: 32, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3243, file: !3, line: 39, baseType: !92, size: 32, offset: 288)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3243, file: !3, line: 40, baseType: !470, size: 32, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "min_speed", scope: !3243, file: !3, line: 41, baseType: !470, size: 32, offset: 352)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "force_speed", scope: !3243, file: !3, line: 42, baseType: !470, size: 32, offset: 384)
!3255 = !DILocation(line: 337, column: 25, scope: !3237)
!3256 = !DILocalVariable(name: "dummy", scope: !3237, file: !3, line: 338, type: !3171)
!3257 = !DILocation(line: 338, column: 24, scope: !3237)
!3258 = !DILocalVariable(name: "status", scope: !3237, file: !3, line: 339, type: !2440)
!3259 = !DILocation(line: 339, column: 14, scope: !3237)
!3260 = !DILocation(line: 341, column: 26, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 341, column: 6)
!3262 = !DILocation(line: 341, column: 7, scope: !3261)
!3263 = !DILocation(line: 341, column: 6, scope: !3237)
!3264 = !DILocation(line: 342, column: 3, scope: !3261)
!3265 = !DILocation(line: 344, column: 2, scope: !3237)
!3266 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3267, file: !3, line: 345, type: !101)
!3267 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 345, column: 25)
!3268 = !DILocation(line: 345, column: 25, scope: !3267)
!3269 = !DILocalVariable(name: "__mptr", scope: !3270, file: !3, line: 345, type: !86)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 345, column: 25)
!3271 = !DILocation(line: 345, column: 25, scope: !3270)
!3272 = !DILocation(line: 345, column: 25, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 345, column: 25)
!3274 = !DILocation(line: 345, column: 25, scope: !3237)
!3275 = !DILocation(line: 345, column: 9, scope: !3237)
!3276 = !DILocation(line: 345, column: 23, scope: !3237)
!3277 = !DILocation(line: 346, column: 9, scope: !3237)
!3278 = !DILocation(line: 346, column: 19, scope: !3237)
!3279 = !DILocation(line: 347, column: 9, scope: !3237)
!3280 = !DILocation(line: 347, column: 14, scope: !3237)
!3281 = !DILocation(line: 348, column: 9, scope: !3237)
!3282 = !DILocation(line: 348, column: 15, scope: !3237)
!3283 = !DILocation(line: 353, column: 10, scope: !3237)
!3284 = !DILocation(line: 350, column: 11, scope: !3237)
!3285 = !DILocation(line: 350, column: 9, scope: !3237)
!3286 = !DILocation(line: 355, column: 6, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 355, column: 6)
!3288 = !DILocation(line: 355, column: 6, scope: !3237)
!3289 = !DILocation(line: 356, column: 3, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 355, column: 28)
!3291 = !DILocation(line: 357, column: 3, scope: !3290)
!3292 = !DILocation(line: 360, column: 13, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 360, column: 6)
!3294 = !DILocation(line: 360, column: 6, scope: !3293)
!3295 = !DILocation(line: 360, column: 6, scope: !3237)
!3296 = !DILocation(line: 361, column: 14, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 361, column: 7)
!3298 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 360, column: 26)
!3299 = !DILocation(line: 361, column: 36, scope: !3297)
!3300 = !DILocation(line: 361, column: 26, scope: !3297)
!3301 = !DILocation(line: 361, column: 7, scope: !3298)
!3302 = !DILocation(line: 362, column: 4, scope: !3297)
!3303 = !DILocation(line: 364, column: 17, scope: !3298)
!3304 = !DILocation(line: 364, column: 3, scope: !3298)
!3305 = !DILocation(line: 365, column: 20, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 365, column: 13)
!3307 = !DILocation(line: 365, column: 30, scope: !3306)
!3308 = !DILocation(line: 365, column: 13, scope: !3293)
!3309 = !DILocation(line: 366, column: 17, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 365, column: 43)
!3311 = !DILocation(line: 366, column: 3, scope: !3310)
!3312 = !DILocation(line: 368, column: 3, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 367, column: 9)
!3314 = !DILocation(line: 370, column: 1, scope: !3237)
!3315 = distinct !DISubprogram(name: "i2c_acpi_lookup_speed", scope: !3, file: !3, line: 302, type: !3155, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3316 = !DILocalVariable(name: "handle", arg: 1, scope: !3315, file: !3, line: 302, type: !94)
!3317 = !DILocation(line: 302, column: 54, scope: !3315)
!3318 = !DILocalVariable(name: "level", arg: 2, scope: !3315, file: !3, line: 302, type: !470)
!3319 = !DILocation(line: 302, column: 66, scope: !3315)
!3320 = !DILocalVariable(name: "data", arg: 3, scope: !3315, file: !3, line: 303, type: !86)
!3321 = !DILocation(line: 303, column: 15, scope: !3315)
!3322 = !DILocalVariable(name: "return_value", arg: 4, scope: !3315, file: !3, line: 303, type: !2437)
!3323 = !DILocation(line: 303, column: 28, scope: !3315)
!3324 = !DILocalVariable(name: "lookup", scope: !3315, file: !3, line: 305, type: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3326 = !DILocation(line: 305, column: 26, scope: !3315)
!3327 = !DILocation(line: 305, column: 35, scope: !3315)
!3328 = !DILocalVariable(name: "adev", scope: !3315, file: !3, line: 306, type: !87)
!3329 = !DILocation(line: 306, column: 22, scope: !3315)
!3330 = !DILocation(line: 308, column: 26, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 308, column: 6)
!3332 = !DILocation(line: 308, column: 6, scope: !3331)
!3333 = !DILocation(line: 308, column: 6, scope: !3315)
!3334 = !DILocation(line: 309, column: 3, scope: !3331)
!3335 = !DILocation(line: 311, column: 25, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 311, column: 6)
!3337 = !DILocation(line: 311, column: 31, scope: !3336)
!3338 = !DILocation(line: 311, column: 6, scope: !3336)
!3339 = !DILocation(line: 311, column: 6, scope: !3315)
!3340 = !DILocation(line: 312, column: 3, scope: !3336)
!3341 = !DILocation(line: 314, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 314, column: 6)
!3343 = !DILocation(line: 314, column: 14, scope: !3342)
!3344 = !DILocation(line: 314, column: 31, scope: !3342)
!3345 = !DILocation(line: 314, column: 39, scope: !3342)
!3346 = !DILocation(line: 314, column: 28, scope: !3342)
!3347 = !DILocation(line: 314, column: 6, scope: !3315)
!3348 = !DILocation(line: 315, column: 3, scope: !3342)
!3349 = !DILocation(line: 317, column: 6, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 317, column: 6)
!3351 = !DILocation(line: 317, column: 14, scope: !3350)
!3352 = !DILocation(line: 317, column: 23, scope: !3350)
!3353 = !DILocation(line: 317, column: 31, scope: !3350)
!3354 = !DILocation(line: 317, column: 20, scope: !3350)
!3355 = !DILocation(line: 317, column: 6, scope: !3315)
!3356 = !DILocation(line: 318, column: 23, scope: !3350)
!3357 = !DILocation(line: 318, column: 31, scope: !3350)
!3358 = !DILocation(line: 318, column: 3, scope: !3350)
!3359 = !DILocation(line: 318, column: 11, scope: !3350)
!3360 = !DILocation(line: 318, column: 21, scope: !3350)
!3361 = !DILocation(line: 320, column: 28, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 320, column: 6)
!3363 = !DILocation(line: 320, column: 6, scope: !3362)
!3364 = !DILocation(line: 320, column: 68, scope: !3362)
!3365 = !DILocation(line: 320, column: 6, scope: !3315)
!3366 = !DILocation(line: 321, column: 3, scope: !3362)
!3367 = !DILocation(line: 321, column: 11, scope: !3362)
!3368 = !DILocation(line: 321, column: 23, scope: !3362)
!3369 = !DILocation(line: 323, column: 2, scope: !3315)
!3370 = !DILocation(line: 324, column: 1, scope: !3315)
!3371 = distinct !DISubprogram(name: "i2c_acpi_find_adapter_by_handle", scope: !3, file: !3, line: 383, type: !3372, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!2879, !94}
!3374 = !DILocalVariable(name: "handle", arg: 1, scope: !3371, file: !3, line: 383, type: !94)
!3375 = !DILocation(line: 383, column: 65, scope: !3371)
!3376 = !DILocalVariable(name: "dev", scope: !3371, file: !3, line: 385, type: !1637)
!3377 = !DILocation(line: 385, column: 17, scope: !3371)
!3378 = !DILocation(line: 387, column: 45, scope: !3371)
!3379 = !DILocation(line: 387, column: 8, scope: !3371)
!3380 = !DILocation(line: 387, column: 6, scope: !3371)
!3381 = !DILocation(line: 390, column: 9, scope: !3371)
!3382 = !DILocation(line: 390, column: 34, scope: !3371)
!3383 = !DILocation(line: 390, column: 15, scope: !3371)
!3384 = !DILocation(line: 390, column: 2, scope: !3371)
!3385 = distinct !DISubprogram(name: "i2c_acpi_find_match_adapter", scope: !3, file: !3, line: 373, type: !3386, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!92, !1637, !128}
!3388 = !DILocalVariable(name: "dev", arg: 1, scope: !3385, file: !3, line: 373, type: !1637)
!3389 = !DILocation(line: 373, column: 55, scope: !3385)
!3390 = !DILocalVariable(name: "data", arg: 2, scope: !3385, file: !3, line: 373, type: !128)
!3391 = !DILocation(line: 373, column: 72, scope: !3385)
!3392 = !DILocalVariable(name: "adapter", scope: !3385, file: !3, line: 375, type: !2879)
!3393 = !DILocation(line: 375, column: 22, scope: !3385)
!3394 = !DILocation(line: 375, column: 51, scope: !3385)
!3395 = !DILocation(line: 375, column: 32, scope: !3385)
!3396 = !DILocation(line: 377, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 377, column: 6)
!3398 = !DILocation(line: 377, column: 6, scope: !3385)
!3399 = !DILocation(line: 378, column: 3, scope: !3397)
!3400 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3401, file: !3, line: 380, type: !101)
!3401 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 380, column: 9)
!3402 = !DILocation(line: 380, column: 9, scope: !3401)
!3403 = !DILocalVariable(name: "__mptr", scope: !3404, file: !3, line: 380, type: !86)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 380, column: 9)
!3405 = !DILocation(line: 380, column: 9, scope: !3404)
!3406 = !DILocation(line: 380, column: 9, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 380, column: 9)
!3408 = !DILocation(line: 380, column: 9, scope: !3385)
!3409 = !DILocation(line: 380, column: 42, scope: !3385)
!3410 = !DILocation(line: 380, column: 26, scope: !3385)
!3411 = !DILocation(line: 380, column: 2, scope: !3385)
!3412 = !DILocation(line: 381, column: 1, scope: !3385)
!3413 = distinct !DISubprogram(name: "i2c_acpi_notify", scope: !3, file: !3, line: 410, type: !2464, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3414 = !DILocalVariable(name: "nb", arg: 1, scope: !3413, file: !3, line: 410, type: !2466)
!3415 = !DILocation(line: 410, column: 51, scope: !3413)
!3416 = !DILocalVariable(name: "value", arg: 2, scope: !3413, file: !3, line: 410, type: !247)
!3417 = !DILocation(line: 410, column: 69, scope: !3413)
!3418 = !DILocalVariable(name: "arg", arg: 3, scope: !3413, file: !3, line: 411, type: !86)
!3419 = !DILocation(line: 411, column: 13, scope: !3413)
!3420 = !DILocalVariable(name: "adev", scope: !3413, file: !3, line: 413, type: !87)
!3421 = !DILocation(line: 413, column: 22, scope: !3413)
!3422 = !DILocation(line: 413, column: 29, scope: !3413)
!3423 = !DILocalVariable(name: "info", scope: !3413, file: !3, line: 414, type: !3171)
!3424 = !DILocation(line: 414, column: 24, scope: !3413)
!3425 = !DILocalVariable(name: "adapter_handle", scope: !3413, file: !3, line: 415, type: !94)
!3426 = !DILocation(line: 415, column: 14, scope: !3413)
!3427 = !DILocalVariable(name: "adapter", scope: !3413, file: !3, line: 416, type: !2879)
!3428 = !DILocation(line: 416, column: 22, scope: !3413)
!3429 = !DILocalVariable(name: "client", scope: !3413, file: !3, line: 417, type: !2871)
!3430 = !DILocation(line: 417, column: 21, scope: !3413)
!3431 = !DILocation(line: 419, column: 10, scope: !3413)
!3432 = !DILocation(line: 419, column: 2, scope: !3413)
!3433 = !DILocation(line: 421, column: 25, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 421, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 419, column: 17)
!3436 = !DILocation(line: 421, column: 7, scope: !3434)
!3437 = !DILocation(line: 421, column: 7, scope: !3435)
!3438 = !DILocation(line: 422, column: 4, scope: !3434)
!3439 = !DILocation(line: 424, column: 45, scope: !3435)
!3440 = !DILocation(line: 424, column: 13, scope: !3435)
!3441 = !DILocation(line: 424, column: 11, scope: !3435)
!3442 = !DILocation(line: 425, column: 8, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 425, column: 7)
!3444 = !DILocation(line: 425, column: 7, scope: !3435)
!3445 = !DILocation(line: 426, column: 4, scope: !3443)
!3446 = !DILocation(line: 428, column: 28, scope: !3435)
!3447 = !DILocation(line: 428, column: 37, scope: !3435)
!3448 = !DILocation(line: 428, column: 3, scope: !3435)
!3449 = !DILocation(line: 429, column: 3, scope: !3435)
!3450 = !DILocation(line: 431, column: 31, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 431, column: 7)
!3452 = !DILocation(line: 431, column: 8, scope: !3451)
!3453 = !DILocation(line: 431, column: 7, scope: !3435)
!3454 = !DILocation(line: 432, column: 4, scope: !3451)
!3455 = !DILocation(line: 434, column: 41, scope: !3435)
!3456 = !DILocation(line: 434, column: 12, scope: !3435)
!3457 = !DILocation(line: 434, column: 10, scope: !3435)
!3458 = !DILocation(line: 435, column: 8, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 435, column: 7)
!3460 = !DILocation(line: 435, column: 7, scope: !3435)
!3461 = !DILocation(line: 436, column: 4, scope: !3459)
!3462 = !DILocation(line: 438, column: 25, scope: !3435)
!3463 = !DILocation(line: 438, column: 3, scope: !3435)
!3464 = !DILocation(line: 439, column: 15, scope: !3435)
!3465 = !DILocation(line: 439, column: 23, scope: !3435)
!3466 = !DILocation(line: 439, column: 3, scope: !3435)
!3467 = !DILocation(line: 440, column: 3, scope: !3435)
!3468 = !DILocation(line: 443, column: 2, scope: !3413)
!3469 = distinct !DISubprogram(name: "i2c_acpi_new_device", scope: !3, file: !3, line: 468, type: !3470, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!2871, !1637, !92, !3246}
!3472 = !DILocalVariable(name: "dev", arg: 1, scope: !3469, file: !3, line: 468, type: !1637)
!3473 = !DILocation(line: 468, column: 55, scope: !3469)
!3474 = !DILocalVariable(name: "index", arg: 2, scope: !3469, file: !3, line: 468, type: !92)
!3475 = !DILocation(line: 468, column: 64, scope: !3469)
!3476 = !DILocalVariable(name: "info", arg: 3, scope: !3469, file: !3, line: 469, type: !3246)
!3477 = !DILocation(line: 469, column: 35, scope: !3469)
!3478 = !DILocalVariable(name: "adev", scope: !3469, file: !3, line: 471, type: !87)
!3479 = !DILocation(line: 471, column: 22, scope: !3469)
!3480 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3481, file: !3, line: 471, type: !101)
!3481 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 471, column: 29)
!3482 = !DILocation(line: 471, column: 29, scope: !3481)
!3483 = !DILocalVariable(name: "__mptr", scope: !3484, file: !3, line: 471, type: !86)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 471, column: 29)
!3485 = !DILocation(line: 471, column: 29, scope: !3484)
!3486 = !DILocation(line: 471, column: 29, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 471, column: 29)
!3488 = !DILocalVariable(name: "lookup", scope: !3469, file: !3, line: 472, type: !3243)
!3489 = !DILocation(line: 472, column: 25, scope: !3469)
!3490 = !DILocalVariable(name: "adapter", scope: !3469, file: !3, line: 473, type: !2879)
!3491 = !DILocation(line: 473, column: 22, scope: !3469)
!3492 = !DILocalVariable(name: "resource_list", scope: !3469, file: !3, line: 474, type: !143)
!3493 = !DILocation(line: 474, column: 2, scope: !3469)
!3494 = !DILocalVariable(name: "ret", scope: !3469, file: !3, line: 475, type: !92)
!3495 = !DILocation(line: 475, column: 6, scope: !3469)
!3496 = !DILocation(line: 477, column: 2, scope: !3469)
!3497 = !DILocation(line: 478, column: 16, scope: !3469)
!3498 = !DILocation(line: 478, column: 9, scope: !3469)
!3499 = !DILocation(line: 478, column: 14, scope: !3469)
!3500 = !DILocation(line: 479, column: 44, scope: !3469)
!3501 = !DILocation(line: 479, column: 25, scope: !3469)
!3502 = !DILocation(line: 479, column: 9, scope: !3469)
!3503 = !DILocation(line: 479, column: 23, scope: !3469)
!3504 = !DILocation(line: 480, column: 17, scope: !3469)
!3505 = !DILocation(line: 480, column: 9, scope: !3469)
!3506 = !DILocation(line: 480, column: 15, scope: !3469)
!3507 = !DILocation(line: 482, column: 31, scope: !3469)
!3508 = !DILocation(line: 483, column: 30, scope: !3469)
!3509 = !DILocation(line: 482, column: 8, scope: !3469)
!3510 = !DILocation(line: 482, column: 6, scope: !3469)
!3511 = !DILocation(line: 484, column: 6, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 484, column: 6)
!3513 = !DILocation(line: 484, column: 10, scope: !3512)
!3514 = !DILocation(line: 484, column: 6, scope: !3469)
!3515 = !DILocation(line: 485, column: 18, scope: !3512)
!3516 = !DILocation(line: 485, column: 10, scope: !3512)
!3517 = !DILocation(line: 485, column: 3, scope: !3512)
!3518 = !DILocation(line: 487, column: 2, scope: !3469)
!3519 = !DILocation(line: 489, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 489, column: 6)
!3521 = !DILocation(line: 489, column: 13, scope: !3520)
!3522 = !DILocation(line: 489, column: 6, scope: !3469)
!3523 = !DILocation(line: 490, column: 10, scope: !3520)
!3524 = !DILocation(line: 490, column: 3, scope: !3520)
!3525 = !DILocation(line: 492, column: 51, scope: !3469)
!3526 = !DILocation(line: 492, column: 12, scope: !3469)
!3527 = !DILocation(line: 492, column: 10, scope: !3469)
!3528 = !DILocation(line: 493, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 493, column: 6)
!3530 = !DILocation(line: 493, column: 6, scope: !3469)
!3531 = !DILocation(line: 494, column: 10, scope: !3529)
!3532 = !DILocation(line: 494, column: 3, scope: !3529)
!3533 = !DILocation(line: 496, column: 31, scope: !3469)
!3534 = !DILocation(line: 496, column: 40, scope: !3469)
!3535 = !DILocation(line: 496, column: 9, scope: !3469)
!3536 = !DILocation(line: 496, column: 2, scope: !3469)
!3537 = !DILocation(line: 497, column: 1, scope: !3469)
!3538 = distinct !DISubprogram(name: "i2c_acpi_fill_info", scope: !3, file: !3, line: 72, type: !3064, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3539 = !DILocalVariable(name: "ares", arg: 1, scope: !3538, file: !3, line: 72, type: !2477)
!3540 = !DILocation(line: 72, column: 53, scope: !3538)
!3541 = !DILocalVariable(name: "data", arg: 2, scope: !3538, file: !3, line: 72, type: !86)
!3542 = !DILocation(line: 72, column: 65, scope: !3538)
!3543 = !DILocalVariable(name: "lookup", scope: !3538, file: !3, line: 74, type: !3325)
!3544 = !DILocation(line: 74, column: 26, scope: !3538)
!3545 = !DILocation(line: 74, column: 35, scope: !3538)
!3546 = !DILocalVariable(name: "info", scope: !3538, file: !3, line: 75, type: !3246)
!3547 = !DILocation(line: 75, column: 25, scope: !3538)
!3548 = !DILocation(line: 75, column: 32, scope: !3538)
!3549 = !DILocation(line: 75, column: 40, scope: !3538)
!3550 = !DILocalVariable(name: "sb", scope: !3538, file: !3, line: 76, type: !2840)
!3551 = !DILocation(line: 76, column: 38, scope: !3538)
!3552 = !DILocalVariable(name: "status", scope: !3538, file: !3, line: 77, type: !2440)
!3553 = !DILocation(line: 77, column: 14, scope: !3538)
!3554 = !DILocation(line: 79, column: 6, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 79, column: 6)
!3556 = !DILocation(line: 79, column: 12, scope: !3555)
!3557 = !DILocation(line: 79, column: 17, scope: !3555)
!3558 = !DILocation(line: 79, column: 47, scope: !3555)
!3559 = !DILocation(line: 79, column: 21, scope: !3555)
!3560 = !DILocation(line: 79, column: 6, scope: !3538)
!3561 = !DILocation(line: 80, column: 3, scope: !3555)
!3562 = !DILocation(line: 82, column: 6, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 82, column: 6)
!3564 = !DILocation(line: 82, column: 14, scope: !3563)
!3565 = !DILocation(line: 82, column: 20, scope: !3563)
!3566 = !DILocation(line: 82, column: 26, scope: !3563)
!3567 = !DILocation(line: 82, column: 29, scope: !3563)
!3568 = !DILocation(line: 82, column: 37, scope: !3563)
!3569 = !DILocation(line: 82, column: 38, scope: !3563)
!3570 = !DILocation(line: 82, column: 44, scope: !3563)
!3571 = !DILocation(line: 82, column: 52, scope: !3563)
!3572 = !DILocation(line: 82, column: 41, scope: !3563)
!3573 = !DILocation(line: 82, column: 6, scope: !3538)
!3574 = !DILocation(line: 83, column: 3, scope: !3563)
!3575 = !DILocation(line: 85, column: 27, scope: !3538)
!3576 = !DILocation(line: 85, column: 35, scope: !3538)
!3577 = !DILocation(line: 86, column: 6, scope: !3538)
!3578 = !DILocation(line: 86, column: 10, scope: !3538)
!3579 = !DILocation(line: 86, column: 26, scope: !3538)
!3580 = !DILocation(line: 87, column: 7, scope: !3538)
!3581 = !DILocation(line: 87, column: 15, scope: !3538)
!3582 = !DILocation(line: 85, column: 11, scope: !3538)
!3583 = !DILocation(line: 85, column: 9, scope: !3538)
!3584 = !DILocation(line: 88, column: 6, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 88, column: 6)
!3586 = !DILocation(line: 88, column: 6, scope: !3538)
!3587 = !DILocation(line: 89, column: 3, scope: !3585)
!3588 = !DILocation(line: 91, column: 15, scope: !3538)
!3589 = !DILocation(line: 91, column: 19, scope: !3538)
!3590 = !DILocation(line: 91, column: 2, scope: !3538)
!3591 = !DILocation(line: 91, column: 8, scope: !3538)
!3592 = !DILocation(line: 91, column: 13, scope: !3538)
!3593 = !DILocation(line: 92, column: 18, scope: !3538)
!3594 = !DILocation(line: 92, column: 22, scope: !3538)
!3595 = !DILocation(line: 92, column: 2, scope: !3538)
!3596 = !DILocation(line: 92, column: 10, scope: !3538)
!3597 = !DILocation(line: 92, column: 16, scope: !3538)
!3598 = !DILocation(line: 93, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 93, column: 6)
!3600 = !DILocation(line: 93, column: 10, scope: !3599)
!3601 = !DILocation(line: 93, column: 22, scope: !3599)
!3602 = !DILocation(line: 93, column: 6, scope: !3538)
!3603 = !DILocation(line: 94, column: 3, scope: !3599)
!3604 = !DILocation(line: 94, column: 9, scope: !3599)
!3605 = !DILocation(line: 94, column: 15, scope: !3599)
!3606 = !DILocation(line: 96, column: 2, scope: !3538)
!3607 = !DILocation(line: 97, column: 1, scope: !3538)
!3608 = distinct !DISubprogram(name: "ERR_PTR", scope: !3609, file: !3609, line: 24, type: !3610, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3609 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!86, !232}
!3612 = !DILocalVariable(name: "error", arg: 1, scope: !3608, file: !3609, line: 24, type: !232)
!3613 = !DILocation(line: 24, column: 48, scope: !3608)
!3614 = !DILocation(line: 26, column: 18, scope: !3608)
!3615 = !DILocation(line: 26, column: 9, scope: !3608)
!3616 = !DILocation(line: 26, column: 2, scope: !3608)
!3617 = distinct !DISubprogram(name: "i2c_acpi_install_space_handler", scope: !3, file: !3, line: 694, type: !2962, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3618 = !DILocalVariable(name: "adapter", arg: 1, scope: !3617, file: !3, line: 694, type: !2879)
!3619 = !DILocation(line: 694, column: 56, scope: !3617)
!3620 = !DILocalVariable(name: "handle", scope: !3617, file: !3, line: 696, type: !94)
!3621 = !DILocation(line: 696, column: 14, scope: !3617)
!3622 = !DILocalVariable(name: "data", scope: !3617, file: !3, line: 697, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_acpi_handler_data", file: !3, line: 18, size: 192, elements: !3625)
!3625 = !{!3626, !3632}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3624, file: !3, line: 19, baseType: !3627, size: 128)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_connection_info", file: !95, line: 1095, size: 128, elements: !3628)
!3628 = !{!3629, !3630, !3631}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3627, file: !95, line: 1096, baseType: !2240, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3627, file: !95, line: 1097, baseType: !444, size: 16, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !3627, file: !95, line: 1098, baseType: !607, size: 8, offset: 80)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !3624, file: !3, line: 20, baseType: !2879, size: 64, offset: 128)
!3633 = !DILocation(line: 697, column: 32, scope: !3617)
!3634 = !DILocalVariable(name: "status", scope: !3617, file: !3, line: 698, type: !2440)
!3635 = !DILocation(line: 698, column: 14, scope: !3617)
!3636 = !DILocation(line: 700, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 700, column: 6)
!3638 = !DILocation(line: 700, column: 16, scope: !3637)
!3639 = !DILocation(line: 700, column: 20, scope: !3637)
!3640 = !DILocation(line: 700, column: 6, scope: !3617)
!3641 = !DILocation(line: 701, column: 3, scope: !3637)
!3642 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3643, file: !3, line: 703, type: !101)
!3643 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 703, column: 11)
!3644 = !DILocation(line: 703, column: 11, scope: !3643)
!3645 = !DILocalVariable(name: "__mptr", scope: !3646, file: !3, line: 703, type: !86)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 703, column: 11)
!3647 = !DILocation(line: 703, column: 11, scope: !3646)
!3648 = !DILocation(line: 703, column: 11, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 703, column: 11)
!3650 = !DILocation(line: 703, column: 11, scope: !3617)
!3651 = !DILocation(line: 703, column: 9, scope: !3617)
!3652 = !DILocation(line: 705, column: 7, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 705, column: 6)
!3654 = !DILocation(line: 705, column: 6, scope: !3617)
!3655 = !DILocation(line: 706, column: 3, scope: !3653)
!3656 = !DILocation(line: 708, column: 9, scope: !3617)
!3657 = !DILocation(line: 708, column: 7, scope: !3617)
!3658 = !DILocation(line: 710, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 710, column: 6)
!3660 = !DILocation(line: 710, column: 6, scope: !3617)
!3661 = !DILocation(line: 711, column: 3, scope: !3659)
!3662 = !DILocation(line: 713, column: 18, scope: !3617)
!3663 = !DILocation(line: 713, column: 2, scope: !3617)
!3664 = !DILocation(line: 713, column: 8, scope: !3617)
!3665 = !DILocation(line: 713, column: 16, scope: !3617)
!3666 = !DILocation(line: 714, column: 40, scope: !3617)
!3667 = !DILocation(line: 714, column: 56, scope: !3617)
!3668 = !DILocation(line: 714, column: 48, scope: !3617)
!3669 = !DILocation(line: 714, column: 11, scope: !3617)
!3670 = !DILocation(line: 714, column: 9, scope: !3617)
!3671 = !DILocation(line: 715, column: 6, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 715, column: 6)
!3673 = !DILocation(line: 715, column: 6, scope: !3617)
!3674 = !DILocation(line: 716, column: 9, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 715, column: 28)
!3676 = !DILocation(line: 716, column: 3, scope: !3675)
!3677 = !DILocation(line: 717, column: 3, scope: !3675)
!3678 = !DILocation(line: 720, column: 46, scope: !3617)
!3679 = !DILocation(line: 724, column: 5, scope: !3617)
!3680 = !DILocation(line: 720, column: 11, scope: !3617)
!3681 = !DILocation(line: 720, column: 9, scope: !3617)
!3682 = !DILocation(line: 725, column: 6, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 725, column: 6)
!3684 = !DILocation(line: 725, column: 6, scope: !3617)
!3685 = !DILocation(line: 726, column: 3, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 725, column: 28)
!3687 = !DILocation(line: 727, column: 32, scope: !3686)
!3688 = !DILocation(line: 727, column: 3, scope: !3686)
!3689 = !DILocation(line: 728, column: 9, scope: !3686)
!3690 = !DILocation(line: 728, column: 3, scope: !3686)
!3691 = !DILocation(line: 729, column: 3, scope: !3686)
!3692 = !DILocation(line: 732, column: 2, scope: !3617)
!3693 = !DILocation(line: 733, column: 1, scope: !3617)
!3694 = distinct !DISubprogram(name: "kzalloc", scope: !79, file: !79, line: 662, type: !3695, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!86, !244, !1508}
!3697 = !DILocalVariable(name: "s", arg: 1, scope: !3698, file: !79, line: 445, type: !1088)
!3698 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !79, file: !79, line: 445, type: !3699, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!86, !1088, !1508, !244}
!3701 = !DILocation(line: 445, column: 72, scope: !3698, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 552, column: 10, scope: !3703, inlinedAt: !3706)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !79, line: 540, column: 34)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !79, line: 540, column: 6)
!3705 = distinct !DISubprogram(name: "kmalloc", scope: !79, file: !79, line: 538, type: !3695, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3706 = distinct !DILocation(line: 664, column: 9, scope: !3694)
!3707 = !DILocalVariable(name: "flags", arg: 2, scope: !3698, file: !79, line: 446, type: !1508)
!3708 = !DILocation(line: 446, column: 9, scope: !3698, inlinedAt: !3702)
!3709 = !DILocalVariable(name: "size", arg: 3, scope: !3698, file: !79, line: 446, type: !244)
!3710 = !DILocation(line: 446, column: 23, scope: !3698, inlinedAt: !3702)
!3711 = !DILocalVariable(name: "ret", scope: !3698, file: !79, line: 448, type: !86)
!3712 = !DILocation(line: 448, column: 8, scope: !3698, inlinedAt: !3702)
!3713 = !DILocalVariable(name: "flags", arg: 1, scope: !3714, file: !79, line: 318, type: !1508)
!3714 = distinct !DISubprogram(name: "kmalloc_type", scope: !79, file: !79, line: 318, type: !3715, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!78, !1508}
!3717 = !DILocation(line: 318, column: 67, scope: !3714, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 553, column: 20, scope: !3703, inlinedAt: !3706)
!3719 = !DILocalVariable(name: "size", arg: 1, scope: !3720, file: !79, line: 346, type: !244)
!3720 = distinct !DISubprogram(name: "kmalloc_index", scope: !79, file: !79, line: 346, type: !3721, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!7, !244}
!3723 = !DILocation(line: 346, column: 58, scope: !3720, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 547, column: 11, scope: !3703, inlinedAt: !3706)
!3725 = !DILocalVariable(name: "size", arg: 1, scope: !3726, file: !79, line: 472, type: !244)
!3726 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !79, file: !79, line: 472, type: !3727, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!86, !244, !1508, !7}
!3729 = !DILocation(line: 472, column: 28, scope: !3726, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 481, column: 9, scope: !3731, inlinedAt: !3732)
!3731 = distinct !DISubprogram(name: "kmalloc_large", scope: !79, file: !79, line: 478, type: !3695, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3732 = distinct !DILocation(line: 545, column: 11, scope: !3733, inlinedAt: !3706)
!3733 = distinct !DILexicalBlock(scope: !3703, file: !79, line: 544, column: 7)
!3734 = !DILocalVariable(name: "flags", arg: 2, scope: !3726, file: !79, line: 472, type: !1508)
!3735 = !DILocation(line: 472, column: 40, scope: !3726, inlinedAt: !3730)
!3736 = !DILocalVariable(name: "order", arg: 3, scope: !3726, file: !79, line: 472, type: !7)
!3737 = !DILocation(line: 472, column: 60, scope: !3726, inlinedAt: !3730)
!3738 = !DILocalVariable(name: "size", arg: 1, scope: !3731, file: !79, line: 478, type: !244)
!3739 = !DILocation(line: 478, column: 51, scope: !3731, inlinedAt: !3732)
!3740 = !DILocalVariable(name: "flags", arg: 2, scope: !3731, file: !79, line: 478, type: !1508)
!3741 = !DILocation(line: 478, column: 63, scope: !3731, inlinedAt: !3732)
!3742 = !DILocalVariable(name: "order", scope: !3731, file: !79, line: 480, type: !7)
!3743 = !DILocation(line: 480, column: 15, scope: !3731, inlinedAt: !3732)
!3744 = !DILocalVariable(name: "size", arg: 1, scope: !3705, file: !79, line: 538, type: !244)
!3745 = !DILocation(line: 538, column: 45, scope: !3705, inlinedAt: !3706)
!3746 = !DILocalVariable(name: "flags", arg: 2, scope: !3705, file: !79, line: 538, type: !1508)
!3747 = !DILocation(line: 538, column: 57, scope: !3705, inlinedAt: !3706)
!3748 = !DILocalVariable(name: "index", scope: !3703, file: !79, line: 542, type: !7)
!3749 = !DILocation(line: 542, column: 16, scope: !3703, inlinedAt: !3706)
!3750 = !DILocalVariable(name: "size", arg: 1, scope: !3694, file: !79, line: 662, type: !244)
!3751 = !DILocation(line: 662, column: 36, scope: !3694)
!3752 = !DILocalVariable(name: "flags", arg: 2, scope: !3694, file: !79, line: 662, type: !1508)
!3753 = !DILocation(line: 662, column: 48, scope: !3694)
!3754 = !DILocation(line: 664, column: 17, scope: !3694)
!3755 = !DILocation(line: 664, column: 23, scope: !3694)
!3756 = !DILocation(line: 664, column: 29, scope: !3694)
!3757 = !DILocation(line: 540, column: 27, scope: !3704, inlinedAt: !3706)
!3758 = !DILocation(line: 540, column: 6, scope: !3704, inlinedAt: !3706)
!3759 = !DILocation(line: 540, column: 6, scope: !3705, inlinedAt: !3706)
!3760 = !DILocation(line: 544, column: 7, scope: !3733, inlinedAt: !3706)
!3761 = !DILocation(line: 544, column: 12, scope: !3733, inlinedAt: !3706)
!3762 = !DILocation(line: 544, column: 7, scope: !3703, inlinedAt: !3706)
!3763 = !DILocation(line: 545, column: 25, scope: !3733, inlinedAt: !3706)
!3764 = !DILocation(line: 545, column: 31, scope: !3733, inlinedAt: !3706)
!3765 = !DILocation(line: 480, column: 33, scope: !3731, inlinedAt: !3732)
!3766 = !DILocation(line: 480, column: 23, scope: !3731, inlinedAt: !3732)
!3767 = !DILocation(line: 481, column: 29, scope: !3731, inlinedAt: !3732)
!3768 = !DILocation(line: 481, column: 35, scope: !3731, inlinedAt: !3732)
!3769 = !DILocation(line: 481, column: 42, scope: !3731, inlinedAt: !3732)
!3770 = !DILocation(line: 474, column: 23, scope: !3726, inlinedAt: !3730)
!3771 = !DILocation(line: 474, column: 29, scope: !3726, inlinedAt: !3730)
!3772 = !DILocation(line: 474, column: 36, scope: !3726, inlinedAt: !3730)
!3773 = !DILocation(line: 474, column: 9, scope: !3726, inlinedAt: !3730)
!3774 = !DILocation(line: 545, column: 4, scope: !3733, inlinedAt: !3706)
!3775 = !DILocation(line: 547, column: 25, scope: !3703, inlinedAt: !3706)
!3776 = !DILocation(line: 348, column: 7, scope: !3777, inlinedAt: !3724)
!3777 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 348, column: 6)
!3778 = !DILocation(line: 348, column: 6, scope: !3720, inlinedAt: !3724)
!3779 = !DILocation(line: 349, column: 3, scope: !3777, inlinedAt: !3724)
!3780 = !DILocation(line: 351, column: 6, scope: !3781, inlinedAt: !3724)
!3781 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 351, column: 6)
!3782 = !DILocation(line: 351, column: 11, scope: !3781, inlinedAt: !3724)
!3783 = !DILocation(line: 351, column: 6, scope: !3720, inlinedAt: !3724)
!3784 = !DILocation(line: 352, column: 3, scope: !3781, inlinedAt: !3724)
!3785 = !DILocation(line: 354, column: 32, scope: !3786, inlinedAt: !3724)
!3786 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 354, column: 6)
!3787 = !DILocation(line: 354, column: 37, scope: !3786, inlinedAt: !3724)
!3788 = !DILocation(line: 354, column: 42, scope: !3786, inlinedAt: !3724)
!3789 = !DILocation(line: 354, column: 45, scope: !3786, inlinedAt: !3724)
!3790 = !DILocation(line: 354, column: 50, scope: !3786, inlinedAt: !3724)
!3791 = !DILocation(line: 354, column: 6, scope: !3720, inlinedAt: !3724)
!3792 = !DILocation(line: 355, column: 3, scope: !3786, inlinedAt: !3724)
!3793 = !DILocation(line: 356, column: 32, scope: !3794, inlinedAt: !3724)
!3794 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 356, column: 6)
!3795 = !DILocation(line: 356, column: 37, scope: !3794, inlinedAt: !3724)
!3796 = !DILocation(line: 356, column: 43, scope: !3794, inlinedAt: !3724)
!3797 = !DILocation(line: 356, column: 46, scope: !3794, inlinedAt: !3724)
!3798 = !DILocation(line: 356, column: 51, scope: !3794, inlinedAt: !3724)
!3799 = !DILocation(line: 356, column: 6, scope: !3720, inlinedAt: !3724)
!3800 = !DILocation(line: 357, column: 3, scope: !3794, inlinedAt: !3724)
!3801 = !DILocation(line: 358, column: 6, scope: !3802, inlinedAt: !3724)
!3802 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 358, column: 6)
!3803 = !DILocation(line: 358, column: 11, scope: !3802, inlinedAt: !3724)
!3804 = !DILocation(line: 358, column: 6, scope: !3720, inlinedAt: !3724)
!3805 = !DILocation(line: 358, column: 26, scope: !3802, inlinedAt: !3724)
!3806 = !DILocation(line: 359, column: 6, scope: !3807, inlinedAt: !3724)
!3807 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 359, column: 6)
!3808 = !DILocation(line: 359, column: 11, scope: !3807, inlinedAt: !3724)
!3809 = !DILocation(line: 359, column: 6, scope: !3720, inlinedAt: !3724)
!3810 = !DILocation(line: 359, column: 26, scope: !3807, inlinedAt: !3724)
!3811 = !DILocation(line: 360, column: 6, scope: !3812, inlinedAt: !3724)
!3812 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 360, column: 6)
!3813 = !DILocation(line: 360, column: 11, scope: !3812, inlinedAt: !3724)
!3814 = !DILocation(line: 360, column: 6, scope: !3720, inlinedAt: !3724)
!3815 = !DILocation(line: 360, column: 26, scope: !3812, inlinedAt: !3724)
!3816 = !DILocation(line: 361, column: 6, scope: !3817, inlinedAt: !3724)
!3817 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 361, column: 6)
!3818 = !DILocation(line: 361, column: 11, scope: !3817, inlinedAt: !3724)
!3819 = !DILocation(line: 361, column: 6, scope: !3720, inlinedAt: !3724)
!3820 = !DILocation(line: 361, column: 26, scope: !3817, inlinedAt: !3724)
!3821 = !DILocation(line: 362, column: 6, scope: !3822, inlinedAt: !3724)
!3822 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 362, column: 6)
!3823 = !DILocation(line: 362, column: 11, scope: !3822, inlinedAt: !3724)
!3824 = !DILocation(line: 362, column: 6, scope: !3720, inlinedAt: !3724)
!3825 = !DILocation(line: 362, column: 26, scope: !3822, inlinedAt: !3724)
!3826 = !DILocation(line: 363, column: 6, scope: !3827, inlinedAt: !3724)
!3827 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 363, column: 6)
!3828 = !DILocation(line: 363, column: 11, scope: !3827, inlinedAt: !3724)
!3829 = !DILocation(line: 363, column: 6, scope: !3720, inlinedAt: !3724)
!3830 = !DILocation(line: 363, column: 26, scope: !3827, inlinedAt: !3724)
!3831 = !DILocation(line: 364, column: 6, scope: !3832, inlinedAt: !3724)
!3832 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 364, column: 6)
!3833 = !DILocation(line: 364, column: 11, scope: !3832, inlinedAt: !3724)
!3834 = !DILocation(line: 364, column: 6, scope: !3720, inlinedAt: !3724)
!3835 = !DILocation(line: 364, column: 26, scope: !3832, inlinedAt: !3724)
!3836 = !DILocation(line: 365, column: 6, scope: !3837, inlinedAt: !3724)
!3837 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 365, column: 6)
!3838 = !DILocation(line: 365, column: 11, scope: !3837, inlinedAt: !3724)
!3839 = !DILocation(line: 365, column: 6, scope: !3720, inlinedAt: !3724)
!3840 = !DILocation(line: 365, column: 26, scope: !3837, inlinedAt: !3724)
!3841 = !DILocation(line: 366, column: 6, scope: !3842, inlinedAt: !3724)
!3842 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 366, column: 6)
!3843 = !DILocation(line: 366, column: 11, scope: !3842, inlinedAt: !3724)
!3844 = !DILocation(line: 366, column: 6, scope: !3720, inlinedAt: !3724)
!3845 = !DILocation(line: 366, column: 26, scope: !3842, inlinedAt: !3724)
!3846 = !DILocation(line: 367, column: 6, scope: !3847, inlinedAt: !3724)
!3847 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 367, column: 6)
!3848 = !DILocation(line: 367, column: 11, scope: !3847, inlinedAt: !3724)
!3849 = !DILocation(line: 367, column: 6, scope: !3720, inlinedAt: !3724)
!3850 = !DILocation(line: 367, column: 26, scope: !3847, inlinedAt: !3724)
!3851 = !DILocation(line: 368, column: 6, scope: !3852, inlinedAt: !3724)
!3852 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 368, column: 6)
!3853 = !DILocation(line: 368, column: 11, scope: !3852, inlinedAt: !3724)
!3854 = !DILocation(line: 368, column: 6, scope: !3720, inlinedAt: !3724)
!3855 = !DILocation(line: 368, column: 26, scope: !3852, inlinedAt: !3724)
!3856 = !DILocation(line: 369, column: 6, scope: !3857, inlinedAt: !3724)
!3857 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 369, column: 6)
!3858 = !DILocation(line: 369, column: 11, scope: !3857, inlinedAt: !3724)
!3859 = !DILocation(line: 369, column: 6, scope: !3720, inlinedAt: !3724)
!3860 = !DILocation(line: 369, column: 26, scope: !3857, inlinedAt: !3724)
!3861 = !DILocation(line: 370, column: 6, scope: !3862, inlinedAt: !3724)
!3862 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 370, column: 6)
!3863 = !DILocation(line: 370, column: 11, scope: !3862, inlinedAt: !3724)
!3864 = !DILocation(line: 370, column: 6, scope: !3720, inlinedAt: !3724)
!3865 = !DILocation(line: 370, column: 26, scope: !3862, inlinedAt: !3724)
!3866 = !DILocation(line: 371, column: 6, scope: !3867, inlinedAt: !3724)
!3867 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 371, column: 6)
!3868 = !DILocation(line: 371, column: 11, scope: !3867, inlinedAt: !3724)
!3869 = !DILocation(line: 371, column: 6, scope: !3720, inlinedAt: !3724)
!3870 = !DILocation(line: 371, column: 26, scope: !3867, inlinedAt: !3724)
!3871 = !DILocation(line: 372, column: 6, scope: !3872, inlinedAt: !3724)
!3872 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 372, column: 6)
!3873 = !DILocation(line: 372, column: 11, scope: !3872, inlinedAt: !3724)
!3874 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !3724)
!3875 = !DILocation(line: 372, column: 26, scope: !3872, inlinedAt: !3724)
!3876 = !DILocation(line: 373, column: 6, scope: !3877, inlinedAt: !3724)
!3877 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 373, column: 6)
!3878 = !DILocation(line: 373, column: 11, scope: !3877, inlinedAt: !3724)
!3879 = !DILocation(line: 373, column: 6, scope: !3720, inlinedAt: !3724)
!3880 = !DILocation(line: 373, column: 26, scope: !3877, inlinedAt: !3724)
!3881 = !DILocation(line: 374, column: 6, scope: !3882, inlinedAt: !3724)
!3882 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 374, column: 6)
!3883 = !DILocation(line: 374, column: 11, scope: !3882, inlinedAt: !3724)
!3884 = !DILocation(line: 374, column: 6, scope: !3720, inlinedAt: !3724)
!3885 = !DILocation(line: 374, column: 26, scope: !3882, inlinedAt: !3724)
!3886 = !DILocation(line: 375, column: 6, scope: !3887, inlinedAt: !3724)
!3887 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 375, column: 6)
!3888 = !DILocation(line: 375, column: 11, scope: !3887, inlinedAt: !3724)
!3889 = !DILocation(line: 375, column: 6, scope: !3720, inlinedAt: !3724)
!3890 = !DILocation(line: 375, column: 27, scope: !3887, inlinedAt: !3724)
!3891 = !DILocation(line: 376, column: 6, scope: !3892, inlinedAt: !3724)
!3892 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 376, column: 6)
!3893 = !DILocation(line: 376, column: 11, scope: !3892, inlinedAt: !3724)
!3894 = !DILocation(line: 376, column: 6, scope: !3720, inlinedAt: !3724)
!3895 = !DILocation(line: 376, column: 32, scope: !3892, inlinedAt: !3724)
!3896 = !DILocation(line: 377, column: 6, scope: !3897, inlinedAt: !3724)
!3897 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 377, column: 6)
!3898 = !DILocation(line: 377, column: 11, scope: !3897, inlinedAt: !3724)
!3899 = !DILocation(line: 377, column: 6, scope: !3720, inlinedAt: !3724)
!3900 = !DILocation(line: 377, column: 32, scope: !3897, inlinedAt: !3724)
!3901 = !DILocation(line: 378, column: 6, scope: !3902, inlinedAt: !3724)
!3902 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 378, column: 6)
!3903 = !DILocation(line: 378, column: 11, scope: !3902, inlinedAt: !3724)
!3904 = !DILocation(line: 378, column: 6, scope: !3720, inlinedAt: !3724)
!3905 = !DILocation(line: 378, column: 32, scope: !3902, inlinedAt: !3724)
!3906 = !DILocation(line: 379, column: 6, scope: !3907, inlinedAt: !3724)
!3907 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 379, column: 6)
!3908 = !DILocation(line: 379, column: 11, scope: !3907, inlinedAt: !3724)
!3909 = !DILocation(line: 379, column: 6, scope: !3720, inlinedAt: !3724)
!3910 = !DILocation(line: 379, column: 33, scope: !3907, inlinedAt: !3724)
!3911 = !DILocation(line: 380, column: 6, scope: !3912, inlinedAt: !3724)
!3912 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 380, column: 6)
!3913 = !DILocation(line: 380, column: 11, scope: !3912, inlinedAt: !3724)
!3914 = !DILocation(line: 380, column: 6, scope: !3720, inlinedAt: !3724)
!3915 = !DILocation(line: 380, column: 33, scope: !3912, inlinedAt: !3724)
!3916 = !DILocation(line: 381, column: 6, scope: !3917, inlinedAt: !3724)
!3917 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 381, column: 6)
!3918 = !DILocation(line: 381, column: 11, scope: !3917, inlinedAt: !3724)
!3919 = !DILocation(line: 381, column: 6, scope: !3720, inlinedAt: !3724)
!3920 = !DILocation(line: 381, column: 33, scope: !3917, inlinedAt: !3724)
!3921 = !DILocation(line: 382, column: 2, scope: !3922, inlinedAt: !3724)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !79, line: 382, column: 2)
!3923 = distinct !DILexicalBlock(scope: !3720, file: !79, line: 382, column: 2)
!3924 = !{i32 -2144205516, i32 -2144205487, i32 -2144205441, i32 -2144205383, i32 -2144205329, i32 -2144205275, i32 -2144205220, i32 -2144205189}
!3925 = !DILocation(line: 382, column: 2, scope: !3926, inlinedAt: !3724)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !79, line: 382, column: 2)
!3927 = distinct !DILexicalBlock(scope: !3923, file: !79, line: 382, column: 2)
!3928 = !{i32 -2144204746, i32 -2144204739, i32 -2144204685, i32 -2144204654, i32 -2144204624}
!3929 = !DILocation(line: 382, column: 2, scope: !3927, inlinedAt: !3724)
!3930 = !DILocation(line: 386, column: 1, scope: !3720, inlinedAt: !3724)
!3931 = !DILocation(line: 547, column: 9, scope: !3703, inlinedAt: !3706)
!3932 = !DILocation(line: 549, column: 8, scope: !3933, inlinedAt: !3706)
!3933 = distinct !DILexicalBlock(scope: !3703, file: !79, line: 549, column: 7)
!3934 = !DILocation(line: 549, column: 7, scope: !3703, inlinedAt: !3706)
!3935 = !DILocation(line: 550, column: 4, scope: !3933, inlinedAt: !3706)
!3936 = !DILocation(line: 553, column: 33, scope: !3703, inlinedAt: !3706)
!3937 = !DILocation(line: 325, column: 6, scope: !3938, inlinedAt: !3718)
!3938 = distinct !DILexicalBlock(scope: !3714, file: !79, line: 325, column: 6)
!3939 = !DILocation(line: 325, column: 6, scope: !3714, inlinedAt: !3718)
!3940 = !DILocation(line: 326, column: 3, scope: !3938, inlinedAt: !3718)
!3941 = !DILocation(line: 332, column: 9, scope: !3714, inlinedAt: !3718)
!3942 = !DILocation(line: 332, column: 15, scope: !3714, inlinedAt: !3718)
!3943 = !DILocation(line: 332, column: 2, scope: !3714, inlinedAt: !3718)
!3944 = !DILocation(line: 336, column: 1, scope: !3714, inlinedAt: !3718)
!3945 = !DILocation(line: 553, column: 5, scope: !3703, inlinedAt: !3706)
!3946 = !DILocation(line: 553, column: 41, scope: !3703, inlinedAt: !3706)
!3947 = !DILocation(line: 554, column: 5, scope: !3703, inlinedAt: !3706)
!3948 = !DILocation(line: 554, column: 12, scope: !3703, inlinedAt: !3706)
!3949 = !DILocation(line: 448, column: 31, scope: !3698, inlinedAt: !3702)
!3950 = !DILocation(line: 448, column: 34, scope: !3698, inlinedAt: !3702)
!3951 = !DILocation(line: 448, column: 14, scope: !3698, inlinedAt: !3702)
!3952 = !DILocation(line: 450, column: 22, scope: !3698, inlinedAt: !3702)
!3953 = !DILocation(line: 450, column: 25, scope: !3698, inlinedAt: !3702)
!3954 = !DILocation(line: 450, column: 30, scope: !3698, inlinedAt: !3702)
!3955 = !DILocation(line: 450, column: 36, scope: !3698, inlinedAt: !3702)
!3956 = !DILocation(line: 450, column: 8, scope: !3698, inlinedAt: !3702)
!3957 = !DILocation(line: 450, column: 6, scope: !3698, inlinedAt: !3702)
!3958 = !DILocation(line: 451, column: 9, scope: !3698, inlinedAt: !3702)
!3959 = !DILocation(line: 552, column: 3, scope: !3703, inlinedAt: !3706)
!3960 = !DILocation(line: 557, column: 19, scope: !3705, inlinedAt: !3706)
!3961 = !DILocation(line: 557, column: 25, scope: !3705, inlinedAt: !3706)
!3962 = !DILocation(line: 557, column: 9, scope: !3705, inlinedAt: !3706)
!3963 = !DILocation(line: 557, column: 2, scope: !3705, inlinedAt: !3706)
!3964 = !DILocation(line: 558, column: 1, scope: !3705, inlinedAt: !3706)
!3965 = !DILocation(line: 664, column: 2, scope: !3694)
!3966 = distinct !DISubprogram(name: "i2c_acpi_space_handler", scope: !3, file: !3, line: 578, type: !3967, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!2440, !470, !3969, !470, !2034, !86, !86}
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !95, line: 129, baseType: !316)
!3970 = !DILocalVariable(name: "function", arg: 1, scope: !3966, file: !3, line: 578, type: !470)
!3971 = !DILocation(line: 578, column: 28, scope: !3966)
!3972 = !DILocalVariable(name: "command", arg: 2, scope: !3966, file: !3, line: 578, type: !3969)
!3973 = !DILocation(line: 578, column: 60, scope: !3966)
!3974 = !DILocalVariable(name: "bits", arg: 3, scope: !3966, file: !3, line: 579, type: !470)
!3975 = !DILocation(line: 579, column: 8, scope: !3966)
!3976 = !DILocalVariable(name: "value64", arg: 4, scope: !3966, file: !3, line: 579, type: !2034)
!3977 = !DILocation(line: 579, column: 19, scope: !3966)
!3978 = !DILocalVariable(name: "handler_context", arg: 5, scope: !3966, file: !3, line: 580, type: !86)
!3979 = !DILocation(line: 580, column: 10, scope: !3966)
!3980 = !DILocalVariable(name: "region_context", arg: 6, scope: !3966, file: !3, line: 580, type: !86)
!3981 = !DILocation(line: 580, column: 33, scope: !3966)
!3982 = !DILocalVariable(name: "gsb", scope: !3966, file: !3, line: 582, type: !2441)
!3983 = !DILocation(line: 582, column: 21, scope: !3966)
!3984 = !DILocation(line: 582, column: 48, scope: !3966)
!3985 = !DILocation(line: 582, column: 27, scope: !3966)
!3986 = !DILocalVariable(name: "data", scope: !3966, file: !3, line: 583, type: !3623)
!3987 = !DILocation(line: 583, column: 32, scope: !3966)
!3988 = !DILocation(line: 583, column: 39, scope: !3966)
!3989 = !DILocalVariable(name: "info", scope: !3966, file: !3, line: 584, type: !3990)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3991 = !DILocation(line: 584, column: 31, scope: !3966)
!3992 = !DILocation(line: 584, column: 39, scope: !3966)
!3993 = !DILocation(line: 584, column: 45, scope: !3966)
!3994 = !DILocalVariable(name: "sb", scope: !3966, file: !3, line: 585, type: !2840)
!3995 = !DILocation(line: 585, column: 38, scope: !3966)
!3996 = !DILocalVariable(name: "adapter", scope: !3966, file: !3, line: 586, type: !2879)
!3997 = !DILocation(line: 586, column: 22, scope: !3966)
!3998 = !DILocation(line: 586, column: 32, scope: !3966)
!3999 = !DILocation(line: 586, column: 38, scope: !3966)
!4000 = !DILocalVariable(name: "client", scope: !3966, file: !3, line: 587, type: !2871)
!4001 = !DILocation(line: 587, column: 21, scope: !3966)
!4002 = !DILocalVariable(name: "ares", scope: !3966, file: !3, line: 588, type: !2477)
!4003 = !DILocation(line: 588, column: 24, scope: !3966)
!4004 = !DILocalVariable(name: "accessor_type", scope: !3966, file: !3, line: 589, type: !470)
!4005 = !DILocation(line: 589, column: 6, scope: !3966)
!4006 = !DILocation(line: 589, column: 22, scope: !3966)
!4007 = !DILocation(line: 589, column: 31, scope: !3966)
!4008 = !DILocalVariable(name: "action", scope: !3966, file: !3, line: 590, type: !607)
!4009 = !DILocation(line: 590, column: 5, scope: !3966)
!4010 = !DILocation(line: 590, column: 14, scope: !3966)
!4011 = !DILocation(line: 590, column: 23, scope: !3966)
!4012 = !DILocalVariable(name: "ret", scope: !3966, file: !3, line: 591, type: !2440)
!4013 = !DILocation(line: 591, column: 14, scope: !3966)
!4014 = !DILocalVariable(name: "status", scope: !3966, file: !3, line: 592, type: !92)
!4015 = !DILocation(line: 592, column: 6, scope: !3966)
!4016 = !DILocation(line: 594, column: 32, scope: !3966)
!4017 = !DILocation(line: 594, column: 38, scope: !3966)
!4018 = !DILocation(line: 594, column: 50, scope: !3966)
!4019 = !DILocation(line: 594, column: 56, scope: !3966)
!4020 = !DILocation(line: 594, column: 8, scope: !3966)
!4021 = !DILocation(line: 594, column: 6, scope: !3966)
!4022 = !DILocation(line: 595, column: 6, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 595, column: 6)
!4024 = !DILocation(line: 595, column: 6, scope: !3966)
!4025 = !DILocation(line: 596, column: 10, scope: !4023)
!4026 = !DILocation(line: 596, column: 3, scope: !4023)
!4027 = !DILocation(line: 598, column: 11, scope: !3966)
!4028 = !DILocation(line: 598, column: 9, scope: !3966)
!4029 = !DILocation(line: 599, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 599, column: 6)
!4031 = !DILocation(line: 599, column: 6, scope: !3966)
!4032 = !DILocation(line: 600, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 599, column: 15)
!4034 = !DILocation(line: 601, column: 3, scope: !4033)
!4035 = !DILocation(line: 604, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 604, column: 6)
!4037 = !DILocation(line: 604, column: 15, scope: !4036)
!4038 = !DILocation(line: 604, column: 45, scope: !4036)
!4039 = !DILocation(line: 604, column: 19, scope: !4036)
!4040 = !DILocation(line: 604, column: 6, scope: !3966)
!4041 = !DILocation(line: 605, column: 7, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 604, column: 57)
!4043 = !DILocation(line: 606, column: 3, scope: !4042)
!4044 = !DILocation(line: 609, column: 20, scope: !3966)
!4045 = !DILocation(line: 609, column: 2, scope: !3966)
!4046 = !DILocation(line: 609, column: 10, scope: !3966)
!4047 = !DILocation(line: 609, column: 18, scope: !3966)
!4048 = !DILocation(line: 610, column: 17, scope: !3966)
!4049 = !DILocation(line: 610, column: 21, scope: !3966)
!4050 = !DILocation(line: 610, column: 2, scope: !3966)
!4051 = !DILocation(line: 610, column: 10, scope: !3966)
!4052 = !DILocation(line: 610, column: 15, scope: !3966)
!4053 = !DILocation(line: 612, column: 6, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 612, column: 6)
!4055 = !DILocation(line: 612, column: 10, scope: !4054)
!4056 = !DILocation(line: 612, column: 22, scope: !4054)
!4057 = !DILocation(line: 612, column: 6, scope: !3966)
!4058 = !DILocation(line: 613, column: 3, scope: !4054)
!4059 = !DILocation(line: 613, column: 11, scope: !4054)
!4060 = !DILocation(line: 613, column: 17, scope: !4054)
!4061 = !DILocation(line: 615, column: 10, scope: !3966)
!4062 = !DILocation(line: 615, column: 2, scope: !3966)
!4063 = !DILocation(line: 617, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 617, column: 7)
!4065 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 615, column: 25)
!4066 = !DILocation(line: 617, column: 14, scope: !4064)
!4067 = !DILocation(line: 617, column: 7, scope: !4065)
!4068 = !DILocation(line: 618, column: 33, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 617, column: 28)
!4070 = !DILocation(line: 618, column: 13, scope: !4069)
!4071 = !DILocation(line: 618, column: 11, scope: !4069)
!4072 = !DILocation(line: 619, column: 8, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 619, column: 8)
!4074 = !DILocation(line: 619, column: 15, scope: !4073)
!4075 = !DILocation(line: 619, column: 8, scope: !4069)
!4076 = !DILocation(line: 620, column: 18, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 619, column: 21)
!4078 = !DILocation(line: 620, column: 5, scope: !4077)
!4079 = !DILocation(line: 620, column: 10, scope: !4077)
!4080 = !DILocation(line: 620, column: 16, scope: !4077)
!4081 = !DILocation(line: 621, column: 12, scope: !4077)
!4082 = !DILocation(line: 622, column: 4, scope: !4077)
!4083 = !DILocation(line: 623, column: 3, scope: !4069)
!4084 = !DILocation(line: 624, column: 34, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 623, column: 10)
!4086 = !DILocation(line: 624, column: 42, scope: !4085)
!4087 = !DILocation(line: 624, column: 47, scope: !4085)
!4088 = !DILocation(line: 624, column: 13, scope: !4085)
!4089 = !DILocation(line: 624, column: 11, scope: !4085)
!4090 = !DILocation(line: 626, column: 3, scope: !4065)
!4091 = !DILocation(line: 629, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 629, column: 7)
!4093 = !DILocation(line: 629, column: 14, scope: !4092)
!4094 = !DILocation(line: 629, column: 7, scope: !4065)
!4095 = !DILocation(line: 630, column: 38, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 629, column: 28)
!4097 = !DILocation(line: 630, column: 46, scope: !4096)
!4098 = !DILocation(line: 630, column: 13, scope: !4096)
!4099 = !DILocation(line: 630, column: 11, scope: !4096)
!4100 = !DILocation(line: 631, column: 8, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 631, column: 8)
!4102 = !DILocation(line: 631, column: 15, scope: !4101)
!4103 = !DILocation(line: 631, column: 8, scope: !4096)
!4104 = !DILocation(line: 632, column: 18, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 631, column: 21)
!4106 = !DILocation(line: 632, column: 5, scope: !4105)
!4107 = !DILocation(line: 632, column: 10, scope: !4105)
!4108 = !DILocation(line: 632, column: 16, scope: !4105)
!4109 = !DILocation(line: 633, column: 12, scope: !4105)
!4110 = !DILocation(line: 634, column: 4, scope: !4105)
!4111 = !DILocation(line: 635, column: 3, scope: !4096)
!4112 = !DILocation(line: 636, column: 39, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 635, column: 10)
!4114 = !DILocation(line: 636, column: 47, scope: !4113)
!4115 = !DILocation(line: 637, column: 6, scope: !4113)
!4116 = !DILocation(line: 637, column: 11, scope: !4113)
!4117 = !DILocation(line: 636, column: 13, scope: !4113)
!4118 = !DILocation(line: 636, column: 11, scope: !4113)
!4119 = !DILocation(line: 639, column: 3, scope: !4065)
!4120 = !DILocation(line: 642, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 642, column: 7)
!4122 = !DILocation(line: 642, column: 14, scope: !4121)
!4123 = !DILocation(line: 642, column: 7, scope: !4065)
!4124 = !DILocation(line: 643, column: 38, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 642, column: 28)
!4126 = !DILocation(line: 643, column: 46, scope: !4125)
!4127 = !DILocation(line: 643, column: 13, scope: !4125)
!4128 = !DILocation(line: 643, column: 11, scope: !4125)
!4129 = !DILocation(line: 644, column: 8, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 644, column: 8)
!4131 = !DILocation(line: 644, column: 15, scope: !4130)
!4132 = !DILocation(line: 644, column: 8, scope: !4125)
!4133 = !DILocation(line: 645, column: 18, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 644, column: 21)
!4135 = !DILocation(line: 645, column: 5, scope: !4134)
!4136 = !DILocation(line: 645, column: 10, scope: !4134)
!4137 = !DILocation(line: 645, column: 16, scope: !4134)
!4138 = !DILocation(line: 646, column: 12, scope: !4134)
!4139 = !DILocation(line: 647, column: 4, scope: !4134)
!4140 = !DILocation(line: 648, column: 3, scope: !4125)
!4141 = !DILocation(line: 649, column: 39, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 648, column: 10)
!4143 = !DILocation(line: 649, column: 47, scope: !4142)
!4144 = !DILocation(line: 650, column: 6, scope: !4142)
!4145 = !DILocation(line: 650, column: 11, scope: !4142)
!4146 = !DILocation(line: 649, column: 13, scope: !4142)
!4147 = !DILocation(line: 649, column: 11, scope: !4142)
!4148 = !DILocation(line: 652, column: 3, scope: !4065)
!4149 = !DILocation(line: 655, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 655, column: 7)
!4151 = !DILocation(line: 655, column: 14, scope: !4150)
!4152 = !DILocation(line: 655, column: 7, scope: !4065)
!4153 = !DILocation(line: 656, column: 39, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 655, column: 28)
!4155 = !DILocation(line: 656, column: 47, scope: !4154)
!4156 = !DILocation(line: 657, column: 6, scope: !4154)
!4157 = !DILocation(line: 657, column: 11, scope: !4154)
!4158 = !DILocation(line: 656, column: 13, scope: !4154)
!4159 = !DILocation(line: 656, column: 11, scope: !4154)
!4160 = !DILocation(line: 658, column: 8, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 658, column: 8)
!4162 = !DILocation(line: 658, column: 15, scope: !4161)
!4163 = !DILocation(line: 658, column: 8, scope: !4154)
!4164 = !DILocation(line: 659, column: 16, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 658, column: 21)
!4166 = !DILocation(line: 659, column: 5, scope: !4165)
!4167 = !DILocation(line: 659, column: 10, scope: !4165)
!4168 = !DILocation(line: 659, column: 14, scope: !4165)
!4169 = !DILocation(line: 660, column: 12, scope: !4165)
!4170 = !DILocation(line: 661, column: 4, scope: !4165)
!4171 = !DILocation(line: 662, column: 3, scope: !4154)
!4172 = !DILocation(line: 663, column: 40, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 662, column: 10)
!4174 = !DILocation(line: 663, column: 48, scope: !4173)
!4175 = !DILocation(line: 664, column: 6, scope: !4173)
!4176 = !DILocation(line: 664, column: 11, scope: !4173)
!4177 = !DILocation(line: 664, column: 16, scope: !4173)
!4178 = !DILocation(line: 664, column: 21, scope: !4173)
!4179 = !DILocation(line: 663, column: 13, scope: !4173)
!4180 = !DILocation(line: 663, column: 11, scope: !4173)
!4181 = !DILocation(line: 666, column: 3, scope: !4065)
!4182 = !DILocation(line: 669, column: 7, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 669, column: 7)
!4184 = !DILocation(line: 669, column: 14, scope: !4183)
!4185 = !DILocation(line: 669, column: 7, scope: !4065)
!4186 = !DILocation(line: 670, column: 37, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 669, column: 28)
!4188 = !DILocation(line: 670, column: 45, scope: !4187)
!4189 = !DILocation(line: 671, column: 6, scope: !4187)
!4190 = !DILocation(line: 671, column: 11, scope: !4187)
!4191 = !DILocation(line: 671, column: 17, scope: !4187)
!4192 = !DILocation(line: 671, column: 23, scope: !4187)
!4193 = !DILocation(line: 670, column: 13, scope: !4187)
!4194 = !DILocation(line: 670, column: 11, scope: !4187)
!4195 = !DILocation(line: 672, column: 3, scope: !4187)
!4196 = !DILocation(line: 673, column: 38, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 672, column: 10)
!4198 = !DILocation(line: 673, column: 46, scope: !4197)
!4199 = !DILocation(line: 674, column: 6, scope: !4197)
!4200 = !DILocation(line: 674, column: 11, scope: !4197)
!4201 = !DILocation(line: 674, column: 17, scope: !4197)
!4202 = !DILocation(line: 674, column: 23, scope: !4197)
!4203 = !DILocation(line: 673, column: 13, scope: !4197)
!4204 = !DILocation(line: 673, column: 11, scope: !4197)
!4205 = !DILocation(line: 676, column: 3, scope: !4065)
!4206 = !DILocation(line: 679, column: 3, scope: !4065)
!4207 = !DILocation(line: 681, column: 7, scope: !4065)
!4208 = !DILocation(line: 682, column: 3, scope: !4065)
!4209 = !DILocation(line: 685, column: 16, scope: !3966)
!4210 = !DILocation(line: 685, column: 2, scope: !3966)
!4211 = !DILocation(line: 685, column: 7, scope: !3966)
!4212 = !DILocation(line: 685, column: 14, scope: !3966)
!4213 = !DILabel(scope: !3966, name: "err", file: !3, line: 687)
!4214 = !DILocation(line: 687, column: 2, scope: !3966)
!4215 = !DILocation(line: 688, column: 8, scope: !3966)
!4216 = !DILocation(line: 688, column: 2, scope: !3966)
!4217 = !DILocation(line: 689, column: 2, scope: !3966)
!4218 = !DILocation(line: 690, column: 9, scope: !3966)
!4219 = !DILocation(line: 690, column: 2, scope: !3966)
!4220 = !DILocation(line: 691, column: 1, scope: !3966)
!4221 = distinct !DISubprogram(name: "i2c_acpi_remove_space_handler", scope: !3, file: !3, line: 735, type: !2974, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4222 = !DILocalVariable(name: "adapter", arg: 1, scope: !4221, file: !3, line: 735, type: !2879)
!4223 = !DILocation(line: 735, column: 56, scope: !4221)
!4224 = !DILocalVariable(name: "handle", scope: !4221, file: !3, line: 737, type: !94)
!4225 = !DILocation(line: 737, column: 14, scope: !4221)
!4226 = !DILocalVariable(name: "data", scope: !4221, file: !3, line: 738, type: !3623)
!4227 = !DILocation(line: 738, column: 32, scope: !4221)
!4228 = !DILocalVariable(name: "status", scope: !4221, file: !3, line: 739, type: !2440)
!4229 = !DILocation(line: 739, column: 14, scope: !4221)
!4230 = !DILocation(line: 741, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 741, column: 6)
!4232 = !DILocation(line: 741, column: 16, scope: !4231)
!4233 = !DILocation(line: 741, column: 20, scope: !4231)
!4234 = !DILocation(line: 741, column: 6, scope: !4221)
!4235 = !DILocation(line: 742, column: 3, scope: !4231)
!4236 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4237, file: !3, line: 744, type: !101)
!4237 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 744, column: 11)
!4238 = !DILocation(line: 744, column: 11, scope: !4237)
!4239 = !DILocalVariable(name: "__mptr", scope: !4240, file: !3, line: 744, type: !86)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 744, column: 11)
!4241 = !DILocation(line: 744, column: 11, scope: !4240)
!4242 = !DILocation(line: 744, column: 11, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 744, column: 11)
!4244 = !DILocation(line: 744, column: 11, scope: !4221)
!4245 = !DILocation(line: 744, column: 9, scope: !4221)
!4246 = !DILocation(line: 746, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 746, column: 6)
!4248 = !DILocation(line: 746, column: 6, scope: !4221)
!4249 = !DILocation(line: 747, column: 3, scope: !4247)
!4250 = !DILocation(line: 749, column: 36, scope: !4221)
!4251 = !DILocation(line: 749, column: 2, scope: !4221)
!4252 = !DILocation(line: 753, column: 37, scope: !4221)
!4253 = !DILocation(line: 753, column: 45, scope: !4221)
!4254 = !DILocation(line: 753, column: 11, scope: !4221)
!4255 = !DILocation(line: 753, column: 9, scope: !4221)
!4256 = !DILocation(line: 754, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 754, column: 6)
!4258 = !DILocation(line: 754, column: 6, scope: !4221)
!4259 = !DILocation(line: 755, column: 9, scope: !4257)
!4260 = !DILocation(line: 755, column: 3, scope: !4257)
!4261 = !DILocation(line: 757, column: 31, scope: !4221)
!4262 = !DILocation(line: 757, column: 2, scope: !4221)
!4263 = !DILocation(line: 758, column: 1, scope: !4221)
!4264 = distinct !DISubprogram(name: "i2c_acpi_get_info", scope: !3, file: !3, line: 177, type: !4265, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!92, !87, !3246, !2879, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!4268 = !DILocalVariable(name: "adev", arg: 1, scope: !4264, file: !3, line: 177, type: !87)
!4269 = !DILocation(line: 177, column: 50, scope: !4264)
!4270 = !DILocalVariable(name: "info", arg: 2, scope: !4264, file: !3, line: 178, type: !3246)
!4271 = !DILocation(line: 178, column: 32, scope: !4264)
!4272 = !DILocalVariable(name: "adapter", arg: 3, scope: !4264, file: !3, line: 179, type: !2879)
!4273 = !DILocation(line: 179, column: 29, scope: !4264)
!4274 = !DILocalVariable(name: "adapter_handle", arg: 4, scope: !4264, file: !3, line: 180, type: !4267)
!4275 = !DILocation(line: 180, column: 22, scope: !4264)
!4276 = !DILocalVariable(name: "lookup", scope: !4264, file: !3, line: 182, type: !3243)
!4277 = !DILocation(line: 182, column: 25, scope: !4264)
!4278 = !DILocalVariable(name: "ret", scope: !4264, file: !3, line: 183, type: !92)
!4279 = !DILocation(line: 183, column: 6, scope: !4264)
!4280 = !DILocation(line: 185, column: 2, scope: !4264)
!4281 = !DILocation(line: 186, column: 16, scope: !4264)
!4282 = !DILocation(line: 186, column: 9, scope: !4264)
!4283 = !DILocation(line: 186, column: 14, scope: !4264)
!4284 = !DILocation(line: 187, column: 9, scope: !4264)
!4285 = !DILocation(line: 187, column: 15, scope: !4264)
!4286 = !DILocation(line: 189, column: 29, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 189, column: 6)
!4288 = !DILocation(line: 189, column: 6, scope: !4287)
!4289 = !DILocation(line: 189, column: 6, scope: !4264)
!4290 = !DILocation(line: 190, column: 3, scope: !4287)
!4291 = !DILocation(line: 192, column: 27, scope: !4264)
!4292 = !DILocation(line: 192, column: 8, scope: !4264)
!4293 = !DILocation(line: 192, column: 6, scope: !4264)
!4294 = !DILocation(line: 193, column: 6, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 193, column: 6)
!4296 = !DILocation(line: 193, column: 6, scope: !4264)
!4297 = !DILocation(line: 194, column: 10, scope: !4295)
!4298 = !DILocation(line: 194, column: 3, scope: !4295)
!4299 = !DILocation(line: 196, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 196, column: 6)
!4301 = !DILocation(line: 196, column: 6, scope: !4264)
!4302 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4303, file: !3, line: 198, type: !101)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 198, column: 7)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 198, column: 7)
!4305 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 196, column: 15)
!4306 = !DILocation(line: 198, column: 7, scope: !4303)
!4307 = !DILocalVariable(name: "__mptr", scope: !4308, file: !3, line: 198, type: !86)
!4308 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 198, column: 7)
!4309 = !DILocation(line: 198, column: 7, scope: !4308)
!4310 = !DILocation(line: 198, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 198, column: 7)
!4312 = !DILocation(line: 198, column: 7, scope: !4304)
!4313 = !DILocation(line: 198, column: 44, scope: !4304)
!4314 = !DILocation(line: 198, column: 34, scope: !4304)
!4315 = !DILocation(line: 198, column: 7, scope: !4305)
!4316 = !DILocation(line: 199, column: 4, scope: !4304)
!4317 = !DILocation(line: 200, column: 2, scope: !4305)
!4318 = !DILocalVariable(name: "adapter_adev", scope: !4319, file: !3, line: 201, type: !87)
!4319 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 200, column: 9)
!4320 = !DILocation(line: 201, column: 23, scope: !4319)
!4321 = !DILocation(line: 204, column: 34, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 204, column: 7)
!4323 = !DILocation(line: 204, column: 7, scope: !4322)
!4324 = !DILocation(line: 204, column: 7, scope: !4319)
!4325 = !DILocation(line: 205, column: 4, scope: !4322)
!4326 = !DILocation(line: 206, column: 27, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 206, column: 7)
!4328 = !DILocation(line: 206, column: 7, scope: !4327)
!4329 = !DILocation(line: 206, column: 41, scope: !4327)
!4330 = !DILocation(line: 207, column: 8, scope: !4327)
!4331 = !DILocation(line: 207, column: 22, scope: !4327)
!4332 = !DILocation(line: 207, column: 29, scope: !4327)
!4333 = !DILocation(line: 206, column: 7, scope: !4319)
!4334 = !DILocation(line: 208, column: 4, scope: !4327)
!4335 = !DILocation(line: 211, column: 36, scope: !4264)
!4336 = !DILocation(line: 211, column: 17, scope: !4264)
!4337 = !DILocation(line: 211, column: 2, scope: !4264)
!4338 = !DILocation(line: 211, column: 8, scope: !4264)
!4339 = !DILocation(line: 211, column: 15, scope: !4264)
!4340 = !DILocation(line: 212, column: 6, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 212, column: 6)
!4342 = !DILocation(line: 212, column: 6, scope: !4264)
!4343 = !DILocation(line: 213, column: 28, scope: !4341)
!4344 = !DILocation(line: 213, column: 4, scope: !4341)
!4345 = !DILocation(line: 213, column: 19, scope: !4341)
!4346 = !DILocation(line: 213, column: 3, scope: !4341)
!4347 = !DILocation(line: 215, column: 20, scope: !4264)
!4348 = !DILocation(line: 215, column: 36, scope: !4264)
!4349 = !DILocation(line: 215, column: 42, scope: !4264)
!4350 = !DILocation(line: 215, column: 26, scope: !4264)
!4351 = !DILocation(line: 215, column: 48, scope: !4264)
!4352 = !DILocation(line: 215, column: 54, scope: !4264)
!4353 = !DILocation(line: 215, column: 2, scope: !4264)
!4354 = !DILocation(line: 218, column: 2, scope: !4264)
!4355 = !DILocation(line: 219, column: 1, scope: !4264)
!4356 = distinct !DISubprogram(name: "i2c_acpi_register_device", scope: !3, file: !3, line: 221, type: !4357, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !2879, !87, !3246}
!4359 = !DILocalVariable(name: "adapter", arg: 1, scope: !4356, file: !3, line: 221, type: !2879)
!4360 = !DILocation(line: 221, column: 58, scope: !4356)
!4361 = !DILocalVariable(name: "adev", arg: 2, scope: !4356, file: !3, line: 222, type: !87)
!4362 = !DILocation(line: 222, column: 30, scope: !4356)
!4363 = !DILocalVariable(name: "info", arg: 3, scope: !4356, file: !3, line: 223, type: !3246)
!4364 = !DILocation(line: 223, column: 33, scope: !4356)
!4365 = !DILocation(line: 225, column: 2, scope: !4356)
!4366 = !DILocation(line: 225, column: 8, scope: !4356)
!4367 = !DILocation(line: 225, column: 14, scope: !4356)
!4368 = !DILocation(line: 225, column: 20, scope: !4356)
!4369 = !DILocation(line: 225, column: 34, scope: !4356)
!4370 = !DILocation(line: 226, column: 29, scope: !4356)
!4371 = !DILocation(line: 226, column: 2, scope: !4356)
!4372 = !DILocation(line: 228, column: 35, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 228, column: 6)
!4374 = !DILocation(line: 228, column: 44, scope: !4373)
!4375 = !DILocation(line: 228, column: 13, scope: !4373)
!4376 = !DILocation(line: 228, column: 6, scope: !4373)
!4377 = !DILocation(line: 228, column: 6, scope: !4356)
!4378 = !DILocation(line: 229, column: 3, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 228, column: 52)
!4380 = !DILocation(line: 229, column: 9, scope: !4379)
!4381 = !DILocation(line: 229, column: 15, scope: !4379)
!4382 = !DILocation(line: 229, column: 21, scope: !4379)
!4383 = !DILocation(line: 229, column: 35, scope: !4379)
!4384 = !DILocation(line: 230, column: 3, scope: !4379)
!4385 = !DILocation(line: 233, column: 2, scope: !4379)
!4386 = !DILocation(line: 234, column: 1, scope: !4356)
!4387 = distinct !DISubprogram(name: "acpi_device_enumerated", scope: !89, file: !89, line: 541, type: !4388, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!119, !87}
!4390 = !DILocalVariable(name: "adev", arg: 1, scope: !4387, file: !89, line: 541, type: !87)
!4391 = !DILocation(line: 541, column: 63, scope: !4387)
!4392 = !DILocation(line: 543, column: 9, scope: !4387)
!4393 = !DILocation(line: 543, column: 14, scope: !4387)
!4394 = !DILocation(line: 543, column: 17, scope: !4387)
!4395 = !DILocation(line: 543, column: 23, scope: !4387)
!4396 = !DILocation(line: 543, column: 29, scope: !4387)
!4397 = !DILocation(line: 543, column: 41, scope: !4387)
!4398 = !DILocation(line: 543, column: 44, scope: !4387)
!4399 = !DILocation(line: 543, column: 50, scope: !4387)
!4400 = !DILocation(line: 543, column: 56, scope: !4387)
!4401 = !DILocation(line: 0, scope: !4387)
!4402 = !DILocation(line: 543, column: 2, scope: !4387)
!4403 = distinct !DISubprogram(name: "i2c_acpi_do_lookup", scope: !3, file: !3, line: 108, type: !4404, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!92, !87, !3325}
!4406 = !DILocalVariable(name: "adev", arg: 1, scope: !4403, file: !3, line: 108, type: !87)
!4407 = !DILocation(line: 108, column: 51, scope: !4403)
!4408 = !DILocalVariable(name: "lookup", arg: 2, scope: !4403, file: !3, line: 109, type: !3325)
!4409 = !DILocation(line: 109, column: 34, scope: !4403)
!4410 = !DILocalVariable(name: "info", scope: !4403, file: !3, line: 111, type: !3246)
!4411 = !DILocation(line: 111, column: 25, scope: !4403)
!4412 = !DILocation(line: 111, column: 32, scope: !4403)
!4413 = !DILocation(line: 111, column: 40, scope: !4403)
!4414 = !DILocalVariable(name: "resource_list", scope: !4403, file: !3, line: 112, type: !143)
!4415 = !DILocation(line: 112, column: 19, scope: !4403)
!4416 = !DILocalVariable(name: "ret", scope: !4403, file: !3, line: 113, type: !92)
!4417 = !DILocation(line: 113, column: 6, scope: !4403)
!4418 = !DILocation(line: 115, column: 26, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 115, column: 6)
!4420 = !DILocation(line: 115, column: 6, scope: !4419)
!4421 = !DILocation(line: 115, column: 32, scope: !4419)
!4422 = !DILocation(line: 115, column: 36, scope: !4419)
!4423 = !DILocation(line: 115, column: 42, scope: !4419)
!4424 = !DILocation(line: 115, column: 49, scope: !4419)
!4425 = !DILocation(line: 115, column: 6, scope: !4403)
!4426 = !DILocation(line: 116, column: 3, scope: !4419)
!4427 = !DILocation(line: 118, column: 28, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 118, column: 6)
!4429 = !DILocation(line: 118, column: 6, scope: !4428)
!4430 = !DILocation(line: 118, column: 63, scope: !4428)
!4431 = !DILocation(line: 118, column: 6, scope: !4403)
!4432 = !DILocation(line: 119, column: 3, scope: !4428)
!4433 = !DILocation(line: 121, column: 9, scope: !4403)
!4434 = !DILocation(line: 121, column: 2, scope: !4403)
!4435 = !DILocation(line: 122, column: 45, scope: !4403)
!4436 = !DILocation(line: 122, column: 26, scope: !4403)
!4437 = !DILocation(line: 122, column: 2, scope: !4403)
!4438 = !DILocation(line: 122, column: 10, scope: !4403)
!4439 = !DILocation(line: 122, column: 24, scope: !4403)
!4440 = !DILocation(line: 125, column: 2, scope: !4403)
!4441 = !DILocation(line: 126, column: 31, scope: !4403)
!4442 = !DILocation(line: 127, column: 30, scope: !4403)
!4443 = !DILocation(line: 126, column: 8, scope: !4403)
!4444 = !DILocation(line: 126, column: 6, scope: !4403)
!4445 = !DILocation(line: 128, column: 2, scope: !4403)
!4446 = !DILocation(line: 130, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 130, column: 6)
!4448 = !DILocation(line: 130, column: 10, scope: !4447)
!4449 = !DILocation(line: 130, column: 14, scope: !4447)
!4450 = !DILocation(line: 130, column: 18, scope: !4447)
!4451 = !DILocation(line: 130, column: 24, scope: !4447)
!4452 = !DILocation(line: 130, column: 6, scope: !4403)
!4453 = !DILocation(line: 131, column: 3, scope: !4447)
!4454 = !DILocation(line: 133, column: 2, scope: !4403)
!4455 = !DILocation(line: 134, column: 1, scope: !4403)
!4456 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !89, file: !89, line: 438, type: !4457, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!101, !87}
!4459 = !DILocalVariable(name: "adev", arg: 1, scope: !4456, file: !89, line: 438, type: !87)
!4460 = !DILocation(line: 438, column: 76, scope: !4456)
!4461 = !DILocation(line: 440, column: 10, scope: !4456)
!4462 = !DILocation(line: 440, column: 16, scope: !4456)
!4463 = !DILocation(line: 440, column: 2, scope: !4456)
!4464 = distinct !DISubprogram(name: "dev_name", scope: !35, file: !35, line: 609, type: !4465, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!139, !130}
!4467 = !DILocalVariable(name: "dev", arg: 1, scope: !4464, file: !35, line: 609, type: !130)
!4468 = !DILocation(line: 609, column: 57, scope: !4464)
!4469 = !DILocation(line: 612, column: 6, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !35, line: 612, column: 6)
!4471 = !DILocation(line: 612, column: 11, scope: !4470)
!4472 = !DILocation(line: 612, column: 6, scope: !4464)
!4473 = !DILocation(line: 613, column: 10, scope: !4470)
!4474 = !DILocation(line: 613, column: 15, scope: !4470)
!4475 = !DILocation(line: 613, column: 3, scope: !4470)
!4476 = !DILocation(line: 615, column: 23, scope: !4464)
!4477 = !DILocation(line: 615, column: 28, scope: !4464)
!4478 = !DILocation(line: 615, column: 9, scope: !4464)
!4479 = !DILocation(line: 615, column: 2, scope: !4464)
!4480 = !DILocation(line: 616, column: 1, scope: !4464)
!4481 = distinct !DISubprogram(name: "kobject_name", scope: !136, file: !136, line: 88, type: !4482, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!139, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!4486 = !DILocalVariable(name: "kobj", arg: 1, scope: !4481, file: !136, line: 88, type: !4484)
!4487 = !DILocation(line: 88, column: 62, scope: !4481)
!4488 = !DILocation(line: 90, column: 9, scope: !4481)
!4489 = !DILocation(line: 90, column: 15, scope: !4481)
!4490 = !DILocation(line: 90, column: 2, scope: !4481)
!4491 = distinct !DISubprogram(name: "acpi_device_set_enumerated", scope: !3145, file: !3145, line: 664, type: !2373, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4492 = !DILocalVariable(name: "adev", arg: 1, scope: !4491, file: !3145, line: 664, type: !87)
!4493 = !DILocation(line: 664, column: 67, scope: !4491)
!4494 = !DILocation(line: 666, column: 2, scope: !4491)
!4495 = !DILocation(line: 666, column: 8, scope: !4491)
!4496 = !DILocation(line: 666, column: 14, scope: !4491)
!4497 = !DILocation(line: 666, column: 22, scope: !4491)
!4498 = !DILocation(line: 667, column: 1, scope: !4491)
!4499 = distinct !DISubprogram(name: "IS_ERR", scope: !3609, file: !3609, line: 34, type: !4500, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!119, !128}
!4502 = !DILocalVariable(name: "ptr", arg: 1, scope: !4499, file: !3609, line: 34, type: !128)
!4503 = !DILocation(line: 34, column: 60, scope: !4499)
!4504 = !DILocation(line: 36, column: 9, scope: !4499)
!4505 = !DILocation(line: 36, column: 2, scope: !4499)
!4506 = distinct !DISubprogram(name: "i2c_acpi_find_client_by_adev", scope: !3, file: !3, line: 394, type: !4507, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!2871, !87}
!4509 = !DILocalVariable(name: "adev", arg: 1, scope: !4506, file: !3, line: 394, type: !87)
!4510 = !DILocation(line: 394, column: 76, scope: !4506)
!4511 = !DILocalVariable(name: "dev", scope: !4506, file: !3, line: 396, type: !1637)
!4512 = !DILocation(line: 396, column: 17, scope: !4506)
!4513 = !DILocalVariable(name: "client", scope: !4506, file: !3, line: 397, type: !2871)
!4514 = !DILocation(line: 397, column: 21, scope: !4506)
!4515 = !DILocation(line: 399, column: 51, scope: !4506)
!4516 = !DILocation(line: 399, column: 8, scope: !4506)
!4517 = !DILocation(line: 399, column: 6, scope: !4506)
!4518 = !DILocation(line: 400, column: 7, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 400, column: 6)
!4520 = !DILocation(line: 400, column: 6, scope: !4506)
!4521 = !DILocation(line: 401, column: 3, scope: !4519)
!4522 = !DILocation(line: 403, column: 29, scope: !4506)
!4523 = !DILocation(line: 403, column: 11, scope: !4506)
!4524 = !DILocation(line: 403, column: 9, scope: !4506)
!4525 = !DILocation(line: 404, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 404, column: 6)
!4527 = !DILocation(line: 404, column: 6, scope: !4506)
!4528 = !DILocation(line: 405, column: 14, scope: !4526)
!4529 = !DILocation(line: 405, column: 3, scope: !4526)
!4530 = !DILocation(line: 407, column: 9, scope: !4506)
!4531 = !DILocation(line: 407, column: 2, scope: !4506)
!4532 = !DILocation(line: 408, column: 1, scope: !4506)
!4533 = distinct !DISubprogram(name: "bus_find_device_by_acpi_dev", scope: !1696, file: !1696, line: 237, type: !4534, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!1637, !1694, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4538 = !DILocalVariable(name: "bus", arg: 1, scope: !4533, file: !1696, line: 237, type: !1694)
!4539 = !DILocation(line: 237, column: 46, scope: !4533)
!4540 = !DILocalVariable(name: "adev", arg: 2, scope: !4533, file: !1696, line: 237, type: !4536)
!4541 = !DILocation(line: 237, column: 77, scope: !4533)
!4542 = !DILocation(line: 239, column: 25, scope: !4533)
!4543 = !DILocation(line: 239, column: 36, scope: !4533)
!4544 = !DILocation(line: 239, column: 9, scope: !4533)
!4545 = !DILocation(line: 239, column: 2, scope: !4533)
!4546 = distinct !DISubprogram(name: "get_order", scope: !4547, file: !4547, line: 29, type: !4548, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4547 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!92, !247}
!4550 = !DILocalVariable(name: "x", arg: 1, scope: !4551, file: !4552, line: 366, type: !318)
!4551 = distinct !DISubprogram(name: "fls64", scope: !4552, file: !4552, line: 366, type: !4553, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4552 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!92, !318}
!4555 = !DILocation(line: 366, column: 40, scope: !4551, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 46, column: 9, scope: !4546)
!4557 = !DILocalVariable(name: "bitpos", scope: !4551, file: !4552, line: 368, type: !92)
!4558 = !DILocation(line: 368, column: 6, scope: !4551, inlinedAt: !4556)
!4559 = !DILocalVariable(name: "size", arg: 1, scope: !4546, file: !4547, line: 29, type: !247)
!4560 = !DILocation(line: 29, column: 63, scope: !4546)
!4561 = !DILocation(line: 31, column: 27, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4546, file: !4547, line: 31, column: 6)
!4563 = !DILocation(line: 31, column: 6, scope: !4562)
!4564 = !DILocation(line: 31, column: 6, scope: !4546)
!4565 = !DILocation(line: 32, column: 8, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !4547, line: 32, column: 7)
!4567 = distinct !DILexicalBlock(scope: !4562, file: !4547, line: 31, column: 34)
!4568 = !DILocation(line: 32, column: 7, scope: !4567)
!4569 = !DILocation(line: 33, column: 4, scope: !4566)
!4570 = !DILocation(line: 35, column: 7, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4567, file: !4547, line: 35, column: 7)
!4572 = !DILocation(line: 35, column: 12, scope: !4571)
!4573 = !DILocation(line: 35, column: 7, scope: !4567)
!4574 = !DILocation(line: 36, column: 4, scope: !4571)
!4575 = !DILocation(line: 38, column: 10, scope: !4567)
!4576 = !DILocation(line: 38, column: 28, scope: !4567)
!4577 = !DILocation(line: 38, column: 41, scope: !4567)
!4578 = !DILocation(line: 38, column: 3, scope: !4567)
!4579 = !DILocation(line: 41, column: 6, scope: !4546)
!4580 = !DILocation(line: 42, column: 7, scope: !4546)
!4581 = !DILocation(line: 46, column: 15, scope: !4546)
!4582 = !DILocation(line: 374, column: 2, scope: !4551, inlinedAt: !4556)
!4583 = !DILocation(line: 376, column: 14, scope: !4551, inlinedAt: !4556)
!4584 = !{i32 329596}
!4585 = !DILocation(line: 377, column: 9, scope: !4551, inlinedAt: !4556)
!4586 = !DILocation(line: 377, column: 16, scope: !4551, inlinedAt: !4556)
!4587 = !DILocation(line: 46, column: 2, scope: !4546)
!4588 = !DILocation(line: 48, column: 1, scope: !4546)
!4589 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4590, file: !4590, line: 30, type: !4591, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4590 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!92, !316}
!4593 = !DILocation(line: 366, column: 40, scope: !4551, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 32, column: 9, scope: !4589)
!4595 = !DILocation(line: 368, column: 6, scope: !4551, inlinedAt: !4594)
!4596 = !DILocalVariable(name: "n", arg: 1, scope: !4589, file: !4590, line: 30, type: !316)
!4597 = !DILocation(line: 30, column: 21, scope: !4589)
!4598 = !DILocation(line: 32, column: 15, scope: !4589)
!4599 = !DILocation(line: 374, column: 2, scope: !4551, inlinedAt: !4594)
!4600 = !DILocation(line: 376, column: 14, scope: !4551, inlinedAt: !4594)
!4601 = !DILocation(line: 377, column: 9, scope: !4551, inlinedAt: !4594)
!4602 = !DILocation(line: 377, column: 16, scope: !4551, inlinedAt: !4594)
!4603 = !DILocation(line: 32, column: 18, scope: !4589)
!4604 = !DILocation(line: 32, column: 2, scope: !4589)
!4605 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4606, file: !4606, line: 137, type: !4607, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4606 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!86, !1088, !128, !244, !1508}
!4609 = !DILocalVariable(name: "s", arg: 1, scope: !4605, file: !4606, line: 137, type: !1088)
!4610 = !DILocation(line: 137, column: 54, scope: !4605)
!4611 = !DILocalVariable(name: "object", arg: 2, scope: !4605, file: !4606, line: 137, type: !128)
!4612 = !DILocation(line: 137, column: 69, scope: !4605)
!4613 = !DILocalVariable(name: "size", arg: 3, scope: !4605, file: !4606, line: 138, type: !244)
!4614 = !DILocation(line: 138, column: 12, scope: !4605)
!4615 = !DILocalVariable(name: "flags", arg: 4, scope: !4605, file: !4606, line: 138, type: !1508)
!4616 = !DILocation(line: 138, column: 24, scope: !4605)
!4617 = !DILocation(line: 140, column: 17, scope: !4605)
!4618 = !DILocation(line: 140, column: 2, scope: !4605)
!4619 = distinct !DISubprogram(name: "acpi_gsb_i2c_read_bytes", scope: !3, file: !3, line: 501, type: !4620, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!92, !2871, !607, !2240, !607}
!4622 = !DILocalVariable(name: "client", arg: 1, scope: !4619, file: !3, line: 501, type: !2871)
!4623 = !DILocation(line: 501, column: 55, scope: !4619)
!4624 = !DILocalVariable(name: "cmd", arg: 2, scope: !4619, file: !3, line: 502, type: !607)
!4625 = !DILocation(line: 502, column: 6, scope: !4619)
!4626 = !DILocalVariable(name: "data", arg: 3, scope: !4619, file: !3, line: 502, type: !2240)
!4627 = !DILocation(line: 502, column: 15, scope: !4619)
!4628 = !DILocalVariable(name: "data_len", arg: 4, scope: !4619, file: !3, line: 502, type: !607)
!4629 = !DILocation(line: 502, column: 24, scope: !4619)
!4630 = !DILocalVariable(name: "msgs", scope: !4619, file: !3, line: 505, type: !4631)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2894, size: 256, elements: !1012)
!4632 = !DILocation(line: 505, column: 17, scope: !4619)
!4633 = !DILocalVariable(name: "ret", scope: !4619, file: !3, line: 506, type: !92)
!4634 = !DILocation(line: 506, column: 6, scope: !4619)
!4635 = !DILocalVariable(name: "buffer", scope: !4619, file: !3, line: 507, type: !2240)
!4636 = !DILocation(line: 507, column: 6, scope: !4619)
!4637 = !DILocation(line: 509, column: 19, scope: !4619)
!4638 = !DILocation(line: 509, column: 11, scope: !4619)
!4639 = !DILocation(line: 509, column: 9, scope: !4619)
!4640 = !DILocation(line: 510, column: 7, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 510, column: 6)
!4642 = !DILocation(line: 510, column: 6, scope: !4619)
!4643 = !DILocation(line: 511, column: 3, scope: !4641)
!4644 = !DILocation(line: 513, column: 17, scope: !4619)
!4645 = !DILocation(line: 513, column: 25, scope: !4619)
!4646 = !DILocation(line: 513, column: 2, scope: !4619)
!4647 = !DILocation(line: 513, column: 10, scope: !4619)
!4648 = !DILocation(line: 513, column: 15, scope: !4619)
!4649 = !DILocation(line: 514, column: 18, scope: !4619)
!4650 = !DILocation(line: 514, column: 26, scope: !4619)
!4651 = !DILocation(line: 514, column: 2, scope: !4619)
!4652 = !DILocation(line: 514, column: 10, scope: !4619)
!4653 = !DILocation(line: 514, column: 16, scope: !4619)
!4654 = !DILocation(line: 515, column: 2, scope: !4619)
!4655 = !DILocation(line: 515, column: 10, scope: !4619)
!4656 = !DILocation(line: 515, column: 14, scope: !4619)
!4657 = !DILocation(line: 516, column: 2, scope: !4619)
!4658 = !DILocation(line: 516, column: 10, scope: !4619)
!4659 = !DILocation(line: 516, column: 14, scope: !4619)
!4660 = !DILocation(line: 518, column: 17, scope: !4619)
!4661 = !DILocation(line: 518, column: 25, scope: !4619)
!4662 = !DILocation(line: 518, column: 2, scope: !4619)
!4663 = !DILocation(line: 518, column: 10, scope: !4619)
!4664 = !DILocation(line: 518, column: 15, scope: !4619)
!4665 = !DILocation(line: 519, column: 18, scope: !4619)
!4666 = !DILocation(line: 519, column: 26, scope: !4619)
!4667 = !DILocation(line: 519, column: 32, scope: !4619)
!4668 = !DILocation(line: 519, column: 2, scope: !4619)
!4669 = !DILocation(line: 519, column: 10, scope: !4619)
!4670 = !DILocation(line: 519, column: 16, scope: !4619)
!4671 = !DILocation(line: 520, column: 16, scope: !4619)
!4672 = !DILocation(line: 520, column: 2, scope: !4619)
!4673 = !DILocation(line: 520, column: 10, scope: !4619)
!4674 = !DILocation(line: 520, column: 14, scope: !4619)
!4675 = !DILocation(line: 521, column: 16, scope: !4619)
!4676 = !DILocation(line: 521, column: 2, scope: !4619)
!4677 = !DILocation(line: 521, column: 10, scope: !4619)
!4678 = !DILocation(line: 521, column: 14, scope: !4619)
!4679 = !DILocation(line: 523, column: 21, scope: !4619)
!4680 = !DILocation(line: 523, column: 29, scope: !4619)
!4681 = !DILocation(line: 523, column: 38, scope: !4619)
!4682 = !DILocation(line: 523, column: 8, scope: !4619)
!4683 = !DILocation(line: 523, column: 6, scope: !4619)
!4684 = !DILocation(line: 524, column: 6, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 524, column: 6)
!4686 = !DILocation(line: 524, column: 10, scope: !4685)
!4687 = !DILocation(line: 524, column: 6, scope: !4619)
!4688 = !DILocation(line: 526, column: 7, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 526, column: 7)
!4690 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 524, column: 15)
!4691 = !DILocation(line: 526, column: 11, scope: !4689)
!4692 = !DILocation(line: 526, column: 7, scope: !4690)
!4693 = !DILocation(line: 527, column: 4, scope: !4689)
!4694 = !DILocation(line: 530, column: 4, scope: !4689)
!4695 = !DILocation(line: 533, column: 2, scope: !4690)
!4696 = !DILocation(line: 533, column: 13, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 533, column: 13)
!4698 = !DILocation(line: 533, column: 17, scope: !4697)
!4699 = !DILocation(line: 533, column: 13, scope: !4685)
!4700 = !DILocation(line: 534, column: 10, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 533, column: 23)
!4702 = !DILocation(line: 534, column: 16, scope: !4701)
!4703 = !DILocation(line: 534, column: 24, scope: !4701)
!4704 = !DILocation(line: 534, column: 3, scope: !4701)
!4705 = !DILocation(line: 535, column: 7, scope: !4701)
!4706 = !DILocation(line: 536, column: 2, scope: !4701)
!4707 = !DILocation(line: 537, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 536, column: 9)
!4709 = !DILocation(line: 540, column: 8, scope: !4619)
!4710 = !DILocation(line: 540, column: 2, scope: !4619)
!4711 = !DILocation(line: 541, column: 9, scope: !4619)
!4712 = !DILocation(line: 541, column: 2, scope: !4619)
!4713 = !DILocation(line: 542, column: 1, scope: !4619)
!4714 = distinct !DISubprogram(name: "acpi_gsb_i2c_write_bytes", scope: !3, file: !3, line: 544, type: !4620, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4715 = !DILocalVariable(name: "client", arg: 1, scope: !4714, file: !3, line: 544, type: !2871)
!4716 = !DILocation(line: 544, column: 56, scope: !4714)
!4717 = !DILocalVariable(name: "cmd", arg: 2, scope: !4714, file: !3, line: 545, type: !607)
!4718 = !DILocation(line: 545, column: 6, scope: !4714)
!4719 = !DILocalVariable(name: "data", arg: 3, scope: !4714, file: !3, line: 545, type: !2240)
!4720 = !DILocation(line: 545, column: 15, scope: !4714)
!4721 = !DILocalVariable(name: "data_len", arg: 4, scope: !4714, file: !3, line: 545, type: !607)
!4722 = !DILocation(line: 545, column: 24, scope: !4714)
!4723 = !DILocalVariable(name: "msgs", scope: !4714, file: !3, line: 548, type: !4724)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2894, size: 128, elements: !627)
!4725 = !DILocation(line: 548, column: 17, scope: !4714)
!4726 = !DILocalVariable(name: "buffer", scope: !4714, file: !3, line: 549, type: !2240)
!4727 = !DILocation(line: 549, column: 6, scope: !4714)
!4728 = !DILocalVariable(name: "ret", scope: !4714, file: !3, line: 550, type: !92)
!4729 = !DILocation(line: 550, column: 6, scope: !4714)
!4730 = !DILocation(line: 552, column: 19, scope: !4714)
!4731 = !DILocation(line: 552, column: 28, scope: !4714)
!4732 = !DILocation(line: 552, column: 11, scope: !4714)
!4733 = !DILocation(line: 552, column: 9, scope: !4714)
!4734 = !DILocation(line: 553, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 553, column: 6)
!4736 = !DILocation(line: 553, column: 6, scope: !4714)
!4737 = !DILocation(line: 554, column: 3, scope: !4735)
!4738 = !DILocation(line: 556, column: 14, scope: !4714)
!4739 = !DILocation(line: 556, column: 2, scope: !4714)
!4740 = !DILocation(line: 556, column: 12, scope: !4714)
!4741 = !DILocation(line: 557, column: 9, scope: !4714)
!4742 = !DILocation(line: 557, column: 16, scope: !4714)
!4743 = !DILocation(line: 557, column: 21, scope: !4714)
!4744 = !DILocation(line: 557, column: 27, scope: !4714)
!4745 = !DILocation(line: 557, column: 2, scope: !4714)
!4746 = !DILocation(line: 559, column: 17, scope: !4714)
!4747 = !DILocation(line: 559, column: 25, scope: !4714)
!4748 = !DILocation(line: 559, column: 2, scope: !4714)
!4749 = !DILocation(line: 559, column: 10, scope: !4714)
!4750 = !DILocation(line: 559, column: 15, scope: !4714)
!4751 = !DILocation(line: 560, column: 18, scope: !4714)
!4752 = !DILocation(line: 560, column: 26, scope: !4714)
!4753 = !DILocation(line: 560, column: 2, scope: !4714)
!4754 = !DILocation(line: 560, column: 10, scope: !4714)
!4755 = !DILocation(line: 560, column: 16, scope: !4714)
!4756 = !DILocation(line: 561, column: 16, scope: !4714)
!4757 = !DILocation(line: 561, column: 25, scope: !4714)
!4758 = !DILocation(line: 561, column: 2, scope: !4714)
!4759 = !DILocation(line: 561, column: 10, scope: !4714)
!4760 = !DILocation(line: 561, column: 14, scope: !4714)
!4761 = !DILocation(line: 562, column: 16, scope: !4714)
!4762 = !DILocation(line: 562, column: 2, scope: !4714)
!4763 = !DILocation(line: 562, column: 10, scope: !4714)
!4764 = !DILocation(line: 562, column: 14, scope: !4714)
!4765 = !DILocation(line: 564, column: 21, scope: !4714)
!4766 = !DILocation(line: 564, column: 29, scope: !4714)
!4767 = !DILocation(line: 564, column: 38, scope: !4714)
!4768 = !DILocation(line: 564, column: 8, scope: !4714)
!4769 = !DILocation(line: 564, column: 6, scope: !4714)
!4770 = !DILocation(line: 566, column: 8, scope: !4714)
!4771 = !DILocation(line: 566, column: 2, scope: !4714)
!4772 = !DILocation(line: 568, column: 6, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 568, column: 6)
!4774 = !DILocation(line: 568, column: 10, scope: !4773)
!4775 = !DILocation(line: 568, column: 6, scope: !4714)
!4776 = !DILocation(line: 569, column: 3, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 568, column: 15)
!4778 = !DILocation(line: 570, column: 10, scope: !4777)
!4779 = !DILocation(line: 570, column: 3, scope: !4777)
!4780 = !DILocation(line: 574, column: 10, scope: !4714)
!4781 = !DILocation(line: 574, column: 14, scope: !4714)
!4782 = !DILocation(line: 574, column: 9, scope: !4714)
!4783 = !DILocation(line: 574, column: 2, scope: !4714)
!4784 = !DILocation(line: 575, column: 1, scope: !4714)
!4785 = distinct !DISubprogram(name: "acpi_os_free", scope: !4786, file: !4786, line: 60, type: !1448, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !170)
!4786 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!4787 = !DILocalVariable(name: "memory", arg: 1, scope: !4785, file: !4786, line: 60, type: !86)
!4788 = !DILocation(line: 60, column: 39, scope: !4785)
!4789 = !DILocation(line: 62, column: 8, scope: !4785)
!4790 = !DILocation(line: 62, column: 2, scope: !4785)
!4791 = !DILocation(line: 63, column: 1, scope: !4785)
