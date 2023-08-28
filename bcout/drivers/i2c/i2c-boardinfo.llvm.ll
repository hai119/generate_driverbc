; ModuleID = '../bcout/drivers/i2c/i2c-boardinfo.llvm.bc'
source_filename = "drivers/i2c/i2c-boardinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wake_irq = type opaque
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.pgd_t = type { i64 }
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
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.i2c_devinfo = type { %struct.list_head, i32, %struct.i2c_board_info }

@__i2c_board_lock = dso_local global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @__i2c_board_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @__i2c_board_lock to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !0
@__i2c_board_list = dso_local global %struct.list_head { %struct.list_head* @__i2c_board_list, %struct.list_head* @__i2c_board_list }, align 8, !dbg !99
@__i2c_first_dynamic_bus_num = dso_local global i32 0, align 4, !dbg !101
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_register_board_info(i32 %busnum, %struct.i2c_board_info* %info, i32 %len) #0 !dbg !136 {
entry:
  %busnum.addr = alloca i32, align 4
  %info.addr = alloca %struct.i2c_board_info*, align 8
  %len.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %devinfo = alloca %struct.i2c_devinfo*, align 8
  %tmp = alloca i32, align 4
  store i32 %busnum, i32* %busnum.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %busnum.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  store %struct.i2c_board_info* %info, %struct.i2c_board_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2229, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @down_write(%struct.rw_semaphore* @__i2c_board_lock) #7, !dbg !2233
  %0 = load i32, i32* %busnum.addr, align 4, !dbg !2234
  %1 = load i32, i32* @__i2c_first_dynamic_bus_num, align 4, !dbg !2236
  %cmp = icmp sge i32 %0, %1, !dbg !2237
  br i1 %cmp, label %if.then, label %if.end, !dbg !2238

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %busnum.addr, align 4, !dbg !2239
  %add = add i32 %2, 1, !dbg !2240
  store i32 %add, i32* @__i2c_first_dynamic_bus_num, align 4, !dbg !2241
  br label %if.end, !dbg !2242

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %status, align 4, !dbg !2243
  br label %for.cond, !dbg !2245

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %len.addr, align 4, !dbg !2246
  %tobool = icmp ne i32 %3, 0, !dbg !2248
  br i1 %tobool, label %for.body, label %for.end, !dbg !2248

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.i2c_devinfo** %devinfo, metadata !2249, metadata !DIExpression()), !dbg !2258
  %call = call i8* @kzalloc(i64 104, i32 3264) #7, !dbg !2259
  %4 = bitcast i8* %call to %struct.i2c_devinfo*, !dbg !2259
  store %struct.i2c_devinfo* %4, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2260
  %5 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2261
  %tobool1 = icmp ne %struct.i2c_devinfo* %5, null, !dbg !2261
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2263

if.then2:                                         ; preds = %for.body
  store i32 0, i32* %tmp, align 4, !dbg !2264
  %6 = load i32, i32* %tmp, align 4, !dbg !2268
  store i32 -12, i32* %status, align 4, !dbg !2269
  br label %for.end, !dbg !2270

if.end3:                                          ; preds = %for.body
  %7 = load i32, i32* %busnum.addr, align 4, !dbg !2271
  %8 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2272
  %busnum4 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %8, i32 0, i32 1, !dbg !2273
  store i32 %7, i32* %busnum4, align 8, !dbg !2274
  %9 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2275
  %board_info = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %9, i32 0, i32 2, !dbg !2276
  %10 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2277
  %11 = bitcast %struct.i2c_board_info* %board_info to i8*, !dbg !2278
  %12 = bitcast %struct.i2c_board_info* %10 to i8*, !dbg !2278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 80, i1 false), !dbg !2278
  %13 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2279
  %properties = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 7, !dbg !2281
  %14 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !2281
  %tobool5 = icmp ne %struct.property_entry* %14, null, !dbg !2279
  br i1 %tobool5, label %if.then6, label %if.end19, !dbg !2282

if.then6:                                         ; preds = %if.end3
  %15 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2283
  %properties7 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 7, !dbg !2285
  %16 = load %struct.property_entry*, %struct.property_entry** %properties7, align 8, !dbg !2285
  %call8 = call %struct.property_entry* @property_entries_dup(%struct.property_entry* %16) #7, !dbg !2286
  %17 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2287
  %board_info9 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %17, i32 0, i32 2, !dbg !2288
  %properties10 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info9, i32 0, i32 7, !dbg !2289
  store %struct.property_entry* %call8, %struct.property_entry** %properties10, align 8, !dbg !2290
  %18 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2291
  %board_info11 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %18, i32 0, i32 2, !dbg !2293
  %properties12 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info11, i32 0, i32 7, !dbg !2294
  %19 = load %struct.property_entry*, %struct.property_entry** %properties12, align 8, !dbg !2294
  %20 = bitcast %struct.property_entry* %19 to i8*, !dbg !2291
  %call13 = call zeroext i1 @IS_ERR(i8* %20) #7, !dbg !2295
  br i1 %call13, label %if.then14, label %if.end18, !dbg !2296

if.then14:                                        ; preds = %if.then6
  %21 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2297
  %board_info15 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %21, i32 0, i32 2, !dbg !2299
  %properties16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info15, i32 0, i32 7, !dbg !2300
  %22 = load %struct.property_entry*, %struct.property_entry** %properties16, align 8, !dbg !2300
  %23 = bitcast %struct.property_entry* %22 to i8*, !dbg !2297
  %call17 = call i64 @PTR_ERR(i8* %23) #7, !dbg !2301
  %conv = trunc i64 %call17 to i32, !dbg !2301
  store i32 %conv, i32* %status, align 4, !dbg !2302
  %24 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2303
  %25 = bitcast %struct.i2c_devinfo* %24 to i8*, !dbg !2303
  call void @kfree(i8* %25) #7, !dbg !2304
  br label %for.end, !dbg !2305

if.end18:                                         ; preds = %if.then6
  br label %if.end19, !dbg !2306

if.end19:                                         ; preds = %if.end18, %if.end3
  %26 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2307
  %resources = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %26, i32 0, i32 8, !dbg !2309
  %27 = load %struct.resource*, %struct.resource** %resources, align 8, !dbg !2309
  %tobool20 = icmp ne %struct.resource* %27, null, !dbg !2307
  br i1 %tobool20, label %if.then21, label %if.end32, !dbg !2310

if.then21:                                        ; preds = %if.end19
  %28 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2311
  %resources22 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %28, i32 0, i32 8, !dbg !2313
  %29 = load %struct.resource*, %struct.resource** %resources22, align 8, !dbg !2313
  %30 = bitcast %struct.resource* %29 to i8*, !dbg !2311
  %31 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2314
  %num_resources = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %31, i32 0, i32 9, !dbg !2315
  %32 = load i32, i32* %num_resources, align 8, !dbg !2315
  %conv23 = zext i32 %32 to i64, !dbg !2314
  %mul = mul i64 %conv23, 64, !dbg !2316
  %call24 = call i8* @kmemdup(i8* %30, i64 %mul, i32 3264) #7, !dbg !2317
  %33 = bitcast i8* %call24 to %struct.resource*, !dbg !2317
  %34 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2318
  %board_info25 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %34, i32 0, i32 2, !dbg !2319
  %resources26 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info25, i32 0, i32 8, !dbg !2320
  store %struct.resource* %33, %struct.resource** %resources26, align 8, !dbg !2321
  %35 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2322
  %board_info27 = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %35, i32 0, i32 2, !dbg !2324
  %resources28 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info27, i32 0, i32 8, !dbg !2325
  %36 = load %struct.resource*, %struct.resource** %resources28, align 8, !dbg !2325
  %tobool29 = icmp ne %struct.resource* %36, null, !dbg !2322
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !2326

if.then30:                                        ; preds = %if.then21
  store i32 -12, i32* %status, align 4, !dbg !2327
  %37 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2329
  %38 = bitcast %struct.i2c_devinfo* %37 to i8*, !dbg !2329
  call void @kfree(i8* %38) #7, !dbg !2330
  br label %for.end, !dbg !2331

if.end31:                                         ; preds = %if.then21
  br label %if.end32, !dbg !2332

if.end32:                                         ; preds = %if.end31, %if.end19
  %39 = load %struct.i2c_devinfo*, %struct.i2c_devinfo** %devinfo, align 8, !dbg !2333
  %list = getelementptr inbounds %struct.i2c_devinfo, %struct.i2c_devinfo* %39, i32 0, i32 0, !dbg !2334
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @__i2c_board_list) #7, !dbg !2335
  br label %for.inc, !dbg !2336

for.inc:                                          ; preds = %if.end32
  %40 = load i32, i32* %len.addr, align 4, !dbg !2337
  %dec = add i32 %40, -1, !dbg !2337
  store i32 %dec, i32* %len.addr, align 4, !dbg !2337
  %41 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2338
  %incdec.ptr = getelementptr %struct.i2c_board_info, %struct.i2c_board_info* %41, i32 1, !dbg !2338
  store %struct.i2c_board_info* %incdec.ptr, %struct.i2c_board_info** %info.addr, align 8, !dbg !2338
  br label %for.cond, !dbg !2339, !llvm.loop !2340

for.end:                                          ; preds = %if.then30, %if.then14, %if.then2, %for.cond
  call void @up_write(%struct.rw_semaphore* @__i2c_board_lock) #7, !dbg !2342
  %42 = load i32, i32* %status, align 4, !dbg !2343
  ret i32 %42, !dbg !2344
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2345 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2348, metadata !DIExpression()), !dbg !2352
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2358, metadata !DIExpression()), !dbg !2359
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2360, metadata !DIExpression()), !dbg !2361
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2362, metadata !DIExpression()), !dbg !2363
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2364, metadata !DIExpression()), !dbg !2368
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2370, metadata !DIExpression()), !dbg !2374
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2376, metadata !DIExpression()), !dbg !2380
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2385, metadata !DIExpression()), !dbg !2386
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2387, metadata !DIExpression()), !dbg !2388
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2389, metadata !DIExpression()), !dbg !2390
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2391, metadata !DIExpression()), !dbg !2392
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2393, metadata !DIExpression()), !dbg !2394
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2395, metadata !DIExpression()), !dbg !2396
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2397, metadata !DIExpression()), !dbg !2398
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2399, metadata !DIExpression()), !dbg !2400
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load i64, i64* %size.addr, align 8, !dbg !2405
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2406
  %or = or i32 %1, 256, !dbg !2407
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2408
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2409
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2410

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2411
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2412
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2413

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2414
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2415
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2416
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2417
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2394
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2418
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2419
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2420
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2421
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2422
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2423
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2424
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2424
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2424
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2424
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2424
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2425
  br label %kmalloc.exit, !dbg !2425

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2426
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2427
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2427
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2429

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2430
  br label %kmalloc_index.exit.i, !dbg !2430

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2431
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2433
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2434

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2435
  br label %kmalloc_index.exit.i, !dbg !2435

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2436
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2438
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2439

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2440
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2441
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2442

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2443
  br label %kmalloc_index.exit.i, !dbg !2443

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2444
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2446
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2447

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2448
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2449
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2450

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2451
  br label %kmalloc_index.exit.i, !dbg !2451

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2452
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2454
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2455

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2456
  br label %kmalloc_index.exit.i, !dbg !2456

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2457
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2459
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2460

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2461
  br label %kmalloc_index.exit.i, !dbg !2461

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2462
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2464
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2465

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2466
  br label %kmalloc_index.exit.i, !dbg !2466

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2467
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2469
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2470

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2471
  br label %kmalloc_index.exit.i, !dbg !2471

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2472
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2474
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2475

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2476
  br label %kmalloc_index.exit.i, !dbg !2476

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2477
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2479
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2480

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2481
  br label %kmalloc_index.exit.i, !dbg !2481

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2482
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2484
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2485

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2486
  br label %kmalloc_index.exit.i, !dbg !2486

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2487
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2489
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2490

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2491
  br label %kmalloc_index.exit.i, !dbg !2491

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2492
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2494
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2495

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2496
  br label %kmalloc_index.exit.i, !dbg !2496

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2497
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2499
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2500

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2501
  br label %kmalloc_index.exit.i, !dbg !2501

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2502
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2504
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2505

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2506
  br label %kmalloc_index.exit.i, !dbg !2506

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2507
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2509
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2510

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2511
  br label %kmalloc_index.exit.i, !dbg !2511

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2512
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2514
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2515

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2516
  br label %kmalloc_index.exit.i, !dbg !2516

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2517
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2519
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2520

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2521
  br label %kmalloc_index.exit.i, !dbg !2521

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2522
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2524
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2525

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2526
  br label %kmalloc_index.exit.i, !dbg !2526

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2527
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2529
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2530

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2531
  br label %kmalloc_index.exit.i, !dbg !2531

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2532
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2534
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2535

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2536
  br label %kmalloc_index.exit.i, !dbg !2536

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2537
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2539
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2540

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2541
  br label %kmalloc_index.exit.i, !dbg !2541

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2542
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2544
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2545

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2546
  br label %kmalloc_index.exit.i, !dbg !2546

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2547
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2549
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2550

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2551
  br label %kmalloc_index.exit.i, !dbg !2551

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2552
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2554
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2555

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2556
  br label %kmalloc_index.exit.i, !dbg !2556

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2557
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2559
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2560

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2561
  br label %kmalloc_index.exit.i, !dbg !2561

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2562
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2564
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2565

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2566
  br label %kmalloc_index.exit.i, !dbg !2566

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2567
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2569
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2570

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2571
  br label %kmalloc_index.exit.i, !dbg !2571

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2572, !srcloc !2575
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !2576, !srcloc !2579
  unreachable, !dbg !2580

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2581
  store i32 %45, i32* %index.i, align 4, !dbg !2582
  %46 = load i32, i32* %index.i, align 4, !dbg !2583
  %tobool.i = icmp ne i32 %46, 0, !dbg !2583
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2585

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2586
  br label %kmalloc.exit, !dbg !2586

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2587
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2588
  %and.i.i = and i32 %48, 17, !dbg !2588
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2588
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2588
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2588
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2588
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2590

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2591
  br label %kmalloc_type.exit.i, !dbg !2591

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2592
  %and2.i.i = and i32 %49, 1, !dbg !2593
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2592
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2592
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2592
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2594
  br label %kmalloc_type.exit.i, !dbg !2594

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2595
  %idxprom.i = zext i32 %51 to i64, !dbg !2596
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2596
  %52 = load i32, i32* %index.i, align 4, !dbg !2597
  %idxprom6.i = zext i32 %52 to i64, !dbg !2596
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2596
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2596
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2598
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2599
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2600
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2601
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2602
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2602
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2602
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2602
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2602
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2363
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2603
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2604
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2605
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2606
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2607
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2608
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2609
  store i8* %62, i8** %retval.i, align 8, !dbg !2610
  br label %kmalloc.exit, !dbg !2610

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2611
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2612
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2613
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2613
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2613
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2613
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2613
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2614
  br label %kmalloc.exit, !dbg !2614

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2615
  ret i8* %65, !dbg !2616
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local %struct.property_entry* @property_entries_dup(%struct.property_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2617 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2623
  %1 = ptrtoint i8* %0 to i64, !dbg !2623
  %2 = inttoptr i64 %1 to i8*, !dbg !2623
  %3 = ptrtoint i8* %2 to i64, !dbg !2623
  %cmp = icmp uge i64 %3, -4095, !dbg !2623
  %lnot = xor i1 %cmp, true, !dbg !2623
  %lnot1 = xor i1 %lnot, true, !dbg !2623
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2623
  %conv = sext i32 %lnot.ext to i64, !dbg !2623
  %tobool = icmp ne i64 %conv, 0, !dbg !2623
  ret i1 %tobool, !dbg !2624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2625 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2628, metadata !DIExpression()), !dbg !2629
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2630
  %1 = ptrtoint i8* %0 to i64, !dbg !2631
  ret i64 %1, !dbg !2632
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2633 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2637, metadata !DIExpression()), !dbg !2638
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2641
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2642
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2643
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2643
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2644
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2647 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2651, metadata !DIExpression()), !dbg !2656
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2658, metadata !DIExpression()), !dbg !2659
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2660, metadata !DIExpression()), !dbg !2661
  %0 = load i64, i64* %size.addr, align 8, !dbg !2662
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2664
  br i1 %1, label %if.then, label %if.end447, !dbg !2665

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2666
  %tobool = icmp ne i64 %2, 0, !dbg !2666
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2669

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2670
  br label %return, !dbg !2670

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2671
  %cmp = icmp ult i64 %3, 4096, !dbg !2673
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2674

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub = sub i64 %4, 1, !dbg !2676
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2676
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2676

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub4 = sub i64 %6, 1, !dbg !2676
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2676
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2676

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub6 = sub i64 %8, 1, !dbg !2676
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2676
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2676

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2676

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub9 = sub i64 %9, 1, !dbg !2676
  %and = and i64 %sub9, -9223372036854775808, !dbg !2676
  %tobool10 = icmp ne i64 %and, 0, !dbg !2676
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2676

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2676

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub13 = sub i64 %10, 1, !dbg !2676
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2676
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2676
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2676

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2676

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub18 = sub i64 %11, 1, !dbg !2676
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2676
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2676
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2676

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2676

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub23 = sub i64 %12, 1, !dbg !2676
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2676
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2676
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2676

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2676

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub28 = sub i64 %13, 1, !dbg !2676
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2676
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2676
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2676

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2676

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub33 = sub i64 %14, 1, !dbg !2676
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2676
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2676
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2676

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2676

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub38 = sub i64 %15, 1, !dbg !2676
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2676
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2676
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2676

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2676

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub43 = sub i64 %16, 1, !dbg !2676
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2676
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2676
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2676

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2676

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub48 = sub i64 %17, 1, !dbg !2676
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2676
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2676
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2676

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2676

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub53 = sub i64 %18, 1, !dbg !2676
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2676
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2676
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2676

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2676

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub58 = sub i64 %19, 1, !dbg !2676
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2676
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2676
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2676

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2676

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub63 = sub i64 %20, 1, !dbg !2676
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2676
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2676
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2676

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2676

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub68 = sub i64 %21, 1, !dbg !2676
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2676
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2676
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2676

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2676

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub73 = sub i64 %22, 1, !dbg !2676
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2676
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2676
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2676

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2676

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub78 = sub i64 %23, 1, !dbg !2676
  %and79 = and i64 %sub78, 562949953421312, !dbg !2676
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2676
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2676

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2676

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub83 = sub i64 %24, 1, !dbg !2676
  %and84 = and i64 %sub83, 281474976710656, !dbg !2676
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2676
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2676

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2676

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub88 = sub i64 %25, 1, !dbg !2676
  %and89 = and i64 %sub88, 140737488355328, !dbg !2676
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2676
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2676

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2676

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub93 = sub i64 %26, 1, !dbg !2676
  %and94 = and i64 %sub93, 70368744177664, !dbg !2676
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2676
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2676

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2676

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub98 = sub i64 %27, 1, !dbg !2676
  %and99 = and i64 %sub98, 35184372088832, !dbg !2676
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2676
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2676

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2676

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub103 = sub i64 %28, 1, !dbg !2676
  %and104 = and i64 %sub103, 17592186044416, !dbg !2676
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2676
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2676

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2676

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub108 = sub i64 %29, 1, !dbg !2676
  %and109 = and i64 %sub108, 8796093022208, !dbg !2676
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2676
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2676

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2676

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub113 = sub i64 %30, 1, !dbg !2676
  %and114 = and i64 %sub113, 4398046511104, !dbg !2676
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2676
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2676

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2676

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub118 = sub i64 %31, 1, !dbg !2676
  %and119 = and i64 %sub118, 2199023255552, !dbg !2676
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2676
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2676

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2676

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub123 = sub i64 %32, 1, !dbg !2676
  %and124 = and i64 %sub123, 1099511627776, !dbg !2676
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2676
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2676

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2676

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub128 = sub i64 %33, 1, !dbg !2676
  %and129 = and i64 %sub128, 549755813888, !dbg !2676
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2676
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2676

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2676

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub133 = sub i64 %34, 1, !dbg !2676
  %and134 = and i64 %sub133, 274877906944, !dbg !2676
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2676
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2676

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2676

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub138 = sub i64 %35, 1, !dbg !2676
  %and139 = and i64 %sub138, 137438953472, !dbg !2676
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2676
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2676

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2676

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub143 = sub i64 %36, 1, !dbg !2676
  %and144 = and i64 %sub143, 68719476736, !dbg !2676
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2676
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2676

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2676

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub148 = sub i64 %37, 1, !dbg !2676
  %and149 = and i64 %sub148, 34359738368, !dbg !2676
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2676
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2676

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2676

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub153 = sub i64 %38, 1, !dbg !2676
  %and154 = and i64 %sub153, 17179869184, !dbg !2676
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2676
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2676

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2676

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub158 = sub i64 %39, 1, !dbg !2676
  %and159 = and i64 %sub158, 8589934592, !dbg !2676
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2676
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2676

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2676

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub163 = sub i64 %40, 1, !dbg !2676
  %and164 = and i64 %sub163, 4294967296, !dbg !2676
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2676
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2676

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2676

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub168 = sub i64 %41, 1, !dbg !2676
  %and169 = and i64 %sub168, 2147483648, !dbg !2676
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2676
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2676

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2676

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub173 = sub i64 %42, 1, !dbg !2676
  %and174 = and i64 %sub173, 1073741824, !dbg !2676
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2676
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2676

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2676

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub178 = sub i64 %43, 1, !dbg !2676
  %and179 = and i64 %sub178, 536870912, !dbg !2676
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2676
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2676

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2676

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub183 = sub i64 %44, 1, !dbg !2676
  %and184 = and i64 %sub183, 268435456, !dbg !2676
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2676
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2676

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2676

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub188 = sub i64 %45, 1, !dbg !2676
  %and189 = and i64 %sub188, 134217728, !dbg !2676
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2676
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2676

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2676

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub193 = sub i64 %46, 1, !dbg !2676
  %and194 = and i64 %sub193, 67108864, !dbg !2676
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2676
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2676

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2676

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub198 = sub i64 %47, 1, !dbg !2676
  %and199 = and i64 %sub198, 33554432, !dbg !2676
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2676
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2676

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2676

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub203 = sub i64 %48, 1, !dbg !2676
  %and204 = and i64 %sub203, 16777216, !dbg !2676
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2676
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2676

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2676

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub208 = sub i64 %49, 1, !dbg !2676
  %and209 = and i64 %sub208, 8388608, !dbg !2676
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2676
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2676

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2676

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub213 = sub i64 %50, 1, !dbg !2676
  %and214 = and i64 %sub213, 4194304, !dbg !2676
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2676
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2676

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2676

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub218 = sub i64 %51, 1, !dbg !2676
  %and219 = and i64 %sub218, 2097152, !dbg !2676
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2676
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2676

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2676

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub223 = sub i64 %52, 1, !dbg !2676
  %and224 = and i64 %sub223, 1048576, !dbg !2676
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2676
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2676

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2676

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub228 = sub i64 %53, 1, !dbg !2676
  %and229 = and i64 %sub228, 524288, !dbg !2676
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2676
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2676

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2676

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub233 = sub i64 %54, 1, !dbg !2676
  %and234 = and i64 %sub233, 262144, !dbg !2676
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2676
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2676

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2676

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub238 = sub i64 %55, 1, !dbg !2676
  %and239 = and i64 %sub238, 131072, !dbg !2676
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2676
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2676

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2676

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub243 = sub i64 %56, 1, !dbg !2676
  %and244 = and i64 %sub243, 65536, !dbg !2676
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2676
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2676

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2676

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub248 = sub i64 %57, 1, !dbg !2676
  %and249 = and i64 %sub248, 32768, !dbg !2676
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2676
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2676

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2676

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub253 = sub i64 %58, 1, !dbg !2676
  %and254 = and i64 %sub253, 16384, !dbg !2676
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2676
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2676

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2676

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub258 = sub i64 %59, 1, !dbg !2676
  %and259 = and i64 %sub258, 8192, !dbg !2676
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2676
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2676

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2676

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub263 = sub i64 %60, 1, !dbg !2676
  %and264 = and i64 %sub263, 4096, !dbg !2676
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2676
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2676

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2676

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub268 = sub i64 %61, 1, !dbg !2676
  %and269 = and i64 %sub268, 2048, !dbg !2676
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2676
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2676

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2676

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub273 = sub i64 %62, 1, !dbg !2676
  %and274 = and i64 %sub273, 1024, !dbg !2676
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2676
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2676

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2676

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub278 = sub i64 %63, 1, !dbg !2676
  %and279 = and i64 %sub278, 512, !dbg !2676
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2676
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2676

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2676

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub283 = sub i64 %64, 1, !dbg !2676
  %and284 = and i64 %sub283, 256, !dbg !2676
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2676
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2676

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2676

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub288 = sub i64 %65, 1, !dbg !2676
  %and289 = and i64 %sub288, 128, !dbg !2676
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2676
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2676

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2676

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub293 = sub i64 %66, 1, !dbg !2676
  %and294 = and i64 %sub293, 64, !dbg !2676
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2676
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2676

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2676

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub298 = sub i64 %67, 1, !dbg !2676
  %and299 = and i64 %sub298, 32, !dbg !2676
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2676
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2676

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2676

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub303 = sub i64 %68, 1, !dbg !2676
  %and304 = and i64 %sub303, 16, !dbg !2676
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2676
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2676

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2676

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub308 = sub i64 %69, 1, !dbg !2676
  %and309 = and i64 %sub308, 8, !dbg !2676
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2676
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2676

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2676

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub313 = sub i64 %70, 1, !dbg !2676
  %and314 = and i64 %sub313, 4, !dbg !2676
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2676
  %71 = zext i1 %tobool315 to i64, !dbg !2676
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2676
  br label %cond.end, !dbg !2676

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2676
  br label %cond.end317, !dbg !2676

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2676
  br label %cond.end319, !dbg !2676

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2676
  br label %cond.end321, !dbg !2676

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2676
  br label %cond.end323, !dbg !2676

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2676
  br label %cond.end325, !dbg !2676

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2676
  br label %cond.end327, !dbg !2676

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2676
  br label %cond.end329, !dbg !2676

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2676
  br label %cond.end331, !dbg !2676

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2676
  br label %cond.end333, !dbg !2676

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2676
  br label %cond.end335, !dbg !2676

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2676
  br label %cond.end337, !dbg !2676

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2676
  br label %cond.end339, !dbg !2676

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2676
  br label %cond.end341, !dbg !2676

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2676
  br label %cond.end343, !dbg !2676

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2676
  br label %cond.end345, !dbg !2676

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2676
  br label %cond.end347, !dbg !2676

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2676
  br label %cond.end349, !dbg !2676

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2676
  br label %cond.end351, !dbg !2676

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2676
  br label %cond.end353, !dbg !2676

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2676
  br label %cond.end355, !dbg !2676

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2676
  br label %cond.end357, !dbg !2676

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2676
  br label %cond.end359, !dbg !2676

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2676
  br label %cond.end361, !dbg !2676

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2676
  br label %cond.end363, !dbg !2676

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2676
  br label %cond.end365, !dbg !2676

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2676
  br label %cond.end367, !dbg !2676

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2676
  br label %cond.end369, !dbg !2676

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2676
  br label %cond.end371, !dbg !2676

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2676
  br label %cond.end373, !dbg !2676

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2676
  br label %cond.end375, !dbg !2676

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2676
  br label %cond.end377, !dbg !2676

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2676
  br label %cond.end379, !dbg !2676

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2676
  br label %cond.end381, !dbg !2676

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2676
  br label %cond.end383, !dbg !2676

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2676
  br label %cond.end385, !dbg !2676

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2676
  br label %cond.end387, !dbg !2676

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2676
  br label %cond.end389, !dbg !2676

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2676
  br label %cond.end391, !dbg !2676

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2676
  br label %cond.end393, !dbg !2676

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2676
  br label %cond.end395, !dbg !2676

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2676
  br label %cond.end397, !dbg !2676

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2676
  br label %cond.end399, !dbg !2676

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2676
  br label %cond.end401, !dbg !2676

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2676
  br label %cond.end403, !dbg !2676

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2676
  br label %cond.end405, !dbg !2676

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2676
  br label %cond.end407, !dbg !2676

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2676
  br label %cond.end409, !dbg !2676

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2676
  br label %cond.end411, !dbg !2676

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2676
  br label %cond.end413, !dbg !2676

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2676
  br label %cond.end415, !dbg !2676

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2676
  br label %cond.end417, !dbg !2676

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2676
  br label %cond.end419, !dbg !2676

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2676
  br label %cond.end421, !dbg !2676

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2676
  br label %cond.end423, !dbg !2676

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2676
  br label %cond.end425, !dbg !2676

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2676
  br label %cond.end427, !dbg !2676

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2676
  br label %cond.end429, !dbg !2676

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2676
  br label %cond.end431, !dbg !2676

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2676
  br label %cond.end433, !dbg !2676

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2676
  br label %cond.end435, !dbg !2676

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2676
  br label %cond.end437, !dbg !2676

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2676
  br label %cond.end440, !dbg !2676

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2676

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2676
  br label %cond.end444, !dbg !2676

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2676
  %sub443 = sub i64 %72, 1, !dbg !2676
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2676
  br label %cond.end444, !dbg !2676

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2676
  %sub446 = sub i32 %cond445, 12, !dbg !2677
  %add = add i32 %sub446, 1, !dbg !2678
  store i32 %add, i32* %retval, align 4, !dbg !2679
  br label %return, !dbg !2679

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2680
  %dec = add i64 %73, -1, !dbg !2680
  store i64 %dec, i64* %size.addr, align 8, !dbg !2680
  %74 = load i64, i64* %size.addr, align 8, !dbg !2681
  %shr = lshr i64 %74, 12, !dbg !2681
  store i64 %shr, i64* %size.addr, align 8, !dbg !2681
  %75 = load i64, i64* %size.addr, align 8, !dbg !2682
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2659
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2683
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2684
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !2683, !srcloc !2685
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2683
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2686
  %add.i = add i32 %79, 1, !dbg !2687
  store i32 %add.i, i32* %retval, align 4, !dbg !2688
  br label %return, !dbg !2688

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2689
  ret i32 %80, !dbg !2689
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2690 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2651, metadata !DIExpression()), !dbg !2694
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2658, metadata !DIExpression()), !dbg !2696
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2697, metadata !DIExpression()), !dbg !2698
  %0 = load i64, i64* %n.addr, align 8, !dbg !2699
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2696
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2700
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2701
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !2700, !srcloc !2685
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2700
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2702
  %add.i = add i32 %4, 1, !dbg !2703
  %sub = sub i32 %add.i, 1, !dbg !2704
  ret i32 %sub, !dbg !2705
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2706 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2714, metadata !DIExpression()), !dbg !2715
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2716, metadata !DIExpression()), !dbg !2717
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2718
  ret i8* %0, !dbg !2719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2720 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2723, metadata !DIExpression()), !dbg !2724
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2729
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2731
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2732
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !2733
  br i1 %call, label %if.end, label %if.then, !dbg !2734

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2735

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2736
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2737
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !2738
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !2739
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2740
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2741
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !2742
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !2743
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2744
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2745
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !2746
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !2747
  br label %do.body, !dbg !2748

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2749

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2751

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2749

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2753
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2753
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !2753
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !2753
  br label %do.end7, !dbg !2753

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2749

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2756 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  ret i1 true, !dbg !2765
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__i2c_board_lock", scope: !2, file: !3, line: 19, type: !104, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, globals: !98, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/i2c-boardinfo.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !73, !80}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !65, line: 19, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72}
!67 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !74, line: 305, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!85 = !{!86, !88, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !87, line: 148, baseType: !7)
!87 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !87, line: 178, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !87, line: 179, baseType: !93, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !87, line: 179, baseType: !93, size: 64, offset: 64)
!98 = !{!0, !99, !101}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__i2c_board_list", scope: !2, file: !3, line: 22, type: !94, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__i2c_first_dynamic_bus_num", scope: !2, file: !3, line: 25, type: !103, isLocal: false, isDefinition: true)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !105, line: 35, size: 256, elements: !106)
!105 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !119, !120, !130}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !105, line: 36, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !109, line: 13, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !87, line: 175, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 173, size: 64, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !111, file: !87, line: 174, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !115, line: 22, baseType: !116)
!115 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !117, line: 30, baseType: !118)
!117 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !104, file: !105, line: 42, baseType: !108, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !104, file: !105, line: 46, baseType: !121, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !122, line: 29, baseType: !123)
!122 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !122, line: 20, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !123, file: !122, line: 21, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !127, line: 25, baseType: !128)
!127 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 25, elements: !129)
!129 = !{}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !104, file: !105, line: 47, baseType: !94, size: 128, offset: 128)
!131 = !{i32 7, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"Code Model", i32 2}
!135 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!136 = distinct !DISubprogram(name: "i2c_register_board_info", scope: !3, file: !3, line: 52, type: !137, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !129)
!137 = !DISubroutineType(types: !138)
!138 = !{!103, !103, !139, !7}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !142, line: 410, size: 640, elements: !143)
!142 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !149, !151, !152, !155, !156, !2180, !2181, !2207, !2223, !2224}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !142, line: 411, baseType: !145, size: 160)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !147)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !{!148}
!148 = !DISubrange(count: 20)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !142, line: 412, baseType: !150, size: 16, offset: 160)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !141, file: !142, line: 413, baseType: !150, size: 16, offset: 176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !141, file: !142, line: 414, baseType: !153, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !141, file: !142, line: 415, baseType: !88, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !141, file: !142, line: 416, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !159, line: 51, size: 1344, elements: !160)
!159 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !166, !167, !2164, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !159, line: 52, baseType: !153, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !158, file: !159, line: 53, baseType: !163, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !159, line: 28, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !115, line: 21, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !117, line: 27, baseType: !7)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !158, file: !159, line: 54, baseType: !153, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !158, file: !159, line: 55, baseType: !168, size: 192, offset: 192)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !169, line: 17, size: 192, elements: !170)
!169 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !173, !2163}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !168, file: !169, line: 18, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !168, file: !169, line: 19, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !169, line: 110, size: 1152, elements: !177)
!177 = !{!178, !182, !186, !194, !2105, !2109, !2113, !2118, !2122, !2123, !2127, !2131, !2135, !2146, !2147, !2148, !2149, !2159}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !176, file: !169, line: 111, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!172, !172}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !176, file: !169, line: 112, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !172}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !176, file: !169, line: 113, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !192}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !87, line: 30, baseType: !191)
!191 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !176, file: !169, line: 114, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !192, !200}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !203)
!203 = !{!204, !1663, !1665, !1668, !1669, !1720, !1817, !1818, !1819, !1820, !1821, !1830, !1935, !1948, !2030, !2031, !2035, !2037, !2038, !2039, !2043, !2049, !2050, !2053, !2054, !2055, !2058, !2059, !2060, !2061, !2093, !2094, !2095, !2098, !2101, !2102, !2103, !2104}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !202, file: !30, line: 462, baseType: !205, size: 512)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !206, line: 64, size: 512, elements: !207)
!206 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !209, !210, !212, !264, !1500, !1653, !1658, !1659, !1660, !1661, !1662}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !206, line: 65, baseType: !153, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !205, file: !206, line: 66, baseType: !94, size: 128, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !206, line: 67, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !205, file: !206, line: 68, baseType: !213, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !206, line: 192, size: 704, elements: !215)
!215 = !{!216, !217, !225, !226}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !214, file: !206, line: 193, baseType: !94, size: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !214, file: !206, line: 194, baseType: !218, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !122, line: 83, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !122, line: 71, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !122, line: 72, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !122, line: 72, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !222, file: !122, line: 73, baseType: !123)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !214, file: !206, line: 195, baseType: !205, size: 512, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !214, file: !206, line: 196, baseType: !227, size: 64, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !206, line: 156, size: 192, elements: !230)
!230 = !{!231, !236, !241}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !229, file: !206, line: 157, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!103, !213, !211}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !206, line: 158, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!153, !213, !211}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !229, file: !206, line: 159, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!103, !213, !211, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !206, line: 148, size: 20736, elements: !248)
!248 = !{!249, !254, !258, !259, !263}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !247, file: !206, line: 149, baseType: !250, size: 192)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 192, elements: !252)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!252 = !{!253}
!253 = !DISubrange(count: 3)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !247, file: !206, line: 150, baseType: !255, size: 4096, offset: 192)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 4096, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !247, file: !206, line: 151, baseType: !103, size: 32, offset: 4288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !247, file: !206, line: 152, baseType: !260, size: 16384, offset: 4320)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 2048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !247, file: !206, line: 153, baseType: !103, size: 32, offset: 20704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !205, file: !206, line: 69, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !206, line: 138, size: 448, elements: !267)
!267 = !{!268, !272, !299, !301, !1447, !1478, !1482}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !266, file: !206, line: 139, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !211}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !266, file: !206, line: 140, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !276, line: 230, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !275, file: !276, line: 231, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !211, !286, !251}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !87, line: 60, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !284, line: 73, baseType: !285)
!284 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !284, line: 15, baseType: !90)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !276, line: 30, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !276, line: 31, baseType: !153, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !276, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !87, line: 19, baseType: !150)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !275, file: !276, line: 232, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!282, !211, !286, !153, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 55, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !284, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !284, line: 16, baseType: !89)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !266, file: !206, line: 141, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !266, file: !206, line: 142, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !276, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !1444, !1445}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !276, line: 85, baseType: !153, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !276, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!291, !211, !286, !103}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !276, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!291, !211, !316, !103}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !276, line: 168, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !331, !332}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !276, line: 169, baseType: !287, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !276, line: 170, baseType: !296, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !276, line: 171, baseType: !88, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !276, line: 172, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!282, !326, !211, !316, !251, !329, !296}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !328, line: 526, flags: DIFlagFwdDecl)
!328 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !87, line: 46, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !284, line: 88, baseType: !118)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !276, line: 174, baseType: !323, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !276, line: 176, baseType: !333, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!103, !326, !211, !316, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !338, line: 305, size: 1472, elements: !339)
!338 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340, !341, !342, !343, !344, !352, !353, !1418, !1424, !1425, !1430, !1431, !1434, !1438, !1439, !1440, !1441, !1442}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !337, file: !338, line: 308, baseType: !89, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !337, file: !338, line: 309, baseType: !89, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !337, file: !338, line: 313, baseType: !336, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !337, file: !338, line: 313, baseType: !336, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !337, file: !338, line: 315, baseType: !345, size: 192, align: 64, offset: 256)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !346, line: 24, size: 192, align: 64, elements: !347)
!346 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !349, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !345, file: !346, line: 25, baseType: !89, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !345, file: !346, line: 26, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !345, file: !346, line: 27, baseType: !350, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !337, file: !338, line: 323, baseType: !89, size: 64, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !337, file: !338, line: 327, baseType: !354, size: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !338, line: 388, size: 7296, elements: !356)
!356 = !{!357, !1414}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !338, line: 389, baseType: !358, size: 7296)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !338, line: 389, size: 7296, elements: !359)
!359 = !{!360, !361, !365, !369, !373, !374, !375, !376, !377, !385, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !423, !431, !434, !482, !483, !1385, !1386, !1389, !1392, !1393, !1396, !1397, !1398, !1401, !1413}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !358, file: !338, line: 390, baseType: !336, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !358, file: !338, line: 391, baseType: !362, size: 64, offset: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !346, line: 31, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !362, file: !346, line: 32, baseType: !350, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !358, file: !338, line: 392, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !115, line: 23, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !117, line: 31, baseType: !368)
!368 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !358, file: !338, line: 394, baseType: !370, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!89, !326, !89, !89, !89, !89}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !358, file: !338, line: 398, baseType: !89, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !358, file: !338, line: 399, baseType: !89, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !358, file: !338, line: 405, baseType: !89, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !358, file: !338, line: 406, baseType: !89, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !358, file: !338, line: 407, baseType: !378, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !328, line: 286, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 286, size: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !380, file: !328, line: 286, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !384, line: 18, baseType: !89)
!384 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !358, file: !338, line: 416, baseType: !386, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !87, line: 168, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 166, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !387, file: !87, line: 167, baseType: !103, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !358, file: !338, line: 428, baseType: !386, size: 32, offset: 608)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !358, file: !338, line: 437, baseType: !386, size: 32, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !358, file: !338, line: 447, baseType: !386, size: 32, offset: 672)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !358, file: !338, line: 450, baseType: !108, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !358, file: !338, line: 452, baseType: !103, size: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !358, file: !338, line: 454, baseType: !218, offset: 800)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !358, file: !338, line: 457, baseType: !104, size: 256, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !358, file: !338, line: 459, baseType: !94, size: 128, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !358, file: !338, line: 466, baseType: !89, size: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !358, file: !338, line: 467, baseType: !89, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !358, file: !338, line: 469, baseType: !89, size: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !358, file: !338, line: 470, baseType: !89, size: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !358, file: !338, line: 471, baseType: !110, size: 64, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !358, file: !338, line: 472, baseType: !89, size: 64, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !358, file: !338, line: 473, baseType: !89, size: 64, offset: 1600)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !358, file: !338, line: 474, baseType: !89, size: 64, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !358, file: !338, line: 475, baseType: !89, size: 64, offset: 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !358, file: !338, line: 477, baseType: !218, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !358, file: !338, line: 478, baseType: !89, size: 64, offset: 1792)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !358, file: !338, line: 478, baseType: !89, size: 64, offset: 1856)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !358, file: !338, line: 478, baseType: !89, size: 64, offset: 1920)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !358, file: !338, line: 478, baseType: !89, size: 64, offset: 1984)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !358, file: !338, line: 479, baseType: !89, size: 64, offset: 2048)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !358, file: !338, line: 479, baseType: !89, size: 64, offset: 2112)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !358, file: !338, line: 479, baseType: !89, size: 64, offset: 2176)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !358, file: !338, line: 480, baseType: !89, size: 64, offset: 2240)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !358, file: !338, line: 480, baseType: !89, size: 64, offset: 2304)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !358, file: !338, line: 480, baseType: !89, size: 64, offset: 2368)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !358, file: !338, line: 480, baseType: !89, size: 64, offset: 2432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !358, file: !338, line: 482, baseType: !420, size: 2816, offset: 2496)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2816, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 44)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !358, file: !338, line: 488, baseType: !424, size: 256, offset: 5312)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !425, line: 60, size: 256, elements: !426)
!425 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !425, line: 61, baseType: !428, size: 256)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 4)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !358, file: !338, line: 490, baseType: !432, size: 64, offset: 5568)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !338, line: 490, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !358, file: !338, line: 493, baseType: !435, size: 896, offset: 5632)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !436, line: 53, baseType: !437)
!436 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 896, elements: !438)
!438 = !{!439, !440, !441, !442, !445, !446, !453, !454, !474, !475, !478}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !437, file: !436, line: 18, baseType: !366, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !437, file: !436, line: 28, baseType: !110, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !437, file: !436, line: 31, baseType: !104, size: 256, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !437, file: !436, line: 32, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !436, line: 32, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !437, file: !436, line: 37, baseType: !150, size: 16, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !437, file: !436, line: 40, baseType: !447, size: 192, offset: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !448, line: 53, size: 192, elements: !449)
!448 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !451, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !447, file: !448, line: 54, baseType: !108, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !447, file: !448, line: 55, baseType: !218, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !447, file: !448, line: 59, baseType: !94, size: 128, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !437, file: !436, line: 41, baseType: !88, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !437, file: !436, line: 42, baseType: !455, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !458, line: 13, size: 896, elements: !459)
!458 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !457, file: !458, line: 14, baseType: !88, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !457, file: !458, line: 15, baseType: !89, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !457, file: !458, line: 17, baseType: !89, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !457, file: !458, line: 17, baseType: !89, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !457, file: !458, line: 19, baseType: !90, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !457, file: !458, line: 21, baseType: !90, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !457, file: !458, line: 22, baseType: !90, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !457, file: !458, line: 23, baseType: !90, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !457, file: !458, line: 24, baseType: !90, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !457, file: !458, line: 25, baseType: !90, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !457, file: !458, line: 26, baseType: !90, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !457, file: !458, line: 27, baseType: !90, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !457, file: !458, line: 28, baseType: !90, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !457, file: !458, line: 29, baseType: !90, size: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !437, file: !436, line: 44, baseType: !386, size: 32, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !437, file: !436, line: 50, baseType: !476, size: 16, offset: 864)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !115, line: 19, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !117, line: 24, baseType: !150)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !437, file: !436, line: 51, baseType: !479, size: 16, offset: 880)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !115, line: 18, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !117, line: 23, baseType: !481)
!481 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !338, line: 495, baseType: !89, size: 64, offset: 6528)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !358, file: !338, line: 497, baseType: !484, size: 64, offset: 6592)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !338, line: 381, size: 384, elements: !486)
!486 = !{!487, !488, !1384}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !485, file: !338, line: 382, baseType: !386, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !485, file: !338, line: 383, baseType: !489, size: 128, offset: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !338, line: 376, size: 128, elements: !490)
!490 = !{!491, !1382}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !489, file: !338, line: 377, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !494, line: 640, size: 48640, elements: !495)
!494 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !502, !504, !505, !511, !512, !513, !514, !515, !516, !517, !518, !522, !540, !551, !646, !647, !648, !659, !660, !662, !663, !664, !665, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !744, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !800, !802, !803, !804, !816, !818, !819, !820, !821, !822, !828, !829, !830, !831, !832, !833, !834, !846, !851, !855, !856, !857, !860, !864, !867, !870, !873, !876, !879, !882, !885, !891, !892, !893, !899, !900, !901, !902, !903, !912, !913, !914, !915, !916, !921, !922, !923, !926, !927, !930, !933, !936, !939, !942, !945, !946, !1026, !1029, !1032, !1033, !1036, !1037, !1038, !1044, !1045, !1046, !1059, !1060, !1061, !1071, !1076, !1079, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !493, file: !494, line: 646, baseType: !497, size: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !498, line: 56, size: 128, elements: !499)
!498 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !498, line: 57, baseType: !89, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !497, file: !498, line: 58, baseType: !164, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !493, file: !494, line: 649, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !493, file: !494, line: 657, baseType: !88, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !493, file: !494, line: 658, baseType: !506, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !507, line: 113, baseType: !508)
!507 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !507, line: 111, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !508, file: !507, line: 112, baseType: !386, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !494, line: 660, baseType: !7, size: 32, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !493, file: !494, line: 661, baseType: !7, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !493, file: !494, line: 684, baseType: !103, size: 32, offset: 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !493, file: !494, line: 686, baseType: !103, size: 32, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !493, file: !494, line: 687, baseType: !103, size: 32, offset: 416)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !493, file: !494, line: 688, baseType: !103, size: 32, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !493, file: !494, line: 689, baseType: !7, size: 32, offset: 480)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !493, file: !494, line: 691, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !494, line: 691, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !493, file: !494, line: 692, baseType: !523, size: 832, offset: 576)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !494, line: 451, size: 832, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !523, file: !494, line: 453, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !494, line: 325, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !526, file: !494, line: 326, baseType: !89, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !526, file: !494, line: 327, baseType: !164, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !523, file: !494, line: 454, baseType: !345, size: 192, align: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !523, file: !494, line: 455, baseType: !94, size: 128, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !523, file: !494, line: 456, baseType: !7, size: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !523, file: !494, line: 458, baseType: !366, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !523, file: !494, line: 459, baseType: !366, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !523, file: !494, line: 460, baseType: !366, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !523, file: !494, line: 461, baseType: !366, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !523, file: !494, line: 463, baseType: !366, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !523, file: !494, line: 465, baseType: !539, offset: 832)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !494, line: 415, elements: !129)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !493, file: !494, line: 693, baseType: !541, size: 384, offset: 1408)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !494, line: 489, size: 384, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !541, file: !494, line: 490, baseType: !94, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !541, file: !494, line: 491, baseType: !89, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !541, file: !494, line: 492, baseType: !89, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !541, file: !494, line: 493, baseType: !7, size: 32, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !541, file: !494, line: 494, baseType: !150, size: 16, offset: 288)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !541, file: !494, line: 495, baseType: !150, size: 16, offset: 304)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !541, file: !494, line: 497, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !493, file: !494, line: 697, baseType: !552, size: 1792, offset: 1792)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !494, line: 507, size: 1792, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !643, !644}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !552, file: !494, line: 508, baseType: !345, size: 192, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !552, file: !494, line: 515, baseType: !366, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !552, file: !494, line: 516, baseType: !366, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !552, file: !494, line: 517, baseType: !366, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !552, file: !494, line: 518, baseType: !366, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !552, file: !494, line: 519, baseType: !366, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !552, file: !494, line: 526, baseType: !114, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !552, file: !494, line: 527, baseType: !366, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !494, line: 528, baseType: !7, size: 32, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !552, file: !494, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !552, file: !494, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !552, file: !494, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !552, file: !494, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !552, file: !494, line: 563, baseType: !568, size: 512, offset: 704)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !569)
!569 = !{!570, !578, !579, !584, !636, !640, !641, !642}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !6, line: 119, baseType: !571, size: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !572, line: 9, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !571, file: !572, line: 10, baseType: !345, size: 192, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !571, file: !572, line: 11, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !577, line: 29, baseType: !114)
!577 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !568, file: !6, line: 120, baseType: !576, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !568, file: !6, line: 121, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!5, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !568, file: !6, line: 122, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !587)
!587 = !{!588, !608, !609, !612, !622, !623, !631, !635}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !586, file: !6, line: 160, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !590, file: !6, line: 215, baseType: !121)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !590, file: !6, line: 216, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !590, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !590, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !590, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !590, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !590, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !590, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !590, file: !6, line: 233, baseType: !576, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !590, file: !6, line: 234, baseType: !583, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !590, file: !6, line: 235, baseType: !576, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !590, file: !6, line: 236, baseType: !583, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !590, file: !6, line: 237, baseType: !605, size: 4096, offset: 512)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 4096, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !586, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !586, file: !6, line: 162, baseType: !610, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !87, line: 27, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !284, line: 96, baseType: !103)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !586, file: !6, line: 163, baseType: !613, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !614, line: 276, baseType: !615)
!614 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !614, line: 276, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !615, file: !614, line: 276, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !614, line: 70, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !614, line: 65, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !619, file: !614, line: 66, baseType: !7, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !586, file: !6, line: 164, baseType: !583, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !586, file: !6, line: 165, baseType: !624, size: 128, offset: 256)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !572, line: 14, size: 128, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !624, file: !572, line: 15, baseType: !627, size: 128)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !346, line: 125, size: 128, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !627, file: !346, line: 126, baseType: !362, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !627, file: !346, line: 127, baseType: !350, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !586, file: !6, line: 166, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!576}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !586, file: !6, line: 167, baseType: !576, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !568, file: !6, line: 123, baseType: !637, size: 8, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !115, line: 17, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !117, line: 21, baseType: !639)
!639 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !568, file: !6, line: 124, baseType: !637, size: 8, offset: 456)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !568, file: !6, line: 125, baseType: !637, size: 8, offset: 464)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !568, file: !6, line: 126, baseType: !637, size: 8, offset: 472)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !552, file: !494, line: 572, baseType: !568, size: 512, offset: 1216)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !552, file: !494, line: 580, baseType: !645, size: 64, offset: 1728)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !493, file: !494, line: 721, baseType: !7, size: 32, offset: 3584)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !493, file: !494, line: 722, baseType: !103, size: 32, offset: 3616)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !493, file: !494, line: 723, baseType: !649, size: 64, offset: 3648)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !652, line: 17, baseType: !653)
!652 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !652, line: 17, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !653, file: !652, line: 17, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 1)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !493, file: !494, line: 724, baseType: !651, size: 64, offset: 3712)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !493, file: !494, line: 749, baseType: !661, offset: 3776)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !494, line: 290, elements: !129)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !493, file: !494, line: 751, baseType: !94, size: 128, offset: 3776)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !493, file: !494, line: 757, baseType: !354, size: 64, offset: 3904)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !493, file: !494, line: 758, baseType: !354, size: 64, offset: 3968)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !493, file: !494, line: 761, baseType: !666, size: 320, offset: 4032)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !425, line: 34, size: 320, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !666, file: !425, line: 35, baseType: !366, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !666, file: !425, line: 36, baseType: !670, size: 256, offset: 64)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 256, elements: !429)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !493, file: !494, line: 766, baseType: !103, size: 32, offset: 4352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !493, file: !494, line: 767, baseType: !103, size: 32, offset: 4384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !493, file: !494, line: 768, baseType: !103, size: 32, offset: 4416)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !493, file: !494, line: 770, baseType: !103, size: 32, offset: 4448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !493, file: !494, line: 772, baseType: !89, size: 64, offset: 4480)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !493, file: !494, line: 775, baseType: !7, size: 32, offset: 4544)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !493, file: !494, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !493, file: !494, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !493, file: !494, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !493, file: !494, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !493, file: !494, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !493, file: !494, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !493, file: !494, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !493, file: !494, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !493, file: !494, line: 831, baseType: !89, size: 64, offset: 4672)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !493, file: !494, line: 833, baseType: !687, size: 384, offset: 4736)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !688)
!688 = !{!689, !694}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !687, file: !12, line: 26, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!90, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !12, line: 27, baseType: !695, size: 320, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !12, line: 27, size: 320, elements: !696)
!696 = !{!697, !707, !734}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !695, file: !12, line: 36, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !12, line: 29, size: 320, elements: !699)
!699 = !{!700, !702, !703, !704, !705, !706}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !698, file: !12, line: 30, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !698, file: !12, line: 31, baseType: !164, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !12, line: 32, baseType: !164, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !698, file: !12, line: 33, baseType: !164, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !698, file: !12, line: 34, baseType: !366, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !698, file: !12, line: 35, baseType: !701, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !695, file: !12, line: 46, baseType: !708, size: 192)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !12, line: 38, size: 192, elements: !709)
!709 = !{!710, !711, !712, !733}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !708, file: !12, line: 39, baseType: !610, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !12, line: 41, baseType: !713, size: 64, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !12, line: 41, size: 64, elements: !714)
!714 = !{!715, !723}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !713, file: !12, line: 42, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !718, line: 7, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !717, file: !718, line: 8, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !284, line: 93, baseType: !118)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !717, file: !718, line: 9, baseType: !118, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !713, file: !12, line: 43, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !726, line: 7, size: 64, elements: !727)
!726 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !725, file: !726, line: 8, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !726, line: 5, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !115, line: 20, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !117, line: 26, baseType: !103)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !725, file: !726, line: 9, baseType: !730, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !708, file: !12, line: 45, baseType: !366, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !695, file: !12, line: 54, baseType: !735, size: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !12, line: 48, size: 256, elements: !736)
!736 = !{!737, !740, !741, !742, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !735, file: !12, line: 49, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !735, file: !12, line: 50, baseType: !103, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !735, file: !12, line: 51, baseType: !103, size: 32, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !735, file: !12, line: 52, baseType: !89, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !735, file: !12, line: 53, baseType: !89, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !493, file: !494, line: 835, baseType: !745, size: 32, offset: 5120)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !87, line: 22, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !284, line: 28, baseType: !103)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !493, file: !494, line: 836, baseType: !745, size: 32, offset: 5152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !493, file: !494, line: 840, baseType: !89, size: 64, offset: 5184)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !493, file: !494, line: 849, baseType: !492, size: 64, offset: 5248)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !493, file: !494, line: 852, baseType: !492, size: 64, offset: 5312)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !493, file: !494, line: 857, baseType: !94, size: 128, offset: 5376)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !493, file: !494, line: 858, baseType: !94, size: 128, offset: 5504)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !493, file: !494, line: 859, baseType: !492, size: 64, offset: 5632)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !493, file: !494, line: 867, baseType: !94, size: 128, offset: 5696)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !493, file: !494, line: 868, baseType: !94, size: 128, offset: 5824)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !493, file: !494, line: 871, baseType: !757, size: 64, offset: 5952)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !759, line: 59, size: 768, elements: !760)
!759 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !762, !763, !764, !775, !776, !783, !792}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !759, line: 61, baseType: !506, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !758, file: !759, line: 62, baseType: !7, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !759, line: 63, baseType: !218, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !758, file: !759, line: 65, baseType: !765, size: 256, offset: 64)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 256, elements: !429)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !87, line: 182, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !766, file: !87, line: 183, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !87, line: 186, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !87, line: 187, baseType: !769, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !770, file: !87, line: 187, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !758, file: !759, line: 66, baseType: !766, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !758, file: !759, line: 68, baseType: !777, size: 128, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !778, line: 40, baseType: !779)
!778 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !778, line: 36, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !778, line: 37, baseType: !218)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !779, file: !778, line: 38, baseType: !94, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !758, file: !759, line: 69, baseType: !784, size: 128, align: 64, offset: 512)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !87, line: 216, size: 128, align: 64, elements: !785)
!785 = !{!786, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !87, line: 217, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !784, file: !87, line: 218, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !787}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !758, file: !759, line: 70, baseType: !793, size: 128, offset: 640)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 128, elements: !657)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !759, line: 54, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !794, file: !759, line: 55, baseType: !103, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !759, line: 56, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !759, line: 56, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !493, file: !494, line: 872, baseType: !801, size: 512, offset: 6016)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 512, elements: !429)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !493, file: !494, line: 873, baseType: !94, size: 128, offset: 6528)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !493, file: !494, line: 874, baseType: !94, size: 128, offset: 6656)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !493, file: !494, line: 876, baseType: !805, size: 64, offset: 6784)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !807, line: 26, size: 192, elements: !808)
!807 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !806, file: !807, line: 27, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !806, file: !807, line: 28, baseType: !811, size: 128, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !812, line: 43, size: 128, elements: !813)
!812 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !811, file: !812, line: 44, baseType: !121)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !811, file: !812, line: 45, baseType: !94, size: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !493, file: !494, line: 879, baseType: !817, size: 64, offset: 6848)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !493, file: !494, line: 882, baseType: !817, size: 64, offset: 6912)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !493, file: !494, line: 884, baseType: !366, size: 64, offset: 6976)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !493, file: !494, line: 885, baseType: !366, size: 64, offset: 7040)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !493, file: !494, line: 890, baseType: !366, size: 64, offset: 7104)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !493, file: !494, line: 891, baseType: !823, size: 128, offset: 7168)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !494, line: 242, size: 128, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !823, file: !494, line: 244, baseType: !366, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !823, file: !494, line: 245, baseType: !366, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !494, line: 246, baseType: !121, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !493, file: !494, line: 900, baseType: !89, size: 64, offset: 7296)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !493, file: !494, line: 901, baseType: !89, size: 64, offset: 7360)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !493, file: !494, line: 904, baseType: !366, size: 64, offset: 7424)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !493, file: !494, line: 907, baseType: !366, size: 64, offset: 7488)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !493, file: !494, line: 910, baseType: !89, size: 64, offset: 7552)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !493, file: !494, line: 911, baseType: !89, size: 64, offset: 7616)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !493, file: !494, line: 914, baseType: !835, size: 640, offset: 7680)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !836, line: 123, size: 640, elements: !837)
!836 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !844, !845}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !835, file: !836, line: 124, baseType: !839, size: 576)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 576, elements: !252)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !836, line: 108, size: 192, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !840, file: !836, line: 109, baseType: !366, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !840, file: !836, line: 110, baseType: !624, size: 128, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !835, file: !836, line: 125, baseType: !7, size: 32, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !835, file: !836, line: 126, baseType: !7, size: 32, offset: 608)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !493, file: !494, line: 917, baseType: !847, size: 192, offset: 8320)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !836, line: 134, size: 192, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !847, file: !836, line: 135, baseType: !784, size: 128, align: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !847, file: !836, line: 136, baseType: !7, size: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !493, file: !494, line: 923, baseType: !852, size: 64, offset: 8512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !494, line: 923, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !493, file: !494, line: 926, baseType: !852, size: 64, offset: 8576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !493, file: !494, line: 929, baseType: !852, size: 64, offset: 8640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !493, file: !494, line: 933, baseType: !858, size: 64, offset: 8704)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !494, line: 933, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !493, file: !494, line: 943, baseType: !861, size: 128, offset: 8768)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 16)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !493, file: !494, line: 945, baseType: !865, size: 64, offset: 8896)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !494, line: 49, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !493, file: !494, line: 956, baseType: !868, size: 64, offset: 8960)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !494, line: 45, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !493, file: !494, line: 959, baseType: !871, size: 64, offset: 9024)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !494, line: 959, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !493, file: !494, line: 962, baseType: !874, size: 64, offset: 9088)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !494, line: 66, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !493, file: !494, line: 966, baseType: !877, size: 64, offset: 9152)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !494, line: 50, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !493, file: !494, line: 969, baseType: !880, size: 64, offset: 9216)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !836, line: 223, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !493, file: !494, line: 970, baseType: !883, size: 64, offset: 9280)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !494, line: 62, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !493, file: !494, line: 971, baseType: !886, size: 64, offset: 9344)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !887, line: 25, baseType: !888)
!887 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !887, line: 23, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !888, file: !887, line: 24, baseType: !656, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !493, file: !494, line: 972, baseType: !886, size: 64, offset: 9408)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !493, file: !494, line: 974, baseType: !886, size: 64, offset: 9472)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !493, file: !494, line: 975, baseType: !894, size: 192, offset: 9536)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !895, line: 30, size: 192, elements: !896)
!895 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !894, file: !895, line: 31, baseType: !94, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !894, file: !895, line: 32, baseType: !886, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !493, file: !494, line: 976, baseType: !89, size: 64, offset: 9728)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !493, file: !494, line: 977, baseType: !296, size: 64, offset: 9792)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !493, file: !494, line: 978, baseType: !7, size: 32, offset: 9856)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !493, file: !494, line: 980, baseType: !787, size: 64, offset: 9920)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !493, file: !494, line: 989, baseType: !904, size: 128, offset: 9984)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !905, line: 35, size: 128, elements: !906)
!905 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !904, file: !905, line: 36, baseType: !103, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !904, file: !905, line: 37, baseType: !386, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !904, file: !905, line: 38, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !905, line: 23, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !493, file: !494, line: 992, baseType: !366, size: 64, offset: 10112)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !493, file: !494, line: 993, baseType: !366, size: 64, offset: 10176)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !493, file: !494, line: 996, baseType: !218, offset: 10240)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !493, file: !494, line: 999, baseType: !121, offset: 10240)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !493, file: !494, line: 1001, baseType: !917, size: 64, offset: 10240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !494, line: 636, size: 64, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !494, line: 637, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !493, file: !494, line: 1005, baseType: !627, size: 128, offset: 10304)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !493, file: !494, line: 1007, baseType: !492, size: 64, offset: 10432)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !493, file: !494, line: 1009, baseType: !924, size: 64, offset: 10496)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !494, line: 1009, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !493, file: !494, line: 1043, baseType: !88, size: 64, offset: 10560)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !493, file: !494, line: 1046, baseType: !928, size: 64, offset: 10624)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !494, line: 41, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !493, file: !494, line: 1050, baseType: !931, size: 64, offset: 10688)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !494, line: 42, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !493, file: !494, line: 1054, baseType: !934, size: 64, offset: 10752)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !494, line: 55, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !493, file: !494, line: 1056, baseType: !937, size: 64, offset: 10816)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !494, line: 40, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !493, file: !494, line: 1058, baseType: !940, size: 64, offset: 10880)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !494, line: 47, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !493, file: !494, line: 1061, baseType: !943, size: 64, offset: 10944)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !494, line: 43, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !493, file: !494, line: 1064, baseType: !89, size: 64, offset: 11008)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !493, file: !494, line: 1065, baseType: !947, size: 64, offset: 11072)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !895, line: 14, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !895, line: 12, size: 384, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !895, line: 13, baseType: !952, size: 384)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !895, line: 13, size: 384, elements: !953)
!953 = !{!954, !955, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !952, file: !895, line: 13, baseType: !103, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !952, file: !895, line: 13, baseType: !103, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !952, file: !895, line: 13, baseType: !103, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !952, file: !895, line: 13, baseType: !958, size: 256, offset: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !959, line: 32, size: 256, elements: !960)
!959 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !967, !980, !986, !995, !1015, !1020}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !958, file: !959, line: 37, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 34, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !962, file: !959, line: 35, baseType: !746, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !962, file: !959, line: 36, baseType: !966, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !284, line: 49, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !958, file: !959, line: 45, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 40, size: 192, elements: !969)
!969 = !{!970, !972, !973, !979}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !968, file: !959, line: 41, baseType: !971, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !284, line: 95, baseType: !103)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !968, file: !959, line: 42, baseType: !103, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !968, file: !959, line: 43, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !959, line: 11, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !959, line: 8, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !975, file: !959, line: 9, baseType: !103, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !975, file: !959, line: 10, baseType: !88, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !968, file: !959, line: 44, baseType: !103, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !958, file: !959, line: 52, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 48, size: 128, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !981, file: !959, line: 49, baseType: !746, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !981, file: !959, line: 50, baseType: !966, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !981, file: !959, line: 51, baseType: !974, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !958, file: !959, line: 61, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 55, size: 256, elements: !988)
!988 = !{!989, !990, !991, !992, !994}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !987, file: !959, line: 56, baseType: !746, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !987, file: !959, line: 57, baseType: !966, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !987, file: !959, line: 58, baseType: !103, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !987, file: !959, line: 59, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !284, line: 94, baseType: !285)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !987, file: !959, line: 60, baseType: !993, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !958, file: !959, line: 95, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 64, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !996, file: !959, line: 65, baseType: !88, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !959, line: 77, baseType: !1000, size: 192, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !959, line: 77, size: 192, elements: !1001)
!1001 = !{!1002, !1003, !1010}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1000, file: !959, line: 82, baseType: !481, size: 16)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1000, file: !959, line: 88, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !959, line: 84, size: 192, elements: !1005)
!1005 = !{!1006, !1008, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1004, file: !959, line: 85, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !606)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1004, file: !959, line: 86, baseType: !88, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1004, file: !959, line: 87, baseType: !88, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1000, file: !959, line: 93, baseType: !1011, size: 96)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !959, line: 90, size: 96, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1011, file: !959, line: 91, baseType: !1007, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1011, file: !959, line: 92, baseType: !165, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !958, file: !959, line: 101, baseType: !1016, size: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 98, size: 128, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1016, file: !959, line: 99, baseType: !90, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1016, file: !959, line: 100, baseType: !103, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !958, file: !959, line: 108, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !959, line: 104, size: 128, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1021, file: !959, line: 105, baseType: !88, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1021, file: !959, line: 106, baseType: !103, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1021, file: !959, line: 107, baseType: !7, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !493, file: !494, line: 1067, baseType: !1027, offset: 11136)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1028, line: 12, elements: !129)
!1028 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !493, file: !494, line: 1099, baseType: !1030, size: 64, offset: 11136)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !494, line: 56, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !493, file: !494, line: 1103, baseType: !94, size: 128, offset: 11200)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !493, file: !494, line: 1104, baseType: !1034, size: 64, offset: 11328)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !494, line: 46, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !493, file: !494, line: 1105, baseType: !447, size: 192, offset: 11392)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !493, file: !494, line: 1106, baseType: !7, size: 32, offset: 11584)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !493, file: !494, line: 1109, baseType: !1039, size: 128, offset: 11648)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 128, elements: !1042)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !494, line: 51, flags: DIFlagFwdDecl)
!1042 = !{!1043}
!1043 = !DISubrange(count: 2)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !493, file: !494, line: 1110, baseType: !447, size: 192, offset: 11776)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !493, file: !494, line: 1111, baseType: !94, size: 128, offset: 11968)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !493, file: !494, line: 1173, baseType: !1047, size: 64, offset: 12096)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1049, line: 62, size: 256, align: 256, elements: !1050)
!1049 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052, !1053, !1058}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1048, file: !1049, line: 75, baseType: !165, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1048, file: !1049, line: 90, baseType: !165, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1048, file: !1049, line: 124, baseType: !1054, size: 64, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !1049, line: 109, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1054, file: !1049, line: 110, baseType: !367, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1054, file: !1049, line: 112, baseType: !367, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1049, line: 144, baseType: !165, size: 32, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !493, file: !494, line: 1174, baseType: !164, size: 32, offset: 12160)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !493, file: !494, line: 1179, baseType: !89, size: 64, offset: 12224)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !493, file: !494, line: 1182, baseType: !1062, size: 128, offset: 12288)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !425, line: 76, size: 128, elements: !1063)
!1063 = !{!1064, !1069, !1070}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1062, file: !425, line: 85, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1066, line: 7, size: 64, elements: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1065, file: !1066, line: 12, baseType: !653, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1062, file: !425, line: 88, baseType: !190, size: 8, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1062, file: !425, line: 95, baseType: !190, size: 8, offset: 72)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !494, line: 1184, baseType: !1072, size: 128, offset: 12416)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !494, line: 1184, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1072, file: !494, line: 1185, baseType: !506, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1072, file: !494, line: 1186, baseType: !784, size: 128, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !493, file: !494, line: 1190, baseType: !1077, size: 64, offset: 12544)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !494, line: 53, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !493, file: !494, line: 1192, baseType: !1080, size: 128, offset: 12608)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !425, line: 64, size: 128, elements: !1081)
!1081 = !{!1082, !1175, !1176}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !425, line: 65, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !338, line: 68, size: 512, align: 128, elements: !1085)
!1085 = !{!1086, !1087, !1167, !1174}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1084, file: !338, line: 69, baseType: !89, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !338, line: 77, baseType: !1088, size: 320, offset: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !338, line: 77, size: 320, elements: !1089)
!1089 = !{!1090, !1099, !1104, !1132, !1140, !1146, !1159, !1166}
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 78, baseType: !1091, size: 320)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 78, size: 320, elements: !1092)
!1092 = !{!1093, !1094, !1097, !1098}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1091, file: !338, line: 84, baseType: !94, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1091, file: !338, line: 86, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !338, line: 26, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1091, file: !338, line: 87, baseType: !89, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1091, file: !338, line: 94, baseType: !89, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 96, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 96, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1100, file: !338, line: 101, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !87, line: 143, baseType: !366)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 103, baseType: !1105, size: 320)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 103, size: 320, elements: !1106)
!1106 = !{!1107, !1117, !1120, !1121}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !338, line: 104, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !338, line: 104, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1108, file: !338, line: 105, baseType: !94, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !338, line: 106, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !338, line: 106, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1112, file: !338, line: 107, baseType: !1083, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1112, file: !338, line: 109, baseType: !103, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1112, file: !338, line: 110, baseType: !103, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1105, file: !338, line: 117, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !338, line: 117, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1105, file: !338, line: 119, baseType: !88, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !338, line: 120, baseType: !1122, size: 64, offset: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !338, line: 120, size: 64, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1122, file: !338, line: 121, baseType: !88, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1122, file: !338, line: 122, baseType: !89, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !338, line: 123, baseType: !1127, size: 32)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !338, line: 123, size: 32, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1127, file: !338, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1127, file: !338, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1127, file: !338, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 130, baseType: !1133, size: 192)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 130, size: 192, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1133, file: !338, line: 131, baseType: !89, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1133, file: !338, line: 134, baseType: !639, size: 8, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1133, file: !338, line: 135, baseType: !639, size: 8, offset: 72)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1133, file: !338, line: 136, baseType: !386, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1133, file: !338, line: 137, baseType: !7, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 139, baseType: !1141, size: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 139, size: 256, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1141, file: !338, line: 140, baseType: !89, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1141, file: !338, line: 141, baseType: !386, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1141, file: !338, line: 143, baseType: !94, size: 128, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 145, baseType: !1147, size: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 145, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1152, !1153, !1158}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1147, file: !338, line: 146, baseType: !89, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1147, file: !338, line: 147, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !328, line: 509, baseType: !1083)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1147, file: !338, line: 148, baseType: !89, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !338, line: 149, baseType: !1154, size: 64, offset: 192)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !338, line: 149, size: 64, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1154, file: !338, line: 150, baseType: !354, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1154, file: !338, line: 151, baseType: !386, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1147, file: !338, line: 156, baseType: !218, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !338, line: 159, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !338, line: 159, size: 128, elements: !1161)
!1161 = !{!1162, !1165}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1160, file: !338, line: 161, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !338, line: 161, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1160, file: !338, line: 162, baseType: !88, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1088, file: !338, line: 176, baseType: !784, size: 128, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !338, line: 179, baseType: !1168, size: 32, offset: 384)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !338, line: 179, size: 32, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1168, file: !338, line: 184, baseType: !386, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1168, file: !338, line: 192, baseType: !7, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1168, file: !338, line: 194, baseType: !7, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1168, file: !338, line: 195, baseType: !103, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1084, file: !338, line: 199, baseType: !386, size: 32, offset: 416)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1080, file: !425, line: 67, baseType: !165, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !425, line: 68, baseType: !165, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !493, file: !494, line: 1206, baseType: !103, size: 32, offset: 12736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !493, file: !494, line: 1207, baseType: !103, size: 32, offset: 12768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !493, file: !494, line: 1209, baseType: !89, size: 64, offset: 12800)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !493, file: !494, line: 1219, baseType: !366, size: 64, offset: 12864)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !493, file: !494, line: 1220, baseType: !366, size: 64, offset: 12928)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !493, file: !494, line: 1317, baseType: !103, size: 32, offset: 12992)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !493, file: !494, line: 1319, baseType: !492, size: 64, offset: 13056)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !493, file: !494, line: 1322, baseType: !1185, size: 64, offset: 13120)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1187, line: 56, size: 512, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1195, !1196, !1198}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !1187, line: 57, baseType: !1185, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1186, file: !1187, line: 58, baseType: !88, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1186, file: !1187, line: 59, baseType: !89, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 60, baseType: !89, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1186, file: !1187, line: 61, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1186, file: !1187, line: 62, baseType: !7, size: 32, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1186, file: !1187, line: 63, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !87, line: 153, baseType: !366)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1186, file: !1187, line: 64, baseType: !198, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !493, file: !494, line: 1326, baseType: !506, size: 32, offset: 13184)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !493, file: !494, line: 1342, baseType: !88, size: 64, offset: 13248)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !493, file: !494, line: 1343, baseType: !367, size: 64, offset: 13312)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !493, file: !494, line: 1344, baseType: !366, size: 64, offset: 13376)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !493, file: !494, line: 1345, baseType: !367, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !493, file: !494, line: 1346, baseType: !367, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !493, file: !494, line: 1347, baseType: !367, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !493, file: !494, line: 1348, baseType: !784, size: 128, align: 64, offset: 13504)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !493, file: !494, line: 1358, baseType: !1208, size: 34816, offset: 13824)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1209, line: 485, size: 34816, elements: !1210)
!1209 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !{!1211, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1240, !1241, !1242, !1243, !1244, !1245, !1248, !1249, !1250}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1208, file: !1209, line: 487, baseType: !1212, size: 192)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 192, elements: !252)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1214, line: 16, size: 64, elements: !1215)
!1214 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1213, file: !1214, line: 17, baseType: !476, size: 16)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1213, file: !1214, line: 18, baseType: !476, size: 16, offset: 16)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1213, file: !1214, line: 19, baseType: !476, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1213, file: !1214, line: 19, baseType: !476, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1213, file: !1214, line: 19, baseType: !476, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1213, file: !1214, line: 19, baseType: !476, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1213, file: !1214, line: 19, baseType: !476, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1213, file: !1214, line: 20, baseType: !476, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1213, file: !1214, line: 20, baseType: !476, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1213, file: !1214, line: 20, baseType: !476, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1213, file: !1214, line: 20, baseType: !476, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1213, file: !1214, line: 20, baseType: !476, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1213, file: !1214, line: 20, baseType: !476, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1208, file: !1209, line: 491, baseType: !89, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1208, file: !1209, line: 495, baseType: !150, size: 16, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1208, file: !1209, line: 496, baseType: !150, size: 16, offset: 272)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1208, file: !1209, line: 497, baseType: !150, size: 16, offset: 288)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1208, file: !1209, line: 498, baseType: !150, size: 16, offset: 304)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1208, file: !1209, line: 502, baseType: !89, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1208, file: !1209, line: 503, baseType: !89, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1208, file: !1209, line: 514, baseType: !1237, size: 256, offset: 448)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 256, elements: !429)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1209, line: 483, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1208, file: !1209, line: 516, baseType: !89, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1208, file: !1209, line: 518, baseType: !89, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1208, file: !1209, line: 520, baseType: !89, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1208, file: !1209, line: 521, baseType: !89, size: 64, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1208, file: !1209, line: 522, baseType: !89, size: 64, offset: 960)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1208, file: !1209, line: 528, baseType: !1246, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1209, line: 10, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1208, file: !1209, line: 535, baseType: !89, size: 64, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1208, file: !1209, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1208, file: !1209, line: 540, baseType: !1251, size: 33280, offset: 1536)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1252, line: 317, size: 33280, elements: !1253)
!1252 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1251, file: !1252, line: 330, baseType: !7, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1251, file: !1252, line: 337, baseType: !89, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1251, file: !1252, line: 348, baseType: !1257, size: 32768, offset: 512)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1252, line: 304, size: 32768, elements: !1258)
!1258 = !{!1259, !1272, !1311, !1361, !1378}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1257, file: !1252, line: 305, baseType: !1260, size: 896)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1252, line: 12, size: 896, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1260, file: !1252, line: 13, baseType: !164, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1260, file: !1252, line: 14, baseType: !164, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1260, file: !1252, line: 15, baseType: !164, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1260, file: !1252, line: 16, baseType: !164, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1260, file: !1252, line: 17, baseType: !164, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1260, file: !1252, line: 18, baseType: !164, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1260, file: !1252, line: 19, baseType: !164, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1260, file: !1252, line: 22, baseType: !1270, size: 640, offset: 224)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 640, elements: !147)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1260, file: !1252, line: 25, baseType: !164, size: 32, offset: 864)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1257, file: !1252, line: 306, baseType: !1273, size: 4096, align: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1252, line: 34, size: 4096, align: 128, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1294, !1295, !1296, !1300, !1302, !1306}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1273, file: !1252, line: 35, baseType: !476, size: 16)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1273, file: !1252, line: 36, baseType: !476, size: 16, offset: 16)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1273, file: !1252, line: 37, baseType: !476, size: 16, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1273, file: !1252, line: 38, baseType: !476, size: 16, offset: 48)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1252, line: 39, baseType: !1280, size: 128, offset: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1252, line: 39, size: 128, elements: !1281)
!1281 = !{!1282, !1287}
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !1252, line: 40, baseType: !1283, size: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !1252, line: 40, size: 128, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1283, file: !1252, line: 41, baseType: !366, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1283, file: !1252, line: 42, baseType: !366, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !1252, line: 44, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !1252, line: 44, size: 128, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1288, file: !1252, line: 45, baseType: !164, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1288, file: !1252, line: 46, baseType: !164, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1288, file: !1252, line: 47, baseType: !164, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1288, file: !1252, line: 48, baseType: !164, size: 32, offset: 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1273, file: !1252, line: 51, baseType: !164, size: 32, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1273, file: !1252, line: 52, baseType: !164, size: 32, offset: 224)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1273, file: !1252, line: 55, baseType: !1297, size: 1024, offset: 256)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1273, file: !1252, line: 58, baseType: !1301, size: 2048, offset: 1280)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 2048, elements: !256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1273, file: !1252, line: 60, baseType: !1303, size: 384, offset: 3328)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 384, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 12)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1252, line: 62, baseType: !1307, size: 384, offset: 3712)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1252, line: 62, size: 384, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1307, file: !1252, line: 63, baseType: !1303, size: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1307, file: !1252, line: 64, baseType: !1303, size: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1257, file: !1252, line: 307, baseType: !1312, size: 1088)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1252, line: 79, size: 1088, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1360}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1312, file: !1252, line: 80, baseType: !164, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1312, file: !1252, line: 81, baseType: !164, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1312, file: !1252, line: 82, baseType: !164, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1312, file: !1252, line: 83, baseType: !164, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1312, file: !1252, line: 84, baseType: !164, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1312, file: !1252, line: 85, baseType: !164, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1312, file: !1252, line: 86, baseType: !164, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1312, file: !1252, line: 88, baseType: !1270, size: 640, offset: 224)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1312, file: !1252, line: 89, baseType: !637, size: 8, offset: 864)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1312, file: !1252, line: 90, baseType: !637, size: 8, offset: 872)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1312, file: !1252, line: 91, baseType: !637, size: 8, offset: 880)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1312, file: !1252, line: 92, baseType: !637, size: 8, offset: 888)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1312, file: !1252, line: 93, baseType: !637, size: 8, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1312, file: !1252, line: 94, baseType: !637, size: 8, offset: 904)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1312, file: !1252, line: 95, baseType: !1329, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1331, line: 11, size: 128, elements: !1332)
!1331 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1330, file: !1331, line: 12, baseType: !90, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1330, file: !1331, line: 13, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1337, line: 56, size: 1344, elements: !1338)
!1337 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1336, file: !1337, line: 61, baseType: !89, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1336, file: !1337, line: 62, baseType: !89, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1336, file: !1337, line: 63, baseType: !89, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1336, file: !1337, line: 64, baseType: !89, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1336, file: !1337, line: 65, baseType: !89, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1336, file: !1337, line: 66, baseType: !89, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1336, file: !1337, line: 68, baseType: !89, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1336, file: !1337, line: 69, baseType: !89, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1336, file: !1337, line: 70, baseType: !89, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1336, file: !1337, line: 71, baseType: !89, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1336, file: !1337, line: 72, baseType: !89, size: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1336, file: !1337, line: 73, baseType: !89, size: 64, offset: 704)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1336, file: !1337, line: 74, baseType: !89, size: 64, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1336, file: !1337, line: 75, baseType: !89, size: 64, offset: 832)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1336, file: !1337, line: 76, baseType: !89, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1336, file: !1337, line: 81, baseType: !89, size: 64, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1336, file: !1337, line: 83, baseType: !89, size: 64, offset: 1024)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1336, file: !1337, line: 84, baseType: !89, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1336, file: !1337, line: 85, baseType: !89, size: 64, offset: 1152)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1336, file: !1337, line: 86, baseType: !89, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1336, file: !1337, line: 87, baseType: !89, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1312, file: !1252, line: 96, baseType: !164, size: 32, offset: 1024)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1257, file: !1252, line: 308, baseType: !1362, size: 4608, align: 512)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1252, line: 289, size: 4608, align: 512, elements: !1363)
!1363 = !{!1364, !1365, !1374}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1362, file: !1252, line: 290, baseType: !1273, size: 4096, align: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1362, file: !1252, line: 291, baseType: !1366, size: 512, offset: 4096)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1252, line: 268, size: 512, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1366, file: !1252, line: 269, baseType: !366, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1366, file: !1252, line: 270, baseType: !366, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1366, file: !1252, line: 271, baseType: !1371, size: 384, offset: 128)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 6)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1362, file: !1252, line: 292, baseType: !1375, offset: 4608)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 0)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1257, file: !1252, line: 309, baseType: !1379, size: 32768)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 32768, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 4096)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !338, line: 378, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !485, file: !338, line: 384, baseType: !806, size: 192, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !358, file: !338, line: 500, baseType: !218, offset: 6656)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !358, file: !338, line: 501, baseType: !1387, size: 64, offset: 6656)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !338, line: 387, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !358, file: !338, line: 516, baseType: !1390, size: 64, offset: 6720)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !338, line: 516, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !358, file: !338, line: 519, baseType: !326, size: 64, offset: 6784)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !358, file: !338, line: 521, baseType: !1394, size: 64, offset: 6848)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !338, line: 521, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !358, file: !338, line: 545, baseType: !386, size: 32, offset: 6912)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !358, file: !338, line: 548, baseType: !190, size: 8, offset: 6944)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !358, file: !338, line: 550, baseType: !1399, offset: 6952)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1400, line: 142, elements: !129)
!1400 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !358, file: !338, line: 554, baseType: !1402, size: 256, offset: 6976)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1403, line: 102, size: 256, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1402, file: !1403, line: 103, baseType: !108, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1402, file: !1403, line: 104, baseType: !94, size: 128, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1402, file: !1403, line: 105, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1403, line: 21, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !358, file: !338, line: 557, baseType: !164, size: 32, offset: 7232)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !355, file: !338, line: 565, baseType: !1415, offset: 7296)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: -1)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !337, file: !338, line: 333, baseType: !1419, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !328, line: 284, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !328, line: 284, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1420, file: !328, line: 284, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !384, line: 19, baseType: !89)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !337, file: !338, line: 334, baseType: !89, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !337, file: !338, line: 343, baseType: !1426, size: 256, offset: 704)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !338, line: 340, size: 256, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1426, file: !338, line: 341, baseType: !345, size: 192, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1426, file: !338, line: 342, baseType: !89, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !337, file: !338, line: 351, baseType: !94, size: 128, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !337, file: !338, line: 353, baseType: !1432, size: 64, offset: 1088)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !338, line: 353, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !337, file: !338, line: 356, baseType: !1435, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !338, line: 356, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !337, file: !338, line: 359, baseType: !89, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !337, file: !338, line: 361, baseType: !326, size: 64, offset: 1280)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !337, file: !338, line: 362, baseType: !88, size: 64, offset: 1344)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !337, file: !338, line: 365, baseType: !108, size: 64, offset: 1408)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !337, file: !338, line: 373, baseType: !1443, offset: 1472)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !338, line: 296, elements: !129)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !276, line: 90, baseType: !300, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !276, line: 91, baseType: !1446, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !266, file: !206, line: 143, baseType: !1448, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1451, !211}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1454)
!1454 = !{!1455, !1456, !1460, !1464, !1470, !1474}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !18, line: 40, baseType: !17, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1453, file: !18, line: 41, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!190}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1453, file: !18, line: 42, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!88}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1453, file: !18, line: 43, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!198, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1453, file: !18, line: 44, baseType: !1471, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!198}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1453, file: !18, line: 45, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !88}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !266, file: !206, line: 144, baseType: !1479, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!198, !211}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !266, file: !206, line: 145, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !211, !1486, !1493}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1488, line: 23, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1488, line: 21, size: 32, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1489, file: !1488, line: 22, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !87, line: 32, baseType: !966)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1488, line: 28, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1488, line: 26, size: 32, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1495, file: !1488, line: 27, baseType: !1498, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !87, line: 33, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !284, line: 50, baseType: !7)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !205, file: !206, line: 70, baseType: !1501, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1503, line: 123, size: 1024, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1646, !1647, !1648, !1649, !1650}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1502, file: !1503, line: 124, baseType: !386, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1502, file: !1503, line: 125, baseType: !386, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1502, file: !1503, line: 135, baseType: !1501, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1502, file: !1503, line: 136, baseType: !153, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1502, file: !1503, line: 138, baseType: !345, size: 192, align: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1502, file: !1503, line: 140, baseType: !198, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1502, file: !1503, line: 141, baseType: !7, size: 32, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !1503, line: 142, baseType: !1513, size: 256, offset: 512)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !1503, line: 142, size: 256, elements: !1514)
!1514 = !{!1515, !1569, !1573}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1513, file: !1503, line: 143, baseType: !1516, size: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1503, line: 91, size: 192, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1516, file: !1503, line: 92, baseType: !89, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1516, file: !1503, line: 94, baseType: !362, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1516, file: !1503, line: 100, baseType: !1521, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1503, line: 180, size: 704, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1539, !1540, !1541, !1567, !1568}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1522, file: !1503, line: 182, baseType: !1501, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1522, file: !1503, line: 183, baseType: !7, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1522, file: !1503, line: 186, baseType: !1527, size: 192, offset: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1528, line: 19, size: 192, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1537, !1538}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1527, file: !1528, line: 20, baseType: !1531, size: 128)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1532, line: 292, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1531, file: !1532, line: 293, baseType: !218)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1531, file: !1532, line: 295, baseType: !86, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1531, file: !1532, line: 296, baseType: !88, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1527, file: !1528, line: 21, baseType: !7, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1527, file: !1528, line: 22, baseType: !7, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1522, file: !1503, line: 187, baseType: !164, size: 32, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1522, file: !1503, line: 188, baseType: !164, size: 32, offset: 352)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1522, file: !1503, line: 189, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1503, line: 168, size: 320, elements: !1544)
!1544 = !{!1545, !1551, !1555, !1559, !1563}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1543, file: !1503, line: 169, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!103, !1549, !1521}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !328, line: 539, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1543, file: !1503, line: 171, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!103, !1501, !153, !291}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1543, file: !1503, line: 173, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!103, !1501}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1543, file: !1503, line: 174, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!103, !1501, !1501, !153}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1543, file: !1503, line: 176, baseType: !1564, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!103, !1549, !1501, !1521}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1522, file: !1503, line: 192, baseType: !94, size: 128, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1522, file: !1503, line: 194, baseType: !777, size: 128, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1513, file: !1503, line: 144, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1503, line: 103, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1570, file: !1503, line: 104, baseType: !1501, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1513, file: !1503, line: 145, baseType: !1574, size: 256)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1503, line: 107, size: 256, elements: !1575)
!1575 = !{!1576, !1641, !1644, !1645}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1574, file: !1503, line: 108, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1503, line: 217, size: 768, elements: !1580)
!1580 = !{!1581, !1601, !1605, !1609, !1614, !1618, !1622, !1626, !1627, !1628, !1629, !1637}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1579, file: !1503, line: 222, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!103, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1503, line: 197, size: 1088, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1586, file: !1503, line: 199, baseType: !1501, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1586, file: !1503, line: 200, baseType: !326, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1586, file: !1503, line: 201, baseType: !1549, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1586, file: !1503, line: 202, baseType: !88, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1586, file: !1503, line: 205, baseType: !447, size: 192, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1586, file: !1503, line: 206, baseType: !447, size: 192, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1586, file: !1503, line: 207, baseType: !103, size: 32, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1586, file: !1503, line: 208, baseType: !94, size: 128, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1586, file: !1503, line: 209, baseType: !251, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1586, file: !1503, line: 211, baseType: !296, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1586, file: !1503, line: 212, baseType: !190, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1586, file: !1503, line: 213, baseType: !190, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1586, file: !1503, line: 214, baseType: !1435, size: 64, offset: 1024)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1579, file: !1503, line: 223, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1585}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1579, file: !1503, line: 236, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!103, !1549, !88}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1579, file: !1503, line: 238, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!88, !1549, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1579, file: !1503, line: 239, baseType: !1615, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!88, !1549, !88, !1613}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1579, file: !1503, line: 240, baseType: !1619, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1549, !88}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1579, file: !1503, line: 242, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!282, !1585, !251, !296, !329}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1579, file: !1503, line: 252, baseType: !296, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1579, file: !1503, line: 259, baseType: !190, size: 8, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1579, file: !1503, line: 260, baseType: !1623, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1579, file: !1503, line: 263, baseType: !1630, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1633, !1585, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1634, line: 52, baseType: !7)
!1634 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1503, line: 27, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1579, file: !1503, line: 266, baseType: !1638, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!103, !1585, !336}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1574, file: !1503, line: 109, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1503, line: 31, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1574, file: !1503, line: 110, baseType: !329, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1574, file: !1503, line: 111, baseType: !1501, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1502, file: !1503, line: 148, baseType: !88, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1502, file: !1503, line: 154, baseType: !366, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1503, line: 156, baseType: !150, size: 16, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1502, file: !1503, line: 157, baseType: !291, size: 16, offset: 912)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1502, file: !1503, line: 158, baseType: !1651, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1503, line: 32, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !205, file: !206, line: 71, baseType: !1654, size: 32, offset: 448)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1655, line: 19, size: 32, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1654, file: !1655, line: 20, baseType: !506, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !205, file: !206, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !205, file: !206, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !205, file: !206, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !205, file: !206, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !205, file: !206, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !30, line: 463, baseType: !1664, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !202, file: !30, line: 465, baseType: !1666, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !202, file: !30, line: 467, baseType: !153, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !30, line: 468, baseType: !1670, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1680, !1685, !1689}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !30, line: 88, baseType: !153, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1672, file: !30, line: 89, baseType: !302, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1672, file: !30, line: 90, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!103, !1664, !246}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1672, file: !30, line: 91, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!251, !1664, !1684, !1486, !1493}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1672, file: !30, line: 93, baseType: !1686, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1664}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1672, file: !30, line: 95, baseType: !1690, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1693)
!1693 = !{!1694, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1692, file: !37, line: 279, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!103, !1664}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1692, file: !37, line: 280, baseType: !1686, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1692, file: !37, line: 281, baseType: !1695, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1692, file: !37, line: 282, baseType: !1695, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1692, file: !37, line: 283, baseType: !1695, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1692, file: !37, line: 284, baseType: !1695, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1692, file: !37, line: 285, baseType: !1695, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1692, file: !37, line: 286, baseType: !1695, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1692, file: !37, line: 287, baseType: !1695, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1692, file: !37, line: 288, baseType: !1695, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1692, file: !37, line: 289, baseType: !1695, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1692, file: !37, line: 290, baseType: !1695, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1692, file: !37, line: 291, baseType: !1695, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1692, file: !37, line: 292, baseType: !1695, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1692, file: !37, line: 293, baseType: !1695, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1692, file: !37, line: 294, baseType: !1695, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1692, file: !37, line: 295, baseType: !1695, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1692, file: !37, line: 296, baseType: !1695, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1692, file: !37, line: 297, baseType: !1695, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1692, file: !37, line: 298, baseType: !1695, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1692, file: !37, line: 299, baseType: !1695, size: 64, offset: 1280)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1692, file: !37, line: 300, baseType: !1695, size: 64, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1692, file: !37, line: 301, baseType: !1695, size: 64, offset: 1408)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !202, file: !30, line: 470, baseType: !1721, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1723, line: 82, size: 1408, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1810, !1813, !1816}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1722, file: !1723, line: 83, baseType: !153, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1722, file: !1723, line: 84, baseType: !153, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1722, file: !1723, line: 85, baseType: !1664, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1722, file: !1723, line: 86, baseType: !302, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1722, file: !1723, line: 87, baseType: !302, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1722, file: !1723, line: 88, baseType: !302, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1722, file: !1723, line: 90, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!103, !1664, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1744, !1745, !1746, !1747, !1761, !1774, !1775, !1776, !1777, !1778, !1786, !1787, !1788, !1789, !1790, !1791}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1736, file: !24, line: 96, baseType: !153, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1736, file: !24, line: 97, baseType: !1721, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1736, file: !24, line: 99, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1743, line: 76, flags: DIFlagFwdDecl)
!1743 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1736, file: !24, line: 100, baseType: !153, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1736, file: !24, line: 102, baseType: !190, size: 8, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1736, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1736, file: !24, line: 105, baseType: !1748, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1751, line: 262, size: 1600, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1755, !1756, !1760}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1750, file: !1751, line: 263, baseType: !1754, size: 256)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !1298)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1750, file: !1751, line: 264, baseType: !1754, size: 256, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1750, file: !1751, line: 265, baseType: !1757, size: 1024, offset: 512)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1750, file: !1751, line: 266, baseType: !198, size: 64, offset: 1536)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1736, file: !24, line: 106, baseType: !1762, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1751, line: 210, size: 256, elements: !1765)
!1765 = !{!1766, !1770, !1772, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1764, file: !1751, line: 211, baseType: !1767, size: 72)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 72, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 9)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1764, file: !1751, line: 212, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1751, line: 14, baseType: !89)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1764, file: !1751, line: 213, baseType: !165, size: 32, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1764, file: !1751, line: 214, baseType: !165, size: 32, offset: 224)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1736, file: !24, line: 108, baseType: !1695, size: 64, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1736, file: !24, line: 109, baseType: !1686, size: 64, offset: 512)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1736, file: !24, line: 110, baseType: !1695, size: 64, offset: 576)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1736, file: !24, line: 111, baseType: !1686, size: 64, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1736, file: !24, line: 112, baseType: !1779, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!103, !1664, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1784)
!1784 = !{!1785}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1783, file: !37, line: 51, baseType: !103, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1736, file: !24, line: 113, baseType: !1695, size: 64, offset: 768)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1736, file: !24, line: 114, baseType: !302, size: 64, offset: 832)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1736, file: !24, line: 115, baseType: !302, size: 64, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1736, file: !24, line: 117, baseType: !1690, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1736, file: !24, line: 118, baseType: !1686, size: 64, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1736, file: !24, line: 120, baseType: !1792, size: 64, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1722, file: !1723, line: 91, baseType: !1677, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1722, file: !1723, line: 92, baseType: !1695, size: 64, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1722, file: !1723, line: 93, baseType: !1686, size: 64, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1722, file: !1723, line: 94, baseType: !1695, size: 64, offset: 640)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1722, file: !1723, line: 95, baseType: !1686, size: 64, offset: 704)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1722, file: !1723, line: 97, baseType: !1695, size: 64, offset: 768)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1722, file: !1723, line: 98, baseType: !1695, size: 64, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1722, file: !1723, line: 100, baseType: !1779, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1722, file: !1723, line: 101, baseType: !1695, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1722, file: !1723, line: 103, baseType: !1695, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1722, file: !1723, line: 105, baseType: !1695, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1722, file: !1723, line: 107, baseType: !1690, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1722, file: !1723, line: 109, baseType: !1807, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1723, line: 109, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1722, file: !1723, line: 111, baseType: !1811, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1723, line: 111, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1722, file: !1723, line: 112, baseType: !1814, offset: 1344)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1815, line: 187, elements: !129)
!1815 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1722, file: !1723, line: 114, baseType: !190, size: 8, offset: 1344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !202, file: !30, line: 471, baseType: !1735, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !202, file: !30, line: 473, baseType: !88, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !202, file: !30, line: 475, baseType: !88, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !202, file: !30, line: 480, baseType: !447, size: 192, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !202, file: !30, line: 484, baseType: !1822, size: 576, offset: 1216)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1822, file: !30, line: 362, baseType: !94, size: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1822, file: !30, line: 363, baseType: !94, size: 128, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1822, file: !30, line: 364, baseType: !94, size: 128, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1822, file: !30, line: 365, baseType: !94, size: 128, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1822, file: !30, line: 366, baseType: !190, size: 8, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1822, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !202, file: !30, line: 485, baseType: !1831, size: 2304, offset: 1792)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1928, !1932}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1831, file: !37, line: 566, baseType: !1782, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1831, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1831, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1831, file: !37, line: 569, baseType: !190, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1831, file: !37, line: 570, baseType: !190, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1831, file: !37, line: 571, baseType: !190, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1831, file: !37, line: 572, baseType: !190, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1831, file: !37, line: 573, baseType: !190, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1831, file: !37, line: 574, baseType: !190, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1831, file: !37, line: 575, baseType: !190, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1831, file: !37, line: 576, baseType: !190, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1831, file: !37, line: 577, baseType: !164, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !37, line: 578, baseType: !218, offset: 96)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1831, file: !37, line: 580, baseType: !94, size: 128, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1831, file: !37, line: 581, baseType: !806, size: 192, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1831, file: !37, line: 582, baseType: !1849, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1851, line: 43, size: 1472, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1860, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1850, file: !1851, line: 44, baseType: !153, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1850, file: !1851, line: 45, baseType: !103, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1850, file: !1851, line: 46, baseType: !94, size: 128, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !1851, line: 47, baseType: !218, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1850, file: !1851, line: 48, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1850, file: !1851, line: 49, baseType: !1861, size: 320, offset: 320)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1862, line: 11, size: 320, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1871}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1861, file: !1862, line: 16, baseType: !770, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1861, file: !1862, line: 17, baseType: !89, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1861, file: !1862, line: 18, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1862, line: 19, baseType: !164, size: 32, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1850, file: !1851, line: 50, baseType: !89, size: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1850, file: !1851, line: 51, baseType: !576, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1850, file: !1851, line: 52, baseType: !576, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1850, file: !1851, line: 53, baseType: !576, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1850, file: !1851, line: 54, baseType: !576, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1850, file: !1851, line: 55, baseType: !576, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1850, file: !1851, line: 56, baseType: !89, size: 64, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1850, file: !1851, line: 57, baseType: !89, size: 64, offset: 1088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1850, file: !1851, line: 58, baseType: !89, size: 64, offset: 1152)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1850, file: !1851, line: 59, baseType: !89, size: 64, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1850, file: !1851, line: 60, baseType: !89, size: 64, offset: 1280)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1850, file: !1851, line: 61, baseType: !1664, size: 64, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1850, file: !1851, line: 62, baseType: !190, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1850, file: !1851, line: 63, baseType: !190, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1831, file: !37, line: 583, baseType: !190, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1831, file: !37, line: 584, baseType: !190, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1831, file: !37, line: 585, baseType: !190, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1831, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1831, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1831, file: !37, line: 592, baseType: !568, size: 512, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1831, file: !37, line: 593, baseType: !366, size: 64, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1831, file: !37, line: 594, baseType: !1402, size: 256, offset: 1152)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1831, file: !37, line: 595, baseType: !777, size: 128, offset: 1408)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1831, file: !37, line: 596, baseType: !1858, size: 64, offset: 1536)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1831, file: !37, line: 597, baseType: !386, size: 32, offset: 1600)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1831, file: !37, line: 598, baseType: !386, size: 32, offset: 1632)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1831, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1831, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1831, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1831, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1831, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1831, file: !37, line: 604, baseType: !190, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1831, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1831, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1831, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1831, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1831, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1831, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1831, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1831, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1831, file: !37, line: 613, baseType: !103, size: 32, offset: 1792)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1831, file: !37, line: 614, baseType: !103, size: 32, offset: 1824)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1831, file: !37, line: 615, baseType: !366, size: 64, offset: 1856)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1831, file: !37, line: 616, baseType: !366, size: 64, offset: 1920)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1831, file: !37, line: 617, baseType: !366, size: 64, offset: 1984)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1831, file: !37, line: 618, baseType: !366, size: 64, offset: 2048)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1831, file: !37, line: 620, baseType: !1919, size: 64, offset: 2112)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1920, file: !37, line: 537, baseType: !218)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1920, file: !37, line: 538, baseType: !7, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1920, file: !37, line: 540, baseType: !94, size: 128, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1920, file: !37, line: 543, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1831, file: !37, line: 621, baseType: !1929, size: 64, offset: 2176)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1664, !730}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1831, file: !37, line: 622, baseType: !1933, size: 64, offset: 2240)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !202, file: !30, line: 486, baseType: !1936, size: 64, offset: 4096)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1945, !1946, !1947}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1937, file: !37, line: 643, baseType: !1692, size: 1472)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1937, file: !37, line: 644, baseType: !1695, size: 64, offset: 1472)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1937, file: !37, line: 645, baseType: !1942, size: 64, offset: 1536)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1664, !190}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1937, file: !37, line: 646, baseType: !1695, size: 64, offset: 1600)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1937, file: !37, line: 647, baseType: !1686, size: 64, offset: 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1937, file: !37, line: 648, baseType: !1686, size: 64, offset: 1728)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !202, file: !30, line: 493, baseType: !1949, size: 64, offset: 4160)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1951)
!1951 = !{!1952, !1953, !1954, !2014, !2015, !2016, !2017, !2018, !2019, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1950, file: !51, line: 163, baseType: !94, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1950, file: !51, line: 164, baseType: !153, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1950, file: !51, line: 165, baseType: !1955, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1958)
!1958 = !{!1959, !1963, !1974, !1979, !1983, !1991, !1995, !1999, !2006, !2010}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1957, file: !51, line: 106, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!103, !1949, !157, !50}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1957, file: !51, line: 108, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!103, !1949, !1967, !50}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1968, file: !51, line: 64, baseType: !172, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1968, file: !51, line: 65, baseType: !103, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1968, file: !51, line: 66, baseType: !1973, size: 512, offset: 96)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 512, elements: !862)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1957, file: !51, line: 110, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!103, !1949, !7, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !87, line: 164, baseType: !89)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1957, file: !51, line: 111, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1949, !7}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1957, file: !51, line: 112, baseType: !1984, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!103, !1949, !157, !1987, !7, !1989, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1957, file: !51, line: 117, baseType: !1992, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!103, !1949, !7, !7, !88}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1957, file: !51, line: 119, baseType: !1996, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1949, !7, !7}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1957, file: !51, line: 121, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!103, !1949, !2003, !190}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2005, line: 11, flags: DIFlagFwdDecl)
!2005 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1957, file: !51, line: 122, baseType: !2007, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !1949, !2003}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1957, file: !51, line: 123, baseType: !2011, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!103, !1949, !1967, !1989, !1990}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1950, file: !51, line: 166, baseType: !88, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1950, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1950, file: !51, line: 171, baseType: !172, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1950, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1950, file: !51, line: 173, baseType: !2020, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1950, file: !51, line: 175, baseType: !1949, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1950, file: !51, line: 182, baseType: !1978, size: 64, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1950, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1950, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1950, file: !51, line: 185, baseType: !1531, size: 128, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1950, file: !51, line: 186, baseType: !447, size: 192, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1950, file: !51, line: 187, baseType: !2029, offset: 1088)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1416)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !202, file: !30, line: 499, baseType: !94, size: 128, offset: 4224)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !202, file: !30, line: 502, baseType: !2032, size: 64, offset: 4352)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !202, file: !30, line: 504, baseType: !2036, size: 64, offset: 4416)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !202, file: !30, line: 505, baseType: !366, size: 64, offset: 4480)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !202, file: !30, line: 510, baseType: !366, size: 64, offset: 4544)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !202, file: !30, line: 511, baseType: !2040, size: 64, offset: 4608)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !202, file: !30, line: 513, baseType: !2044, size: 64, offset: 4672)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2045, file: !30, line: 293, baseType: !7, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2045, file: !30, line: 294, baseType: !89, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !202, file: !30, line: 515, baseType: !94, size: 128, offset: 4736)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !202, file: !30, line: 526, baseType: !2051, offset: 4864)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2052, line: 5, elements: !129)
!2052 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !202, file: !30, line: 528, baseType: !157, size: 64, offset: 4864)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !202, file: !30, line: 529, baseType: !172, size: 64, offset: 4928)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !202, file: !30, line: 534, baseType: !2056, size: 32, offset: 4992)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !87, line: 16, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !87, line: 13, baseType: !164)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !30, line: 535, baseType: !164, size: 32, offset: 5024)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !202, file: !30, line: 537, baseType: !218, offset: 5056)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !202, file: !30, line: 538, baseType: !94, size: 128, offset: 5056)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !202, file: !30, line: 540, baseType: !2062, size: 64, offset: 5184)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2064, line: 54, size: 960, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2076, !2080, !2081, !2082, !2083, !2087, !2091, !2092}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2063, file: !2064, line: 55, baseType: !153, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2063, file: !2064, line: 56, baseType: !1741, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2063, file: !2064, line: 58, baseType: !302, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2063, file: !2064, line: 59, baseType: !302, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2063, file: !2064, line: 60, baseType: !211, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2063, file: !2064, line: 62, baseType: !1677, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2063, file: !2064, line: 63, baseType: !2073, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!251, !1664, !1684}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2063, file: !2064, line: 65, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2062}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2063, file: !2064, line: 66, baseType: !1686, size: 64, offset: 512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2063, file: !2064, line: 68, baseType: !1695, size: 64, offset: 576)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2063, file: !2064, line: 70, baseType: !1451, size: 64, offset: 640)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2063, file: !2064, line: 71, baseType: !2084, size: 64, offset: 704)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!198, !1664}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2063, file: !2064, line: 73, baseType: !2088, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !1664, !1486, !1493}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2063, file: !2064, line: 75, baseType: !1690, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2063, file: !2064, line: 77, baseType: !1811, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !202, file: !30, line: 541, baseType: !302, size: 64, offset: 5248)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !202, file: !30, line: 543, baseType: !1686, size: 64, offset: 5312)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !202, file: !30, line: 544, baseType: !2096, size: 64, offset: 5376)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !202, file: !30, line: 545, baseType: !2099, size: 64, offset: 5440)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !202, file: !30, line: 547, baseType: !190, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !202, file: !30, line: 548, baseType: !190, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !202, file: !30, line: 549, baseType: !190, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !202, file: !30, line: 550, baseType: !190, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !176, file: !169, line: 116, baseType: !2106, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!190, !192, !153}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !176, file: !169, line: 118, baseType: !2110, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!103, !192, !153, !7, !88, !296}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !176, file: !169, line: 123, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!103, !192, !153, !2117, !296}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !176, file: !169, line: 126, baseType: !2119, size: 64, offset: 448)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!153, !192}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !176, file: !169, line: 127, baseType: !2119, size: 64, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !176, file: !169, line: 128, baseType: !2124, size: 64, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!172, !192}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !176, file: !169, line: 130, baseType: !2128, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!172, !192, !172}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !176, file: !169, line: 133, baseType: !2132, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!172, !192, !153}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !176, file: !169, line: 135, baseType: !2136, size: 64, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!103, !192, !153, !153, !7, !7, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !169, line: 43, size: 640, elements: !2141)
!2141 = !{!2142, !2143, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2140, file: !169, line: 44, baseType: !172, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2140, file: !169, line: 45, baseType: !7, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2140, file: !169, line: 46, baseType: !2145, size: 512, offset: 128)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !606)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !176, file: !169, line: 140, baseType: !2128, size: 64, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !176, file: !169, line: 143, baseType: !2124, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !176, file: !169, line: 145, baseType: !179, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !176, file: !169, line: 146, baseType: !2150, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!103, !192, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !169, line: 29, size: 128, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2154, file: !169, line: 30, baseType: !7, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2154, file: !169, line: 31, baseType: !7, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2154, file: !169, line: 32, baseType: !192, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !176, file: !169, line: 148, baseType: !2160, size: 64, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!103, !192, !1664}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !168, file: !169, line: 20, baseType: !1664, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !158, file: !159, line: 57, baseType: !2165, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !159, line: 31, size: 704, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2166, file: !159, line: 32, baseType: !251, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2166, file: !159, line: 33, baseType: !103, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2166, file: !159, line: 34, baseType: !88, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2166, file: !159, line: 35, baseType: !2165, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2166, file: !159, line: 43, baseType: !317, size: 448, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !158, file: !159, line: 58, baseType: !2165, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !159, line: 59, baseType: !157, size: 64, offset: 512)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !158, file: !159, line: 60, baseType: !157, size: 64, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !158, file: !159, line: 61, baseType: !157, size: 64, offset: 640)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !159, line: 63, baseType: !205, size: 512, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !158, file: !159, line: 65, baseType: !89, size: 64, offset: 1216)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !158, file: !159, line: 66, baseType: !88, size: 64, offset: 1280)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !141, file: !142, line: 417, baseType: !172, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !141, file: !142, line: 418, baseType: !2182, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !65, line: 263, size: 256, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2184, file: !65, line: 264, baseType: !153, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2184, file: !65, line: 265, baseType: !296, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2184, file: !65, line: 266, baseType: !190, size: 8, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2184, file: !65, line: 267, baseType: !64, size: 32, offset: 160)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !65, line: 268, baseType: !2191, size: 64, offset: 192)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !65, line: 268, size: 64, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2191, file: !65, line: 269, baseType: !198, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2191, file: !65, line: 276, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2191, file: !65, line: 270, size: 64, elements: !2196)
!2196 = !{!2197, !2199, !2201, !2203, !2205}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2195, file: !65, line: 271, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !606)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2195, file: !65, line: 272, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 64, elements: !429)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2195, file: !65, line: 273, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1042)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2195, file: !65, line: 274, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !657)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2195, file: !65, line: 275, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !657)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !141, file: !142, line: 419, baseType: !2208, size: 64, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2211, line: 20, size: 512, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2215, !2216, !2217, !2218, !2219, !2221, !2222}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2210, file: !2211, line: 21, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !87, line: 158, baseType: !1197)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2210, file: !2211, line: 22, baseType: !2214, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2210, file: !2211, line: 23, baseType: !153, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2211, line: 24, baseType: !89, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2210, file: !2211, line: 25, baseType: !89, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2210, file: !2211, line: 26, baseType: !2220, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2210, file: !2211, line: 26, baseType: !2220, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2210, file: !2211, line: 26, baseType: !2220, size: 64, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !141, file: !142, line: 420, baseType: !7, size: 32, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !141, file: !142, line: 421, baseType: !103, size: 32, offset: 608)
!2225 = !DILocalVariable(name: "busnum", arg: 1, scope: !136, file: !3, line: 52, type: !103)
!2226 = !DILocation(line: 52, column: 33, scope: !136)
!2227 = !DILocalVariable(name: "info", arg: 2, scope: !136, file: !3, line: 52, type: !139)
!2228 = !DILocation(line: 52, column: 70, scope: !136)
!2229 = !DILocalVariable(name: "len", arg: 3, scope: !136, file: !3, line: 52, type: !7)
!2230 = !DILocation(line: 52, column: 85, scope: !136)
!2231 = !DILocalVariable(name: "status", scope: !136, file: !3, line: 54, type: !103)
!2232 = !DILocation(line: 54, column: 6, scope: !136)
!2233 = !DILocation(line: 56, column: 2, scope: !136)
!2234 = !DILocation(line: 59, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !136, file: !3, line: 59, column: 6)
!2236 = !DILocation(line: 59, column: 16, scope: !2235)
!2237 = !DILocation(line: 59, column: 13, scope: !2235)
!2238 = !DILocation(line: 59, column: 6, scope: !136)
!2239 = !DILocation(line: 60, column: 33, scope: !2235)
!2240 = !DILocation(line: 60, column: 40, scope: !2235)
!2241 = !DILocation(line: 60, column: 31, scope: !2235)
!2242 = !DILocation(line: 60, column: 3, scope: !2235)
!2243 = !DILocation(line: 62, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !136, file: !3, line: 62, column: 2)
!2245 = !DILocation(line: 62, column: 7, scope: !2244)
!2246 = !DILocation(line: 62, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 62, column: 2)
!2248 = !DILocation(line: 62, column: 2, scope: !2244)
!2249 = !DILocalVariable(name: "devinfo", scope: !2250, file: !3, line: 63, type: !2251)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 62, column: 39)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_devinfo", file: !2253, line: 8, size: 832, elements: !2254)
!2253 = !DIFile(filename: "drivers/i2c/i2c-core.h", directory: "/home/lizy2001/genbc/linux")
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2252, file: !2253, line: 9, baseType: !94, size: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !2252, file: !2253, line: 10, baseType: !103, size: 32, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "board_info", scope: !2252, file: !2253, line: 11, baseType: !141, size: 640, offset: 192)
!2258 = !DILocation(line: 63, column: 23, scope: !2250)
!2259 = !DILocation(line: 65, column: 13, scope: !2250)
!2260 = !DILocation(line: 65, column: 11, scope: !2250)
!2261 = !DILocation(line: 66, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 66, column: 7)
!2263 = !DILocation(line: 66, column: 7, scope: !2250)
!2264 = !DILocation(line: 67, column: 4, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 67, column: 4)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 67, column: 4)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 66, column: 17)
!2268 = !DILocation(line: 67, column: 4, scope: !2266)
!2269 = !DILocation(line: 68, column: 11, scope: !2267)
!2270 = !DILocation(line: 69, column: 4, scope: !2267)
!2271 = !DILocation(line: 72, column: 21, scope: !2250)
!2272 = !DILocation(line: 72, column: 3, scope: !2250)
!2273 = !DILocation(line: 72, column: 12, scope: !2250)
!2274 = !DILocation(line: 72, column: 19, scope: !2250)
!2275 = !DILocation(line: 73, column: 3, scope: !2250)
!2276 = !DILocation(line: 73, column: 12, scope: !2250)
!2277 = !DILocation(line: 73, column: 26, scope: !2250)
!2278 = !DILocation(line: 73, column: 25, scope: !2250)
!2279 = !DILocation(line: 75, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 75, column: 7)
!2281 = !DILocation(line: 75, column: 13, scope: !2280)
!2282 = !DILocation(line: 75, column: 7, scope: !2250)
!2283 = !DILocation(line: 77, column: 27, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 75, column: 25)
!2285 = !DILocation(line: 77, column: 33, scope: !2284)
!2286 = !DILocation(line: 77, column: 6, scope: !2284)
!2287 = !DILocation(line: 76, column: 4, scope: !2284)
!2288 = !DILocation(line: 76, column: 13, scope: !2284)
!2289 = !DILocation(line: 76, column: 24, scope: !2284)
!2290 = !DILocation(line: 76, column: 35, scope: !2284)
!2291 = !DILocation(line: 78, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 78, column: 8)
!2293 = !DILocation(line: 78, column: 24, scope: !2292)
!2294 = !DILocation(line: 78, column: 35, scope: !2292)
!2295 = !DILocation(line: 78, column: 8, scope: !2292)
!2296 = !DILocation(line: 78, column: 8, scope: !2284)
!2297 = !DILocation(line: 79, column: 22, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 78, column: 48)
!2299 = !DILocation(line: 79, column: 31, scope: !2298)
!2300 = !DILocation(line: 79, column: 42, scope: !2298)
!2301 = !DILocation(line: 79, column: 14, scope: !2298)
!2302 = !DILocation(line: 79, column: 12, scope: !2298)
!2303 = !DILocation(line: 80, column: 11, scope: !2298)
!2304 = !DILocation(line: 80, column: 5, scope: !2298)
!2305 = !DILocation(line: 81, column: 5, scope: !2298)
!2306 = !DILocation(line: 83, column: 3, scope: !2284)
!2307 = !DILocation(line: 85, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 85, column: 7)
!2309 = !DILocation(line: 85, column: 13, scope: !2308)
!2310 = !DILocation(line: 85, column: 7, scope: !2250)
!2311 = !DILocation(line: 87, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 85, column: 24)
!2313 = !DILocation(line: 87, column: 19, scope: !2312)
!2314 = !DILocation(line: 88, column: 6, scope: !2312)
!2315 = !DILocation(line: 88, column: 12, scope: !2312)
!2316 = !DILocation(line: 88, column: 26, scope: !2312)
!2317 = !DILocation(line: 87, column: 5, scope: !2312)
!2318 = !DILocation(line: 86, column: 4, scope: !2312)
!2319 = !DILocation(line: 86, column: 13, scope: !2312)
!2320 = !DILocation(line: 86, column: 24, scope: !2312)
!2321 = !DILocation(line: 86, column: 34, scope: !2312)
!2322 = !DILocation(line: 91, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 91, column: 8)
!2324 = !DILocation(line: 91, column: 18, scope: !2323)
!2325 = !DILocation(line: 91, column: 29, scope: !2323)
!2326 = !DILocation(line: 91, column: 8, scope: !2312)
!2327 = !DILocation(line: 92, column: 12, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 91, column: 40)
!2329 = !DILocation(line: 93, column: 11, scope: !2328)
!2330 = !DILocation(line: 93, column: 5, scope: !2328)
!2331 = !DILocation(line: 94, column: 5, scope: !2328)
!2332 = !DILocation(line: 96, column: 3, scope: !2312)
!2333 = !DILocation(line: 98, column: 18, scope: !2250)
!2334 = !DILocation(line: 98, column: 27, scope: !2250)
!2335 = !DILocation(line: 98, column: 3, scope: !2250)
!2336 = !DILocation(line: 99, column: 2, scope: !2250)
!2337 = !DILocation(line: 62, column: 27, scope: !2247)
!2338 = !DILocation(line: 62, column: 35, scope: !2247)
!2339 = !DILocation(line: 62, column: 2, scope: !2247)
!2340 = distinct !{!2340, !2248, !2341}
!2341 = !DILocation(line: 99, column: 2, scope: !2244)
!2342 = !DILocation(line: 101, column: 2, scope: !136)
!2343 = !DILocation(line: 103, column: 9, scope: !136)
!2344 = !DILocation(line: 103, column: 2, scope: !136)
!2345 = distinct !DISubprogram(name: "kzalloc", scope: !74, file: !74, line: 662, type: !2346, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!88, !296, !86}
!2348 = !DILocalVariable(name: "s", arg: 1, scope: !2349, file: !74, line: 445, type: !1118)
!2349 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !74, file: !74, line: 445, type: !2350, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!88, !1118, !86, !296}
!2352 = !DILocation(line: 445, column: 72, scope: !2349, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 552, column: 10, scope: !2354, inlinedAt: !2357)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !74, line: 540, column: 34)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !74, line: 540, column: 6)
!2356 = distinct !DISubprogram(name: "kmalloc", scope: !74, file: !74, line: 538, type: !2346, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2357 = distinct !DILocation(line: 664, column: 9, scope: !2345)
!2358 = !DILocalVariable(name: "flags", arg: 2, scope: !2349, file: !74, line: 446, type: !86)
!2359 = !DILocation(line: 446, column: 9, scope: !2349, inlinedAt: !2353)
!2360 = !DILocalVariable(name: "size", arg: 3, scope: !2349, file: !74, line: 446, type: !296)
!2361 = !DILocation(line: 446, column: 23, scope: !2349, inlinedAt: !2353)
!2362 = !DILocalVariable(name: "ret", scope: !2349, file: !74, line: 448, type: !88)
!2363 = !DILocation(line: 448, column: 8, scope: !2349, inlinedAt: !2353)
!2364 = !DILocalVariable(name: "flags", arg: 1, scope: !2365, file: !74, line: 318, type: !86)
!2365 = distinct !DISubprogram(name: "kmalloc_type", scope: !74, file: !74, line: 318, type: !2366, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!73, !86}
!2368 = !DILocation(line: 318, column: 67, scope: !2365, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 553, column: 20, scope: !2354, inlinedAt: !2357)
!2370 = !DILocalVariable(name: "size", arg: 1, scope: !2371, file: !74, line: 346, type: !296)
!2371 = distinct !DISubprogram(name: "kmalloc_index", scope: !74, file: !74, line: 346, type: !2372, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!7, !296}
!2374 = !DILocation(line: 346, column: 58, scope: !2371, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 547, column: 11, scope: !2354, inlinedAt: !2357)
!2376 = !DILocalVariable(name: "size", arg: 1, scope: !2377, file: !74, line: 472, type: !296)
!2377 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !74, file: !74, line: 472, type: !2378, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!88, !296, !86, !7}
!2380 = !DILocation(line: 472, column: 28, scope: !2377, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 481, column: 9, scope: !2382, inlinedAt: !2383)
!2382 = distinct !DISubprogram(name: "kmalloc_large", scope: !74, file: !74, line: 478, type: !2346, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2383 = distinct !DILocation(line: 545, column: 11, scope: !2384, inlinedAt: !2357)
!2384 = distinct !DILexicalBlock(scope: !2354, file: !74, line: 544, column: 7)
!2385 = !DILocalVariable(name: "flags", arg: 2, scope: !2377, file: !74, line: 472, type: !86)
!2386 = !DILocation(line: 472, column: 40, scope: !2377, inlinedAt: !2381)
!2387 = !DILocalVariable(name: "order", arg: 3, scope: !2377, file: !74, line: 472, type: !7)
!2388 = !DILocation(line: 472, column: 60, scope: !2377, inlinedAt: !2381)
!2389 = !DILocalVariable(name: "size", arg: 1, scope: !2382, file: !74, line: 478, type: !296)
!2390 = !DILocation(line: 478, column: 51, scope: !2382, inlinedAt: !2383)
!2391 = !DILocalVariable(name: "flags", arg: 2, scope: !2382, file: !74, line: 478, type: !86)
!2392 = !DILocation(line: 478, column: 63, scope: !2382, inlinedAt: !2383)
!2393 = !DILocalVariable(name: "order", scope: !2382, file: !74, line: 480, type: !7)
!2394 = !DILocation(line: 480, column: 15, scope: !2382, inlinedAt: !2383)
!2395 = !DILocalVariable(name: "size", arg: 1, scope: !2356, file: !74, line: 538, type: !296)
!2396 = !DILocation(line: 538, column: 45, scope: !2356, inlinedAt: !2357)
!2397 = !DILocalVariable(name: "flags", arg: 2, scope: !2356, file: !74, line: 538, type: !86)
!2398 = !DILocation(line: 538, column: 57, scope: !2356, inlinedAt: !2357)
!2399 = !DILocalVariable(name: "index", scope: !2354, file: !74, line: 542, type: !7)
!2400 = !DILocation(line: 542, column: 16, scope: !2354, inlinedAt: !2357)
!2401 = !DILocalVariable(name: "size", arg: 1, scope: !2345, file: !74, line: 662, type: !296)
!2402 = !DILocation(line: 662, column: 36, scope: !2345)
!2403 = !DILocalVariable(name: "flags", arg: 2, scope: !2345, file: !74, line: 662, type: !86)
!2404 = !DILocation(line: 662, column: 48, scope: !2345)
!2405 = !DILocation(line: 664, column: 17, scope: !2345)
!2406 = !DILocation(line: 664, column: 23, scope: !2345)
!2407 = !DILocation(line: 664, column: 29, scope: !2345)
!2408 = !DILocation(line: 540, column: 27, scope: !2355, inlinedAt: !2357)
!2409 = !DILocation(line: 540, column: 6, scope: !2355, inlinedAt: !2357)
!2410 = !DILocation(line: 540, column: 6, scope: !2356, inlinedAt: !2357)
!2411 = !DILocation(line: 544, column: 7, scope: !2384, inlinedAt: !2357)
!2412 = !DILocation(line: 544, column: 12, scope: !2384, inlinedAt: !2357)
!2413 = !DILocation(line: 544, column: 7, scope: !2354, inlinedAt: !2357)
!2414 = !DILocation(line: 545, column: 25, scope: !2384, inlinedAt: !2357)
!2415 = !DILocation(line: 545, column: 31, scope: !2384, inlinedAt: !2357)
!2416 = !DILocation(line: 480, column: 33, scope: !2382, inlinedAt: !2383)
!2417 = !DILocation(line: 480, column: 23, scope: !2382, inlinedAt: !2383)
!2418 = !DILocation(line: 481, column: 29, scope: !2382, inlinedAt: !2383)
!2419 = !DILocation(line: 481, column: 35, scope: !2382, inlinedAt: !2383)
!2420 = !DILocation(line: 481, column: 42, scope: !2382, inlinedAt: !2383)
!2421 = !DILocation(line: 474, column: 23, scope: !2377, inlinedAt: !2381)
!2422 = !DILocation(line: 474, column: 29, scope: !2377, inlinedAt: !2381)
!2423 = !DILocation(line: 474, column: 36, scope: !2377, inlinedAt: !2381)
!2424 = !DILocation(line: 474, column: 9, scope: !2377, inlinedAt: !2381)
!2425 = !DILocation(line: 545, column: 4, scope: !2384, inlinedAt: !2357)
!2426 = !DILocation(line: 547, column: 25, scope: !2354, inlinedAt: !2357)
!2427 = !DILocation(line: 348, column: 7, scope: !2428, inlinedAt: !2375)
!2428 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 348, column: 6)
!2429 = !DILocation(line: 348, column: 6, scope: !2371, inlinedAt: !2375)
!2430 = !DILocation(line: 349, column: 3, scope: !2428, inlinedAt: !2375)
!2431 = !DILocation(line: 351, column: 6, scope: !2432, inlinedAt: !2375)
!2432 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 351, column: 6)
!2433 = !DILocation(line: 351, column: 11, scope: !2432, inlinedAt: !2375)
!2434 = !DILocation(line: 351, column: 6, scope: !2371, inlinedAt: !2375)
!2435 = !DILocation(line: 352, column: 3, scope: !2432, inlinedAt: !2375)
!2436 = !DILocation(line: 354, column: 32, scope: !2437, inlinedAt: !2375)
!2437 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 354, column: 6)
!2438 = !DILocation(line: 354, column: 37, scope: !2437, inlinedAt: !2375)
!2439 = !DILocation(line: 354, column: 42, scope: !2437, inlinedAt: !2375)
!2440 = !DILocation(line: 354, column: 45, scope: !2437, inlinedAt: !2375)
!2441 = !DILocation(line: 354, column: 50, scope: !2437, inlinedAt: !2375)
!2442 = !DILocation(line: 354, column: 6, scope: !2371, inlinedAt: !2375)
!2443 = !DILocation(line: 355, column: 3, scope: !2437, inlinedAt: !2375)
!2444 = !DILocation(line: 356, column: 32, scope: !2445, inlinedAt: !2375)
!2445 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 356, column: 6)
!2446 = !DILocation(line: 356, column: 37, scope: !2445, inlinedAt: !2375)
!2447 = !DILocation(line: 356, column: 43, scope: !2445, inlinedAt: !2375)
!2448 = !DILocation(line: 356, column: 46, scope: !2445, inlinedAt: !2375)
!2449 = !DILocation(line: 356, column: 51, scope: !2445, inlinedAt: !2375)
!2450 = !DILocation(line: 356, column: 6, scope: !2371, inlinedAt: !2375)
!2451 = !DILocation(line: 357, column: 3, scope: !2445, inlinedAt: !2375)
!2452 = !DILocation(line: 358, column: 6, scope: !2453, inlinedAt: !2375)
!2453 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 358, column: 6)
!2454 = !DILocation(line: 358, column: 11, scope: !2453, inlinedAt: !2375)
!2455 = !DILocation(line: 358, column: 6, scope: !2371, inlinedAt: !2375)
!2456 = !DILocation(line: 358, column: 26, scope: !2453, inlinedAt: !2375)
!2457 = !DILocation(line: 359, column: 6, scope: !2458, inlinedAt: !2375)
!2458 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 359, column: 6)
!2459 = !DILocation(line: 359, column: 11, scope: !2458, inlinedAt: !2375)
!2460 = !DILocation(line: 359, column: 6, scope: !2371, inlinedAt: !2375)
!2461 = !DILocation(line: 359, column: 26, scope: !2458, inlinedAt: !2375)
!2462 = !DILocation(line: 360, column: 6, scope: !2463, inlinedAt: !2375)
!2463 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 360, column: 6)
!2464 = !DILocation(line: 360, column: 11, scope: !2463, inlinedAt: !2375)
!2465 = !DILocation(line: 360, column: 6, scope: !2371, inlinedAt: !2375)
!2466 = !DILocation(line: 360, column: 26, scope: !2463, inlinedAt: !2375)
!2467 = !DILocation(line: 361, column: 6, scope: !2468, inlinedAt: !2375)
!2468 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 361, column: 6)
!2469 = !DILocation(line: 361, column: 11, scope: !2468, inlinedAt: !2375)
!2470 = !DILocation(line: 361, column: 6, scope: !2371, inlinedAt: !2375)
!2471 = !DILocation(line: 361, column: 26, scope: !2468, inlinedAt: !2375)
!2472 = !DILocation(line: 362, column: 6, scope: !2473, inlinedAt: !2375)
!2473 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 362, column: 6)
!2474 = !DILocation(line: 362, column: 11, scope: !2473, inlinedAt: !2375)
!2475 = !DILocation(line: 362, column: 6, scope: !2371, inlinedAt: !2375)
!2476 = !DILocation(line: 362, column: 26, scope: !2473, inlinedAt: !2375)
!2477 = !DILocation(line: 363, column: 6, scope: !2478, inlinedAt: !2375)
!2478 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 363, column: 6)
!2479 = !DILocation(line: 363, column: 11, scope: !2478, inlinedAt: !2375)
!2480 = !DILocation(line: 363, column: 6, scope: !2371, inlinedAt: !2375)
!2481 = !DILocation(line: 363, column: 26, scope: !2478, inlinedAt: !2375)
!2482 = !DILocation(line: 364, column: 6, scope: !2483, inlinedAt: !2375)
!2483 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 364, column: 6)
!2484 = !DILocation(line: 364, column: 11, scope: !2483, inlinedAt: !2375)
!2485 = !DILocation(line: 364, column: 6, scope: !2371, inlinedAt: !2375)
!2486 = !DILocation(line: 364, column: 26, scope: !2483, inlinedAt: !2375)
!2487 = !DILocation(line: 365, column: 6, scope: !2488, inlinedAt: !2375)
!2488 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 365, column: 6)
!2489 = !DILocation(line: 365, column: 11, scope: !2488, inlinedAt: !2375)
!2490 = !DILocation(line: 365, column: 6, scope: !2371, inlinedAt: !2375)
!2491 = !DILocation(line: 365, column: 26, scope: !2488, inlinedAt: !2375)
!2492 = !DILocation(line: 366, column: 6, scope: !2493, inlinedAt: !2375)
!2493 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 366, column: 6)
!2494 = !DILocation(line: 366, column: 11, scope: !2493, inlinedAt: !2375)
!2495 = !DILocation(line: 366, column: 6, scope: !2371, inlinedAt: !2375)
!2496 = !DILocation(line: 366, column: 26, scope: !2493, inlinedAt: !2375)
!2497 = !DILocation(line: 367, column: 6, scope: !2498, inlinedAt: !2375)
!2498 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 367, column: 6)
!2499 = !DILocation(line: 367, column: 11, scope: !2498, inlinedAt: !2375)
!2500 = !DILocation(line: 367, column: 6, scope: !2371, inlinedAt: !2375)
!2501 = !DILocation(line: 367, column: 26, scope: !2498, inlinedAt: !2375)
!2502 = !DILocation(line: 368, column: 6, scope: !2503, inlinedAt: !2375)
!2503 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 368, column: 6)
!2504 = !DILocation(line: 368, column: 11, scope: !2503, inlinedAt: !2375)
!2505 = !DILocation(line: 368, column: 6, scope: !2371, inlinedAt: !2375)
!2506 = !DILocation(line: 368, column: 26, scope: !2503, inlinedAt: !2375)
!2507 = !DILocation(line: 369, column: 6, scope: !2508, inlinedAt: !2375)
!2508 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 369, column: 6)
!2509 = !DILocation(line: 369, column: 11, scope: !2508, inlinedAt: !2375)
!2510 = !DILocation(line: 369, column: 6, scope: !2371, inlinedAt: !2375)
!2511 = !DILocation(line: 369, column: 26, scope: !2508, inlinedAt: !2375)
!2512 = !DILocation(line: 370, column: 6, scope: !2513, inlinedAt: !2375)
!2513 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 370, column: 6)
!2514 = !DILocation(line: 370, column: 11, scope: !2513, inlinedAt: !2375)
!2515 = !DILocation(line: 370, column: 6, scope: !2371, inlinedAt: !2375)
!2516 = !DILocation(line: 370, column: 26, scope: !2513, inlinedAt: !2375)
!2517 = !DILocation(line: 371, column: 6, scope: !2518, inlinedAt: !2375)
!2518 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 371, column: 6)
!2519 = !DILocation(line: 371, column: 11, scope: !2518, inlinedAt: !2375)
!2520 = !DILocation(line: 371, column: 6, scope: !2371, inlinedAt: !2375)
!2521 = !DILocation(line: 371, column: 26, scope: !2518, inlinedAt: !2375)
!2522 = !DILocation(line: 372, column: 6, scope: !2523, inlinedAt: !2375)
!2523 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 372, column: 6)
!2524 = !DILocation(line: 372, column: 11, scope: !2523, inlinedAt: !2375)
!2525 = !DILocation(line: 372, column: 6, scope: !2371, inlinedAt: !2375)
!2526 = !DILocation(line: 372, column: 26, scope: !2523, inlinedAt: !2375)
!2527 = !DILocation(line: 373, column: 6, scope: !2528, inlinedAt: !2375)
!2528 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 373, column: 6)
!2529 = !DILocation(line: 373, column: 11, scope: !2528, inlinedAt: !2375)
!2530 = !DILocation(line: 373, column: 6, scope: !2371, inlinedAt: !2375)
!2531 = !DILocation(line: 373, column: 26, scope: !2528, inlinedAt: !2375)
!2532 = !DILocation(line: 374, column: 6, scope: !2533, inlinedAt: !2375)
!2533 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 374, column: 6)
!2534 = !DILocation(line: 374, column: 11, scope: !2533, inlinedAt: !2375)
!2535 = !DILocation(line: 374, column: 6, scope: !2371, inlinedAt: !2375)
!2536 = !DILocation(line: 374, column: 26, scope: !2533, inlinedAt: !2375)
!2537 = !DILocation(line: 375, column: 6, scope: !2538, inlinedAt: !2375)
!2538 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 375, column: 6)
!2539 = !DILocation(line: 375, column: 11, scope: !2538, inlinedAt: !2375)
!2540 = !DILocation(line: 375, column: 6, scope: !2371, inlinedAt: !2375)
!2541 = !DILocation(line: 375, column: 27, scope: !2538, inlinedAt: !2375)
!2542 = !DILocation(line: 376, column: 6, scope: !2543, inlinedAt: !2375)
!2543 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 376, column: 6)
!2544 = !DILocation(line: 376, column: 11, scope: !2543, inlinedAt: !2375)
!2545 = !DILocation(line: 376, column: 6, scope: !2371, inlinedAt: !2375)
!2546 = !DILocation(line: 376, column: 32, scope: !2543, inlinedAt: !2375)
!2547 = !DILocation(line: 377, column: 6, scope: !2548, inlinedAt: !2375)
!2548 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 377, column: 6)
!2549 = !DILocation(line: 377, column: 11, scope: !2548, inlinedAt: !2375)
!2550 = !DILocation(line: 377, column: 6, scope: !2371, inlinedAt: !2375)
!2551 = !DILocation(line: 377, column: 32, scope: !2548, inlinedAt: !2375)
!2552 = !DILocation(line: 378, column: 6, scope: !2553, inlinedAt: !2375)
!2553 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 378, column: 6)
!2554 = !DILocation(line: 378, column: 11, scope: !2553, inlinedAt: !2375)
!2555 = !DILocation(line: 378, column: 6, scope: !2371, inlinedAt: !2375)
!2556 = !DILocation(line: 378, column: 32, scope: !2553, inlinedAt: !2375)
!2557 = !DILocation(line: 379, column: 6, scope: !2558, inlinedAt: !2375)
!2558 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 379, column: 6)
!2559 = !DILocation(line: 379, column: 11, scope: !2558, inlinedAt: !2375)
!2560 = !DILocation(line: 379, column: 6, scope: !2371, inlinedAt: !2375)
!2561 = !DILocation(line: 379, column: 33, scope: !2558, inlinedAt: !2375)
!2562 = !DILocation(line: 380, column: 6, scope: !2563, inlinedAt: !2375)
!2563 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 380, column: 6)
!2564 = !DILocation(line: 380, column: 11, scope: !2563, inlinedAt: !2375)
!2565 = !DILocation(line: 380, column: 6, scope: !2371, inlinedAt: !2375)
!2566 = !DILocation(line: 380, column: 33, scope: !2563, inlinedAt: !2375)
!2567 = !DILocation(line: 381, column: 6, scope: !2568, inlinedAt: !2375)
!2568 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 381, column: 6)
!2569 = !DILocation(line: 381, column: 11, scope: !2568, inlinedAt: !2375)
!2570 = !DILocation(line: 381, column: 6, scope: !2371, inlinedAt: !2375)
!2571 = !DILocation(line: 381, column: 33, scope: !2568, inlinedAt: !2375)
!2572 = !DILocation(line: 382, column: 2, scope: !2573, inlinedAt: !2375)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !74, line: 382, column: 2)
!2574 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 382, column: 2)
!2575 = !{i32 -2144183139, i32 -2144183110, i32 -2144183064, i32 -2144183006, i32 -2144182952, i32 -2144182898, i32 -2144182843, i32 -2144182812}
!2576 = !DILocation(line: 382, column: 2, scope: !2577, inlinedAt: !2375)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !74, line: 382, column: 2)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !74, line: 382, column: 2)
!2579 = !{i32 -2144182369, i32 -2144182362, i32 -2144182308, i32 -2144182277, i32 -2144182247}
!2580 = !DILocation(line: 382, column: 2, scope: !2578, inlinedAt: !2375)
!2581 = !DILocation(line: 386, column: 1, scope: !2371, inlinedAt: !2375)
!2582 = !DILocation(line: 547, column: 9, scope: !2354, inlinedAt: !2357)
!2583 = !DILocation(line: 549, column: 8, scope: !2584, inlinedAt: !2357)
!2584 = distinct !DILexicalBlock(scope: !2354, file: !74, line: 549, column: 7)
!2585 = !DILocation(line: 549, column: 7, scope: !2354, inlinedAt: !2357)
!2586 = !DILocation(line: 550, column: 4, scope: !2584, inlinedAt: !2357)
!2587 = !DILocation(line: 553, column: 33, scope: !2354, inlinedAt: !2357)
!2588 = !DILocation(line: 325, column: 6, scope: !2589, inlinedAt: !2369)
!2589 = distinct !DILexicalBlock(scope: !2365, file: !74, line: 325, column: 6)
!2590 = !DILocation(line: 325, column: 6, scope: !2365, inlinedAt: !2369)
!2591 = !DILocation(line: 326, column: 3, scope: !2589, inlinedAt: !2369)
!2592 = !DILocation(line: 332, column: 9, scope: !2365, inlinedAt: !2369)
!2593 = !DILocation(line: 332, column: 15, scope: !2365, inlinedAt: !2369)
!2594 = !DILocation(line: 332, column: 2, scope: !2365, inlinedAt: !2369)
!2595 = !DILocation(line: 336, column: 1, scope: !2365, inlinedAt: !2369)
!2596 = !DILocation(line: 553, column: 5, scope: !2354, inlinedAt: !2357)
!2597 = !DILocation(line: 553, column: 41, scope: !2354, inlinedAt: !2357)
!2598 = !DILocation(line: 554, column: 5, scope: !2354, inlinedAt: !2357)
!2599 = !DILocation(line: 554, column: 12, scope: !2354, inlinedAt: !2357)
!2600 = !DILocation(line: 448, column: 31, scope: !2349, inlinedAt: !2353)
!2601 = !DILocation(line: 448, column: 34, scope: !2349, inlinedAt: !2353)
!2602 = !DILocation(line: 448, column: 14, scope: !2349, inlinedAt: !2353)
!2603 = !DILocation(line: 450, column: 22, scope: !2349, inlinedAt: !2353)
!2604 = !DILocation(line: 450, column: 25, scope: !2349, inlinedAt: !2353)
!2605 = !DILocation(line: 450, column: 30, scope: !2349, inlinedAt: !2353)
!2606 = !DILocation(line: 450, column: 36, scope: !2349, inlinedAt: !2353)
!2607 = !DILocation(line: 450, column: 8, scope: !2349, inlinedAt: !2353)
!2608 = !DILocation(line: 450, column: 6, scope: !2349, inlinedAt: !2353)
!2609 = !DILocation(line: 451, column: 9, scope: !2349, inlinedAt: !2353)
!2610 = !DILocation(line: 552, column: 3, scope: !2354, inlinedAt: !2357)
!2611 = !DILocation(line: 557, column: 19, scope: !2356, inlinedAt: !2357)
!2612 = !DILocation(line: 557, column: 25, scope: !2356, inlinedAt: !2357)
!2613 = !DILocation(line: 557, column: 9, scope: !2356, inlinedAt: !2357)
!2614 = !DILocation(line: 557, column: 2, scope: !2356, inlinedAt: !2357)
!2615 = !DILocation(line: 558, column: 1, scope: !2356, inlinedAt: !2357)
!2616 = !DILocation(line: 664, column: 2, scope: !2345)
!2617 = distinct !DISubprogram(name: "IS_ERR", scope: !2618, file: !2618, line: 34, type: !2619, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2618 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!190, !198}
!2621 = !DILocalVariable(name: "ptr", arg: 1, scope: !2617, file: !2618, line: 34, type: !198)
!2622 = !DILocation(line: 34, column: 60, scope: !2617)
!2623 = !DILocation(line: 36, column: 9, scope: !2617)
!2624 = !DILocation(line: 36, column: 2, scope: !2617)
!2625 = distinct !DISubprogram(name: "PTR_ERR", scope: !2618, file: !2618, line: 29, type: !2626, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!90, !198}
!2628 = !DILocalVariable(name: "ptr", arg: 1, scope: !2625, file: !2618, line: 29, type: !198)
!2629 = !DILocation(line: 29, column: 61, scope: !2625)
!2630 = !DILocation(line: 31, column: 16, scope: !2625)
!2631 = !DILocation(line: 31, column: 9, scope: !2625)
!2632 = !DILocation(line: 31, column: 2, scope: !2625)
!2633 = distinct !DISubprogram(name: "list_add_tail", scope: !2634, file: !2634, line: 98, type: !2635, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2634 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !93, !93}
!2637 = !DILocalVariable(name: "new", arg: 1, scope: !2633, file: !2634, line: 98, type: !93)
!2638 = !DILocation(line: 98, column: 52, scope: !2633)
!2639 = !DILocalVariable(name: "head", arg: 2, scope: !2633, file: !2634, line: 98, type: !93)
!2640 = !DILocation(line: 98, column: 75, scope: !2633)
!2641 = !DILocation(line: 100, column: 13, scope: !2633)
!2642 = !DILocation(line: 100, column: 18, scope: !2633)
!2643 = !DILocation(line: 100, column: 24, scope: !2633)
!2644 = !DILocation(line: 100, column: 30, scope: !2633)
!2645 = !DILocation(line: 100, column: 2, scope: !2633)
!2646 = !DILocation(line: 101, column: 1, scope: !2633)
!2647 = distinct !DISubprogram(name: "get_order", scope: !2648, file: !2648, line: 29, type: !2649, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2648 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!103, !89}
!2651 = !DILocalVariable(name: "x", arg: 1, scope: !2652, file: !2653, line: 366, type: !367)
!2652 = distinct !DISubprogram(name: "fls64", scope: !2653, file: !2653, line: 366, type: !2654, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2653 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!103, !367}
!2656 = !DILocation(line: 366, column: 40, scope: !2652, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 46, column: 9, scope: !2647)
!2658 = !DILocalVariable(name: "bitpos", scope: !2652, file: !2653, line: 368, type: !103)
!2659 = !DILocation(line: 368, column: 6, scope: !2652, inlinedAt: !2657)
!2660 = !DILocalVariable(name: "size", arg: 1, scope: !2647, file: !2648, line: 29, type: !89)
!2661 = !DILocation(line: 29, column: 63, scope: !2647)
!2662 = !DILocation(line: 31, column: 27, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2647, file: !2648, line: 31, column: 6)
!2664 = !DILocation(line: 31, column: 6, scope: !2663)
!2665 = !DILocation(line: 31, column: 6, scope: !2647)
!2666 = !DILocation(line: 32, column: 8, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2648, line: 32, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !2648, line: 31, column: 34)
!2669 = !DILocation(line: 32, column: 7, scope: !2668)
!2670 = !DILocation(line: 33, column: 4, scope: !2667)
!2671 = !DILocation(line: 35, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !2648, line: 35, column: 7)
!2673 = !DILocation(line: 35, column: 12, scope: !2672)
!2674 = !DILocation(line: 35, column: 7, scope: !2668)
!2675 = !DILocation(line: 36, column: 4, scope: !2672)
!2676 = !DILocation(line: 38, column: 10, scope: !2668)
!2677 = !DILocation(line: 38, column: 28, scope: !2668)
!2678 = !DILocation(line: 38, column: 41, scope: !2668)
!2679 = !DILocation(line: 38, column: 3, scope: !2668)
!2680 = !DILocation(line: 41, column: 6, scope: !2647)
!2681 = !DILocation(line: 42, column: 7, scope: !2647)
!2682 = !DILocation(line: 46, column: 15, scope: !2647)
!2683 = !DILocation(line: 374, column: 2, scope: !2652, inlinedAt: !2657)
!2684 = !DILocation(line: 376, column: 14, scope: !2652, inlinedAt: !2657)
!2685 = !{i32 357563}
!2686 = !DILocation(line: 377, column: 9, scope: !2652, inlinedAt: !2657)
!2687 = !DILocation(line: 377, column: 16, scope: !2652, inlinedAt: !2657)
!2688 = !DILocation(line: 46, column: 2, scope: !2647)
!2689 = !DILocation(line: 48, column: 1, scope: !2647)
!2690 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2691, file: !2691, line: 30, type: !2692, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2691 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!103, !366}
!2694 = !DILocation(line: 366, column: 40, scope: !2652, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 32, column: 9, scope: !2690)
!2696 = !DILocation(line: 368, column: 6, scope: !2652, inlinedAt: !2695)
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2690, file: !2691, line: 30, type: !366)
!2698 = !DILocation(line: 30, column: 21, scope: !2690)
!2699 = !DILocation(line: 32, column: 15, scope: !2690)
!2700 = !DILocation(line: 374, column: 2, scope: !2652, inlinedAt: !2695)
!2701 = !DILocation(line: 376, column: 14, scope: !2652, inlinedAt: !2695)
!2702 = !DILocation(line: 377, column: 9, scope: !2652, inlinedAt: !2695)
!2703 = !DILocation(line: 377, column: 16, scope: !2652, inlinedAt: !2695)
!2704 = !DILocation(line: 32, column: 18, scope: !2690)
!2705 = !DILocation(line: 32, column: 2, scope: !2690)
!2706 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2707, file: !2707, line: 137, type: !2708, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2707 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!88, !1118, !198, !296, !86}
!2710 = !DILocalVariable(name: "s", arg: 1, scope: !2706, file: !2707, line: 137, type: !1118)
!2711 = !DILocation(line: 137, column: 54, scope: !2706)
!2712 = !DILocalVariable(name: "object", arg: 2, scope: !2706, file: !2707, line: 137, type: !198)
!2713 = !DILocation(line: 137, column: 69, scope: !2706)
!2714 = !DILocalVariable(name: "size", arg: 3, scope: !2706, file: !2707, line: 138, type: !296)
!2715 = !DILocation(line: 138, column: 12, scope: !2706)
!2716 = !DILocalVariable(name: "flags", arg: 4, scope: !2706, file: !2707, line: 138, type: !86)
!2717 = !DILocation(line: 138, column: 24, scope: !2706)
!2718 = !DILocation(line: 140, column: 17, scope: !2706)
!2719 = !DILocation(line: 140, column: 2, scope: !2706)
!2720 = distinct !DISubprogram(name: "__list_add", scope: !2634, file: !2634, line: 63, type: !2721, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !93, !93, !93}
!2723 = !DILocalVariable(name: "new", arg: 1, scope: !2720, file: !2634, line: 63, type: !93)
!2724 = !DILocation(line: 63, column: 49, scope: !2720)
!2725 = !DILocalVariable(name: "prev", arg: 2, scope: !2720, file: !2634, line: 64, type: !93)
!2726 = !DILocation(line: 64, column: 28, scope: !2720)
!2727 = !DILocalVariable(name: "next", arg: 3, scope: !2720, file: !2634, line: 65, type: !93)
!2728 = !DILocation(line: 65, column: 28, scope: !2720)
!2729 = !DILocation(line: 67, column: 24, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2720, file: !2634, line: 67, column: 6)
!2731 = !DILocation(line: 67, column: 29, scope: !2730)
!2732 = !DILocation(line: 67, column: 35, scope: !2730)
!2733 = !DILocation(line: 67, column: 7, scope: !2730)
!2734 = !DILocation(line: 67, column: 6, scope: !2720)
!2735 = !DILocation(line: 68, column: 3, scope: !2730)
!2736 = !DILocation(line: 70, column: 15, scope: !2720)
!2737 = !DILocation(line: 70, column: 2, scope: !2720)
!2738 = !DILocation(line: 70, column: 8, scope: !2720)
!2739 = !DILocation(line: 70, column: 13, scope: !2720)
!2740 = !DILocation(line: 71, column: 14, scope: !2720)
!2741 = !DILocation(line: 71, column: 2, scope: !2720)
!2742 = !DILocation(line: 71, column: 7, scope: !2720)
!2743 = !DILocation(line: 71, column: 12, scope: !2720)
!2744 = !DILocation(line: 72, column: 14, scope: !2720)
!2745 = !DILocation(line: 72, column: 2, scope: !2720)
!2746 = !DILocation(line: 72, column: 7, scope: !2720)
!2747 = !DILocation(line: 72, column: 12, scope: !2720)
!2748 = !DILocation(line: 73, column: 2, scope: !2720)
!2749 = !DILocation(line: 73, column: 2, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2720, file: !2634, line: 73, column: 2)
!2751 = !DILocation(line: 73, column: 2, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2750, file: !2634, line: 73, column: 2)
!2753 = !DILocation(line: 73, column: 2, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !2634, line: 73, column: 2)
!2755 = !DILocation(line: 74, column: 1, scope: !2720)
!2756 = distinct !DISubprogram(name: "__list_add_valid", scope: !2634, file: !2634, line: 45, type: !2757, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !129)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!190, !93, !93, !93}
!2759 = !DILocalVariable(name: "new", arg: 1, scope: !2756, file: !2634, line: 45, type: !93)
!2760 = !DILocation(line: 45, column: 55, scope: !2756)
!2761 = !DILocalVariable(name: "prev", arg: 2, scope: !2756, file: !2634, line: 46, type: !93)
!2762 = !DILocation(line: 46, column: 23, scope: !2756)
!2763 = !DILocalVariable(name: "next", arg: 3, scope: !2756, file: !2634, line: 47, type: !93)
!2764 = !DILocation(line: 47, column: 23, scope: !2756)
!2765 = !DILocation(line: 49, column: 2, scope: !2756)
