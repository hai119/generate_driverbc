; ModuleID = '../bcout/drivers/i2c/algos/i2c-algo-bit.llvm.bc'
source_filename = "drivers/i2c/algos/i2c-algo-bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { {}*, {}*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
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
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_algo_bit_data = type { i8*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, i32, i32, i8 }

@__param_str_bit_test = internal constant [22 x i8] c"i2c_algo_bit.bit_test\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@bit_test = internal global i32 0, align 4, !dbg !2341
@__param_bit_test = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_bit_test, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @bit_test to i8*) } }, section "__param", align 8, !dbg !68
@__UNIQUE_ID_bit_testtype171 = internal constant [35 x i8] c"i2c_algo_bit.parmtype=bit_test:int\00", section ".modinfo", align 1, !dbg !140
@__UNIQUE_ID_bit_test172 = internal constant [76 x i8] c"i2c_algo_bit.parm=bit_test:lines testing - 0 off; 1 report; 2 fail if stuck\00", section ".modinfo", align 1, !dbg !145
@i2c_bit_algo = dso_local constant { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* } { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @bit_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @bit_xfer_atomic, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @bit_func }, align 8, !dbg !150
@__UNIQUE_ID_author173 = internal constant [60 x i8] c"i2c_algo_bit.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1, !dbg !2321
@__UNIQUE_ID_description174 = internal constant [55 x i8] c"i2c_algo_bit.description=I2C-Bus bit-banging algorithm\00", section ".modinfo", align 1, !dbg !2326
@__UNIQUE_ID_file175 = internal constant [49 x i8] c"i2c_algo_bit.file=drivers/i2c/algos/i2c-algo-bit\00", section ".modinfo", align 1, !dbg !2331
@__UNIQUE_ID_license176 = internal constant [25 x i8] c"i2c_algo_bit.license=GPL\00", section ".modinfo", align 1, !dbg !2336
@jiffies = external dso_local global i64, align 8
@.str = private unnamed_addr constant [31 x i8] c"died at extended address code\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"died at 2nd address code\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"died at repeated address code\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"readbytes: invalid block length (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"readbytes: ack/nak timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sendbytes: NAK bailout.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"sendbytes: error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"not flagged for atomic transfers\0A\00", align 1
@i2c_bit_quirk_no_clk_stretch = internal constant %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8, !dbg !2343
@.str.8 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Bus may be unreliable\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\016%s: Testing SDA only, SCL is not readable\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\014%s: bus seems to be busy (scl=%d, sda=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\014%s: SDA stuck high!\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\014%s: SCL unexpected low while pulling SDA low!\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\014%s: SDA stuck low!\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"\014%s: SCL unexpected low while pulling SDA high!\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\014%s: SCL stuck high!\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"\014%s: SDA unexpected low while pulling SCL low!\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\014%s: SCL stuck low!\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"\014%s: SDA unexpected low while pulling SCL high!\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"\016%s: Test OK\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_bit_test to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_bit_testtype171, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__UNIQUE_ID_bit_test172, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file175, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license176, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bit_xfer(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msgs, i32 %num) #0 !dbg !2353 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %pmsg = alloca %struct.i2c_msg*, align 8
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %nak_ok = alloca i16, align 2
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %pmsg, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !2362, metadata !DIExpression()), !dbg !2383
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2384
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !2385
  %1 = load i8*, i8** %algo_data, align 8, !dbg !2385
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !2384
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2383
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.declare(metadata i16* %nak_ok, metadata !2390, metadata !DIExpression()), !dbg !2391
  %3 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2392
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %3, i32 0, i32 5, !dbg !2394
  %4 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %pre_xfer, align 8, !dbg !2394
  %tobool = icmp ne i32 (%struct.i2c_adapter*)* %4, null, !dbg !2392
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2395

if.then:                                          ; preds = %entry
  %5 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2396
  %pre_xfer1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %5, i32 0, i32 5, !dbg !2398
  %6 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %pre_xfer1, align 8, !dbg !2398
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2399
  %call = call i32 %6(%struct.i2c_adapter* %7) #5, !dbg !2396
  store i32 %call, i32* %ret, align 4, !dbg !2400
  %8 = load i32, i32* %ret, align 4, !dbg !2401
  %cmp = icmp slt i32 %8, 0, !dbg !2403
  br i1 %cmp, label %if.then2, label %if.end, !dbg !2404

if.then2:                                         ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !2405
  store i32 %9, i32* %retval, align 4, !dbg !2406
  br label %return, !dbg !2406

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !2407

if.end3:                                          ; preds = %if.end, %entry
  br label %do.body, !dbg !2408

do.body:                                          ; preds = %if.end3
  br label %do.end, !dbg !2409

do.end:                                           ; preds = %do.body
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2411
  call void @i2c_start(%struct.i2c_algo_bit_data* %10) #5, !dbg !2412
  store i32 0, i32* %i, align 4, !dbg !2413
  br label %for.cond, !dbg !2415

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32, i32* %i, align 4, !dbg !2416
  %12 = load i32, i32* %num.addr, align 4, !dbg !2418
  %cmp4 = icmp slt i32 %11, %12, !dbg !2419
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2420

for.body:                                         ; preds = %for.cond
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !2421
  %14 = load i32, i32* %i, align 4, !dbg !2423
  %idxprom = sext i32 %14 to i64, !dbg !2421
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 %idxprom, !dbg !2421
  store %struct.i2c_msg* %arrayidx, %struct.i2c_msg** %pmsg, align 8, !dbg !2424
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2425
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1, !dbg !2426
  %16 = load i16, i16* %flags, align 2, !dbg !2426
  %conv = zext i16 %16 to i32, !dbg !2425
  %and = and i32 %conv, 4096, !dbg !2427
  %conv5 = trunc i32 %and to i16, !dbg !2425
  store i16 %conv5, i16* %nak_ok, align 2, !dbg !2428
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2429
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1, !dbg !2431
  %18 = load i16, i16* %flags6, align 2, !dbg !2431
  %conv7 = zext i16 %18 to i32, !dbg !2429
  %and8 = and i32 %conv7, 16384, !dbg !2432
  %tobool9 = icmp ne i32 %and8, 0, !dbg !2432
  br i1 %tobool9, label %if.end34, label %if.then10, !dbg !2433

if.then10:                                        ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !2434
  %tobool11 = icmp ne i32 %19, 0, !dbg !2434
  br i1 %tobool11, label %if.then12, label %if.end25, !dbg !2437

if.then12:                                        ; preds = %if.then10
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !2438
  %21 = load i32, i32* %i, align 4, !dbg !2441
  %sub = sub i32 %21, 1, !dbg !2442
  %idxprom13 = sext i32 %sub to i64, !dbg !2438
  %arrayidx14 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %20, i64 %idxprom13, !dbg !2438
  %flags15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx14, i32 0, i32 1, !dbg !2443
  %22 = load i16, i16* %flags15, align 2, !dbg !2443
  %conv16 = zext i16 %22 to i32, !dbg !2438
  %and17 = and i32 %conv16, 32768, !dbg !2444
  %tobool18 = icmp ne i32 %and17, 0, !dbg !2444
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !2445

if.then19:                                        ; preds = %if.then12
  br label %do.body20, !dbg !2446

do.body20:                                        ; preds = %if.then19
  br label %do.end21, !dbg !2448

do.end21:                                         ; preds = %do.body20
  %23 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2450
  call void @i2c_stop(%struct.i2c_algo_bit_data* %23) #5, !dbg !2451
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2452
  call void @i2c_start(%struct.i2c_algo_bit_data* %24) #5, !dbg !2453
  br label %if.end24, !dbg !2454

if.else:                                          ; preds = %if.then12
  br label %do.body22, !dbg !2455

do.body22:                                        ; preds = %if.else
  br label %do.end23, !dbg !2457

do.end23:                                         ; preds = %do.body22
  %25 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2459
  call void @i2c_repstart(%struct.i2c_algo_bit_data* %25) #5, !dbg !2460
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %do.end21
  br label %if.end25, !dbg !2461

if.end25:                                         ; preds = %if.end24, %if.then10
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2462
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2463
  %call26 = call i32 @bit_doAddress(%struct.i2c_adapter* %26, %struct.i2c_msg* %27) #5, !dbg !2464
  store i32 %call26, i32* %ret, align 4, !dbg !2465
  %28 = load i32, i32* %ret, align 4, !dbg !2466
  %cmp27 = icmp ne i32 %28, 0, !dbg !2468
  br i1 %cmp27, label %land.lhs.true, label %if.end33, !dbg !2469

land.lhs.true:                                    ; preds = %if.end25
  %29 = load i16, i16* %nak_ok, align 2, !dbg !2470
  %tobool29 = icmp ne i16 %29, 0, !dbg !2470
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !2471

if.then30:                                        ; preds = %land.lhs.true
  br label %do.body31, !dbg !2472

do.body31:                                        ; preds = %if.then30
  br label %do.end32, !dbg !2474

do.end32:                                         ; preds = %do.body31
  br label %bailout, !dbg !2476

if.end33:                                         ; preds = %land.lhs.true, %if.end25
  br label %if.end34, !dbg !2477

if.end34:                                         ; preds = %if.end33, %for.body
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2478
  %flags35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1, !dbg !2480
  %31 = load i16, i16* %flags35, align 2, !dbg !2480
  %conv36 = zext i16 %31 to i32, !dbg !2478
  %and37 = and i32 %conv36, 1, !dbg !2481
  %tobool38 = icmp ne i32 %and37, 0, !dbg !2481
  br i1 %tobool38, label %if.then39, label %if.else56, !dbg !2482

if.then39:                                        ; preds = %if.end34
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2483
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2485
  %call40 = call i32 @readbytes(%struct.i2c_adapter* %32, %struct.i2c_msg* %33) #5, !dbg !2486
  store i32 %call40, i32* %ret, align 4, !dbg !2487
  %34 = load i32, i32* %ret, align 4, !dbg !2488
  %cmp41 = icmp sge i32 %34, 1, !dbg !2490
  br i1 %cmp41, label %if.then43, label %if.end46, !dbg !2491

if.then43:                                        ; preds = %if.then39
  br label %do.body44, !dbg !2492

do.body44:                                        ; preds = %if.then43
  br label %do.end45, !dbg !2493

do.end45:                                         ; preds = %do.body44
  br label %if.end46, !dbg !2493

if.end46:                                         ; preds = %do.end45, %if.then39
  %35 = load i32, i32* %ret, align 4, !dbg !2495
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2497
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2, !dbg !2498
  %37 = load i16, i16* %len, align 4, !dbg !2498
  %conv47 = zext i16 %37 to i32, !dbg !2497
  %cmp48 = icmp slt i32 %35, %conv47, !dbg !2499
  br i1 %cmp48, label %if.then50, label %if.end55, !dbg !2500

if.then50:                                        ; preds = %if.end46
  %38 = load i32, i32* %ret, align 4, !dbg !2501
  %cmp51 = icmp sge i32 %38, 0, !dbg !2504
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !2505

if.then53:                                        ; preds = %if.then50
  store i32 -5, i32* %ret, align 4, !dbg !2506
  br label %if.end54, !dbg !2507

if.end54:                                         ; preds = %if.then53, %if.then50
  br label %bailout, !dbg !2508

if.end55:                                         ; preds = %if.end46
  br label %if.end74, !dbg !2509

if.else56:                                        ; preds = %if.end34
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2510
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2512
  %call57 = call i32 @sendbytes(%struct.i2c_adapter* %39, %struct.i2c_msg* %40) #5, !dbg !2513
  store i32 %call57, i32* %ret, align 4, !dbg !2514
  %41 = load i32, i32* %ret, align 4, !dbg !2515
  %cmp58 = icmp sge i32 %41, 1, !dbg !2517
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !2518

if.then60:                                        ; preds = %if.else56
  br label %do.body61, !dbg !2519

do.body61:                                        ; preds = %if.then60
  br label %do.end62, !dbg !2520

do.end62:                                         ; preds = %do.body61
  br label %if.end63, !dbg !2520

if.end63:                                         ; preds = %do.end62, %if.else56
  %42 = load i32, i32* %ret, align 4, !dbg !2522
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !2524
  %len64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2, !dbg !2525
  %44 = load i16, i16* %len64, align 4, !dbg !2525
  %conv65 = zext i16 %44 to i32, !dbg !2524
  %cmp66 = icmp slt i32 %42, %conv65, !dbg !2526
  br i1 %cmp66, label %if.then68, label %if.end73, !dbg !2527

if.then68:                                        ; preds = %if.end63
  %45 = load i32, i32* %ret, align 4, !dbg !2528
  %cmp69 = icmp sge i32 %45, 0, !dbg !2531
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !2532

if.then71:                                        ; preds = %if.then68
  store i32 -5, i32* %ret, align 4, !dbg !2533
  br label %if.end72, !dbg !2534

if.end72:                                         ; preds = %if.then71, %if.then68
  br label %bailout, !dbg !2535

if.end73:                                         ; preds = %if.end63
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end55
  br label %for.inc, !dbg !2536

for.inc:                                          ; preds = %if.end74
  %46 = load i32, i32* %i, align 4, !dbg !2537
  %inc = add i32 %46, 1, !dbg !2537
  store i32 %inc, i32* %i, align 4, !dbg !2537
  br label %for.cond, !dbg !2538, !llvm.loop !2539

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %i, align 4, !dbg !2541
  store i32 %47, i32* %ret, align 4, !dbg !2542
  br label %bailout, !dbg !2543

bailout:                                          ; preds = %for.end, %if.end72, %if.end54, %do.end32
  call void @llvm.dbg.label(metadata !2544), !dbg !2545
  br label %do.body75, !dbg !2546

do.body75:                                        ; preds = %bailout
  br label %do.end76, !dbg !2547

do.end76:                                         ; preds = %do.body75
  %48 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2549
  call void @i2c_stop(%struct.i2c_algo_bit_data* %48) #5, !dbg !2550
  %49 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2551
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %49, i32 0, i32 6, !dbg !2553
  %50 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer, align 8, !dbg !2553
  %tobool77 = icmp ne void (%struct.i2c_adapter*)* %50, null, !dbg !2551
  br i1 %tobool77, label %if.then78, label %if.end80, !dbg !2554

if.then78:                                        ; preds = %do.end76
  %51 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2555
  %post_xfer79 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %51, i32 0, i32 6, !dbg !2556
  %52 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer79, align 8, !dbg !2556
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2557
  call void %52(%struct.i2c_adapter* %53) #5, !dbg !2555
  br label %if.end80, !dbg !2555

if.end80:                                         ; preds = %if.then78, %do.end76
  %54 = load i32, i32* %ret, align 4, !dbg !2558
  store i32 %54, i32* %retval, align 4, !dbg !2559
  br label %return, !dbg !2559

return:                                           ; preds = %if.end80, %if.then2
  %55 = load i32, i32* %retval, align 4, !dbg !2560
  ret i32 %55, !dbg !2560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bit_xfer_atomic(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msgs, i32 %num) #0 !dbg !2561 {
entry:
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !2568, metadata !DIExpression()), !dbg !2569
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2570
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !2571
  %1 = load i8*, i8** %algo_data, align 8, !dbg !2571
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !2570
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2569
  %3 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2572
  %can_do_atomic = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %3, i32 0, i32 9, !dbg !2574
  %4 = load i8, i8* %can_do_atomic, align 8, !dbg !2574
  %tobool = trunc i8 %4 to i1, !dbg !2574
  br i1 %tobool, label %if.end, label %if.then, !dbg !2575

if.then:                                          ; preds = %entry
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2576
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 9, !dbg !2576
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2576
  br label %if.end, !dbg !2576

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2577
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !2578
  %8 = load i32, i32* %num.addr, align 4, !dbg !2579
  %call = call i32 @bit_xfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %7, i32 %8) #5, !dbg !2580
  ret i32 %call, !dbg !2581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bit_func(%struct.i2c_adapter* %adap) #0 !dbg !2582 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  ret i32 268402719, !dbg !2585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_bit_add_bus(%struct.i2c_adapter* %adap) #0 !dbg !2586 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2589
  %call = call i32 @__i2c_bit_add_bus(%struct.i2c_adapter* %0, i32 (%struct.i2c_adapter*)* @i2c_add_adapter) #5, !dbg !2590
  ret i32 %call, !dbg !2591
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i2c_bit_add_bus(%struct.i2c_adapter* %adap, i32 (%struct.i2c_adapter*)* %add_adapter) #0 !dbg !2592 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %add_adapter.addr = alloca i32 (%struct.i2c_adapter*)*, align 8
  %bit_adap = alloca %struct.i2c_algo_bit_data*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  store i32 (%struct.i2c_adapter*)* %add_adapter, i32 (%struct.i2c_adapter*)** %add_adapter.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.i2c_adapter*)** %add_adapter.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %bit_adap, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2601
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !2602
  %1 = load i8*, i8** %algo_data, align 8, !dbg !2602
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !2601
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %bit_adap, align 8, !dbg !2600
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2603, metadata !DIExpression()), !dbg !2604
  %3 = load i32, i32* @bit_test, align 4, !dbg !2605
  %tobool = icmp ne i32 %3, 0, !dbg !2605
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2607

if.then:                                          ; preds = %entry
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2608
  %call = call i32 @test_bus(%struct.i2c_adapter* %4) #5, !dbg !2610
  store i32 %call, i32* %ret, align 4, !dbg !2611
  %5 = load i32, i32* @bit_test, align 4, !dbg !2612
  %cmp = icmp sge i32 %5, 2, !dbg !2614
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2615

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %ret, align 4, !dbg !2616
  %cmp1 = icmp slt i32 %6, 0, !dbg !2617
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2618

if.then2:                                         ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !2619
  br label %return, !dbg !2619

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end3, !dbg !2620

if.end3:                                          ; preds = %if.end, %entry
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2621
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 2, !dbg !2622
  store %struct.i2c_algorithm* bitcast ({ i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }* @i2c_bit_algo to %struct.i2c_algorithm*), %struct.i2c_algorithm** %algo, align 8, !dbg !2623
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2624
  %retries = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 8, !dbg !2625
  store i32 3, i32* %retries, align 4, !dbg !2626
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %bit_adap, align 8, !dbg !2627
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 4, !dbg !2629
  %10 = load i32 (i8*)*, i32 (i8*)** %getscl, align 8, !dbg !2629
  %cmp4 = icmp eq i32 (i8*)* %10, null, !dbg !2630
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2631

if.then5:                                         ; preds = %if.end3
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2632
  %quirks = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 17, !dbg !2633
  store %struct.i2c_adapter_quirks* @i2c_bit_quirk_no_clk_stretch, %struct.i2c_adapter_quirks** %quirks, align 8, !dbg !2634
  br label %if.end6, !dbg !2632

if.end6:                                          ; preds = %if.then5, %if.end3
  %12 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %add_adapter.addr, align 8, !dbg !2635
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2636
  %call7 = call i32 %12(%struct.i2c_adapter* %13) #5, !dbg !2635
  store i32 %call7, i32* %ret, align 4, !dbg !2637
  %14 = load i32, i32* %ret, align 4, !dbg !2638
  %cmp8 = icmp slt i32 %14, 0, !dbg !2640
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2641

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !2642
  store i32 %15, i32* %retval, align 4, !dbg !2643
  br label %return, !dbg !2643

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %bit_adap, align 8, !dbg !2644
  %getscl11 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %16, i32 0, i32 4, !dbg !2646
  %17 = load i32 (i8*)*, i32 (i8*)** %getscl11, align 8, !dbg !2646
  %cmp12 = icmp eq i32 (i8*)* %17, null, !dbg !2647
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !2648

if.then13:                                        ; preds = %if.end10
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2649
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !2649
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2649
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2651
  %dev14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 9, !dbg !2651
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2651
  br label %if.end15, !dbg !2652

if.end15:                                         ; preds = %if.then13, %if.end10
  store i32 0, i32* %retval, align 4, !dbg !2653
  br label %return, !dbg !2653

return:                                           ; preds = %if.end15, %if.then9, %if.then2
  %20 = load i32, i32* %retval, align 4, !dbg !2654
  ret i32 %20, !dbg !2654
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_bit_add_numbered_bus(%struct.i2c_adapter* %adap) #0 !dbg !2655 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2658
  %call = call i32 @__i2c_bit_add_bus(%struct.i2c_adapter* %0, i32 (%struct.i2c_adapter*)* @i2c_add_numbered_adapter) #5, !dbg !2659
  ret i32 %call, !dbg !2660
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_start(%struct.i2c_algo_bit_data* %adap) #0 !dbg !2661 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !2664, metadata !DIExpression()), !dbg !2665
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2666
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %0, i32 0, i32 1, !dbg !2666
  %1 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !2666
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2666
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 0, !dbg !2666
  %3 = load i8*, i8** %data, align 8, !dbg !2666
  call void %1(i8* %3, i32 0) #5, !dbg !2666
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2667
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 7, !dbg !2667
  %5 = load i32, i32* %udelay, align 8, !dbg !2667
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !2667
  br i1 %6, label %if.then, label %if.else4, !dbg !2670

if.then:                                          ; preds = %entry
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2671
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 7, !dbg !2671
  %8 = load i32, i32* %udelay1, align 8, !dbg !2671
  %div = sdiv i32 %8, 20000, !dbg !2671
  %cmp = icmp sge i32 %div, 1, !dbg !2671
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2674

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !2671
  br label %if.end, !dbg !2671

if.else:                                          ; preds = %if.then
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2671
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !2671
  %10 = load i32, i32* %udelay3, align 8, !dbg !2671
  %conv = sext i32 %10 to i64, !dbg !2671
  %mul = mul i64 %conv, 4295, !dbg !2671
  call void @__const_udelay(i64 %mul) #5, !dbg !2671
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !2674

if.else4:                                         ; preds = %entry
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2675
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !2675
  %12 = load i32, i32* %udelay5, align 8, !dbg !2675
  %conv6 = sext i32 %12 to i64, !dbg !2675
  call void @__udelay(i64 %conv6) #5, !dbg !2675
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2677
  call void @scllo(%struct.i2c_algo_bit_data* %13) #5, !dbg !2678
  ret void, !dbg !2679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_stop(%struct.i2c_algo_bit_data* %adap) #0 !dbg !2680 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2683
  call void @sdalo(%struct.i2c_algo_bit_data* %0) #5, !dbg !2684
  %1 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2685
  %call = call i32 @sclhi(%struct.i2c_algo_bit_data* %1) #5, !dbg !2686
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2687
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 1, !dbg !2687
  %3 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !2687
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2687
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 0, !dbg !2687
  %5 = load i8*, i8** %data, align 8, !dbg !2687
  call void %3(i8* %5, i32 1) #5, !dbg !2687
  %6 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2688
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %6, i32 0, i32 7, !dbg !2688
  %7 = load i32, i32* %udelay, align 8, !dbg !2688
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !2688
  br i1 %8, label %if.then, label %if.else4, !dbg !2691

if.then:                                          ; preds = %entry
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2692
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !2692
  %10 = load i32, i32* %udelay1, align 8, !dbg !2692
  %div = sdiv i32 %10, 20000, !dbg !2692
  %cmp = icmp sge i32 %div, 1, !dbg !2692
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2695

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !2692
  br label %if.end, !dbg !2692

if.else:                                          ; preds = %if.then
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2692
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !2692
  %12 = load i32, i32* %udelay3, align 8, !dbg !2692
  %conv = sext i32 %12 to i64, !dbg !2692
  %mul = mul i64 %conv, 4295, !dbg !2692
  call void @__const_udelay(i64 %mul) #5, !dbg !2692
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !2695

if.else4:                                         ; preds = %entry
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2696
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 7, !dbg !2696
  %14 = load i32, i32* %udelay5, align 8, !dbg !2696
  %conv6 = sext i32 %14 to i64, !dbg !2696
  call void @__udelay(i64 %conv6) #5, !dbg !2696
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  ret void, !dbg !2698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_repstart(%struct.i2c_algo_bit_data* %adap) #0 !dbg !2699 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2702
  call void @sdahi(%struct.i2c_algo_bit_data* %0) #5, !dbg !2703
  %1 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2704
  %call = call i32 @sclhi(%struct.i2c_algo_bit_data* %1) #5, !dbg !2705
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2706
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 1, !dbg !2706
  %3 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !2706
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2706
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 0, !dbg !2706
  %5 = load i8*, i8** %data, align 8, !dbg !2706
  call void %3(i8* %5, i32 0) #5, !dbg !2706
  %6 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2707
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %6, i32 0, i32 7, !dbg !2707
  %7 = load i32, i32* %udelay, align 8, !dbg !2707
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !2707
  br i1 %8, label %if.then, label %if.else4, !dbg !2710

if.then:                                          ; preds = %entry
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2711
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !2711
  %10 = load i32, i32* %udelay1, align 8, !dbg !2711
  %div = sdiv i32 %10, 20000, !dbg !2711
  %cmp = icmp sge i32 %div, 1, !dbg !2711
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2714

if.then2:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !2711
  br label %if.end, !dbg !2711

if.else:                                          ; preds = %if.then
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2711
  %udelay3 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !2711
  %12 = load i32, i32* %udelay3, align 8, !dbg !2711
  %conv = sext i32 %12 to i64, !dbg !2711
  %mul = mul i64 %conv, 4295, !dbg !2711
  call void @__const_udelay(i64 %mul) #5, !dbg !2711
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !2714

if.else4:                                         ; preds = %entry
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2715
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 7, !dbg !2715
  %14 = load i32, i32* %udelay5, align 8, !dbg !2715
  %conv6 = sext i32 %14 to i64, !dbg !2715
  call void @__udelay(i64 %conv6) #5, !dbg !2715
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.end
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !2717
  call void @scllo(%struct.i2c_algo_bit_data* %15) #5, !dbg !2718
  ret void, !dbg !2719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bit_doAddress(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg) #0 !dbg !2720 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %flags = alloca i16, align 2
  %nak_ok = alloca i16, align 2
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  %addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %retries = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2723, metadata !DIExpression()), !dbg !2724
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.declare(metadata i16* %flags, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2729
  %flags1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 1, !dbg !2730
  %1 = load i16, i16* %flags1, align 2, !dbg !2730
  store i16 %1, i16* %flags, align 2, !dbg !2728
  call void @llvm.dbg.declare(metadata i16* %nak_ok, metadata !2731, metadata !DIExpression()), !dbg !2732
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2733
  %flags2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 1, !dbg !2734
  %3 = load i16, i16* %flags2, align 2, !dbg !2734
  %conv = zext i16 %3 to i32, !dbg !2733
  %and = and i32 %conv, 4096, !dbg !2735
  %conv3 = trunc i32 %and to i16, !dbg !2733
  store i16 %conv3, i16* %nak_ok, align 2, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !2736, metadata !DIExpression()), !dbg !2737
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2738
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 3, !dbg !2739
  %5 = load i8*, i8** %algo_data, align 8, !dbg !2739
  %6 = bitcast i8* %5 to %struct.i2c_algo_bit_data*, !dbg !2738
  store %struct.i2c_algo_bit_data* %6, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2737
  call void @llvm.dbg.declare(metadata i8* %addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %retries, metadata !2744, metadata !DIExpression()), !dbg !2745
  %7 = load i16, i16* %nak_ok, align 2, !dbg !2746
  %conv4 = zext i16 %7 to i32, !dbg !2746
  %tobool = icmp ne i32 %conv4, 0, !dbg !2746
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2746

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2746

cond.false:                                       ; preds = %entry
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2747
  %retries5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 8, !dbg !2748
  %9 = load i32, i32* %retries5, align 4, !dbg !2748
  br label %cond.end, !dbg !2746

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %9, %cond.false ], !dbg !2746
  store i32 %cond, i32* %retries, align 4, !dbg !2749
  %10 = load i16, i16* %flags, align 2, !dbg !2750
  %conv6 = zext i16 %10 to i32, !dbg !2750
  %and7 = and i32 %conv6, 16, !dbg !2752
  %tobool8 = icmp ne i32 %and7, 0, !dbg !2752
  br i1 %tobool8, label %if.then, label %if.else, !dbg !2753

if.then:                                          ; preds = %cond.end
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2754
  %addr9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0, !dbg !2756
  %12 = load i16, i16* %addr9, align 8, !dbg !2756
  %conv10 = zext i16 %12 to i32, !dbg !2754
  %shr = ashr i32 %conv10, 7, !dbg !2757
  %and11 = and i32 %shr, 6, !dbg !2758
  %or = or i32 240, %and11, !dbg !2759
  %conv12 = trunc i32 %or to i8, !dbg !2760
  store i8 %conv12, i8* %addr, align 1, !dbg !2761
  br label %do.body, !dbg !2762

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2763

do.end:                                           ; preds = %do.body
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2765
  %14 = load i8, i8* %addr, align 1, !dbg !2766
  %15 = load i32, i32* %retries, align 4, !dbg !2767
  %call = call i32 @try_address(%struct.i2c_adapter* %13, i8 zeroext %14, i32 %15) #5, !dbg !2768
  store i32 %call, i32* %ret, align 4, !dbg !2769
  %16 = load i32, i32* %ret, align 4, !dbg !2770
  %cmp = icmp ne i32 %16, 1, !dbg !2772
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2773

land.lhs.true:                                    ; preds = %do.end
  %17 = load i16, i16* %nak_ok, align 2, !dbg !2774
  %tobool14 = icmp ne i16 %17, 0, !dbg !2774
  br i1 %tobool14, label %if.end, label %if.then15, !dbg !2775

if.then15:                                        ; preds = %land.lhs.true
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2776
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !2776
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2776
  store i32 -6, i32* %retval, align 4, !dbg !2778
  br label %return, !dbg !2778

if.end:                                           ; preds = %land.lhs.true, %do.end
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2779
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2780
  %addr16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0, !dbg !2781
  %21 = load i16, i16* %addr16, align 8, !dbg !2781
  %conv17 = zext i16 %21 to i32, !dbg !2780
  %and18 = and i32 %conv17, 255, !dbg !2782
  %conv19 = trunc i32 %and18 to i8, !dbg !2780
  %call20 = call i32 @i2c_outb(%struct.i2c_adapter* %19, i8 zeroext %conv19) #5, !dbg !2783
  store i32 %call20, i32* %ret, align 4, !dbg !2784
  %22 = load i32, i32* %ret, align 4, !dbg !2785
  %cmp21 = icmp ne i32 %22, 1, !dbg !2787
  br i1 %cmp21, label %land.lhs.true23, label %if.end27, !dbg !2788

land.lhs.true23:                                  ; preds = %if.end
  %23 = load i16, i16* %nak_ok, align 2, !dbg !2789
  %tobool24 = icmp ne i16 %23, 0, !dbg !2789
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !2790

if.then25:                                        ; preds = %land.lhs.true23
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2791
  %dev26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 9, !dbg !2791
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2791
  store i32 -6, i32* %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

if.end27:                                         ; preds = %land.lhs.true23, %if.end
  %25 = load i16, i16* %flags, align 2, !dbg !2794
  %conv28 = zext i16 %25 to i32, !dbg !2794
  %and29 = and i32 %conv28, 1, !dbg !2796
  %tobool30 = icmp ne i32 %and29, 0, !dbg !2796
  br i1 %tobool30, label %if.then31, label %if.end45, !dbg !2797

if.then31:                                        ; preds = %if.end27
  br label %do.body32, !dbg !2798

do.body32:                                        ; preds = %if.then31
  br label %do.end33, !dbg !2800

do.end33:                                         ; preds = %do.body32
  %26 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !2802
  call void @i2c_repstart(%struct.i2c_algo_bit_data* %26) #5, !dbg !2803
  %27 = load i8, i8* %addr, align 1, !dbg !2804
  %conv34 = zext i8 %27 to i32, !dbg !2804
  %or35 = or i32 %conv34, 1, !dbg !2804
  %conv36 = trunc i32 %or35 to i8, !dbg !2804
  store i8 %conv36, i8* %addr, align 1, !dbg !2804
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2805
  %29 = load i8, i8* %addr, align 1, !dbg !2806
  %30 = load i32, i32* %retries, align 4, !dbg !2807
  %call37 = call i32 @try_address(%struct.i2c_adapter* %28, i8 zeroext %29, i32 %30) #5, !dbg !2808
  store i32 %call37, i32* %ret, align 4, !dbg !2809
  %31 = load i32, i32* %ret, align 4, !dbg !2810
  %cmp38 = icmp ne i32 %31, 1, !dbg !2812
  br i1 %cmp38, label %land.lhs.true40, label %if.end44, !dbg !2813

land.lhs.true40:                                  ; preds = %do.end33
  %32 = load i16, i16* %nak_ok, align 2, !dbg !2814
  %tobool41 = icmp ne i16 %32, 0, !dbg !2814
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !2815

if.then42:                                        ; preds = %land.lhs.true40
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2816
  %dev43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %33, i32 0, i32 9, !dbg !2816
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2816
  store i32 -5, i32* %retval, align 4, !dbg !2818
  br label %return, !dbg !2818

if.end44:                                         ; preds = %land.lhs.true40, %do.end33
  br label %if.end45, !dbg !2819

if.end45:                                         ; preds = %if.end44, %if.end27
  br label %if.end61, !dbg !2820

if.else:                                          ; preds = %cond.end
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2821
  %call46 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %34) #5, !dbg !2823
  store i8 %call46, i8* %addr, align 1, !dbg !2824
  %35 = load i16, i16* %flags, align 2, !dbg !2825
  %conv47 = zext i16 %35 to i32, !dbg !2825
  %and48 = and i32 %conv47, 8192, !dbg !2827
  %tobool49 = icmp ne i32 %and48, 0, !dbg !2827
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !2828

if.then50:                                        ; preds = %if.else
  %36 = load i8, i8* %addr, align 1, !dbg !2829
  %conv51 = zext i8 %36 to i32, !dbg !2829
  %xor = xor i32 %conv51, 1, !dbg !2829
  %conv52 = trunc i32 %xor to i8, !dbg !2829
  store i8 %conv52, i8* %addr, align 1, !dbg !2829
  br label %if.end53, !dbg !2830

if.end53:                                         ; preds = %if.then50, %if.else
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2831
  %38 = load i8, i8* %addr, align 1, !dbg !2832
  %39 = load i32, i32* %retries, align 4, !dbg !2833
  %call54 = call i32 @try_address(%struct.i2c_adapter* %37, i8 zeroext %38, i32 %39) #5, !dbg !2834
  store i32 %call54, i32* %ret, align 4, !dbg !2835
  %40 = load i32, i32* %ret, align 4, !dbg !2836
  %cmp55 = icmp ne i32 %40, 1, !dbg !2838
  br i1 %cmp55, label %land.lhs.true57, label %if.end60, !dbg !2839

land.lhs.true57:                                  ; preds = %if.end53
  %41 = load i16, i16* %nak_ok, align 2, !dbg !2840
  %tobool58 = icmp ne i16 %41, 0, !dbg !2840
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !2841

if.then59:                                        ; preds = %land.lhs.true57
  store i32 -6, i32* %retval, align 4, !dbg !2842
  br label %return, !dbg !2842

if.end60:                                         ; preds = %land.lhs.true57, %if.end53
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end45
  store i32 0, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

return:                                           ; preds = %if.end61, %if.then59, %if.then42, %if.then25, %if.then15
  %42 = load i32, i32* %retval, align 4, !dbg !2844
  ret i32 %42, !dbg !2844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readbytes(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg) #0 !dbg !2845 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %inval = alloca i32, align 4
  %rdcount = alloca i32, align 4
  %temp = alloca i8*, align 8
  %count = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2846, metadata !DIExpression()), !dbg !2847
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata i32* %inval, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata i32* %rdcount, metadata !2852, metadata !DIExpression()), !dbg !2853
  store i32 0, i32* %rdcount, align 4, !dbg !2853
  call void @llvm.dbg.declare(metadata i8** %temp, metadata !2854, metadata !DIExpression()), !dbg !2856
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2857
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 3, !dbg !2858
  %1 = load i8*, i8** %buf, align 8, !dbg !2858
  store i8* %1, i8** %temp, align 8, !dbg !2856
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2859, metadata !DIExpression()), !dbg !2860
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2861
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 2, !dbg !2862
  %3 = load i16, i16* %len, align 4, !dbg !2862
  %conv = zext i16 %3 to i32, !dbg !2861
  store i32 %conv, i32* %count, align 4, !dbg !2860
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !2863, metadata !DIExpression()), !dbg !2865
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2866
  %flags1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1, !dbg !2867
  %5 = load i16, i16* %flags1, align 2, !dbg !2867
  %conv2 = zext i16 %5 to i32, !dbg !2866
  store i32 %conv2, i32* %flags, align 4, !dbg !2865
  br label %while.cond, !dbg !2868

while.cond:                                       ; preds = %if.end34, %entry
  %6 = load i32, i32* %count, align 4, !dbg !2869
  %cmp = icmp sgt i32 %6, 0, !dbg !2870
  br i1 %cmp, label %while.body, label %while.end, !dbg !2868

while.body:                                       ; preds = %while.cond
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2871
  %call = call i32 @i2c_inb(%struct.i2c_adapter* %7) #5, !dbg !2873
  store i32 %call, i32* %inval, align 4, !dbg !2874
  %8 = load i32, i32* %inval, align 4, !dbg !2875
  %cmp4 = icmp sge i32 %8, 0, !dbg !2877
  br i1 %cmp4, label %if.then, label %if.else, !dbg !2878

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %inval, align 4, !dbg !2879
  %conv6 = trunc i32 %9 to i8, !dbg !2879
  %10 = load i8*, i8** %temp, align 8, !dbg !2881
  store i8 %conv6, i8* %10, align 1, !dbg !2882
  %11 = load i32, i32* %rdcount, align 4, !dbg !2883
  %inc = add i32 %11, 1, !dbg !2883
  store i32 %inc, i32* %rdcount, align 4, !dbg !2883
  br label %if.end, !dbg !2884

if.else:                                          ; preds = %while.body
  br label %while.end, !dbg !2885

if.end:                                           ; preds = %if.then
  %12 = load i8*, i8** %temp, align 8, !dbg !2887
  %incdec.ptr = getelementptr i8, i8* %12, i32 1, !dbg !2887
  store i8* %incdec.ptr, i8** %temp, align 8, !dbg !2887
  %13 = load i32, i32* %count, align 4, !dbg !2888
  %dec = add i32 %13, -1, !dbg !2888
  store i32 %dec, i32* %count, align 4, !dbg !2888
  %14 = load i32, i32* %rdcount, align 4, !dbg !2889
  %cmp7 = icmp eq i32 %14, 1, !dbg !2891
  br i1 %cmp7, label %land.lhs.true, label %if.end25, !dbg !2892

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, i32* %flags, align 4, !dbg !2893
  %and = and i32 %15, 1024, !dbg !2894
  %tobool = icmp ne i32 %and, 0, !dbg !2894
  br i1 %tobool, label %if.then9, label %if.end25, !dbg !2895

if.then9:                                         ; preds = %land.lhs.true
  %16 = load i32, i32* %inval, align 4, !dbg !2896
  %cmp10 = icmp sle i32 %16, 0, !dbg !2899
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !2900

lor.lhs.false:                                    ; preds = %if.then9
  %17 = load i32, i32* %inval, align 4, !dbg !2901
  %cmp12 = icmp sgt i32 %17, 32, !dbg !2902
  br i1 %cmp12, label %if.then14, label %if.end20, !dbg !2903

if.then14:                                        ; preds = %lor.lhs.false, %if.then9
  %18 = load i32, i32* %flags, align 4, !dbg !2904
  %and15 = and i32 %18, 2048, !dbg !2907
  %tobool16 = icmp ne i32 %and15, 0, !dbg !2907
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !2908

if.then17:                                        ; preds = %if.then14
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2909
  %call18 = call i32 @acknak(%struct.i2c_adapter* %19, i32 0) #5, !dbg !2910
  br label %if.end19, !dbg !2910

if.end19:                                         ; preds = %if.then17, %if.then14
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2911
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 9, !dbg !2911
  %21 = load i32, i32* %inval, align 4, !dbg !2911
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %21) #6, !dbg !2911
  store i32 -71, i32* %retval, align 4, !dbg !2912
  br label %return, !dbg !2912

if.end20:                                         ; preds = %lor.lhs.false
  %22 = load i32, i32* %inval, align 4, !dbg !2913
  %23 = load i32, i32* %count, align 4, !dbg !2914
  %add = add i32 %23, %22, !dbg !2914
  store i32 %add, i32* %count, align 4, !dbg !2914
  %24 = load i32, i32* %inval, align 4, !dbg !2915
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2916
  %len21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2, !dbg !2917
  %26 = load i16, i16* %len21, align 4, !dbg !2918
  %conv22 = zext i16 %26 to i32, !dbg !2918
  %add23 = add i32 %conv22, %24, !dbg !2918
  %conv24 = trunc i32 %add23 to i16, !dbg !2918
  store i16 %conv24, i16* %len21, align 4, !dbg !2918
  br label %if.end25, !dbg !2919

if.end25:                                         ; preds = %if.end20, %land.lhs.true, %if.end
  br label %do.body, !dbg !2920

do.body:                                          ; preds = %if.end25
  br label %do.end, !dbg !2921

do.end:                                           ; preds = %do.body
  %27 = load i32, i32* %flags, align 4, !dbg !2923
  %and26 = and i32 %27, 2048, !dbg !2925
  %tobool27 = icmp ne i32 %and26, 0, !dbg !2925
  br i1 %tobool27, label %if.end34, label %if.then28, !dbg !2926

if.then28:                                        ; preds = %do.end
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2927
  %29 = load i32, i32* %count, align 4, !dbg !2929
  %call29 = call i32 @acknak(%struct.i2c_adapter* %28, i32 %29) #5, !dbg !2930
  store i32 %call29, i32* %inval, align 4, !dbg !2931
  %30 = load i32, i32* %inval, align 4, !dbg !2932
  %cmp30 = icmp slt i32 %30, 0, !dbg !2934
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !2935

if.then32:                                        ; preds = %if.then28
  %31 = load i32, i32* %inval, align 4, !dbg !2936
  store i32 %31, i32* %retval, align 4, !dbg !2937
  br label %return, !dbg !2937

if.end33:                                         ; preds = %if.then28
  br label %if.end34, !dbg !2938

if.end34:                                         ; preds = %if.end33, %do.end
  br label %while.cond, !dbg !2868, !llvm.loop !2939

while.end:                                        ; preds = %if.else, %while.cond
  %32 = load i32, i32* %rdcount, align 4, !dbg !2941
  store i32 %32, i32* %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

return:                                           ; preds = %while.end, %if.then32, %if.end19
  %33 = load i32, i32* %retval, align 4, !dbg !2943
  ret i32 %33, !dbg !2943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sendbytes(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg) #0 !dbg !2944 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %temp = alloca i8*, align 8
  %count = alloca i32, align 4
  %nak_ok = alloca i16, align 2
  %retval3 = alloca i32, align 4
  %wrcount = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2945, metadata !DIExpression()), !dbg !2946
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.declare(metadata i8** %temp, metadata !2949, metadata !DIExpression()), !dbg !2952
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2953
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 3, !dbg !2954
  %1 = load i8*, i8** %buf, align 8, !dbg !2954
  store i8* %1, i8** %temp, align 8, !dbg !2952
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2955, metadata !DIExpression()), !dbg !2956
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2957
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 2, !dbg !2958
  %3 = load i16, i16* %len, align 4, !dbg !2958
  %conv = zext i16 %3 to i32, !dbg !2957
  store i32 %conv, i32* %count, align 4, !dbg !2956
  call void @llvm.dbg.declare(metadata i16* %nak_ok, metadata !2959, metadata !DIExpression()), !dbg !2960
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2961
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1, !dbg !2962
  %5 = load i16, i16* %flags, align 2, !dbg !2962
  %conv1 = zext i16 %5 to i32, !dbg !2961
  %and = and i32 %conv1, 4096, !dbg !2963
  %conv2 = trunc i32 %and to i16, !dbg !2961
  store i16 %conv2, i16* %nak_ok, align 2, !dbg !2960
  call void @llvm.dbg.declare(metadata i32* %retval3, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata i32* %wrcount, metadata !2966, metadata !DIExpression()), !dbg !2967
  store i32 0, i32* %wrcount, align 4, !dbg !2967
  br label %while.cond, !dbg !2968

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %count, align 4, !dbg !2969
  %cmp = icmp sgt i32 %6, 0, !dbg !2970
  br i1 %cmp, label %while.body, label %while.end, !dbg !2968

while.body:                                       ; preds = %while.cond
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2971
  %8 = load i8*, i8** %temp, align 8, !dbg !2973
  %9 = load i8, i8* %8, align 1, !dbg !2974
  %call = call i32 @i2c_outb(%struct.i2c_adapter* %7, i8 zeroext %9) #5, !dbg !2975
  store i32 %call, i32* %retval3, align 4, !dbg !2976
  %10 = load i32, i32* %retval3, align 4, !dbg !2977
  %cmp5 = icmp sgt i32 %10, 0, !dbg !2979
  br i1 %cmp5, label %if.then, label %lor.lhs.false, !dbg !2980

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i16, i16* %nak_ok, align 2, !dbg !2981
  %conv7 = zext i16 %11 to i32, !dbg !2981
  %tobool = icmp ne i32 %conv7, 0, !dbg !2981
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !2982

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load i32, i32* %retval3, align 4, !dbg !2983
  %cmp8 = icmp eq i32 %12, 0, !dbg !2984
  br i1 %cmp8, label %if.then, label %if.else, !dbg !2985

if.then:                                          ; preds = %land.lhs.true, %while.body
  %13 = load i32, i32* %count, align 4, !dbg !2986
  %dec = add i32 %13, -1, !dbg !2986
  store i32 %dec, i32* %count, align 4, !dbg !2986
  %14 = load i8*, i8** %temp, align 8, !dbg !2988
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !2988
  store i8* %incdec.ptr, i8** %temp, align 8, !dbg !2988
  %15 = load i32, i32* %wrcount, align 4, !dbg !2989
  %inc = add i32 %15, 1, !dbg !2989
  store i32 %inc, i32* %wrcount, align 4, !dbg !2989
  br label %if.end, !dbg !2990

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %16 = load i32, i32* %retval3, align 4, !dbg !2991
  %cmp10 = icmp eq i32 %16, 0, !dbg !2993
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !2994

if.then12:                                        ; preds = %if.else
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2995
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 9, !dbg !2995
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2995
  store i32 -5, i32* %retval, align 4, !dbg !2997
  br label %return, !dbg !2997

if.else13:                                        ; preds = %if.else
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2998
  %dev14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !2998
  %19 = load i32, i32* %retval3, align 4, !dbg !2998
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %19) #6, !dbg !2998
  %20 = load i32, i32* %retval3, align 4, !dbg !3000
  store i32 %20, i32* %retval, align 4, !dbg !3001
  br label %return, !dbg !3001

if.end:                                           ; preds = %if.then
  br label %while.cond, !dbg !2968, !llvm.loop !3002

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %wrcount, align 4, !dbg !3004
  store i32 %21, i32* %retval, align 4, !dbg !3005
  br label %return, !dbg !3005

return:                                           ; preds = %while.end, %if.else13, %if.then12
  %22 = load i32, i32* %retval, align 4, !dbg !3006
  ret i32 %22, !dbg !3006
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @scllo(%struct.i2c_algo_bit_data* %adap) #0 !dbg !3007 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3010
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %0, i32 0, i32 2, !dbg !3010
  %1 = load void (i8*, i32)*, void (i8*, i32)** %setscl, align 8, !dbg !3010
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3010
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 0, !dbg !3010
  %3 = load i8*, i8** %data, align 8, !dbg !3010
  call void %1(i8* %3, i32 0) #5, !dbg !3010
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3011
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 7, !dbg !3011
  %5 = load i32, i32* %udelay, align 8, !dbg !3011
  %div = sdiv i32 %5, 2, !dbg !3011
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3011
  br i1 %6, label %if.then, label %if.else7, !dbg !3014

if.then:                                          ; preds = %entry
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3015
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 7, !dbg !3015
  %8 = load i32, i32* %udelay1, align 8, !dbg !3015
  %div2 = sdiv i32 %8, 2, !dbg !3015
  %div3 = sdiv i32 %div2, 20000, !dbg !3015
  %cmp = icmp sge i32 %div3, 1, !dbg !3015
  br i1 %cmp, label %if.then4, label %if.else, !dbg !3018

if.then4:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !3015
  br label %if.end, !dbg !3015

if.else:                                          ; preds = %if.then
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3015
  %udelay5 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !3015
  %10 = load i32, i32* %udelay5, align 8, !dbg !3015
  %div6 = sdiv i32 %10, 2, !dbg !3015
  %conv = sext i32 %div6 to i64, !dbg !3015
  %mul = mul i64 %conv, 4295, !dbg !3015
  call void @__const_udelay(i64 %mul) #5, !dbg !3015
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11, !dbg !3018

if.else7:                                         ; preds = %entry
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3019
  %udelay8 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3019
  %12 = load i32, i32* %udelay8, align 8, !dbg !3019
  %div9 = sdiv i32 %12, 2, !dbg !3019
  %conv10 = sext i32 %div9 to i64, !dbg !3019
  call void @__udelay(i64 %conv10) #5, !dbg !3019
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.end
  ret void, !dbg !3021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdalo(%struct.i2c_algo_bit_data* %adap) #0 !dbg !3022 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !3023, metadata !DIExpression()), !dbg !3024
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3025
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %0, i32 0, i32 1, !dbg !3025
  %1 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !3025
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3025
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 0, !dbg !3025
  %3 = load i8*, i8** %data, align 8, !dbg !3025
  call void %1(i8* %3, i32 0) #5, !dbg !3025
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3026
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 7, !dbg !3026
  %5 = load i32, i32* %udelay, align 8, !dbg !3026
  %add = add i32 %5, 1, !dbg !3026
  %div = sdiv i32 %add, 2, !dbg !3026
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3026
  br i1 %6, label %if.then, label %if.else9, !dbg !3029

if.then:                                          ; preds = %entry
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3030
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 7, !dbg !3030
  %8 = load i32, i32* %udelay1, align 8, !dbg !3030
  %add2 = add i32 %8, 1, !dbg !3030
  %div3 = sdiv i32 %add2, 2, !dbg !3030
  %div4 = sdiv i32 %div3, 20000, !dbg !3030
  %cmp = icmp sge i32 %div4, 1, !dbg !3030
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3033

if.then5:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !3030
  br label %if.end, !dbg !3030

if.else:                                          ; preds = %if.then
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3030
  %udelay6 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !3030
  %10 = load i32, i32* %udelay6, align 8, !dbg !3030
  %add7 = add i32 %10, 1, !dbg !3030
  %div8 = sdiv i32 %add7, 2, !dbg !3030
  %conv = sext i32 %div8 to i64, !dbg !3030
  %mul = mul i64 %conv, 4295, !dbg !3030
  call void @__const_udelay(i64 %mul) #5, !dbg !3030
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end14, !dbg !3033

if.else9:                                         ; preds = %entry
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3034
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3034
  %12 = load i32, i32* %udelay10, align 8, !dbg !3034
  %add11 = add i32 %12, 1, !dbg !3034
  %div12 = sdiv i32 %add11, 2, !dbg !3034
  %conv13 = sext i32 %div12 to i64, !dbg !3034
  call void @__udelay(i64 %conv13) #5, !dbg !3034
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.end
  ret void, !dbg !3036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sclhi(%struct.i2c_algo_bit_data* %adap) #0 !dbg !3037 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  %start = alloca i64, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata i64* %start, metadata !3042, metadata !DIExpression()), !dbg !3043
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3044
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %0, i32 0, i32 2, !dbg !3044
  %1 = load void (i8*, i32)*, void (i8*, i32)** %setscl, align 8, !dbg !3044
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3044
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 0, !dbg !3044
  %3 = load i8*, i8** %data, align 8, !dbg !3044
  call void %1(i8* %3, i32 1) #5, !dbg !3044
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3045
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 4, !dbg !3047
  %5 = load i32 (i8*)*, i32 (i8*)** %getscl, align 8, !dbg !3047
  %tobool = icmp ne i32 (i8*)* %5, null, !dbg !3045
  br i1 %tobool, label %if.end, label %if.then, !dbg !3048

if.then:                                          ; preds = %entry
  br label %done, !dbg !3049

if.end:                                           ; preds = %entry
  %6 = load volatile i64, i64* @jiffies, align 8, !dbg !3050
  store i64 %6, i64* %start, align 8, !dbg !3051
  br label %while.cond, !dbg !3052

while.cond:                                       ; preds = %if.end12, %if.end
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3053
  %getscl1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 4, !dbg !3053
  %8 = load i32 (i8*)*, i32 (i8*)** %getscl1, align 8, !dbg !3053
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3053
  %data2 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 0, !dbg !3053
  %10 = load i8*, i8** %data2, align 8, !dbg !3053
  %call = call i32 %8(i8* %10) #5, !dbg !3053
  %tobool3 = icmp ne i32 %call, 0, !dbg !3054
  %lnot = xor i1 %tobool3, true, !dbg !3054
  br i1 %lnot, label %while.body, label %while.end, !dbg !3052

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %start, align 8, !dbg !3055
  %12 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3055
  %timeout = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %12, i32 0, i32 8, !dbg !3055
  %13 = load i32, i32* %timeout, align 4, !dbg !3055
  %conv = sext i32 %13 to i64, !dbg !3055
  %add = add i64 %11, %conv, !dbg !3055
  %14 = load volatile i64, i64* @jiffies, align 8, !dbg !3055
  %sub = sub i64 %add, %14, !dbg !3055
  %cmp = icmp slt i64 %sub, 0, !dbg !3055
  br i1 %cmp, label %if.then5, label %if.end12, !dbg !3058

if.then5:                                         ; preds = %while.body
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3059
  %getscl6 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %15, i32 0, i32 4, !dbg !3059
  %16 = load i32 (i8*)*, i32 (i8*)** %getscl6, align 8, !dbg !3059
  %17 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3059
  %data7 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %17, i32 0, i32 0, !dbg !3059
  %18 = load i8*, i8** %data7, align 8, !dbg !3059
  %call8 = call i32 %16(i8* %18) #5, !dbg !3059
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3059
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3062

if.then10:                                        ; preds = %if.then5
  br label %while.end, !dbg !3063

if.end11:                                         ; preds = %if.then5
  store i32 -110, i32* %retval, align 4, !dbg !3064
  br label %return, !dbg !3064

if.end12:                                         ; preds = %while.body
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3065, !srcloc !3073
  br label %while.cond, !dbg !3052, !llvm.loop !3074

while.end:                                        ; preds = %if.then10, %while.cond
  br label %done, !dbg !3052

done:                                             ; preds = %while.end, %if.then
  call void @llvm.dbg.label(metadata !3076), !dbg !3077
  %19 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3078
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %19, i32 0, i32 7, !dbg !3078
  %20 = load i32, i32* %udelay, align 8, !dbg !3078
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !3078
  br i1 %21, label %if.then13, label %if.else21, !dbg !3081

if.then13:                                        ; preds = %done
  %22 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3082
  %udelay14 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %22, i32 0, i32 7, !dbg !3082
  %23 = load i32, i32* %udelay14, align 8, !dbg !3082
  %div = sdiv i32 %23, 20000, !dbg !3082
  %cmp15 = icmp sge i32 %div, 1, !dbg !3082
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !3085

if.then17:                                        ; preds = %if.then13
  call void @__bad_udelay() #5, !dbg !3082
  br label %if.end20, !dbg !3082

if.else:                                          ; preds = %if.then13
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3082
  %udelay18 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %24, i32 0, i32 7, !dbg !3082
  %25 = load i32, i32* %udelay18, align 8, !dbg !3082
  %conv19 = sext i32 %25 to i64, !dbg !3082
  %mul = mul i64 %conv19, 4295, !dbg !3082
  call void @__const_udelay(i64 %mul) #5, !dbg !3082
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  br label %if.end24, !dbg !3085

if.else21:                                        ; preds = %done
  %26 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3086
  %udelay22 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %26, i32 0, i32 7, !dbg !3086
  %27 = load i32, i32* %udelay22, align 8, !dbg !3086
  %conv23 = sext i32 %27 to i64, !dbg !3086
  call void @__udelay(i64 %conv23) #5, !dbg !3086
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end20
  store i32 0, i32* %retval, align 4, !dbg !3088
  br label %return, !dbg !3088

return:                                           ; preds = %if.end24, %if.end11
  %28 = load i32, i32* %retval, align 4, !dbg !3089
  ret i32 %28, !dbg !3089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sdahi(%struct.i2c_algo_bit_data* %adap) #0 !dbg !3090 {
entry:
  %adap.addr = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_algo_bit_data* %adap, %struct.i2c_algo_bit_data** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  %0 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3093
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %0, i32 0, i32 1, !dbg !3093
  %1 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !3093
  %2 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3093
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %2, i32 0, i32 0, !dbg !3093
  %3 = load i8*, i8** %data, align 8, !dbg !3093
  call void %1(i8* %3, i32 1) #5, !dbg !3093
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3094
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 7, !dbg !3094
  %5 = load i32, i32* %udelay, align 8, !dbg !3094
  %add = add i32 %5, 1, !dbg !3094
  %div = sdiv i32 %add, 2, !dbg !3094
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3094
  br i1 %6, label %if.then, label %if.else9, !dbg !3097

if.then:                                          ; preds = %entry
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3098
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 7, !dbg !3098
  %8 = load i32, i32* %udelay1, align 8, !dbg !3098
  %add2 = add i32 %8, 1, !dbg !3098
  %div3 = sdiv i32 %add2, 2, !dbg !3098
  %div4 = sdiv i32 %div3, 20000, !dbg !3098
  %cmp = icmp sge i32 %div4, 1, !dbg !3098
  br i1 %cmp, label %if.then5, label %if.else, !dbg !3101

if.then5:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !3098
  br label %if.end, !dbg !3098

if.else:                                          ; preds = %if.then
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3098
  %udelay6 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 7, !dbg !3098
  %10 = load i32, i32* %udelay6, align 8, !dbg !3098
  %add7 = add i32 %10, 1, !dbg !3098
  %div8 = sdiv i32 %add7, 2, !dbg !3098
  %conv = sext i32 %div8 to i64, !dbg !3098
  %mul = mul i64 %conv, 4295, !dbg !3098
  call void @__const_udelay(i64 %mul) #5, !dbg !3098
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end14, !dbg !3101

if.else9:                                         ; preds = %entry
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap.addr, align 8, !dbg !3102
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3102
  %12 = load i32, i32* %udelay10, align 8, !dbg !3102
  %add11 = add i32 %12, 1, !dbg !3102
  %div12 = sdiv i32 %add11, 2, !dbg !3102
  %conv13 = sext i32 %div12 to i64, !dbg !3102
  call void @__udelay(i64 %conv13) #5, !dbg !3102
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.end
  ret void, !dbg !3104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @try_address(%struct.i2c_adapter* %i2c_adap, i8 zeroext %addr, i32 %retries) #0 !dbg !3105 {
entry:
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i8, align 1
  %retries.addr = alloca i32, align 4
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3108, metadata !DIExpression()), !dbg !3109
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !3110, metadata !DIExpression()), !dbg !3111
  store i32 %retries, i32* %retries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %retries.addr, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !3114, metadata !DIExpression()), !dbg !3115
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3116
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3117
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3117
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !3116
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3115
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3120, metadata !DIExpression()), !dbg !3121
  store i32 0, i32* %ret, align 4, !dbg !3121
  store i32 0, i32* %i, align 4, !dbg !3122
  br label %for.cond, !dbg !3124

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !3125
  %4 = load i32, i32* %retries.addr, align 4, !dbg !3127
  %cmp = icmp sle i32 %3, %4, !dbg !3128
  br i1 %cmp, label %for.body, label %for.end, !dbg !3129

for.body:                                         ; preds = %for.cond
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3130
  %6 = load i8, i8* %addr.addr, align 1, !dbg !3132
  %call = call i32 @i2c_outb(%struct.i2c_adapter* %5, i8 zeroext %6) #5, !dbg !3133
  store i32 %call, i32* %ret, align 4, !dbg !3134
  %7 = load i32, i32* %ret, align 4, !dbg !3135
  %cmp1 = icmp eq i32 %7, 1, !dbg !3137
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !3138

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !3139
  %9 = load i32, i32* %retries.addr, align 4, !dbg !3140
  %cmp2 = icmp eq i32 %8, %9, !dbg !3141
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3142

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !3143

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !3144

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3145

do.end:                                           ; preds = %do.body
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3147
  call void @i2c_stop(%struct.i2c_algo_bit_data* %10) #5, !dbg !3148
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3149
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3149
  %12 = load i32, i32* %udelay, align 8, !dbg !3149
  %13 = call i1 @llvm.is.constant.i32(i32 %12), !dbg !3149
  br i1 %13, label %if.then3, label %if.else9, !dbg !3152

if.then3:                                         ; preds = %do.end
  %14 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3153
  %udelay4 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %14, i32 0, i32 7, !dbg !3153
  %15 = load i32, i32* %udelay4, align 8, !dbg !3153
  %div = sdiv i32 %15, 20000, !dbg !3153
  %cmp5 = icmp sge i32 %div, 1, !dbg !3153
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !3156

if.then6:                                         ; preds = %if.then3
  call void @__bad_udelay() #5, !dbg !3153
  br label %if.end8, !dbg !3153

if.else:                                          ; preds = %if.then3
  %16 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3153
  %udelay7 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %16, i32 0, i32 7, !dbg !3153
  %17 = load i32, i32* %udelay7, align 8, !dbg !3153
  %conv = sext i32 %17 to i64, !dbg !3153
  %mul = mul i64 %conv, 4295, !dbg !3153
  call void @__const_udelay(i64 %mul) #5, !dbg !3153
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  br label %if.end12, !dbg !3156

if.else9:                                         ; preds = %do.end
  %18 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3157
  %udelay10 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %18, i32 0, i32 7, !dbg !3157
  %19 = load i32, i32* %udelay10, align 8, !dbg !3157
  %conv11 = sext i32 %19 to i64, !dbg !3157
  call void @__udelay(i64 %conv11) #5, !dbg !3157
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.end8
  call void @yield() #5, !dbg !3159
  br label %do.body13, !dbg !3160

do.body13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !3161

do.end14:                                         ; preds = %do.body13
  %20 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3163
  call void @i2c_start(%struct.i2c_algo_bit_data* %20) #5, !dbg !3164
  br label %for.inc, !dbg !3165

for.inc:                                          ; preds = %do.end14
  %21 = load i32, i32* %i, align 4, !dbg !3166
  %inc = add i32 %21, 1, !dbg !3166
  store i32 %inc, i32* %i, align 4, !dbg !3166
  br label %for.cond, !dbg !3167, !llvm.loop !3168

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i32, i32* %i, align 4, !dbg !3170
  %tobool = icmp ne i32 %22, 0, !dbg !3170
  br i1 %tobool, label %land.lhs.true, label %if.end19, !dbg !3172

land.lhs.true:                                    ; preds = %for.end
  %23 = load i32, i32* %ret, align 4, !dbg !3173
  %tobool15 = icmp ne i32 %23, 0, !dbg !3173
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !3174

if.then16:                                        ; preds = %land.lhs.true
  br label %do.body17, !dbg !3175

do.body17:                                        ; preds = %if.then16
  br label %do.end18, !dbg !3176

do.end18:                                         ; preds = %do.body17
  br label %if.end19, !dbg !3176

if.end19:                                         ; preds = %do.end18, %land.lhs.true, %for.end
  %24 = load i32, i32* %ret, align 4, !dbg !3178
  ret i32 %24, !dbg !3179
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_outb(%struct.i2c_adapter* %i2c_adap, i8 zeroext %c) #0 !dbg !3180 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %sb = alloca i32, align 4
  %ack = alloca i32, align 4
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata i32* %sb, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.declare(metadata i32* %ack, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !3193, metadata !DIExpression()), !dbg !3194
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3195
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3196
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3196
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !3195
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3194
  store i32 7, i32* %i, align 4, !dbg !3197
  br label %for.cond, !dbg !3199

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !3200
  %cmp = icmp sge i32 %3, 0, !dbg !3202
  br i1 %cmp, label %for.body, label %for.end, !dbg !3203

for.body:                                         ; preds = %for.cond
  %4 = load i8, i8* %c.addr, align 1, !dbg !3204
  %conv = zext i8 %4 to i32, !dbg !3204
  %5 = load i32, i32* %i, align 4, !dbg !3206
  %shr = ashr i32 %conv, %5, !dbg !3207
  %and = and i32 %shr, 1, !dbg !3208
  store i32 %and, i32* %sb, align 4, !dbg !3209
  %6 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3210
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %6, i32 0, i32 1, !dbg !3210
  %7 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !3210
  %8 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3210
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %8, i32 0, i32 0, !dbg !3210
  %9 = load i8*, i8** %data, align 8, !dbg !3210
  %10 = load i32, i32* %sb, align 4, !dbg !3210
  call void %7(i8* %9, i32 %10) #5, !dbg !3210
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3211
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3211
  %12 = load i32, i32* %udelay, align 8, !dbg !3211
  %add = add i32 %12, 1, !dbg !3211
  %div = sdiv i32 %add, 2, !dbg !3211
  %13 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3211
  br i1 %13, label %if.then, label %if.else12, !dbg !3214

if.then:                                          ; preds = %for.body
  %14 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3215
  %udelay1 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %14, i32 0, i32 7, !dbg !3215
  %15 = load i32, i32* %udelay1, align 8, !dbg !3215
  %add2 = add i32 %15, 1, !dbg !3215
  %div3 = sdiv i32 %add2, 2, !dbg !3215
  %div4 = sdiv i32 %div3, 20000, !dbg !3215
  %cmp5 = icmp sge i32 %div4, 1, !dbg !3215
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3218

if.then7:                                         ; preds = %if.then
  call void @__bad_udelay() #5, !dbg !3215
  br label %if.end, !dbg !3215

if.else:                                          ; preds = %if.then
  %16 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3215
  %udelay8 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %16, i32 0, i32 7, !dbg !3215
  %17 = load i32, i32* %udelay8, align 8, !dbg !3215
  %add9 = add i32 %17, 1, !dbg !3215
  %div10 = sdiv i32 %add9, 2, !dbg !3215
  %conv11 = sext i32 %div10 to i64, !dbg !3215
  %mul = mul i64 %conv11, 4295, !dbg !3215
  call void @__const_udelay(i64 %mul) #5, !dbg !3215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end17, !dbg !3218

if.else12:                                        ; preds = %for.body
  %18 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3219
  %udelay13 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %18, i32 0, i32 7, !dbg !3219
  %19 = load i32, i32* %udelay13, align 8, !dbg !3219
  %add14 = add i32 %19, 1, !dbg !3219
  %div15 = sdiv i32 %add14, 2, !dbg !3219
  %conv16 = sext i32 %div15 to i64, !dbg !3219
  call void @__udelay(i64 %conv16) #5, !dbg !3219
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.end
  %20 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3221
  %call = call i32 @sclhi(%struct.i2c_algo_bit_data* %20) #5, !dbg !3223
  %cmp18 = icmp slt i32 %call, 0, !dbg !3224
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3225

if.then20:                                        ; preds = %if.end17
  br label %do.body, !dbg !3226

do.body:                                          ; preds = %if.then20
  br label %do.end, !dbg !3228

do.end:                                           ; preds = %do.body
  store i32 -110, i32* %retval, align 4, !dbg !3230
  br label %return, !dbg !3230

if.end21:                                         ; preds = %if.end17
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3231
  call void @scllo(%struct.i2c_algo_bit_data* %21) #5, !dbg !3232
  br label %for.inc, !dbg !3233

for.inc:                                          ; preds = %if.end21
  %22 = load i32, i32* %i, align 4, !dbg !3234
  %dec = add i32 %22, -1, !dbg !3234
  store i32 %dec, i32* %i, align 4, !dbg !3234
  br label %for.cond, !dbg !3235, !llvm.loop !3236

for.end:                                          ; preds = %for.cond
  %23 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3238
  call void @sdahi(%struct.i2c_algo_bit_data* %23) #5, !dbg !3239
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3240
  %call22 = call i32 @sclhi(%struct.i2c_algo_bit_data* %24) #5, !dbg !3242
  %cmp23 = icmp slt i32 %call22, 0, !dbg !3243
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !3244

if.then25:                                        ; preds = %for.end
  br label %do.body26, !dbg !3245

do.body26:                                        ; preds = %if.then25
  br label %do.end27, !dbg !3247

do.end27:                                         ; preds = %do.body26
  store i32 -110, i32* %retval, align 4, !dbg !3249
  br label %return, !dbg !3249

if.end28:                                         ; preds = %for.end
  %25 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3250
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %25, i32 0, i32 3, !dbg !3250
  %26 = load i32 (i8*)*, i32 (i8*)** %getsda, align 8, !dbg !3250
  %27 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3250
  %data29 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %27, i32 0, i32 0, !dbg !3250
  %28 = load i8*, i8** %data29, align 8, !dbg !3250
  %call30 = call i32 %26(i8* %28) #5, !dbg !3250
  %tobool = icmp ne i32 %call30, 0, !dbg !3251
  %lnot = xor i1 %tobool, true, !dbg !3251
  %lnot.ext = zext i1 %lnot to i32, !dbg !3251
  store i32 %lnot.ext, i32* %ack, align 4, !dbg !3252
  br label %do.body31, !dbg !3253

do.body31:                                        ; preds = %if.end28
  br label %do.end32, !dbg !3254

do.end32:                                         ; preds = %do.body31
  %29 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3256
  call void @scllo(%struct.i2c_algo_bit_data* %29) #5, !dbg !3257
  %30 = load i32, i32* %ack, align 4, !dbg !3258
  store i32 %30, i32* %retval, align 4, !dbg !3259
  br label %return, !dbg !3259

return:                                           ; preds = %do.end32, %do.end27, %do.end
  %31 = load i32, i32* %retval, align 4, !dbg !3260
  ret i32 %31, !dbg !3260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %msg) #0 !dbg !3261 {
entry:
  %msg.addr = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3268
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 0, !dbg !3269
  %1 = load i16, i16* %addr, align 8, !dbg !3269
  %conv = zext i16 %1 to i32, !dbg !3268
  %shl = shl i32 %conv, 1, !dbg !3270
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3271
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 1, !dbg !3272
  %3 = load i16, i16* %flags, align 2, !dbg !3272
  %conv1 = zext i16 %3 to i32, !dbg !3271
  %and = and i32 %conv1, 1, !dbg !3273
  %tobool = icmp ne i32 %and, 0, !dbg !3271
  %4 = zext i1 %tobool to i64, !dbg !3271
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3271
  %or = or i32 %shl, %cond, !dbg !3274
  %conv2 = trunc i32 %or to i8, !dbg !3275
  ret i8 %conv2, !dbg !3276
}

; Function Attrs: noredzone
declare dso_local void @yield() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_inb(%struct.i2c_adapter* %i2c_adap) #0 !dbg !3277 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %i = alloca i32, align 4
  %indata = alloca i8, align 1
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.declare(metadata i8* %indata, metadata !3282, metadata !DIExpression()), !dbg !3283
  store i8 0, i8* %indata, align 1, !dbg !3283
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !3284, metadata !DIExpression()), !dbg !3285
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3286
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3287
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3287
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !3286
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3285
  %3 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3288
  call void @sdahi(%struct.i2c_algo_bit_data* %3) #5, !dbg !3289
  store i32 0, i32* %i, align 4, !dbg !3290
  br label %for.cond, !dbg !3292

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !3293
  %cmp = icmp slt i32 %4, 8, !dbg !3295
  br i1 %cmp, label %for.body, label %for.end, !dbg !3296

for.body:                                         ; preds = %for.cond
  %5 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3297
  %call = call i32 @sclhi(%struct.i2c_algo_bit_data* %5) #5, !dbg !3300
  %cmp1 = icmp slt i32 %call, 0, !dbg !3301
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3302

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !3303

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !3305

do.end:                                           ; preds = %do.body
  store i32 -110, i32* %retval, align 4, !dbg !3307
  br label %return, !dbg !3307

if.end:                                           ; preds = %for.body
  %6 = load i8, i8* %indata, align 1, !dbg !3308
  %conv = zext i8 %6 to i32, !dbg !3308
  %mul = mul i32 %conv, 2, !dbg !3308
  %conv2 = trunc i32 %mul to i8, !dbg !3308
  store i8 %conv2, i8* %indata, align 1, !dbg !3308
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3309
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 3, !dbg !3309
  %8 = load i32 (i8*)*, i32 (i8*)** %getsda, align 8, !dbg !3309
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3309
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 0, !dbg !3309
  %10 = load i8*, i8** %data, align 8, !dbg !3309
  %call3 = call i32 %8(i8* %10) #5, !dbg !3309
  %tobool = icmp ne i32 %call3, 0, !dbg !3309
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !3311

if.then4:                                         ; preds = %if.end
  %11 = load i8, i8* %indata, align 1, !dbg !3312
  %conv5 = zext i8 %11 to i32, !dbg !3312
  %or = or i32 %conv5, 1, !dbg !3312
  %conv6 = trunc i32 %or to i8, !dbg !3312
  store i8 %conv6, i8* %indata, align 1, !dbg !3312
  br label %if.end7, !dbg !3313

if.end7:                                          ; preds = %if.then4, %if.end
  %12 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3314
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %12, i32 0, i32 2, !dbg !3314
  %13 = load void (i8*, i32)*, void (i8*, i32)** %setscl, align 8, !dbg !3314
  %14 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3314
  %data8 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %14, i32 0, i32 0, !dbg !3314
  %15 = load i8*, i8** %data8, align 8, !dbg !3314
  call void %13(i8* %15, i32 0) #5, !dbg !3314
  %16 = load i32, i32* %i, align 4, !dbg !3315
  %cmp9 = icmp eq i32 %16, 7, !dbg !3315
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !3315

cond.true:                                        ; preds = %if.end7
  %17 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3315
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %17, i32 0, i32 7, !dbg !3315
  %18 = load i32, i32* %udelay, align 8, !dbg !3315
  %div = sdiv i32 %18, 2, !dbg !3315
  br label %cond.end, !dbg !3315

cond.false:                                       ; preds = %if.end7
  %19 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3315
  %udelay11 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %19, i32 0, i32 7, !dbg !3315
  %20 = load i32, i32* %udelay11, align 8, !dbg !3315
  br label %cond.end, !dbg !3315

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %20, %cond.false ], !dbg !3315
  %21 = call i1 @llvm.is.constant.i32(i32 %cond), !dbg !3315
  br i1 %21, label %if.then12, label %if.else38, !dbg !3318

if.then12:                                        ; preds = %cond.end
  %22 = load i32, i32* %i, align 4, !dbg !3319
  %cmp13 = icmp eq i32 %22, 7, !dbg !3319
  br i1 %cmp13, label %cond.true15, label %cond.false18, !dbg !3319

cond.true15:                                      ; preds = %if.then12
  %23 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3319
  %udelay16 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %23, i32 0, i32 7, !dbg !3319
  %24 = load i32, i32* %udelay16, align 8, !dbg !3319
  %div17 = sdiv i32 %24, 2, !dbg !3319
  br label %cond.end20, !dbg !3319

cond.false18:                                     ; preds = %if.then12
  %25 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3319
  %udelay19 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %25, i32 0, i32 7, !dbg !3319
  %26 = load i32, i32* %udelay19, align 8, !dbg !3319
  br label %cond.end20, !dbg !3319

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi i32 [ %div17, %cond.true15 ], [ %26, %cond.false18 ], !dbg !3319
  %div22 = sdiv i32 %cond21, 20000, !dbg !3319
  %cmp23 = icmp sge i32 %div22, 1, !dbg !3319
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !3322

if.then25:                                        ; preds = %cond.end20
  call void @__bad_udelay() #5, !dbg !3319
  br label %if.end37, !dbg !3319

if.else:                                          ; preds = %cond.end20
  %27 = load i32, i32* %i, align 4, !dbg !3319
  %cmp26 = icmp eq i32 %27, 7, !dbg !3319
  br i1 %cmp26, label %cond.true28, label %cond.false31, !dbg !3319

cond.true28:                                      ; preds = %if.else
  %28 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3319
  %udelay29 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %28, i32 0, i32 7, !dbg !3319
  %29 = load i32, i32* %udelay29, align 8, !dbg !3319
  %div30 = sdiv i32 %29, 2, !dbg !3319
  br label %cond.end33, !dbg !3319

cond.false31:                                     ; preds = %if.else
  %30 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3319
  %udelay32 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %30, i32 0, i32 7, !dbg !3319
  %31 = load i32, i32* %udelay32, align 8, !dbg !3319
  br label %cond.end33, !dbg !3319

cond.end33:                                       ; preds = %cond.false31, %cond.true28
  %cond34 = phi i32 [ %div30, %cond.true28 ], [ %31, %cond.false31 ], !dbg !3319
  %conv35 = sext i32 %cond34 to i64, !dbg !3319
  %mul36 = mul i64 %conv35, 4295, !dbg !3319
  call void @__const_udelay(i64 %mul36) #5, !dbg !3319
  br label %if.end37

if.end37:                                         ; preds = %cond.end33, %if.then25
  br label %if.end49, !dbg !3322

if.else38:                                        ; preds = %cond.end
  %32 = load i32, i32* %i, align 4, !dbg !3323
  %cmp39 = icmp eq i32 %32, 7, !dbg !3323
  br i1 %cmp39, label %cond.true41, label %cond.false44, !dbg !3323

cond.true41:                                      ; preds = %if.else38
  %33 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3323
  %udelay42 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %33, i32 0, i32 7, !dbg !3323
  %34 = load i32, i32* %udelay42, align 8, !dbg !3323
  %div43 = sdiv i32 %34, 2, !dbg !3323
  br label %cond.end46, !dbg !3323

cond.false44:                                     ; preds = %if.else38
  %35 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3323
  %udelay45 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %35, i32 0, i32 7, !dbg !3323
  %36 = load i32, i32* %udelay45, align 8, !dbg !3323
  br label %cond.end46, !dbg !3323

cond.end46:                                       ; preds = %cond.false44, %cond.true41
  %cond47 = phi i32 [ %div43, %cond.true41 ], [ %36, %cond.false44 ], !dbg !3323
  %conv48 = sext i32 %cond47 to i64, !dbg !3323
  call void @__udelay(i64 %conv48) #5, !dbg !3323
  br label %if.end49

if.end49:                                         ; preds = %cond.end46, %if.end37
  br label %for.inc, !dbg !3325

for.inc:                                          ; preds = %if.end49
  %37 = load i32, i32* %i, align 4, !dbg !3326
  %inc = add i32 %37, 1, !dbg !3326
  store i32 %inc, i32* %i, align 4, !dbg !3326
  br label %for.cond, !dbg !3327, !llvm.loop !3328

for.end:                                          ; preds = %for.cond
  %38 = load i8, i8* %indata, align 1, !dbg !3330
  %conv50 = zext i8 %38 to i32, !dbg !3330
  store i32 %conv50, i32* %retval, align 4, !dbg !3331
  br label %return, !dbg !3331

return:                                           ; preds = %for.end, %do.end
  %39 = load i32, i32* %retval, align 4, !dbg !3332
  ret i32 %39, !dbg !3332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acknak(%struct.i2c_adapter* %i2c_adap, i32 %is_ack) #0 !dbg !3333 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %is_ack.addr = alloca i32, align 4
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i32 %is_ack, i32* %is_ack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_ack.addr, metadata !3338, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !3340, metadata !DIExpression()), !dbg !3341
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3342
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3343
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3343
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !3342
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3341
  %3 = load i32, i32* %is_ack.addr, align 4, !dbg !3344
  %tobool = icmp ne i32 %3, 0, !dbg !3344
  br i1 %tobool, label %if.then, label %if.end, !dbg !3346

if.then:                                          ; preds = %entry
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3347
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 1, !dbg !3347
  %5 = load void (i8*, i32)*, void (i8*, i32)** %setsda, align 8, !dbg !3347
  %6 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3347
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %6, i32 0, i32 0, !dbg !3347
  %7 = load i8*, i8** %data, align 8, !dbg !3347
  call void %5(i8* %7, i32 0) #5, !dbg !3347
  br label %if.end, !dbg !3347

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3348
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %8, i32 0, i32 7, !dbg !3348
  %9 = load i32, i32* %udelay, align 8, !dbg !3348
  %add = add i32 %9, 1, !dbg !3348
  %div = sdiv i32 %add, 2, !dbg !3348
  %10 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3348
  br i1 %10, label %if.then1, label %if.else11, !dbg !3351

if.then1:                                         ; preds = %if.end
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3352
  %udelay2 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 7, !dbg !3352
  %12 = load i32, i32* %udelay2, align 8, !dbg !3352
  %add3 = add i32 %12, 1, !dbg !3352
  %div4 = sdiv i32 %add3, 2, !dbg !3352
  %div5 = sdiv i32 %div4, 20000, !dbg !3352
  %cmp = icmp sge i32 %div5, 1, !dbg !3352
  br i1 %cmp, label %if.then6, label %if.else, !dbg !3355

if.then6:                                         ; preds = %if.then1
  call void @__bad_udelay() #5, !dbg !3352
  br label %if.end10, !dbg !3352

if.else:                                          ; preds = %if.then1
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3352
  %udelay7 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 7, !dbg !3352
  %14 = load i32, i32* %udelay7, align 8, !dbg !3352
  %add8 = add i32 %14, 1, !dbg !3352
  %div9 = sdiv i32 %add8, 2, !dbg !3352
  %conv = sext i32 %div9 to i64, !dbg !3352
  %mul = mul i64 %conv, 4295, !dbg !3352
  call void @__const_udelay(i64 %mul) #5, !dbg !3352
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  br label %if.end16, !dbg !3355

if.else11:                                        ; preds = %if.end
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3356
  %udelay12 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %15, i32 0, i32 7, !dbg !3356
  %16 = load i32, i32* %udelay12, align 8, !dbg !3356
  %add13 = add i32 %16, 1, !dbg !3356
  %div14 = sdiv i32 %add13, 2, !dbg !3356
  %conv15 = sext i32 %div14 to i64, !dbg !3356
  call void @__udelay(i64 %conv15) #5, !dbg !3356
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.end10
  %17 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3358
  %call = call i32 @sclhi(%struct.i2c_algo_bit_data* %17) #5, !dbg !3360
  %cmp17 = icmp slt i32 %call, 0, !dbg !3361
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !3362

if.then19:                                        ; preds = %if.end16
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3363
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 9, !dbg !3363
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3363
  store i32 -110, i32* %retval, align 4, !dbg !3365
  br label %return, !dbg !3365

if.end20:                                         ; preds = %if.end16
  %19 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3366
  call void @scllo(%struct.i2c_algo_bit_data* %19) #5, !dbg !3367
  store i32 0, i32* %retval, align 4, !dbg !3368
  br label %return, !dbg !3368

return:                                           ; preds = %if.end20, %if.then19
  %20 = load i32, i32* %retval, align 4, !dbg !3369
  ret i32 %20, !dbg !3369
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_bus(%struct.i2c_adapter* %i2c_adap) #0 !dbg !3370 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %adap = alloca %struct.i2c_algo_bit_data*, align 8
  %name = alloca i8*, align 8
  %scl = alloca i32, align 4
  %sda = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.i2c_algo_bit_data** %adap, metadata !3373, metadata !DIExpression()), !dbg !3374
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3375
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3376
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3376
  %2 = bitcast i8* %1 to %struct.i2c_algo_bit_data*, !dbg !3375
  store %struct.i2c_algo_bit_data* %2, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3374
  call void @llvm.dbg.declare(metadata i8** %name, metadata !3377, metadata !DIExpression()), !dbg !3378
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3379
  %name1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %3, i32 0, i32 12, !dbg !3380
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name1, i64 0, i64 0, !dbg !3379
  store i8* %arraydecay, i8** %name, align 8, !dbg !3378
  call void @llvm.dbg.declare(metadata i32* %scl, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.declare(metadata i32* %sda, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3385, metadata !DIExpression()), !dbg !3386
  %4 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3387
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %4, i32 0, i32 5, !dbg !3389
  %5 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %pre_xfer, align 8, !dbg !3389
  %tobool = icmp ne i32 (%struct.i2c_adapter*)* %5, null, !dbg !3387
  br i1 %tobool, label %if.then, label %if.end4, !dbg !3390

if.then:                                          ; preds = %entry
  %6 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3391
  %pre_xfer2 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %6, i32 0, i32 5, !dbg !3393
  %7 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %pre_xfer2, align 8, !dbg !3393
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3394
  %call = call i32 %7(%struct.i2c_adapter* %8) #5, !dbg !3391
  store i32 %call, i32* %ret, align 4, !dbg !3395
  %9 = load i32, i32* %ret, align 4, !dbg !3396
  %cmp = icmp slt i32 %9, 0, !dbg !3398
  br i1 %cmp, label %if.then3, label %if.end, !dbg !3399

if.then3:                                         ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !3400
  br label %return, !dbg !3400

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !3401

if.end4:                                          ; preds = %if.end, %entry
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3402
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %10, i32 0, i32 4, !dbg !3404
  %11 = load i32 (i8*)*, i32 (i8*)** %getscl, align 8, !dbg !3404
  %cmp5 = icmp eq i32 (i8*)* %11, null, !dbg !3405
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !3406

if.then6:                                         ; preds = %if.end4
  %12 = load i8*, i8** %name, align 8, !dbg !3407
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %12) #6, !dbg !3407
  br label %if.end8, !dbg !3407

if.end8:                                          ; preds = %if.then6, %if.end4
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3408
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 3, !dbg !3408
  %14 = load i32 (i8*)*, i32 (i8*)** %getsda, align 8, !dbg !3408
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3408
  %data = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %15, i32 0, i32 0, !dbg !3408
  %16 = load i8*, i8** %data, align 8, !dbg !3408
  %call9 = call i32 %14(i8* %16) #5, !dbg !3408
  store i32 %call9, i32* %sda, align 4, !dbg !3409
  %17 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3410
  %getscl10 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %17, i32 0, i32 4, !dbg !3411
  %18 = load i32 (i8*)*, i32 (i8*)** %getscl10, align 8, !dbg !3411
  %cmp11 = icmp eq i32 (i8*)* %18, null, !dbg !3412
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !3413

cond.true:                                        ; preds = %if.end8
  br label %cond.end, !dbg !3413

cond.false:                                       ; preds = %if.end8
  %19 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3414
  %getscl12 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %19, i32 0, i32 4, !dbg !3414
  %20 = load i32 (i8*)*, i32 (i8*)** %getscl12, align 8, !dbg !3414
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3414
  %data13 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %21, i32 0, i32 0, !dbg !3414
  %22 = load i8*, i8** %data13, align 8, !dbg !3414
  %call14 = call i32 %20(i8* %22) #5, !dbg !3414
  br label %cond.end, !dbg !3413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call14, %cond.false ], !dbg !3413
  store i32 %cond, i32* %scl, align 4, !dbg !3415
  %23 = load i32, i32* %scl, align 4, !dbg !3416
  %tobool15 = icmp ne i32 %23, 0, !dbg !3416
  br i1 %tobool15, label %lor.lhs.false, label %if.then17, !dbg !3418

lor.lhs.false:                                    ; preds = %cond.end
  %24 = load i32, i32* %sda, align 4, !dbg !3419
  %tobool16 = icmp ne i32 %24, 0, !dbg !3419
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !3420

if.then17:                                        ; preds = %lor.lhs.false, %cond.end
  %25 = load i8*, i8** %name, align 8, !dbg !3421
  %26 = load i32, i32* %scl, align 4, !dbg !3423
  %27 = load i32, i32* %sda, align 4, !dbg !3424
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %25, i32 %26, i32 %27) #6, !dbg !3425
  br label %bailout, !dbg !3426

if.end19:                                         ; preds = %lor.lhs.false
  %28 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3427
  call void @sdalo(%struct.i2c_algo_bit_data* %28) #5, !dbg !3428
  %29 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3429
  %getsda20 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %29, i32 0, i32 3, !dbg !3429
  %30 = load i32 (i8*)*, i32 (i8*)** %getsda20, align 8, !dbg !3429
  %31 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3429
  %data21 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %31, i32 0, i32 0, !dbg !3429
  %32 = load i8*, i8** %data21, align 8, !dbg !3429
  %call22 = call i32 %30(i8* %32) #5, !dbg !3429
  store i32 %call22, i32* %sda, align 4, !dbg !3430
  %33 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3431
  %getscl23 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %33, i32 0, i32 4, !dbg !3432
  %34 = load i32 (i8*)*, i32 (i8*)** %getscl23, align 8, !dbg !3432
  %cmp24 = icmp eq i32 (i8*)* %34, null, !dbg !3433
  br i1 %cmp24, label %cond.true25, label %cond.false26, !dbg !3434

cond.true25:                                      ; preds = %if.end19
  br label %cond.end30, !dbg !3434

cond.false26:                                     ; preds = %if.end19
  %35 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3435
  %getscl27 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %35, i32 0, i32 4, !dbg !3435
  %36 = load i32 (i8*)*, i32 (i8*)** %getscl27, align 8, !dbg !3435
  %37 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3435
  %data28 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %37, i32 0, i32 0, !dbg !3435
  %38 = load i8*, i8** %data28, align 8, !dbg !3435
  %call29 = call i32 %36(i8* %38) #5, !dbg !3435
  br label %cond.end30, !dbg !3434

cond.end30:                                       ; preds = %cond.false26, %cond.true25
  %cond31 = phi i32 [ 1, %cond.true25 ], [ %call29, %cond.false26 ], !dbg !3434
  store i32 %cond31, i32* %scl, align 4, !dbg !3436
  %39 = load i32, i32* %sda, align 4, !dbg !3437
  %tobool32 = icmp ne i32 %39, 0, !dbg !3437
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !3439

if.then33:                                        ; preds = %cond.end30
  %40 = load i8*, i8** %name, align 8, !dbg !3440
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %40) #6, !dbg !3442
  br label %bailout, !dbg !3443

if.end35:                                         ; preds = %cond.end30
  %41 = load i32, i32* %scl, align 4, !dbg !3444
  %tobool36 = icmp ne i32 %41, 0, !dbg !3444
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !3446

if.then37:                                        ; preds = %if.end35
  %42 = load i8*, i8** %name, align 8, !dbg !3447
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* %42) #6, !dbg !3449
  br label %bailout, !dbg !3450

if.end39:                                         ; preds = %if.end35
  %43 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3451
  call void @sdahi(%struct.i2c_algo_bit_data* %43) #5, !dbg !3452
  %44 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3453
  %getsda40 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %44, i32 0, i32 3, !dbg !3453
  %45 = load i32 (i8*)*, i32 (i8*)** %getsda40, align 8, !dbg !3453
  %46 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3453
  %data41 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %46, i32 0, i32 0, !dbg !3453
  %47 = load i8*, i8** %data41, align 8, !dbg !3453
  %call42 = call i32 %45(i8* %47) #5, !dbg !3453
  store i32 %call42, i32* %sda, align 4, !dbg !3454
  %48 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3455
  %getscl43 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %48, i32 0, i32 4, !dbg !3456
  %49 = load i32 (i8*)*, i32 (i8*)** %getscl43, align 8, !dbg !3456
  %cmp44 = icmp eq i32 (i8*)* %49, null, !dbg !3457
  br i1 %cmp44, label %cond.true45, label %cond.false46, !dbg !3458

cond.true45:                                      ; preds = %if.end39
  br label %cond.end50, !dbg !3458

cond.false46:                                     ; preds = %if.end39
  %50 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3459
  %getscl47 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %50, i32 0, i32 4, !dbg !3459
  %51 = load i32 (i8*)*, i32 (i8*)** %getscl47, align 8, !dbg !3459
  %52 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3459
  %data48 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %52, i32 0, i32 0, !dbg !3459
  %53 = load i8*, i8** %data48, align 8, !dbg !3459
  %call49 = call i32 %51(i8* %53) #5, !dbg !3459
  br label %cond.end50, !dbg !3458

cond.end50:                                       ; preds = %cond.false46, %cond.true45
  %cond51 = phi i32 [ 1, %cond.true45 ], [ %call49, %cond.false46 ], !dbg !3458
  store i32 %cond51, i32* %scl, align 4, !dbg !3460
  %54 = load i32, i32* %sda, align 4, !dbg !3461
  %tobool52 = icmp ne i32 %54, 0, !dbg !3461
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !3463

if.then53:                                        ; preds = %cond.end50
  %55 = load i8*, i8** %name, align 8, !dbg !3464
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %55) #6, !dbg !3466
  br label %bailout, !dbg !3467

if.end55:                                         ; preds = %cond.end50
  %56 = load i32, i32* %scl, align 4, !dbg !3468
  %tobool56 = icmp ne i32 %56, 0, !dbg !3468
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !3470

if.then57:                                        ; preds = %if.end55
  %57 = load i8*, i8** %name, align 8, !dbg !3471
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %57) #6, !dbg !3473
  br label %bailout, !dbg !3474

if.end59:                                         ; preds = %if.end55
  %58 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3475
  call void @scllo(%struct.i2c_algo_bit_data* %58) #5, !dbg !3476
  %59 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3477
  %getsda60 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %59, i32 0, i32 3, !dbg !3477
  %60 = load i32 (i8*)*, i32 (i8*)** %getsda60, align 8, !dbg !3477
  %61 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3477
  %data61 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %61, i32 0, i32 0, !dbg !3477
  %62 = load i8*, i8** %data61, align 8, !dbg !3477
  %call62 = call i32 %60(i8* %62) #5, !dbg !3477
  store i32 %call62, i32* %sda, align 4, !dbg !3478
  %63 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3479
  %getscl63 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %63, i32 0, i32 4, !dbg !3480
  %64 = load i32 (i8*)*, i32 (i8*)** %getscl63, align 8, !dbg !3480
  %cmp64 = icmp eq i32 (i8*)* %64, null, !dbg !3481
  br i1 %cmp64, label %cond.true65, label %cond.false66, !dbg !3482

cond.true65:                                      ; preds = %if.end59
  br label %cond.end70, !dbg !3482

cond.false66:                                     ; preds = %if.end59
  %65 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3483
  %getscl67 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %65, i32 0, i32 4, !dbg !3483
  %66 = load i32 (i8*)*, i32 (i8*)** %getscl67, align 8, !dbg !3483
  %67 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3483
  %data68 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %67, i32 0, i32 0, !dbg !3483
  %68 = load i8*, i8** %data68, align 8, !dbg !3483
  %call69 = call i32 %66(i8* %68) #5, !dbg !3483
  br label %cond.end70, !dbg !3482

cond.end70:                                       ; preds = %cond.false66, %cond.true65
  %cond71 = phi i32 [ 0, %cond.true65 ], [ %call69, %cond.false66 ], !dbg !3482
  store i32 %cond71, i32* %scl, align 4, !dbg !3484
  %69 = load i32, i32* %scl, align 4, !dbg !3485
  %tobool72 = icmp ne i32 %69, 0, !dbg !3485
  br i1 %tobool72, label %if.then73, label %if.end75, !dbg !3487

if.then73:                                        ; preds = %cond.end70
  %70 = load i8*, i8** %name, align 8, !dbg !3488
  %call74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %70) #6, !dbg !3490
  br label %bailout, !dbg !3491

if.end75:                                         ; preds = %cond.end70
  %71 = load i32, i32* %sda, align 4, !dbg !3492
  %tobool76 = icmp ne i32 %71, 0, !dbg !3492
  br i1 %tobool76, label %if.end79, label %if.then77, !dbg !3494

if.then77:                                        ; preds = %if.end75
  %72 = load i8*, i8** %name, align 8, !dbg !3495
  %call78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8* %72) #6, !dbg !3497
  br label %bailout, !dbg !3498

if.end79:                                         ; preds = %if.end75
  %73 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3499
  %call80 = call i32 @sclhi(%struct.i2c_algo_bit_data* %73) #5, !dbg !3500
  %74 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3501
  %getsda81 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %74, i32 0, i32 3, !dbg !3501
  %75 = load i32 (i8*)*, i32 (i8*)** %getsda81, align 8, !dbg !3501
  %76 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3501
  %data82 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %76, i32 0, i32 0, !dbg !3501
  %77 = load i8*, i8** %data82, align 8, !dbg !3501
  %call83 = call i32 %75(i8* %77) #5, !dbg !3501
  store i32 %call83, i32* %sda, align 4, !dbg !3502
  %78 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3503
  %getscl84 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %78, i32 0, i32 4, !dbg !3504
  %79 = load i32 (i8*)*, i32 (i8*)** %getscl84, align 8, !dbg !3504
  %cmp85 = icmp eq i32 (i8*)* %79, null, !dbg !3505
  br i1 %cmp85, label %cond.true86, label %cond.false87, !dbg !3506

cond.true86:                                      ; preds = %if.end79
  br label %cond.end91, !dbg !3506

cond.false87:                                     ; preds = %if.end79
  %80 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3507
  %getscl88 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %80, i32 0, i32 4, !dbg !3507
  %81 = load i32 (i8*)*, i32 (i8*)** %getscl88, align 8, !dbg !3507
  %82 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3507
  %data89 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %82, i32 0, i32 0, !dbg !3507
  %83 = load i8*, i8** %data89, align 8, !dbg !3507
  %call90 = call i32 %81(i8* %83) #5, !dbg !3507
  br label %cond.end91, !dbg !3506

cond.end91:                                       ; preds = %cond.false87, %cond.true86
  %cond92 = phi i32 [ 1, %cond.true86 ], [ %call90, %cond.false87 ], !dbg !3506
  store i32 %cond92, i32* %scl, align 4, !dbg !3508
  %84 = load i32, i32* %scl, align 4, !dbg !3509
  %tobool93 = icmp ne i32 %84, 0, !dbg !3509
  br i1 %tobool93, label %if.end96, label %if.then94, !dbg !3511

if.then94:                                        ; preds = %cond.end91
  %85 = load i8*, i8** %name, align 8, !dbg !3512
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %85) #6, !dbg !3514
  br label %bailout, !dbg !3515

if.end96:                                         ; preds = %cond.end91
  %86 = load i32, i32* %sda, align 4, !dbg !3516
  %tobool97 = icmp ne i32 %86, 0, !dbg !3516
  br i1 %tobool97, label %if.end100, label %if.then98, !dbg !3518

if.then98:                                        ; preds = %if.end96
  %87 = load i8*, i8** %name, align 8, !dbg !3519
  %call99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i8* %87) #6, !dbg !3521
  br label %bailout, !dbg !3522

if.end100:                                        ; preds = %if.end96
  %88 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3523
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %88, i32 0, i32 6, !dbg !3525
  %89 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer, align 8, !dbg !3525
  %tobool101 = icmp ne void (%struct.i2c_adapter*)* %89, null, !dbg !3523
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !3526

if.then102:                                       ; preds = %if.end100
  %90 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3527
  %post_xfer103 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %90, i32 0, i32 6, !dbg !3528
  %91 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer103, align 8, !dbg !3528
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3529
  call void %91(%struct.i2c_adapter* %92) #5, !dbg !3527
  br label %if.end104, !dbg !3527

if.end104:                                        ; preds = %if.then102, %if.end100
  %93 = load i8*, i8** %name, align 8, !dbg !3530
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %93) #6, !dbg !3530
  store i32 0, i32* %retval, align 4, !dbg !3531
  br label %return, !dbg !3531

bailout:                                          ; preds = %if.then98, %if.then94, %if.then77, %if.then73, %if.then57, %if.then53, %if.then37, %if.then33, %if.then17
  call void @llvm.dbg.label(metadata !3532), !dbg !3533
  %94 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3534
  call void @sdahi(%struct.i2c_algo_bit_data* %94) #5, !dbg !3535
  %95 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3536
  %call106 = call i32 @sclhi(%struct.i2c_algo_bit_data* %95) #5, !dbg !3537
  %96 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3538
  %post_xfer107 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %96, i32 0, i32 6, !dbg !3540
  %97 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer107, align 8, !dbg !3540
  %tobool108 = icmp ne void (%struct.i2c_adapter*)* %97, null, !dbg !3538
  br i1 %tobool108, label %if.then109, label %if.end111, !dbg !3541

if.then109:                                       ; preds = %bailout
  %98 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %adap, align 8, !dbg !3542
  %post_xfer110 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %98, i32 0, i32 6, !dbg !3543
  %99 = load void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)** %post_xfer110, align 8, !dbg !3543
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3544
  call void %99(%struct.i2c_adapter* %100) #5, !dbg !3542
  br label %if.end111, !dbg !3542

if.end111:                                        ; preds = %if.then109, %bailout
  store i32 -19, i32* %retval, align 4, !dbg !3545
  br label %return, !dbg !3545

return:                                           ; preds = %if.end111, %if.end104, %if.then3
  %101 = load i32, i32* %retval, align 4, !dbg !3546
  ret i32 %101, !dbg !3546
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2348, !2349, !2350, !2351}
!llvm.ident = !{!2352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_bit_test", scope: !2, file: !3, line: 36, type: !2345, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !64, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/algos/i2c-algo-bit.c", directory: "/home/lizy2001/genbc/linux")
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
!64 = !{!65, !66}
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !{!68, !140, !145, !150, !2321, !2326, !2331, !2336, !2341, !0, !2343}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__param_bit_test", scope: !2, file: !3, line: 36, type: !70, isLocal: true, isDefinition: true, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !72, line: 69, size: 320, elements: !73)
!72 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !78, !82, !103, !110, !114, !118}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !72, line: 70, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !71, file: !72, line: 71, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !81, line: 76, flags: DIFlagFwdDecl)
!81 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !71, file: !72, line: 72, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !72, line: 47, size: 256, elements: !86)
!86 = !{!87, !88, !94, !99}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !72, line: 49, baseType: !7, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !85, file: !72, line: 51, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !75, !93}
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !85, file: !72, line: 53, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!92, !98, !93}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !85, file: !72, line: 55, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !66}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !71, file: !72, line: 73, baseType: !104, size: 16, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !71, file: !72, line: 74, baseType: !111, size: 8, offset: 208)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !106, line: 16, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !108, line: 20, baseType: !113)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !72, line: 75, baseType: !115, size: 8, offset: 216)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !72, line: 76, baseType: !119, size: 64, offset: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !72, line: 76, size: 64, elements: !120)
!120 = !{!121, !122, !129}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !119, file: !72, line: 77, baseType: !66, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !119, file: !72, line: 78, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !72, line: 86, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !125, file: !72, line: 87, baseType: !7, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !125, file: !72, line: 88, baseType: !98, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !119, file: !72, line: 79, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !72, line: 92, size: 256, elements: !133)
!133 = !{!134, !135, !136, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !132, file: !72, line: 94, baseType: !7, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !132, file: !72, line: 95, baseType: !7, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !132, file: !72, line: 96, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !132, file: !72, line: 97, baseType: !83, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !132, file: !72, line: 98, baseType: !66, size: 64, offset: 192)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bit_testtype171", scope: !2, file: !3, line: 36, type: !142, isLocal: true, isDefinition: true, align: 8)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 280, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 35)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bit_test172", scope: !2, file: !3, line: 37, type: !147, isLocal: true, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 608, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 76)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "i2c_bit_algo", scope: !2, file: !3, line: 634, type: !152, isLocal: false, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !154, line: 519, size: 320, elements: !155)
!154 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !2302, !2303, !2316, !2317}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !153, file: !154, line: 529, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!92, !160, !2293, !92}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !154, line: 695, size: 7552, elements: !162)
!162 = !{!163, !164, !165, !167, !168, !182, !1354, !1355, !1356, !1357, !2240, !2241, !2242, !2246, !2247, !2248, !2249, !2281, !2292}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !161, file: !154, line: 696, baseType: !79, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !161, file: !154, line: 697, baseType: !7, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !161, file: !154, line: 698, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !161, file: !154, line: 699, baseType: !66, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !161, file: !154, line: 702, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !154, line: 557, size: 192, elements: !172)
!172 = !{!173, !177, !181}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !171, file: !154, line: 558, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !160, !7}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !171, file: !154, line: 559, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!92, !160, !7}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !171, file: !154, line: 560, baseType: !174, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !161, file: !154, line: 703, baseType: !183, size: 192, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !184, line: 30, size: 192, elements: !185)
!184 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !196, !212}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !183, file: !184, line: 31, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 29, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 20, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !189, file: !188, line: 21, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 25, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 25, elements: !195)
!195 = !{}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !183, file: !184, line: 32, baseType: !197, size: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !198, line: 125, size: 128, elements: !199)
!198 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !211}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !197, file: !198, line: 126, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !198, line: 31, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !201, file: !198, line: 32, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !198, line: 24, size: 192, align: 64, elements: !206)
!206 = !{!207, !209, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !205, file: !198, line: 25, baseType: !208, size: 64)
!208 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !205, file: !198, line: 26, baseType: !204, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !205, file: !198, line: 27, baseType: !204, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !197, file: !198, line: 127, baseType: !204, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !183, file: !184, line: 33, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !215, line: 640, size: 48640, elements: !216)
!215 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !225, !227, !228, !239, !240, !241, !242, !243, !244, !245, !246, !250, !276, !287, !379, !380, !381, !392, !393, !395, !396, !632, !633, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !712, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !768, !770, !771, !772, !774, !776, !777, !778, !779, !780, !786, !787, !788, !789, !790, !791, !792, !806, !811, !816, !817, !818, !821, !825, !828, !831, !834, !837, !841, !844, !847, !853, !854, !855, !861, !862, !866, !867, !868, !877, !878, !879, !880, !881, !886, !887, !888, !891, !892, !895, !898, !901, !904, !907, !910, !911, !992, !995, !998, !999, !1002, !1003, !1004, !1010, !1011, !1012, !1025, !1026, !1027, !1037, !1042, !1045, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !214, file: !215, line: 646, baseType: !218, size: 128)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !219, line: 56, size: 128, elements: !220)
!219 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !219, line: 57, baseType: !208, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !218, file: !219, line: 58, baseType: !223, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !7)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !214, file: !215, line: 649, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !214, file: !215, line: 657, baseType: !66, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !214, file: !215, line: 658, baseType: !229, size: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !230, line: 113, baseType: !231)
!230 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !230, line: 111, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !231, file: !230, line: 112, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !235, line: 168, baseType: !236)
!235 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 166, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !235, line: 167, baseType: !92, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !215, line: 660, baseType: !7, size: 32, offset: 288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !214, file: !215, line: 661, baseType: !7, size: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !214, file: !215, line: 684, baseType: !92, size: 32, offset: 352)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !214, file: !215, line: 686, baseType: !92, size: 32, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !214, file: !215, line: 687, baseType: !92, size: 32, offset: 416)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !214, file: !215, line: 688, baseType: !92, size: 32, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !214, file: !215, line: 689, baseType: !7, size: 32, offset: 480)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !214, file: !215, line: 691, baseType: !247, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !215, line: 691, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !214, file: !215, line: 692, baseType: !251, size: 832, offset: 576)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !215, line: 451, size: 832, elements: !252)
!252 = !{!253, !258, !259, !265, !266, !270, !271, !272, !273, !274}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !251, file: !215, line: 453, baseType: !254, size: 128)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !215, line: 325, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !254, file: !215, line: 326, baseType: !208, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !254, file: !215, line: 327, baseType: !223, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !251, file: !215, line: 454, baseType: !205, size: 192, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !251, file: !215, line: 455, baseType: !260, size: 128, offset: 320)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !235, line: 178, size: 128, elements: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !235, line: 179, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !235, line: 179, baseType: !263, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !251, file: !215, line: 456, baseType: !7, size: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !251, file: !215, line: 458, baseType: !267, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !269)
!269 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !251, file: !215, line: 459, baseType: !267, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !251, file: !215, line: 460, baseType: !267, size: 64, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !251, file: !215, line: 461, baseType: !267, size: 64, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !251, file: !215, line: 463, baseType: !267, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !251, file: !215, line: 465, baseType: !275, offset: 832)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !215, line: 415, elements: !195)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !214, file: !215, line: 693, baseType: !277, size: 384, offset: 1408)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !215, line: 489, size: 384, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !277, file: !215, line: 490, baseType: !260, size: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !277, file: !215, line: 491, baseType: !208, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !277, file: !215, line: 492, baseType: !208, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !277, file: !215, line: 493, baseType: !7, size: 32, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !277, file: !215, line: 494, baseType: !109, size: 16, offset: 288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !277, file: !215, line: 495, baseType: !109, size: 16, offset: 304)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !277, file: !215, line: 497, baseType: !286, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !214, file: !215, line: 697, baseType: !288, size: 1792, offset: 1792)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !215, line: 507, size: 1792, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !300, !301, !302, !303, !304, !305, !306, !376, !377}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !288, file: !215, line: 508, baseType: !205, size: 192, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !288, file: !215, line: 515, baseType: !267, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !288, file: !215, line: 516, baseType: !267, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !288, file: !215, line: 517, baseType: !267, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !288, file: !215, line: 518, baseType: !267, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !288, file: !215, line: 519, baseType: !267, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !288, file: !215, line: 526, baseType: !297, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !299)
!299 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !288, file: !215, line: 527, baseType: !267, size: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !215, line: 528, baseType: !7, size: 32, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !288, file: !215, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !288, file: !215, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !288, file: !215, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !288, file: !215, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !288, file: !215, line: 563, baseType: !307, size: 512, offset: 704)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !308)
!308 = !{!309, !317, !318, !323, !372, !373, !374, !375}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !307, file: !6, line: 119, baseType: !310, size: 256)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !311, line: 9, size: 256, elements: !312)
!311 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !311, line: 10, baseType: !205, size: 192, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !310, file: !311, line: 11, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !316, line: 29, baseType: !297)
!316 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !307, file: !6, line: 120, baseType: !315, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !307, file: !6, line: 121, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!5, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !307, file: !6, line: 122, baseType: !324, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !326)
!326 = !{!327, !347, !348, !352, !362, !363, !367, !371}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !325, file: !6, line: 160, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !329, file: !6, line: 215, baseType: !187)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !329, file: !6, line: 216, baseType: !7, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !329, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !329, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !329, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !329, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !329, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !329, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !329, file: !6, line: 233, baseType: !315, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !329, file: !6, line: 234, baseType: !322, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !329, file: !6, line: 235, baseType: !315, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !329, file: !6, line: 236, baseType: !322, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !329, file: !6, line: 237, baseType: !344, size: 4096, offset: 512)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 4096, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !325, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !325, file: !6, line: 162, baseType: !349, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !235, line: 27, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !351, line: 96, baseType: !92)
!351 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !325, file: !6, line: 163, baseType: !353, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !354, line: 276, baseType: !355)
!354 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !354, line: 276, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !355, file: !354, line: 276, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !354, line: 70, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !354, line: 65, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !359, file: !354, line: 66, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !325, file: !6, line: 164, baseType: !322, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !325, file: !6, line: 165, baseType: !364, size: 128, offset: 256)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !311, line: 14, size: 128, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !364, file: !311, line: 15, baseType: !197, size: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !325, file: !6, line: 166, baseType: !368, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!315}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !325, file: !6, line: 167, baseType: !315, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !6, line: 123, baseType: !115, size: 8, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !307, file: !6, line: 124, baseType: !115, size: 8, offset: 456)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !307, file: !6, line: 125, baseType: !115, size: 8, offset: 464)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !307, file: !6, line: 126, baseType: !115, size: 8, offset: 472)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !288, file: !215, line: 572, baseType: !307, size: 512, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !288, file: !215, line: 580, baseType: !378, size: 64, offset: 1728)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !214, file: !215, line: 721, baseType: !7, size: 32, offset: 3584)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !214, file: !215, line: 722, baseType: !92, size: 32, offset: 3616)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !214, file: !215, line: 723, baseType: !382, size: 64, offset: 3648)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !385, line: 17, baseType: !386)
!385 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !385, line: 17, size: 64, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !386, file: !385, line: 17, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 1)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !214, file: !215, line: 724, baseType: !384, size: 64, offset: 3712)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !214, file: !215, line: 749, baseType: !394, offset: 3776)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !215, line: 290, elements: !195)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !214, file: !215, line: 751, baseType: !260, size: 128, offset: 3776)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !214, file: !215, line: 757, baseType: !397, size: 64, offset: 3904)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !399, line: 388, size: 7296, elements: !400)
!399 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !628}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !399, line: 389, baseType: !402, size: 7296)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !399, line: 389, size: 7296, elements: !403)
!403 = !{!404, !451, !452, !453, !457, !458, !459, !460, !461, !468, !469, !470, !471, !472, !473, !474, !482, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !516, !524, !527, !573, !574, !596, !597, !600, !604, !605, !608, !609, !612, !615, !627}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !402, file: !399, line: 390, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !399, line: 305, size: 1472, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !423, !424, !429, !430, !433, !437, !438, !441, !442, !449}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !406, file: !399, line: 308, baseType: !208, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !406, file: !399, line: 309, baseType: !208, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !406, file: !399, line: 313, baseType: !405, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !406, file: !399, line: 313, baseType: !405, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !406, file: !399, line: 315, baseType: !205, size: 192, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !406, file: !399, line: 323, baseType: !208, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !406, file: !399, line: 327, baseType: !397, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !406, file: !399, line: 333, baseType: !416, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !417, line: 284, baseType: !418)
!417 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !417, line: 284, size: 64, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !418, file: !417, line: 284, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !422, line: 19, baseType: !208)
!422 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !406, file: !399, line: 334, baseType: !208, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !406, file: !399, line: 343, baseType: !425, size: 256, offset: 704)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !399, line: 340, size: 256, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !425, file: !399, line: 341, baseType: !205, size: 192, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !425, file: !399, line: 342, baseType: !208, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !406, file: !399, line: 351, baseType: !260, size: 128, offset: 960)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !406, file: !399, line: 353, baseType: !431, size: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !399, line: 353, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !406, file: !399, line: 356, baseType: !434, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !399, line: 356, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !406, file: !399, line: 359, baseType: !208, size: 64, offset: 1216)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !406, file: !399, line: 361, baseType: !439, size: 64, offset: 1280)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !417, line: 526, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !406, file: !399, line: 362, baseType: !66, size: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !406, file: !399, line: 365, baseType: !443, size: 64, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !444, line: 13, baseType: !445)
!444 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !235, line: 175, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 173, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !446, file: !235, line: 174, baseType: !297, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !406, file: !399, line: 373, baseType: !450, offset: 1472)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !399, line: 296, elements: !195)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !402, file: !399, line: 391, baseType: !201, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !402, file: !399, line: 392, baseType: !267, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !402, file: !399, line: 394, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!208, !439, !208, !208, !208, !208}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !402, file: !399, line: 398, baseType: !208, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !402, file: !399, line: 399, baseType: !208, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !402, file: !399, line: 405, baseType: !208, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !402, file: !399, line: 406, baseType: !208, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !402, file: !399, line: 407, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !417, line: 286, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 286, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !464, file: !417, line: 286, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !422, line: 18, baseType: !208)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !402, file: !399, line: 416, baseType: !234, size: 32, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !402, file: !399, line: 428, baseType: !234, size: 32, offset: 608)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !402, file: !399, line: 437, baseType: !234, size: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !402, file: !399, line: 447, baseType: !234, size: 32, offset: 672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !402, file: !399, line: 450, baseType: !443, size: 64, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !402, file: !399, line: 452, baseType: !92, size: 32, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !402, file: !399, line: 454, baseType: !475, offset: 800)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 83, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 71, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !188, line: 72, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !188, line: 72, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !479, file: !188, line: 73, baseType: !189)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !402, file: !399, line: 457, baseType: !483, size: 256, offset: 832)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !484, line: 35, size: 256, elements: !485)
!484 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 36, baseType: !443, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !483, file: !484, line: 42, baseType: !443, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !483, file: !484, line: 46, baseType: !187, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !483, file: !484, line: 47, baseType: !260, size: 128, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !402, file: !399, line: 459, baseType: !260, size: 128, offset: 1088)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !402, file: !399, line: 466, baseType: !208, size: 64, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !402, file: !399, line: 467, baseType: !208, size: 64, offset: 1280)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !402, file: !399, line: 469, baseType: !208, size: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !402, file: !399, line: 470, baseType: !208, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !402, file: !399, line: 471, baseType: !445, size: 64, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !402, file: !399, line: 472, baseType: !208, size: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !402, file: !399, line: 473, baseType: !208, size: 64, offset: 1600)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !402, file: !399, line: 474, baseType: !208, size: 64, offset: 1664)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !402, file: !399, line: 475, baseType: !208, size: 64, offset: 1728)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !402, file: !399, line: 477, baseType: !475, offset: 1792)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !402, file: !399, line: 478, baseType: !208, size: 64, offset: 1792)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !402, file: !399, line: 478, baseType: !208, size: 64, offset: 1856)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !402, file: !399, line: 478, baseType: !208, size: 64, offset: 1920)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !402, file: !399, line: 478, baseType: !208, size: 64, offset: 1984)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !402, file: !399, line: 479, baseType: !208, size: 64, offset: 2048)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !402, file: !399, line: 479, baseType: !208, size: 64, offset: 2112)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !402, file: !399, line: 479, baseType: !208, size: 64, offset: 2176)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !402, file: !399, line: 480, baseType: !208, size: 64, offset: 2240)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !402, file: !399, line: 480, baseType: !208, size: 64, offset: 2304)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !402, file: !399, line: 480, baseType: !208, size: 64, offset: 2368)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !402, file: !399, line: 480, baseType: !208, size: 64, offset: 2432)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !402, file: !399, line: 482, baseType: !513, size: 2816, offset: 2496)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 2816, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 44)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !402, file: !399, line: 488, baseType: !517, size: 256, offset: 5312)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !518, line: 60, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !518, line: 61, baseType: !521, size: 256)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 4)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !402, file: !399, line: 490, baseType: !525, size: 64, offset: 5568)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !399, line: 490, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !402, file: !399, line: 493, baseType: !528, size: 896, offset: 5632)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !529, line: 53, baseType: !530)
!529 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 896, elements: !531)
!531 = !{!532, !533, !534, !535, !538, !539, !546, !547, !567, !568, !569}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !530, file: !529, line: 18, baseType: !267, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !530, file: !529, line: 28, baseType: !445, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !530, file: !529, line: 31, baseType: !483, size: 256, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !530, file: !529, line: 32, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !529, line: 32, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !530, file: !529, line: 37, baseType: !109, size: 16, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !530, file: !529, line: 40, baseType: !540, size: 192, offset: 512)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !541, line: 53, size: 192, elements: !542)
!541 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !540, file: !541, line: 54, baseType: !443, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !540, file: !541, line: 55, baseType: !475, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !540, file: !541, line: 59, baseType: !260, size: 128, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !530, file: !529, line: 41, baseType: !66, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !530, file: !529, line: 42, baseType: !548, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !551, line: 13, size: 896, elements: !552)
!551 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !550, file: !551, line: 14, baseType: !66, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !550, file: !551, line: 15, baseType: !208, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !550, file: !551, line: 17, baseType: !208, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !550, file: !551, line: 17, baseType: !208, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !550, file: !551, line: 19, baseType: !65, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !550, file: !551, line: 21, baseType: !65, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !550, file: !551, line: 22, baseType: !65, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !550, file: !551, line: 23, baseType: !65, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !550, file: !551, line: 24, baseType: !65, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !550, file: !551, line: 25, baseType: !65, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !550, file: !551, line: 26, baseType: !65, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !550, file: !551, line: 27, baseType: !65, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !550, file: !551, line: 28, baseType: !65, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !550, file: !551, line: 29, baseType: !65, size: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !530, file: !529, line: 44, baseType: !234, size: 32, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !530, file: !529, line: 50, baseType: !105, size: 16, offset: 864)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !530, file: !529, line: 51, baseType: !570, size: 16, offset: 880)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !572)
!572 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !399, line: 495, baseType: !208, size: 64, offset: 6528)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !402, file: !399, line: 497, baseType: !575, size: 64, offset: 6592)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !399, line: 381, size: 384, elements: !577)
!577 = !{!578, !579, !585}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !576, file: !399, line: 382, baseType: !234, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !576, file: !399, line: 383, baseType: !580, size: 128, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !399, line: 376, size: 128, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !580, file: !399, line: 377, baseType: !213, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !399, line: 378, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !576, file: !399, line: 384, baseType: !586, size: 192, offset: 192)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !587, line: 26, size: 192, elements: !588)
!587 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !586, file: !587, line: 27, baseType: !7, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !586, file: !587, line: 28, baseType: !591, size: 128, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !592, line: 43, size: 128, elements: !593)
!592 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !592, line: 44, baseType: !187)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !591, file: !592, line: 45, baseType: !260, size: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !402, file: !399, line: 500, baseType: !475, offset: 6656)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !402, file: !399, line: 501, baseType: !598, size: 64, offset: 6656)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !399, line: 387, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !402, file: !399, line: 516, baseType: !601, size: 64, offset: 6720)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !603, line: 18, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !402, file: !399, line: 519, baseType: !439, size: 64, offset: 6784)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !402, file: !399, line: 521, baseType: !606, size: 64, offset: 6848)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !399, line: 521, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !402, file: !399, line: 545, baseType: !234, size: 32, offset: 6912)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !402, file: !399, line: 548, baseType: !610, size: 8, offset: 6944)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !235, line: 30, baseType: !611)
!611 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !402, file: !399, line: 550, baseType: !613, offset: 6952)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !614, line: 142, elements: !195)
!614 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !402, file: !399, line: 554, baseType: !616, size: 256, offset: 6976)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !617, line: 102, size: 256, elements: !618)
!617 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !616, file: !617, line: 103, baseType: !443, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !616, file: !617, line: 104, baseType: !260, size: 128, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !616, file: !617, line: 105, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !617, line: 21, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !402, file: !399, line: 557, baseType: !223, size: 32, offset: 7232)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !398, file: !399, line: 565, baseType: !629, offset: 7296)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: -1)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !214, file: !215, line: 758, baseType: !397, size: 64, offset: 3968)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !214, file: !215, line: 761, baseType: !634, size: 320, offset: 4032)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !518, line: 34, size: 320, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !634, file: !518, line: 35, baseType: !267, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !634, file: !518, line: 36, baseType: !638, size: 256, offset: 64)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 256, elements: !522)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !214, file: !215, line: 766, baseType: !92, size: 32, offset: 4352)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !214, file: !215, line: 767, baseType: !92, size: 32, offset: 4384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !214, file: !215, line: 768, baseType: !92, size: 32, offset: 4416)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !214, file: !215, line: 770, baseType: !92, size: 32, offset: 4448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !214, file: !215, line: 772, baseType: !208, size: 64, offset: 4480)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !214, file: !215, line: 775, baseType: !7, size: 32, offset: 4544)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !214, file: !215, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !214, file: !215, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !214, file: !215, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !214, file: !215, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !214, file: !215, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !214, file: !215, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !214, file: !215, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !214, file: !215, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !214, file: !215, line: 831, baseType: !208, size: 64, offset: 4672)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !214, file: !215, line: 833, baseType: !655, size: 384, offset: 4736)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !656)
!656 = !{!657, !662}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !655, file: !12, line: 26, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!65, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !12, line: 27, baseType: !663, size: 320, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !12, line: 27, size: 320, elements: !664)
!664 = !{!665, !675, !702}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !663, file: !12, line: 36, baseType: !666, size: 320)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !12, line: 29, size: 320, elements: !667)
!667 = !{!668, !670, !671, !672, !673, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !666, file: !12, line: 30, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !666, file: !12, line: 31, baseType: !223, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !12, line: 32, baseType: !223, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !666, file: !12, line: 33, baseType: !223, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !666, file: !12, line: 34, baseType: !267, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !666, file: !12, line: 35, baseType: !669, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !663, file: !12, line: 46, baseType: !676, size: 192)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !12, line: 38, size: 192, elements: !677)
!677 = !{!678, !679, !680, !701}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !676, file: !12, line: 39, baseType: !349, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !12, line: 41, baseType: !681, size: 64, offset: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !12, line: 41, size: 64, elements: !682)
!682 = !{!683, !691}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !681, file: !12, line: 42, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !686, line: 7, size: 128, elements: !687)
!686 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!687 = !{!688, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !685, file: !686, line: 8, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !351, line: 93, baseType: !299)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !685, file: !686, line: 9, baseType: !299, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !681, file: !12, line: 43, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !694, line: 7, size: 64, elements: !695)
!694 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !700}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !693, file: !694, line: 8, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !694, line: 5, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !92)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !693, file: !694, line: 9, baseType: !698, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !676, file: !12, line: 45, baseType: !267, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !663, file: !12, line: 54, baseType: !703, size: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !12, line: 48, size: 256, elements: !704)
!704 = !{!705, !708, !709, !710, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !703, file: !12, line: 49, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !703, file: !12, line: 50, baseType: !92, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !703, file: !12, line: 51, baseType: !92, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !703, file: !12, line: 52, baseType: !208, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !703, file: !12, line: 53, baseType: !208, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !214, file: !215, line: 835, baseType: !713, size: 32, offset: 5120)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !235, line: 22, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !351, line: 28, baseType: !92)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !214, file: !215, line: 836, baseType: !713, size: 32, offset: 5152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !214, file: !215, line: 840, baseType: !208, size: 64, offset: 5184)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !214, file: !215, line: 849, baseType: !213, size: 64, offset: 5248)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 852, baseType: !213, size: 64, offset: 5312)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !214, file: !215, line: 857, baseType: !260, size: 128, offset: 5376)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !214, file: !215, line: 858, baseType: !260, size: 128, offset: 5504)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !214, file: !215, line: 859, baseType: !213, size: 64, offset: 5632)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !214, file: !215, line: 867, baseType: !260, size: 128, offset: 5696)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !214, file: !215, line: 868, baseType: !260, size: 128, offset: 5824)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !214, file: !215, line: 871, baseType: !725, size: 64, offset: 5952)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !727, line: 59, size: 768, elements: !728)
!727 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !730, !731, !732, !743, !744, !751, !760}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !727, line: 61, baseType: !229, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !726, file: !727, line: 62, baseType: !7, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !726, file: !727, line: 63, baseType: !475, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !726, file: !727, line: 65, baseType: !733, size: 256, offset: 64)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 256, elements: !522)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !235, line: 182, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !734, file: !235, line: 183, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !235, line: 186, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !235, line: 187, baseType: !737, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !738, file: !235, line: 187, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !726, file: !727, line: 66, baseType: !734, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !726, file: !727, line: 68, baseType: !745, size: 128, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !746, line: 40, baseType: !747)
!746 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !746, line: 36, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !746, line: 37, baseType: !475)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !747, file: !746, line: 38, baseType: !260, size: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !726, file: !727, line: 69, baseType: !752, size: 128, align: 64, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !235, line: 216, size: 128, align: 64, elements: !753)
!753 = !{!754, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !235, line: 217, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !752, file: !235, line: 218, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !755}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !726, file: !727, line: 70, baseType: !761, size: 128, offset: 640)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 128, elements: !390)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !727, line: 54, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !762, file: !727, line: 55, baseType: !92, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !762, file: !727, line: 56, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !727, line: 56, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !214, file: !215, line: 872, baseType: !769, size: 512, offset: 6016)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 512, elements: !522)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !214, file: !215, line: 873, baseType: !260, size: 128, offset: 6528)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !214, file: !215, line: 874, baseType: !260, size: 128, offset: 6656)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !214, file: !215, line: 876, baseType: !773, size: 64, offset: 6784)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !214, file: !215, line: 879, baseType: !775, size: 64, offset: 6848)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !214, file: !215, line: 882, baseType: !775, size: 64, offset: 6912)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !214, file: !215, line: 884, baseType: !267, size: 64, offset: 6976)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !214, file: !215, line: 885, baseType: !267, size: 64, offset: 7040)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !214, file: !215, line: 890, baseType: !267, size: 64, offset: 7104)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !214, file: !215, line: 891, baseType: !781, size: 128, offset: 7168)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !215, line: 242, size: 128, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !781, file: !215, line: 244, baseType: !267, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !781, file: !215, line: 245, baseType: !267, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !215, line: 246, baseType: !187, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !214, file: !215, line: 900, baseType: !208, size: 64, offset: 7296)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !214, file: !215, line: 901, baseType: !208, size: 64, offset: 7360)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !214, file: !215, line: 904, baseType: !267, size: 64, offset: 7424)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !214, file: !215, line: 907, baseType: !267, size: 64, offset: 7488)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !214, file: !215, line: 910, baseType: !208, size: 64, offset: 7552)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !214, file: !215, line: 911, baseType: !208, size: 64, offset: 7616)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !214, file: !215, line: 914, baseType: !793, size: 640, offset: 7680)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !794, line: 123, size: 640, elements: !795)
!794 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !804, !805}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !793, file: !794, line: 124, baseType: !797, size: 576)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 576, elements: !802)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !794, line: 108, size: 192, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !798, file: !794, line: 109, baseType: !267, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !798, file: !794, line: 110, baseType: !364, size: 128, offset: 64)
!802 = !{!803}
!803 = !DISubrange(count: 3)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !793, file: !794, line: 125, baseType: !7, size: 32, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !793, file: !794, line: 126, baseType: !7, size: 32, offset: 608)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !214, file: !215, line: 917, baseType: !807, size: 192, offset: 8320)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !794, line: 134, size: 192, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !807, file: !794, line: 135, baseType: !752, size: 128, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !807, file: !794, line: 136, baseType: !7, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !214, file: !215, line: 923, baseType: !812, size: 64, offset: 8512)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !815, line: 11, flags: DIFlagFwdDecl)
!815 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !214, file: !215, line: 926, baseType: !812, size: 64, offset: 8576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !214, file: !215, line: 929, baseType: !812, size: 64, offset: 8640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !214, file: !215, line: 933, baseType: !819, size: 64, offset: 8704)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !215, line: 933, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !214, file: !215, line: 943, baseType: !822, size: 128, offset: 8768)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !214, file: !215, line: 945, baseType: !826, size: 64, offset: 8896)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !215, line: 49, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !214, file: !215, line: 956, baseType: !829, size: 64, offset: 8960)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !215, line: 45, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !214, file: !215, line: 959, baseType: !832, size: 64, offset: 9024)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !215, line: 959, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !214, file: !215, line: 962, baseType: !835, size: 64, offset: 9088)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !215, line: 66, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !214, file: !215, line: 966, baseType: !838, size: 64, offset: 9152)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !840, line: 35, flags: DIFlagFwdDecl)
!840 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !214, file: !215, line: 969, baseType: !842, size: 64, offset: 9216)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !794, line: 223, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !214, file: !215, line: 970, baseType: !845, size: 64, offset: 9280)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !215, line: 62, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !214, file: !215, line: 971, baseType: !848, size: 64, offset: 9344)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !849, line: 25, baseType: !850)
!849 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 23, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !850, file: !849, line: 24, baseType: !389, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !214, file: !215, line: 972, baseType: !848, size: 64, offset: 9408)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !214, file: !215, line: 974, baseType: !848, size: 64, offset: 9472)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !214, file: !215, line: 975, baseType: !856, size: 192, offset: 9536)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !857, line: 30, size: 192, elements: !858)
!857 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !856, file: !857, line: 31, baseType: !260, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !856, file: !857, line: 32, baseType: !848, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !214, file: !215, line: 976, baseType: !208, size: 64, offset: 9728)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !214, file: !215, line: 977, baseType: !863, size: 64, offset: 9792)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 55, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !351, line: 72, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !351, line: 16, baseType: !208)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !214, file: !215, line: 978, baseType: !7, size: 32, offset: 9856)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !214, file: !215, line: 980, baseType: !755, size: 64, offset: 9920)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !214, file: !215, line: 989, baseType: !869, size: 128, offset: 9984)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !870, line: 35, size: 128, elements: !871)
!870 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !869, file: !870, line: 36, baseType: !92, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !869, file: !870, line: 37, baseType: !234, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !869, file: !870, line: 38, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !870, line: 23, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !214, file: !215, line: 992, baseType: !267, size: 64, offset: 10112)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !214, file: !215, line: 993, baseType: !267, size: 64, offset: 10176)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !214, file: !215, line: 996, baseType: !475, offset: 10240)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !214, file: !215, line: 999, baseType: !187, offset: 10240)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !214, file: !215, line: 1001, baseType: !882, size: 64, offset: 10240)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !215, line: 636, size: 64, elements: !883)
!883 = !{!884}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !215, line: 637, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !214, file: !215, line: 1005, baseType: !197, size: 128, offset: 10304)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !214, file: !215, line: 1007, baseType: !213, size: 64, offset: 10432)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !214, file: !215, line: 1009, baseType: !889, size: 64, offset: 10496)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !215, line: 1009, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !214, file: !215, line: 1043, baseType: !66, size: 64, offset: 10560)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !214, file: !215, line: 1046, baseType: !893, size: 64, offset: 10624)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !215, line: 41, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !214, file: !215, line: 1050, baseType: !896, size: 64, offset: 10688)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !215, line: 42, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !214, file: !215, line: 1054, baseType: !899, size: 64, offset: 10752)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !215, line: 55, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !214, file: !215, line: 1056, baseType: !902, size: 64, offset: 10816)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !215, line: 40, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !214, file: !215, line: 1058, baseType: !905, size: 64, offset: 10880)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !215, line: 47, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !214, file: !215, line: 1061, baseType: !908, size: 64, offset: 10944)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !215, line: 43, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !214, file: !215, line: 1064, baseType: !208, size: 64, offset: 11008)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !214, file: !215, line: 1065, baseType: !912, size: 64, offset: 11072)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !857, line: 14, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !857, line: 12, size: 384, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !857, line: 13, baseType: !917, size: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !857, line: 13, size: 384, elements: !918)
!918 = !{!919, !920, !921, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !917, file: !857, line: 13, baseType: !92, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !917, file: !857, line: 13, baseType: !92, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !917, file: !857, line: 13, baseType: !92, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !917, file: !857, line: 13, baseType: !923, size: 256, offset: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !924, line: 32, size: 256, elements: !925)
!924 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!925 = !{!926, !932, !945, !951, !961, !981, !986}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !923, file: !924, line: 37, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 34, size: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !927, file: !924, line: 35, baseType: !714, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !927, file: !924, line: 36, baseType: !931, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !351, line: 49, baseType: !7)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !923, file: !924, line: 45, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 40, size: 192, elements: !934)
!934 = !{!935, !937, !938, !944}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !933, file: !924, line: 41, baseType: !936, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !351, line: 95, baseType: !92)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !933, file: !924, line: 42, baseType: !92, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !933, file: !924, line: 43, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !924, line: 11, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !924, line: 8, size: 64, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !940, file: !924, line: 9, baseType: !92, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !940, file: !924, line: 10, baseType: !66, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !933, file: !924, line: 44, baseType: !92, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !923, file: !924, line: 52, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 48, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !946, file: !924, line: 49, baseType: !714, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !946, file: !924, line: 50, baseType: !931, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !946, file: !924, line: 51, baseType: !939, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !923, file: !924, line: 61, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 55, size: 256, elements: !953)
!953 = !{!954, !955, !956, !957, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !952, file: !924, line: 56, baseType: !714, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !952, file: !924, line: 57, baseType: !931, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !952, file: !924, line: 58, baseType: !92, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !952, file: !924, line: 59, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !351, line: 94, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !351, line: 15, baseType: !65)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !952, file: !924, line: 60, baseType: !958, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !923, file: !924, line: 95, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 64, size: 256, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !962, file: !924, line: 65, baseType: !66, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !924, line: 77, baseType: !966, size: 192, offset: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !924, line: 77, size: 192, elements: !967)
!967 = !{!968, !969, !976}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !966, file: !924, line: 82, baseType: !572, size: 16)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !966, file: !924, line: 88, baseType: !970, size: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !924, line: 84, size: 192, elements: !971)
!971 = !{!972, !974, !975}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !970, file: !924, line: 85, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !345)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !970, file: !924, line: 86, baseType: !66, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !970, file: !924, line: 87, baseType: !66, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !966, file: !924, line: 93, baseType: !977, size: 96)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !924, line: 90, size: 96, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !977, file: !924, line: 91, baseType: !973, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !977, file: !924, line: 92, baseType: !224, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !923, file: !924, line: 101, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 98, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !982, file: !924, line: 99, baseType: !65, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !982, file: !924, line: 100, baseType: !92, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !923, file: !924, line: 108, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !924, line: 104, size: 128, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !987, file: !924, line: 105, baseType: !66, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !987, file: !924, line: 106, baseType: !92, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !987, file: !924, line: 107, baseType: !7, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !214, file: !215, line: 1067, baseType: !993, offset: 11136)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !994, line: 12, elements: !195)
!994 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !214, file: !215, line: 1099, baseType: !996, size: 64, offset: 11136)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !215, line: 56, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !214, file: !215, line: 1103, baseType: !260, size: 128, offset: 11200)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !214, file: !215, line: 1104, baseType: !1000, size: 64, offset: 11328)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !215, line: 46, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !214, file: !215, line: 1105, baseType: !540, size: 192, offset: 11392)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !214, file: !215, line: 1106, baseType: !7, size: 32, offset: 11584)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !214, file: !215, line: 1109, baseType: !1005, size: 128, offset: 11648)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 128, elements: !1008)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !215, line: 51, flags: DIFlagFwdDecl)
!1008 = !{!1009}
!1009 = !DISubrange(count: 2)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !214, file: !215, line: 1110, baseType: !540, size: 192, offset: 11776)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !214, file: !215, line: 1111, baseType: !260, size: 128, offset: 11968)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !214, file: !215, line: 1173, baseType: !1013, size: 64, offset: 12096)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1015, line: 62, size: 256, align: 256, elements: !1016)
!1015 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !{!1017, !1018, !1019, !1024}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1014, file: !1015, line: 75, baseType: !224, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1014, file: !1015, line: 90, baseType: !224, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1014, file: !1015, line: 124, baseType: !1020, size: 64, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 109, size: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1020, file: !1015, line: 110, baseType: !268, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1020, file: !1015, line: 112, baseType: !268, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1015, line: 144, baseType: !224, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !214, file: !215, line: 1174, baseType: !223, size: 32, offset: 12160)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !214, file: !215, line: 1179, baseType: !208, size: 64, offset: 12224)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !214, file: !215, line: 1182, baseType: !1028, size: 128, offset: 12288)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !518, line: 76, size: 128, elements: !1029)
!1029 = !{!1030, !1035, !1036}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1028, file: !518, line: 85, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1032, line: 7, size: 64, elements: !1033)
!1032 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1031, file: !1032, line: 12, baseType: !386, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1028, file: !518, line: 88, baseType: !610, size: 8, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1028, file: !518, line: 95, baseType: !610, size: 8, offset: 72)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !215, line: 1184, baseType: !1038, size: 128, offset: 12416)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !215, line: 1184, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1038, file: !215, line: 1185, baseType: !229, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1038, file: !215, line: 1186, baseType: !752, size: 128, align: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !214, file: !215, line: 1190, baseType: !1043, size: 64, offset: 12544)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !215, line: 53, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !214, file: !215, line: 1192, baseType: !1046, size: 128, offset: 12608)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !518, line: 64, size: 128, elements: !1047)
!1047 = !{!1048, !1141, !1142}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1046, file: !518, line: 65, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !399, line: 68, size: 512, align: 128, elements: !1051)
!1051 = !{!1052, !1053, !1133, !1140}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !399, line: 69, baseType: !208, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !399, line: 77, baseType: !1054, size: 320, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !399, line: 77, size: 320, elements: !1055)
!1055 = !{!1056, !1065, !1070, !1098, !1106, !1112, !1125, !1132}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 78, baseType: !1057, size: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 78, size: 320, elements: !1058)
!1058 = !{!1059, !1060, !1063, !1064}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1057, file: !399, line: 84, baseType: !260, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1057, file: !399, line: 86, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !399, line: 26, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1057, file: !399, line: 87, baseType: !208, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1057, file: !399, line: 94, baseType: !208, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 96, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 96, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1066, file: !399, line: 101, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !235, line: 143, baseType: !267)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 103, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 103, size: 320, elements: !1072)
!1072 = !{!1073, !1083, !1086, !1087}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !399, line: 104, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !399, line: 104, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1074, file: !399, line: 105, baseType: !260, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !399, line: 106, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !399, line: 106, size: 128, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !399, line: 107, baseType: !1049, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1078, file: !399, line: 109, baseType: !92, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1078, file: !399, line: 110, baseType: !92, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1071, file: !399, line: 117, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !399, line: 117, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1071, file: !399, line: 119, baseType: !66, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !399, line: 120, baseType: !1088, size: 64, offset: 256)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !399, line: 120, size: 64, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1088, file: !399, line: 121, baseType: !66, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1088, file: !399, line: 122, baseType: !208, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !399, line: 123, baseType: !1093, size: 32)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !399, line: 123, size: 32, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1093, file: !399, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1093, file: !399, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1093, file: !399, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 130, baseType: !1099, size: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 130, size: 192, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1099, file: !399, line: 131, baseType: !208, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1099, file: !399, line: 134, baseType: !117, size: 8, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1099, file: !399, line: 135, baseType: !117, size: 8, offset: 72)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1099, file: !399, line: 136, baseType: !234, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1099, file: !399, line: 137, baseType: !7, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 139, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 139, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1107, file: !399, line: 140, baseType: !208, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1107, file: !399, line: 141, baseType: !234, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1107, file: !399, line: 143, baseType: !260, size: 128, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 145, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 145, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1118, !1119, !1124}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1113, file: !399, line: 146, baseType: !208, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1113, file: !399, line: 147, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !417, line: 509, baseType: !1049)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1113, file: !399, line: 148, baseType: !208, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !399, line: 149, baseType: !1120, size: 64, offset: 192)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !399, line: 149, size: 64, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1120, file: !399, line: 150, baseType: !397, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1120, file: !399, line: 151, baseType: !234, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1113, file: !399, line: 156, baseType: !475, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !399, line: 159, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !399, line: 159, size: 128, elements: !1127)
!1127 = !{!1128, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1126, file: !399, line: 161, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !399, line: 161, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1126, file: !399, line: 162, baseType: !66, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1054, file: !399, line: 176, baseType: !752, size: 128, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !399, line: 179, baseType: !1134, size: 32, offset: 384)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !399, line: 179, size: 32, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1134, file: !399, line: 184, baseType: !234, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1134, file: !399, line: 192, baseType: !7, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1134, file: !399, line: 194, baseType: !7, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1134, file: !399, line: 195, baseType: !92, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1050, file: !399, line: 199, baseType: !234, size: 32, offset: 416)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1046, file: !518, line: 67, baseType: !224, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1046, file: !518, line: 68, baseType: !224, size: 32, offset: 96)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !214, file: !215, line: 1206, baseType: !92, size: 32, offset: 12736)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !214, file: !215, line: 1207, baseType: !92, size: 32, offset: 12768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !214, file: !215, line: 1209, baseType: !208, size: 64, offset: 12800)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !214, file: !215, line: 1219, baseType: !267, size: 64, offset: 12864)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !214, file: !215, line: 1220, baseType: !267, size: 64, offset: 12928)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !214, file: !215, line: 1317, baseType: !92, size: 32, offset: 12992)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !214, file: !215, line: 1319, baseType: !213, size: 64, offset: 13056)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !214, file: !215, line: 1322, baseType: !1151, size: 64, offset: 13120)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1153, line: 56, size: 512, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1161, !1162, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1152, file: !1153, line: 57, baseType: !1151, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1152, file: !1153, line: 58, baseType: !66, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 59, baseType: !208, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 60, baseType: !208, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1152, file: !1153, line: 61, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1152, file: !1153, line: 62, baseType: !7, size: 32, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1152, file: !1153, line: 63, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !235, line: 153, baseType: !267)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1152, file: !1153, line: 64, baseType: !1165, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !214, file: !215, line: 1326, baseType: !229, size: 32, offset: 13184)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !214, file: !215, line: 1342, baseType: !66, size: 64, offset: 13248)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !214, file: !215, line: 1343, baseType: !268, size: 64, offset: 13312)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !214, file: !215, line: 1344, baseType: !267, size: 64, offset: 13376)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !214, file: !215, line: 1345, baseType: !268, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !214, file: !215, line: 1346, baseType: !268, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !214, file: !215, line: 1347, baseType: !268, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !214, file: !215, line: 1348, baseType: !752, size: 128, align: 64, offset: 13504)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !214, file: !215, line: 1358, baseType: !1176, size: 34816, offset: 13824)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1177, line: 485, size: 34816, elements: !1178)
!1177 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209, !1210, !1211, !1212, !1213, !1216, !1217, !1218}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1176, file: !1177, line: 487, baseType: !1180, size: 192)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 192, elements: !802)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1182, line: 16, size: 64, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1181, file: !1182, line: 17, baseType: !105, size: 16)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1181, file: !1182, line: 18, baseType: !105, size: 16, offset: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1181, file: !1182, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1181, file: !1182, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1181, file: !1182, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1181, file: !1182, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1181, file: !1182, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1181, file: !1182, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1181, file: !1182, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1181, file: !1182, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1181, file: !1182, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1181, file: !1182, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1181, file: !1182, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1176, file: !1177, line: 491, baseType: !208, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1176, file: !1177, line: 495, baseType: !109, size: 16, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1176, file: !1177, line: 496, baseType: !109, size: 16, offset: 272)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1176, file: !1177, line: 497, baseType: !109, size: 16, offset: 288)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1176, file: !1177, line: 498, baseType: !109, size: 16, offset: 304)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1176, file: !1177, line: 502, baseType: !208, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1176, file: !1177, line: 503, baseType: !208, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1176, file: !1177, line: 514, baseType: !1205, size: 256, offset: 448)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 256, elements: !522)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1177, line: 483, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1176, file: !1177, line: 516, baseType: !208, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1176, file: !1177, line: 518, baseType: !208, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1176, file: !1177, line: 520, baseType: !208, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1176, file: !1177, line: 521, baseType: !208, size: 64, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1176, file: !1177, line: 522, baseType: !208, size: 64, offset: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1176, file: !1177, line: 528, baseType: !1214, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1177, line: 10, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1176, file: !1177, line: 535, baseType: !208, size: 64, offset: 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1176, file: !1177, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1176, file: !1177, line: 540, baseType: !1219, size: 33280, offset: 1536)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1220, line: 317, size: 33280, elements: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1219, file: !1220, line: 330, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1219, file: !1220, line: 337, baseType: !208, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1219, file: !1220, line: 348, baseType: !1225, size: 32768, offset: 512)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1220, line: 304, size: 32768, elements: !1226)
!1226 = !{!1227, !1242, !1283, !1333, !1350}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1225, file: !1220, line: 305, baseType: !1228, size: 896)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1220, line: 12, size: 896, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1228, file: !1220, line: 13, baseType: !223, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1228, file: !1220, line: 14, baseType: !223, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1228, file: !1220, line: 15, baseType: !223, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1228, file: !1220, line: 16, baseType: !223, size: 32, offset: 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1228, file: !1220, line: 17, baseType: !223, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1228, file: !1220, line: 18, baseType: !223, size: 32, offset: 160)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1228, file: !1220, line: 19, baseType: !223, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1228, file: !1220, line: 22, baseType: !1238, size: 640, offset: 224)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 640, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 20)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1228, file: !1220, line: 25, baseType: !223, size: 32, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1225, file: !1220, line: 306, baseType: !1243, size: 4096, align: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1220, line: 34, size: 4096, align: 128, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1264, !1265, !1266, !1270, !1274, !1278}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1243, file: !1220, line: 35, baseType: !105, size: 16)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1243, file: !1220, line: 36, baseType: !105, size: 16, offset: 16)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1243, file: !1220, line: 37, baseType: !105, size: 16, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1243, file: !1220, line: 38, baseType: !105, size: 16, offset: 48)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1220, line: 39, baseType: !1250, size: 128, offset: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1220, line: 39, size: 128, elements: !1251)
!1251 = !{!1252, !1257}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1220, line: 40, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1220, line: 40, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1253, file: !1220, line: 41, baseType: !267, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1253, file: !1220, line: 42, baseType: !267, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1220, line: 44, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1220, line: 44, size: 128, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1258, file: !1220, line: 45, baseType: !223, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1258, file: !1220, line: 46, baseType: !223, size: 32, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1258, file: !1220, line: 47, baseType: !223, size: 32, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1258, file: !1220, line: 48, baseType: !223, size: 32, offset: 96)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1243, file: !1220, line: 51, baseType: !223, size: 32, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1243, file: !1220, line: 52, baseType: !223, size: 32, offset: 224)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1243, file: !1220, line: 55, baseType: !1267, size: 1024, offset: 256)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 1024, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1243, file: !1220, line: 58, baseType: !1271, size: 2048, offset: 1280)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1243, file: !1220, line: 60, baseType: !1275, size: 384, offset: 3328)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 12)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1220, line: 62, baseType: !1279, size: 384, offset: 3712)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1220, line: 62, size: 384, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1279, file: !1220, line: 63, baseType: !1275, size: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1279, file: !1220, line: 64, baseType: !1275, size: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1225, file: !1220, line: 307, baseType: !1284, size: 1088)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1220, line: 79, size: 1088, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1332}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1284, file: !1220, line: 80, baseType: !223, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1284, file: !1220, line: 81, baseType: !223, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1284, file: !1220, line: 82, baseType: !223, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1284, file: !1220, line: 83, baseType: !223, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1284, file: !1220, line: 84, baseType: !223, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1284, file: !1220, line: 85, baseType: !223, size: 32, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1284, file: !1220, line: 86, baseType: !223, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1284, file: !1220, line: 88, baseType: !1238, size: 640, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1284, file: !1220, line: 89, baseType: !115, size: 8, offset: 864)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1284, file: !1220, line: 90, baseType: !115, size: 8, offset: 872)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1284, file: !1220, line: 91, baseType: !115, size: 8, offset: 880)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1284, file: !1220, line: 92, baseType: !115, size: 8, offset: 888)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1284, file: !1220, line: 93, baseType: !115, size: 8, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1284, file: !1220, line: 94, baseType: !115, size: 8, offset: 904)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1284, file: !1220, line: 95, baseType: !1301, size: 64, offset: 960)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1303, line: 11, size: 128, elements: !1304)
!1303 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1302, file: !1303, line: 12, baseType: !65, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1302, file: !1303, line: 13, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1309, line: 56, size: 1344, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1308, file: !1309, line: 61, baseType: !208, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1308, file: !1309, line: 62, baseType: !208, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1308, file: !1309, line: 63, baseType: !208, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1308, file: !1309, line: 64, baseType: !208, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1308, file: !1309, line: 65, baseType: !208, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1308, file: !1309, line: 66, baseType: !208, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1308, file: !1309, line: 68, baseType: !208, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1308, file: !1309, line: 69, baseType: !208, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1308, file: !1309, line: 70, baseType: !208, size: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1308, file: !1309, line: 71, baseType: !208, size: 64, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1308, file: !1309, line: 72, baseType: !208, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1308, file: !1309, line: 73, baseType: !208, size: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1308, file: !1309, line: 74, baseType: !208, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1308, file: !1309, line: 75, baseType: !208, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1308, file: !1309, line: 76, baseType: !208, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1308, file: !1309, line: 81, baseType: !208, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1308, file: !1309, line: 83, baseType: !208, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1308, file: !1309, line: 84, baseType: !208, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1309, line: 85, baseType: !208, size: 64, offset: 1152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1308, file: !1309, line: 86, baseType: !208, size: 64, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1308, file: !1309, line: 87, baseType: !208, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1284, file: !1220, line: 96, baseType: !223, size: 32, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1225, file: !1220, line: 308, baseType: !1334, size: 4608, align: 512)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1220, line: 289, size: 4608, align: 512, elements: !1335)
!1335 = !{!1336, !1337, !1346}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1334, file: !1220, line: 290, baseType: !1243, size: 4096, align: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1334, file: !1220, line: 291, baseType: !1338, size: 512, offset: 4096)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1220, line: 268, size: 512, elements: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1338, file: !1220, line: 269, baseType: !267, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1338, file: !1220, line: 270, baseType: !267, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1338, file: !1220, line: 271, baseType: !1343, size: 384, offset: 128)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 384, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 6)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1334, file: !1220, line: 292, baseType: !1347, offset: 4608)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 0)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1225, file: !1220, line: 309, baseType: !1351, size: 32768)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32768, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 4096)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !161, file: !154, line: 704, baseType: !183, size: 192, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !161, file: !154, line: 706, baseType: !92, size: 32, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !161, file: !154, line: 707, baseType: !92, size: 32, offset: 736)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !161, file: !154, line: 708, baseType: !1358, size: 5568, offset: 768)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1359)
!1359 = !{!1360, !1688, !1690, !1693, !1694, !1745, !1839, !1840, !1841, !1842, !1843, !1852, !1957, !1970, !2165, !2166, !2170, !2172, !2173, !2174, !2178, !2184, !2185, !2188, !2189, !2190, !2193, !2194, !2195, !2196, !2228, !2229, !2230, !2233, !2236, !2237, !2238, !2239}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1358, file: !30, line: 462, baseType: !1361, size: 512)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1362, line: 64, size: 512, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1365, !1366, !1368, !1408, !1524, !1678, !1683, !1684, !1685, !1686, !1687}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1361, file: !1362, line: 65, baseType: !75, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1361, file: !1362, line: 66, baseType: !260, size: 128, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1361, file: !1362, line: 67, baseType: !1367, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1361, file: !1362, line: 68, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1362, line: 192, size: 704, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1370, file: !1362, line: 193, baseType: !260, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1370, file: !1362, line: 194, baseType: !475, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1370, file: !1362, line: 195, baseType: !1361, size: 512, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1370, file: !1362, line: 196, baseType: !1376, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1362, line: 156, size: 192, elements: !1379)
!1379 = !{!1380, !1385, !1390}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1378, file: !1362, line: 157, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!92, !1369, !1367}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1378, file: !1362, line: 158, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!75, !1369, !1367}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1378, file: !1362, line: 159, baseType: !1391, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!92, !1369, !1367, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1362, line: 148, size: 20736, elements: !1397)
!1397 = !{!1398, !1400, !1402, !1403, !1407}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1396, file: !1362, line: 149, baseType: !1399, size: 192)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 192, elements: !802)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1396, file: !1362, line: 150, baseType: !1401, size: 4096, offset: 192)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 4096, elements: !1272)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1396, file: !1362, line: 151, baseType: !92, size: 32, offset: 4288)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1396, file: !1362, line: 152, baseType: !1404, size: 16384, offset: 4320)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 16384, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 2048)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1396, file: !1362, line: 153, baseType: !92, size: 32, offset: 20704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1361, file: !1362, line: 69, baseType: !1409, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1362, line: 138, size: 448, elements: !1411)
!1411 = !{!1412, !1416, !1438, !1440, !1475, !1503, !1507}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1410, file: !1362, line: 139, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1367}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1410, file: !1362, line: 140, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1420, line: 230, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !{!1422, !1434}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1419, file: !1420, line: 231, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1426, !1367, !1428, !98}
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !235, line: 60, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !351, line: 73, baseType: !959)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1420, line: 30, size: 128, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1429, file: !1420, line: 31, baseType: !75, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1429, file: !1420, line: 32, baseType: !1433, size: 16, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !235, line: 19, baseType: !109)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1419, file: !1420, line: 232, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1426, !1367, !1428, !75, !863}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1410, file: !1362, line: 141, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1410, file: !1362, line: 142, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1420, line: 84, size: 320, elements: !1445)
!1445 = !{!1446, !1447, !1451, !1472, !1473}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !1420, line: 85, baseType: !75, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1444, file: !1420, line: 86, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1433, !1367, !1428, !92}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1444, file: !1420, line: 88, baseType: !1452, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1433, !1367, !1455, !92}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1420, line: 168, size: 448, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1467, !1468}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1456, file: !1420, line: 169, baseType: !1429, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1456, file: !1420, line: 170, baseType: !863, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1456, file: !1420, line: 171, baseType: !66, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1456, file: !1420, line: 172, baseType: !1462, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1426, !439, !1367, !1455, !98, !1465, !863}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !235, line: 46, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !351, line: 88, baseType: !299)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1456, file: !1420, line: 174, baseType: !1462, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1456, file: !1420, line: 176, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!92, !439, !1367, !1455, !405}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1444, file: !1420, line: 90, baseType: !1439, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1444, file: !1420, line: 91, baseType: !1474, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1410, file: !1362, line: 143, baseType: !1476, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1479, !1367}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1482)
!1482 = !{!1483, !1484, !1488, !1492, !1498, !1502}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !18, line: 40, baseType: !17, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1481, file: !18, line: 41, baseType: !1485, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!610}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1481, file: !18, line: 42, baseType: !1489, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!66}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1481, file: !18, line: 43, baseType: !1493, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1165, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1481, file: !18, line: 44, baseType: !1499, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1165}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1481, file: !18, line: 45, baseType: !100, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1410, file: !1362, line: 144, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1165, !1367}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1410, file: !1362, line: 145, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1367, !1511, !1517}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !603, line: 23, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 21, size: 32, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1513, file: !603, line: 22, baseType: !1516, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !235, line: 32, baseType: !931)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !603, line: 28, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 26, size: 32, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1519, file: !603, line: 27, baseType: !1522, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !235, line: 33, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !351, line: 50, baseType: !7)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1361, file: !1362, line: 70, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1527, line: 123, size: 1024, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1671, !1672, !1673, !1674, !1675}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1526, file: !1527, line: 124, baseType: !234, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1526, file: !1527, line: 125, baseType: !234, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1526, file: !1527, line: 135, baseType: !1525, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1526, file: !1527, line: 136, baseType: !75, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1526, file: !1527, line: 138, baseType: !205, size: 192, align: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1526, file: !1527, line: 140, baseType: !1165, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1526, file: !1527, line: 141, baseType: !7, size: 32, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1527, line: 142, baseType: !1537, size: 256, offset: 512)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !1527, line: 142, size: 256, elements: !1538)
!1538 = !{!1539, !1594, !1598}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1537, file: !1527, line: 143, baseType: !1540, size: 192)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1527, line: 91, size: 192, elements: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1540, file: !1527, line: 92, baseType: !208, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1540, file: !1527, line: 94, baseType: !201, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1540, file: !1527, line: 100, baseType: !1545, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1527, line: 180, size: 704, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1564, !1565, !1566, !1592, !1593}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1546, file: !1527, line: 182, baseType: !1525, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1527, line: 183, baseType: !7, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1546, file: !1527, line: 186, baseType: !1551, size: 192, offset: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1552, line: 19, size: 192, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1562, !1563}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1551, file: !1552, line: 20, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1556, line: 292, size: 128, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1561}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1555, file: !1556, line: 293, baseType: !475)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1555, file: !1556, line: 295, baseType: !1560, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !235, line: 148, baseType: !7)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1555, file: !1556, line: 296, baseType: !66, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1551, file: !1552, line: 21, baseType: !7, size: 32, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1551, file: !1552, line: 22, baseType: !7, size: 32, offset: 160)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1546, file: !1527, line: 187, baseType: !223, size: 32, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1546, file: !1527, line: 188, baseType: !223, size: 32, offset: 352)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1546, file: !1527, line: 189, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1527, line: 168, size: 320, elements: !1569)
!1569 = !{!1570, !1576, !1580, !1584, !1588}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1568, file: !1527, line: 169, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!92, !1574, !1545}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !417, line: 539, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1568, file: !1527, line: 171, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!92, !1525, !75, !1433}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1568, file: !1527, line: 173, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!92, !1525}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1568, file: !1527, line: 174, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!92, !1525, !1525, !75}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1568, file: !1527, line: 176, baseType: !1589, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!92, !1574, !1525, !1545}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1546, file: !1527, line: 192, baseType: !260, size: 128, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1546, file: !1527, line: 194, baseType: !745, size: 128, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1537, file: !1527, line: 144, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1527, line: 103, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1595, file: !1527, line: 104, baseType: !1525, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1537, file: !1527, line: 145, baseType: !1599, size: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1527, line: 107, size: 256, elements: !1600)
!1600 = !{!1601, !1666, !1669, !1670}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1599, file: !1527, line: 108, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1527, line: 217, size: 768, elements: !1605)
!1605 = !{!1606, !1626, !1630, !1634, !1639, !1643, !1647, !1651, !1652, !1653, !1654, !1662}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1604, file: !1527, line: 222, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!92, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1527, line: 197, size: 1088, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1611, file: !1527, line: 199, baseType: !1525, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1611, file: !1527, line: 200, baseType: !439, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1611, file: !1527, line: 201, baseType: !1574, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1611, file: !1527, line: 202, baseType: !66, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1611, file: !1527, line: 205, baseType: !540, size: 192, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1611, file: !1527, line: 206, baseType: !540, size: 192, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1611, file: !1527, line: 207, baseType: !92, size: 32, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1611, file: !1527, line: 208, baseType: !260, size: 128, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1611, file: !1527, line: 209, baseType: !98, size: 64, offset: 832)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1611, file: !1527, line: 211, baseType: !863, size: 64, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1611, file: !1527, line: 212, baseType: !610, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1611, file: !1527, line: 213, baseType: !610, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1611, file: !1527, line: 214, baseType: !434, size: 64, offset: 1024)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1604, file: !1527, line: 223, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1610}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1604, file: !1527, line: 236, baseType: !1631, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!92, !1574, !66}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1604, file: !1527, line: 238, baseType: !1635, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!66, !1574, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1604, file: !1527, line: 239, baseType: !1640, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!66, !1574, !66, !1638}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1604, file: !1527, line: 240, baseType: !1644, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1574, !66}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1604, file: !1527, line: 242, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1426, !1610, !98, !863, !1465}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1604, file: !1527, line: 252, baseType: !863, size: 64, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1604, file: !1527, line: 259, baseType: !610, size: 8, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1604, file: !1527, line: 260, baseType: !1648, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1604, file: !1527, line: 263, baseType: !1655, size: 64, offset: 640)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1610, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1659, line: 52, baseType: !7)
!1659 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1527, line: 27, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1604, file: !1527, line: 266, baseType: !1663, size: 64, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!92, !1610, !405}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1599, file: !1527, line: 109, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1527, line: 31, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1599, file: !1527, line: 110, baseType: !1465, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1599, file: !1527, line: 111, baseType: !1525, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1526, file: !1527, line: 148, baseType: !66, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1526, file: !1527, line: 154, baseType: !267, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1526, file: !1527, line: 156, baseType: !109, size: 16, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1526, file: !1527, line: 157, baseType: !1433, size: 16, offset: 912)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1526, file: !1527, line: 158, baseType: !1676, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1527, line: 32, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1361, file: !1362, line: 71, baseType: !1679, size: 32, offset: 448)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1680, line: 19, size: 32, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1679, file: !1680, line: 20, baseType: !229, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1361, file: !1362, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1361, file: !1362, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1361, file: !1362, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1361, file: !1362, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1361, file: !1362, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1358, file: !30, line: 463, baseType: !1689, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1358, file: !30, line: 465, baseType: !1691, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1358, file: !30, line: 467, baseType: !75, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1358, file: !30, line: 468, baseType: !1695, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1705, !1710, !1714}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1697, file: !30, line: 88, baseType: !75, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1697, file: !30, line: 89, baseType: !1441, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1697, file: !30, line: 90, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!92, !1689, !1395}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1697, file: !30, line: 91, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!98, !1689, !1709, !1511, !1517}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1697, file: !30, line: 93, baseType: !1711, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !1689}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1697, file: !30, line: 95, baseType: !1715, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1718)
!1718 = !{!1719, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1717, file: !37, line: 279, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!92, !1689}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1717, file: !37, line: 280, baseType: !1711, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1717, file: !37, line: 281, baseType: !1720, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1717, file: !37, line: 282, baseType: !1720, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1717, file: !37, line: 283, baseType: !1720, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1717, file: !37, line: 284, baseType: !1720, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1717, file: !37, line: 285, baseType: !1720, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1717, file: !37, line: 286, baseType: !1720, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1717, file: !37, line: 287, baseType: !1720, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1717, file: !37, line: 288, baseType: !1720, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1717, file: !37, line: 289, baseType: !1720, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1717, file: !37, line: 290, baseType: !1720, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1717, file: !37, line: 291, baseType: !1720, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1717, file: !37, line: 292, baseType: !1720, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1717, file: !37, line: 293, baseType: !1720, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1717, file: !37, line: 294, baseType: !1720, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1717, file: !37, line: 295, baseType: !1720, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1717, file: !37, line: 296, baseType: !1720, size: 64, offset: 1088)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1717, file: !37, line: 297, baseType: !1720, size: 64, offset: 1152)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1717, file: !37, line: 298, baseType: !1720, size: 64, offset: 1216)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1717, file: !37, line: 299, baseType: !1720, size: 64, offset: 1280)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1717, file: !37, line: 300, baseType: !1720, size: 64, offset: 1344)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1717, file: !37, line: 301, baseType: !1720, size: 64, offset: 1408)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1358, file: !30, line: 470, baseType: !1746, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1748, line: 82, size: 1408, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1832, !1835, !1838}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1747, file: !1748, line: 83, baseType: !75, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1747, file: !1748, line: 84, baseType: !75, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1747, file: !1748, line: 85, baseType: !1689, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1747, file: !1748, line: 86, baseType: !1441, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1747, file: !1748, line: 87, baseType: !1441, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1747, file: !1748, line: 88, baseType: !1441, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1747, file: !1748, line: 90, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!92, !1689, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1783, !1796, !1797, !1798, !1799, !1800, !1808, !1809, !1810, !1811, !1812, !1813}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1761, file: !24, line: 96, baseType: !75, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1761, file: !24, line: 97, baseType: !1746, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1761, file: !24, line: 99, baseType: !79, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1761, file: !24, line: 100, baseType: !75, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1761, file: !24, line: 102, baseType: !610, size: 8, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1761, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1761, file: !24, line: 105, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1773, line: 262, size: 1600, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1777, !1778, !1782}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !1773, line: 263, baseType: !1776, size: 256)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !1268)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1772, file: !1773, line: 264, baseType: !1776, size: 256, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1772, file: !1773, line: 265, baseType: !1779, size: 1024, offset: 512)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1772, file: !1773, line: 266, baseType: !1165, size: 64, offset: 1536)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1761, file: !24, line: 106, baseType: !1784, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1773, line: 210, size: 256, elements: !1787)
!1787 = !{!1788, !1792, !1794, !1795}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1786, file: !1773, line: 211, baseType: !1789, size: 72)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 72, elements: !1790)
!1790 = !{!1791}
!1791 = !DISubrange(count: 9)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1786, file: !1773, line: 212, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1773, line: 14, baseType: !208)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1786, file: !1773, line: 213, baseType: !224, size: 32, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1786, file: !1773, line: 214, baseType: !224, size: 32, offset: 224)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1761, file: !24, line: 108, baseType: !1720, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1761, file: !24, line: 109, baseType: !1711, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1761, file: !24, line: 110, baseType: !1720, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1761, file: !24, line: 111, baseType: !1711, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1761, file: !24, line: 112, baseType: !1801, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!92, !1689, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1805, file: !37, line: 51, baseType: !92, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1761, file: !24, line: 113, baseType: !1720, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1761, file: !24, line: 114, baseType: !1441, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1761, file: !24, line: 115, baseType: !1441, size: 64, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1761, file: !24, line: 117, baseType: !1715, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1761, file: !24, line: 118, baseType: !1711, size: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1761, file: !24, line: 120, baseType: !1814, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1747, file: !1748, line: 91, baseType: !1702, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1747, file: !1748, line: 92, baseType: !1720, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1747, file: !1748, line: 93, baseType: !1711, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1747, file: !1748, line: 94, baseType: !1720, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1747, file: !1748, line: 95, baseType: !1711, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1747, file: !1748, line: 97, baseType: !1720, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1747, file: !1748, line: 98, baseType: !1720, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1747, file: !1748, line: 100, baseType: !1801, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1747, file: !1748, line: 101, baseType: !1720, size: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1747, file: !1748, line: 103, baseType: !1720, size: 64, offset: 1024)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1747, file: !1748, line: 105, baseType: !1720, size: 64, offset: 1088)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1747, file: !1748, line: 107, baseType: !1715, size: 64, offset: 1152)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1747, file: !1748, line: 109, baseType: !1829, size: 64, offset: 1216)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1748, line: 109, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1747, file: !1748, line: 111, baseType: !1833, size: 64, offset: 1280)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1748, line: 111, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1747, file: !1748, line: 112, baseType: !1836, offset: 1344)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1837, line: 187, elements: !195)
!1837 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1747, file: !1748, line: 114, baseType: !610, size: 8, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1358, file: !30, line: 471, baseType: !1760, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1358, file: !30, line: 473, baseType: !66, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1358, file: !30, line: 475, baseType: !66, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1358, file: !30, line: 480, baseType: !540, size: 192, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1358, file: !30, line: 484, baseType: !1844, size: 576, offset: 1216)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1844, file: !30, line: 362, baseType: !260, size: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1844, file: !30, line: 363, baseType: !260, size: 128, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1844, file: !30, line: 364, baseType: !260, size: 128, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1844, file: !30, line: 365, baseType: !260, size: 128, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1844, file: !30, line: 366, baseType: !610, size: 8, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1844, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1358, file: !30, line: 485, baseType: !1853, size: 2304, offset: 1792)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1950, !1954}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1853, file: !37, line: 566, baseType: !1804, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1853, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1853, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1853, file: !37, line: 569, baseType: !610, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1853, file: !37, line: 570, baseType: !610, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1853, file: !37, line: 571, baseType: !610, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1853, file: !37, line: 572, baseType: !610, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1853, file: !37, line: 573, baseType: !610, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1853, file: !37, line: 574, baseType: !610, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1853, file: !37, line: 575, baseType: !610, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1853, file: !37, line: 576, baseType: !610, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1853, file: !37, line: 577, baseType: !223, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !37, line: 578, baseType: !475, offset: 96)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1853, file: !37, line: 580, baseType: !260, size: 128, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1853, file: !37, line: 581, baseType: !586, size: 192, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1853, file: !37, line: 582, baseType: !1871, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1873, line: 43, size: 1472, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1882, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !1873, line: 44, baseType: !75, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1872, file: !1873, line: 45, baseType: !92, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1872, file: !1873, line: 46, baseType: !260, size: 128, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1872, file: !1873, line: 47, baseType: !475, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1872, file: !1873, line: 48, baseType: !1880, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1872, file: !1873, line: 49, baseType: !1883, size: 320, offset: 320)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1884, line: 11, size: 320, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1883, file: !1884, line: 16, baseType: !738, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1883, file: !1884, line: 17, baseType: !208, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1883, file: !1884, line: 18, baseType: !1889, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1884, line: 19, baseType: !223, size: 32, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1872, file: !1873, line: 50, baseType: !208, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1872, file: !1873, line: 51, baseType: !315, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1872, file: !1873, line: 52, baseType: !315, size: 64, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1872, file: !1873, line: 53, baseType: !315, size: 64, offset: 832)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1872, file: !1873, line: 54, baseType: !315, size: 64, offset: 896)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1872, file: !1873, line: 55, baseType: !315, size: 64, offset: 960)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1872, file: !1873, line: 56, baseType: !208, size: 64, offset: 1024)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1872, file: !1873, line: 57, baseType: !208, size: 64, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1872, file: !1873, line: 58, baseType: !208, size: 64, offset: 1152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1872, file: !1873, line: 59, baseType: !208, size: 64, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1872, file: !1873, line: 60, baseType: !208, size: 64, offset: 1280)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1872, file: !1873, line: 61, baseType: !1689, size: 64, offset: 1344)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1872, file: !1873, line: 62, baseType: !610, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1872, file: !1873, line: 63, baseType: !610, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1853, file: !37, line: 583, baseType: !610, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1853, file: !37, line: 584, baseType: !610, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1853, file: !37, line: 585, baseType: !610, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1853, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1853, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1853, file: !37, line: 592, baseType: !307, size: 512, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1853, file: !37, line: 593, baseType: !267, size: 64, offset: 1088)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1853, file: !37, line: 594, baseType: !616, size: 256, offset: 1152)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1853, file: !37, line: 595, baseType: !745, size: 128, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1853, file: !37, line: 596, baseType: !1880, size: 64, offset: 1536)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1853, file: !37, line: 597, baseType: !234, size: 32, offset: 1600)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1853, file: !37, line: 598, baseType: !234, size: 32, offset: 1632)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1853, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1853, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1853, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1853, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1853, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1853, file: !37, line: 604, baseType: !610, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1853, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1853, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1853, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1853, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1853, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1853, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1853, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1853, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1853, file: !37, line: 613, baseType: !92, size: 32, offset: 1792)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1853, file: !37, line: 614, baseType: !92, size: 32, offset: 1824)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1853, file: !37, line: 615, baseType: !267, size: 64, offset: 1856)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1853, file: !37, line: 616, baseType: !267, size: 64, offset: 1920)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1853, file: !37, line: 617, baseType: !267, size: 64, offset: 1984)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1853, file: !37, line: 618, baseType: !267, size: 64, offset: 2048)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1853, file: !37, line: 620, baseType: !1941, size: 64, offset: 2112)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1942, file: !37, line: 537, baseType: !475)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1942, file: !37, line: 538, baseType: !7, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1942, file: !37, line: 540, baseType: !260, size: 128, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1942, file: !37, line: 543, baseType: !1948, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1853, file: !37, line: 621, baseType: !1951, size: 64, offset: 2176)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1689, !698}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1853, file: !37, line: 622, baseType: !1955, size: 64, offset: 2240)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1358, file: !30, line: 486, baseType: !1958, size: 64, offset: 4096)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1967, !1968, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1959, file: !37, line: 643, baseType: !1717, size: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1959, file: !37, line: 644, baseType: !1720, size: 64, offset: 1472)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1959, file: !37, line: 645, baseType: !1964, size: 64, offset: 1536)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1689, !610}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1959, file: !37, line: 646, baseType: !1720, size: 64, offset: 1600)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1959, file: !37, line: 647, baseType: !1711, size: 64, offset: 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1959, file: !37, line: 648, baseType: !1711, size: 64, offset: 1728)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1358, file: !30, line: 493, baseType: !1971, size: 64, offset: 4160)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1973)
!1973 = !{!1974, !1975, !1976, !2149, !2150, !2151, !2152, !2153, !2154, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1972, file: !51, line: 163, baseType: !260, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1972, file: !51, line: 164, baseType: !75, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !51, line: 165, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1980)
!1980 = !{!1981, !2099, !2110, !2115, !2119, !2126, !2130, !2134, !2141, !2145}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1979, file: !51, line: 106, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!92, !1971, !1985, !50}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1987, line: 51, size: 1344, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1992, !1993, !2083, !2092, !2093, !2094, !2095, !2096, !2097, !2098}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1986, file: !1987, line: 52, baseType: !75, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1986, file: !1987, line: 53, baseType: !1991, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1987, line: 28, baseType: !223)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1986, file: !1987, line: 54, baseType: !75, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1986, file: !1987, line: 55, baseType: !1994, size: 192, offset: 192)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1995, line: 17, size: 192, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1999, !2082}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1994, file: !1995, line: 18, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1994, file: !1995, line: 19, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1995, line: 110, size: 1152, elements: !2003)
!2003 = !{!2004, !2008, !2012, !2018, !2024, !2028, !2032, !2037, !2041, !2042, !2046, !2050, !2054, !2065, !2066, !2067, !2068, !2078}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2002, file: !1995, line: 111, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1998, !1998}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2002, file: !1995, line: 112, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !1998}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2002, file: !1995, line: 113, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!610, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2002, file: !1995, line: 114, baseType: !2019, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1165, !2016, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2002, file: !1995, line: 116, baseType: !2025, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!610, !2016, !75}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2002, file: !1995, line: 118, baseType: !2029, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!92, !2016, !75, !7, !66, !863}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2002, file: !1995, line: 123, baseType: !2033, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!92, !2016, !75, !2036, !863}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2002, file: !1995, line: 126, baseType: !2038, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!75, !2016}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2002, file: !1995, line: 127, baseType: !2038, size: 64, offset: 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2002, file: !1995, line: 128, baseType: !2043, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!1998, !2016}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2002, file: !1995, line: 130, baseType: !2047, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!1998, !2016, !1998}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2002, file: !1995, line: 133, baseType: !2051, size: 64, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1998, !2016, !75}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2002, file: !1995, line: 135, baseType: !2055, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!92, !2016, !75, !75, !7, !7, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1995, line: 43, size: 640, elements: !2060)
!2060 = !{!2061, !2062, !2063}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2059, file: !1995, line: 44, baseType: !1998, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2059, file: !1995, line: 45, baseType: !7, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2059, file: !1995, line: 46, baseType: !2064, size: 512, offset: 128)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 512, elements: !345)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2002, file: !1995, line: 140, baseType: !2047, size: 64, offset: 832)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2002, file: !1995, line: 143, baseType: !2043, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2002, file: !1995, line: 145, baseType: !2005, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2002, file: !1995, line: 146, baseType: !2069, size: 64, offset: 1024)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!92, !2016, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1995, line: 29, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2073, file: !1995, line: 30, baseType: !7, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2073, file: !1995, line: 31, baseType: !7, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2073, file: !1995, line: 32, baseType: !2016, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2002, file: !1995, line: 148, baseType: !2079, size: 64, offset: 1088)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!92, !2016, !1689}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1994, file: !1995, line: 20, baseType: !1689, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1986, file: !1987, line: 57, baseType: !2084, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1987, line: 31, size: 704, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2085, file: !1987, line: 32, baseType: !98, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2085, file: !1987, line: 33, baseType: !92, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2085, file: !1987, line: 34, baseType: !66, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !1987, line: 35, baseType: !2084, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2085, file: !1987, line: 43, baseType: !1456, size: 448, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1986, file: !1987, line: 58, baseType: !2084, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1986, file: !1987, line: 59, baseType: !1985, size: 64, offset: 512)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1986, file: !1987, line: 60, baseType: !1985, size: 64, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1986, file: !1987, line: 61, baseType: !1985, size: 64, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1986, file: !1987, line: 63, baseType: !1361, size: 512, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1986, file: !1987, line: 65, baseType: !208, size: 64, offset: 1216)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1986, file: !1987, line: 66, baseType: !66, size: 64, offset: 1280)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1979, file: !51, line: 108, baseType: !2100, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!92, !1971, !2103, !50}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2104, file: !51, line: 64, baseType: !1998, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2104, file: !51, line: 65, baseType: !92, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2104, file: !51, line: 66, baseType: !2109, size: 512, offset: 96)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !823)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1979, file: !51, line: 110, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!92, !1971, !7, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !235, line: 164, baseType: !208)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1979, file: !51, line: 111, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !1971, !7}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1979, file: !51, line: 112, baseType: !2120, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!92, !1971, !1985, !2123, !7, !2125, !137}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1979, file: !51, line: 117, baseType: !2127, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!92, !1971, !7, !7, !66}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1979, file: !51, line: 119, baseType: !2131, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !1971, !7, !7}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1979, file: !51, line: 121, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!92, !1971, !2138, !610}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2140, line: 11, flags: DIFlagFwdDecl)
!2140 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1979, file: !51, line: 122, baseType: !2142, size: 64, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !1971, !2138}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1979, file: !51, line: 123, baseType: !2146, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!92, !1971, !2103, !2125, !137}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1972, file: !51, line: 166, baseType: !66, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1972, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1972, file: !51, line: 171, baseType: !1998, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1972, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1972, file: !51, line: 173, baseType: !2155, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1972, file: !51, line: 175, baseType: !1971, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1972, file: !51, line: 182, baseType: !2114, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1972, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1972, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1972, file: !51, line: 185, baseType: !1555, size: 128, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1972, file: !51, line: 186, baseType: !540, size: 192, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1972, file: !51, line: 187, baseType: !2164, offset: 1088)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !630)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1358, file: !30, line: 499, baseType: !260, size: 128, offset: 4224)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1358, file: !30, line: 502, baseType: !2167, size: 64, offset: 4352)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1358, file: !30, line: 504, baseType: !2171, size: 64, offset: 4416)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1358, file: !30, line: 505, baseType: !267, size: 64, offset: 4480)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1358, file: !30, line: 510, baseType: !267, size: 64, offset: 4544)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1358, file: !30, line: 511, baseType: !2175, size: 64, offset: 4608)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1358, file: !30, line: 513, baseType: !2179, size: 64, offset: 4672)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2180, file: !30, line: 293, baseType: !7, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2180, file: !30, line: 294, baseType: !208, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1358, file: !30, line: 515, baseType: !260, size: 128, offset: 4736)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1358, file: !30, line: 526, baseType: !2186, offset: 4864)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2187, line: 5, elements: !195)
!2187 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1358, file: !30, line: 528, baseType: !1985, size: 64, offset: 4864)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1358, file: !30, line: 529, baseType: !1998, size: 64, offset: 4928)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1358, file: !30, line: 534, baseType: !2191, size: 32, offset: 4992)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !235, line: 16, baseType: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !235, line: 13, baseType: !223)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1358, file: !30, line: 535, baseType: !223, size: 32, offset: 5024)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1358, file: !30, line: 537, baseType: !475, offset: 5056)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1358, file: !30, line: 538, baseType: !260, size: 128, offset: 5056)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1358, file: !30, line: 540, baseType: !2197, size: 64, offset: 5184)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2199, line: 54, size: 960, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206, !2207, !2211, !2215, !2216, !2217, !2218, !2222, !2226, !2227}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2198, file: !2199, line: 55, baseType: !75, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2198, file: !2199, line: 56, baseType: !79, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2198, file: !2199, line: 58, baseType: !1441, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2198, file: !2199, line: 59, baseType: !1441, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2198, file: !2199, line: 60, baseType: !1367, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2198, file: !2199, line: 62, baseType: !1702, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2198, file: !2199, line: 63, baseType: !2208, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!98, !1689, !1709}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2198, file: !2199, line: 65, baseType: !2212, size: 64, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2197}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2198, file: !2199, line: 66, baseType: !1711, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2198, file: !2199, line: 68, baseType: !1720, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2198, file: !2199, line: 70, baseType: !1479, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2198, file: !2199, line: 71, baseType: !2219, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!1165, !1689}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2198, file: !2199, line: 73, baseType: !2223, size: 64, offset: 768)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !1689, !1511, !1517}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2198, file: !2199, line: 75, baseType: !1715, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2198, file: !2199, line: 77, baseType: !1833, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1358, file: !30, line: 541, baseType: !1441, size: 64, offset: 5248)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1358, file: !30, line: 543, baseType: !1711, size: 64, offset: 5312)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1358, file: !30, line: 544, baseType: !2231, size: 64, offset: 5376)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1358, file: !30, line: 545, baseType: !2234, size: 64, offset: 5440)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1358, file: !30, line: 547, baseType: !610, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1358, file: !30, line: 548, baseType: !610, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1358, file: !30, line: 549, baseType: !610, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1358, file: !30, line: 550, baseType: !610, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !161, file: !154, line: 709, baseType: !208, size: 64, offset: 6336)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !161, file: !154, line: 713, baseType: !92, size: 32, offset: 6400)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !154, line: 714, baseType: !2243, size: 384, offset: 6432)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 384, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 48)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !161, file: !154, line: 715, baseType: !586, size: 192, offset: 6848)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !161, file: !154, line: 717, baseType: !540, size: 192, offset: 7040)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !161, file: !154, line: 718, baseType: !260, size: 128, offset: 7232)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !161, file: !154, line: 720, baseType: !2250, size: 64, offset: 7360)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !154, line: 618, size: 832, elements: !2252)
!2252 = !{!2253, !2257, !2258, !2262, !2263, !2264, !2265, !2269, !2270, !2273, !2274, !2277, !2280}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2251, file: !154, line: 619, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!92, !160}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2251, file: !154, line: 621, baseType: !2254, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2251, file: !154, line: 622, baseType: !2259, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !160, !92}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2251, file: !154, line: 623, baseType: !2254, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2251, file: !154, line: 624, baseType: !2259, size: 64, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2251, file: !154, line: 625, baseType: !2254, size: 64, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2251, file: !154, line: 627, baseType: !2266, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !160}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2251, file: !154, line: 628, baseType: !2266, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2251, file: !154, line: 631, baseType: !2271, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !154, line: 631, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2251, file: !154, line: 632, baseType: !2271, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2251, file: !154, line: 633, baseType: !2275, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !154, line: 633, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2251, file: !154, line: 634, baseType: !2278, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !154, line: 634, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2251, file: !154, line: 635, baseType: !2278, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !161, file: !154, line: 721, baseType: !2282, size: 64, offset: 7424)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !154, line: 664, size: 192, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !154, line: 665, baseType: !267, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2284, file: !154, line: 666, baseType: !92, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2284, file: !154, line: 667, baseType: !105, size: 16, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2284, file: !154, line: 668, baseType: !105, size: 16, offset: 112)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2284, file: !154, line: 669, baseType: !105, size: 16, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2284, file: !154, line: 670, baseType: !105, size: 16, offset: 144)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !161, file: !154, line: 723, baseType: !1971, size: 64, offset: 7488)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2295, line: 69, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2294, file: !2295, line: 70, baseType: !107, size: 16)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !2295, line: 71, baseType: !107, size: 16, offset: 16)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2294, file: !2295, line: 84, baseType: !107, size: 16, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2294, file: !2295, line: 85, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !153, file: !154, line: 531, baseType: !157, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !153, file: !154, line: 533, baseType: !2304, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!92, !160, !105, !109, !77, !115, !92, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2295, line: 135, size: 272, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2308, file: !2295, line: 136, baseType: !116, size: 8)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2308, file: !2295, line: 137, baseType: !107, size: 16)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2308, file: !2295, line: 138, baseType: !2313, size: 272)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 272, elements: !2314)
!2314 = !{!2315}
!2315 = !DISubrange(count: 34)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !153, file: !154, line: 536, baseType: !2304, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !153, file: !154, line: 541, baseType: !2318, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!223, !160}
!2321 = !DIGlobalVariableExpression(var: !2322, expr: !DIExpression())
!2322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 695, type: !2323, isLocal: true, isDefinition: true, align: 8)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 480, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 60)
!2326 = !DIGlobalVariableExpression(var: !2327, expr: !DIExpression())
!2327 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 696, type: !2328, isLocal: true, isDefinition: true, align: 8)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 440, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 55)
!2331 = !DIGlobalVariableExpression(var: !2332, expr: !DIExpression())
!2332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file175", scope: !2, file: !3, line: 697, type: !2333, isLocal: true, isDefinition: true, align: 8)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 392, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 49)
!2336 = !DIGlobalVariableExpression(var: !2337, expr: !DIExpression())
!2337 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license176", scope: !2, file: !3, line: 697, type: !2338, isLocal: true, isDefinition: true, align: 8)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 200, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 25)
!2341 = !DIGlobalVariableExpression(var: !2342, expr: !DIExpression())
!2342 = distinct !DIGlobalVariable(name: "bit_test", scope: !2, file: !3, line: 35, type: !92, isLocal: true, isDefinition: true)
!2343 = !DIGlobalVariableExpression(var: !2344, expr: !DIExpression())
!2344 = distinct !DIGlobalVariable(name: "i2c_bit_quirk_no_clk_stretch", scope: !2, file: !3, line: 641, type: !2283, isLocal: true, isDefinition: true)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 176, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 22)
!2348 = !{i32 7, !"Dwarf Version", i32 4}
!2349 = !{i32 2, !"Debug Info Version", i32 3}
!2350 = !{i32 1, !"wchar_size", i32 2}
!2351 = !{i32 1, !"Code Model", i32 2}
!2352 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2353 = distinct !DISubprogram(name: "bit_xfer", scope: !3, file: !3, line: 531, type: !158, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2354 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2353, file: !3, line: 531, type: !160)
!2355 = !DILocation(line: 531, column: 41, scope: !2353)
!2356 = !DILocalVariable(name: "msgs", arg: 2, scope: !2353, file: !3, line: 532, type: !2293)
!2357 = !DILocation(line: 532, column: 22, scope: !2353)
!2358 = !DILocalVariable(name: "num", arg: 3, scope: !2353, file: !3, line: 532, type: !92)
!2359 = !DILocation(line: 532, column: 34, scope: !2353)
!2360 = !DILocalVariable(name: "pmsg", scope: !2353, file: !3, line: 534, type: !2293)
!2361 = !DILocation(line: 534, column: 18, scope: !2353)
!2362 = !DILocalVariable(name: "adap", scope: !2353, file: !3, line: 535, type: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algo_bit_data", file: !2365, line: 21, size: 576, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/i2c-algo-bit.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !{!2367, !2368, !2372, !2373, !2377, !2378, !2379, !2380, !2381, !2382}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2364, file: !2365, line: 22, baseType: !66, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "setsda", scope: !2364, file: !2365, line: 23, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !66, !92}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "setscl", scope: !2364, file: !2365, line: 24, baseType: !2369, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "getsda", scope: !2364, file: !2365, line: 25, baseType: !2374, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!92, !66}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "getscl", scope: !2364, file: !2365, line: 26, baseType: !2374, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pre_xfer", scope: !2364, file: !2365, line: 27, baseType: !2254, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "post_xfer", scope: !2364, file: !2365, line: 28, baseType: !2266, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "udelay", scope: !2364, file: !2365, line: 31, baseType: !92, size: 32, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2364, file: !2365, line: 35, baseType: !92, size: 32, offset: 480)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_atomic", scope: !2364, file: !2365, line: 36, baseType: !610, size: 8, offset: 512)
!2383 = !DILocation(line: 535, column: 28, scope: !2353)
!2384 = !DILocation(line: 535, column: 35, scope: !2353)
!2385 = !DILocation(line: 535, column: 45, scope: !2353)
!2386 = !DILocalVariable(name: "i", scope: !2353, file: !3, line: 536, type: !92)
!2387 = !DILocation(line: 536, column: 6, scope: !2353)
!2388 = !DILocalVariable(name: "ret", scope: !2353, file: !3, line: 536, type: !92)
!2389 = !DILocation(line: 536, column: 9, scope: !2353)
!2390 = !DILocalVariable(name: "nak_ok", scope: !2353, file: !3, line: 537, type: !109)
!2391 = !DILocation(line: 537, column: 17, scope: !2353)
!2392 = !DILocation(line: 539, column: 6, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 539, column: 6)
!2394 = !DILocation(line: 539, column: 12, scope: !2393)
!2395 = !DILocation(line: 539, column: 6, scope: !2353)
!2396 = !DILocation(line: 540, column: 9, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 539, column: 22)
!2398 = !DILocation(line: 540, column: 15, scope: !2397)
!2399 = !DILocation(line: 540, column: 24, scope: !2397)
!2400 = !DILocation(line: 540, column: 7, scope: !2397)
!2401 = !DILocation(line: 541, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 541, column: 7)
!2403 = !DILocation(line: 541, column: 11, scope: !2402)
!2404 = !DILocation(line: 541, column: 7, scope: !2397)
!2405 = !DILocation(line: 542, column: 11, scope: !2402)
!2406 = !DILocation(line: 542, column: 4, scope: !2402)
!2407 = !DILocation(line: 543, column: 2, scope: !2397)
!2408 = !DILocation(line: 545, column: 2, scope: !2353)
!2409 = !DILocation(line: 545, column: 2, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 545, column: 2)
!2411 = !DILocation(line: 546, column: 12, scope: !2353)
!2412 = !DILocation(line: 546, column: 2, scope: !2353)
!2413 = !DILocation(line: 547, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 547, column: 2)
!2415 = !DILocation(line: 547, column: 7, scope: !2414)
!2416 = !DILocation(line: 547, column: 14, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 547, column: 2)
!2418 = !DILocation(line: 547, column: 18, scope: !2417)
!2419 = !DILocation(line: 547, column: 16, scope: !2417)
!2420 = !DILocation(line: 547, column: 2, scope: !2414)
!2421 = !DILocation(line: 548, column: 11, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 547, column: 28)
!2423 = !DILocation(line: 548, column: 16, scope: !2422)
!2424 = !DILocation(line: 548, column: 8, scope: !2422)
!2425 = !DILocation(line: 549, column: 12, scope: !2422)
!2426 = !DILocation(line: 549, column: 18, scope: !2422)
!2427 = !DILocation(line: 549, column: 24, scope: !2422)
!2428 = !DILocation(line: 549, column: 10, scope: !2422)
!2429 = !DILocation(line: 550, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 550, column: 7)
!2431 = !DILocation(line: 550, column: 15, scope: !2430)
!2432 = !DILocation(line: 550, column: 21, scope: !2430)
!2433 = !DILocation(line: 550, column: 7, scope: !2422)
!2434 = !DILocation(line: 551, column: 8, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 551, column: 8)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 550, column: 39)
!2437 = !DILocation(line: 551, column: 8, scope: !2436)
!2438 = !DILocation(line: 552, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 552, column: 9)
!2440 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 551, column: 11)
!2441 = !DILocation(line: 552, column: 14, scope: !2439)
!2442 = !DILocation(line: 552, column: 16, scope: !2439)
!2443 = !DILocation(line: 552, column: 21, scope: !2439)
!2444 = !DILocation(line: 552, column: 27, scope: !2439)
!2445 = !DILocation(line: 552, column: 9, scope: !2440)
!2446 = !DILocation(line: 553, column: 6, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 552, column: 41)
!2448 = !DILocation(line: 553, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 553, column: 6)
!2450 = !DILocation(line: 555, column: 15, scope: !2447)
!2451 = !DILocation(line: 555, column: 6, scope: !2447)
!2452 = !DILocation(line: 556, column: 16, scope: !2447)
!2453 = !DILocation(line: 556, column: 6, scope: !2447)
!2454 = !DILocation(line: 557, column: 5, scope: !2447)
!2455 = !DILocation(line: 558, column: 6, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 557, column: 12)
!2457 = !DILocation(line: 558, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 558, column: 6)
!2459 = !DILocation(line: 560, column: 19, scope: !2456)
!2460 = !DILocation(line: 560, column: 6, scope: !2456)
!2461 = !DILocation(line: 562, column: 4, scope: !2440)
!2462 = !DILocation(line: 563, column: 24, scope: !2436)
!2463 = !DILocation(line: 563, column: 34, scope: !2436)
!2464 = !DILocation(line: 563, column: 10, scope: !2436)
!2465 = !DILocation(line: 563, column: 8, scope: !2436)
!2466 = !DILocation(line: 564, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 564, column: 8)
!2468 = !DILocation(line: 564, column: 13, scope: !2467)
!2469 = !DILocation(line: 564, column: 19, scope: !2467)
!2470 = !DILocation(line: 564, column: 23, scope: !2467)
!2471 = !DILocation(line: 564, column: 8, scope: !2436)
!2472 = !DILocation(line: 565, column: 5, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 564, column: 31)
!2474 = !DILocation(line: 565, column: 5, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 565, column: 5)
!2476 = !DILocation(line: 568, column: 5, scope: !2473)
!2477 = !DILocation(line: 570, column: 3, scope: !2436)
!2478 = !DILocation(line: 571, column: 7, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 571, column: 7)
!2480 = !DILocation(line: 571, column: 13, scope: !2479)
!2481 = !DILocation(line: 571, column: 19, scope: !2479)
!2482 = !DILocation(line: 571, column: 7, scope: !2422)
!2483 = !DILocation(line: 573, column: 20, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 571, column: 31)
!2485 = !DILocation(line: 573, column: 30, scope: !2484)
!2486 = !DILocation(line: 573, column: 10, scope: !2484)
!2487 = !DILocation(line: 573, column: 8, scope: !2484)
!2488 = !DILocation(line: 574, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 574, column: 8)
!2490 = !DILocation(line: 574, column: 12, scope: !2489)
!2491 = !DILocation(line: 574, column: 8, scope: !2484)
!2492 = !DILocation(line: 575, column: 5, scope: !2489)
!2493 = !DILocation(line: 575, column: 5, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 575, column: 5)
!2495 = !DILocation(line: 577, column: 8, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 577, column: 8)
!2497 = !DILocation(line: 577, column: 14, scope: !2496)
!2498 = !DILocation(line: 577, column: 20, scope: !2496)
!2499 = !DILocation(line: 577, column: 12, scope: !2496)
!2500 = !DILocation(line: 577, column: 8, scope: !2484)
!2501 = !DILocation(line: 578, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 578, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 577, column: 25)
!2504 = !DILocation(line: 578, column: 13, scope: !2502)
!2505 = !DILocation(line: 578, column: 9, scope: !2503)
!2506 = !DILocation(line: 579, column: 10, scope: !2502)
!2507 = !DILocation(line: 579, column: 6, scope: !2502)
!2508 = !DILocation(line: 580, column: 5, scope: !2503)
!2509 = !DILocation(line: 582, column: 3, scope: !2484)
!2510 = !DILocation(line: 584, column: 20, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 582, column: 10)
!2512 = !DILocation(line: 584, column: 30, scope: !2511)
!2513 = !DILocation(line: 584, column: 10, scope: !2511)
!2514 = !DILocation(line: 584, column: 8, scope: !2511)
!2515 = !DILocation(line: 585, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 585, column: 8)
!2517 = !DILocation(line: 585, column: 12, scope: !2516)
!2518 = !DILocation(line: 585, column: 8, scope: !2511)
!2519 = !DILocation(line: 586, column: 5, scope: !2516)
!2520 = !DILocation(line: 586, column: 5, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 586, column: 5)
!2522 = !DILocation(line: 588, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 588, column: 8)
!2524 = !DILocation(line: 588, column: 14, scope: !2523)
!2525 = !DILocation(line: 588, column: 20, scope: !2523)
!2526 = !DILocation(line: 588, column: 12, scope: !2523)
!2527 = !DILocation(line: 588, column: 8, scope: !2511)
!2528 = !DILocation(line: 589, column: 9, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 589, column: 9)
!2530 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 588, column: 25)
!2531 = !DILocation(line: 589, column: 13, scope: !2529)
!2532 = !DILocation(line: 589, column: 9, scope: !2530)
!2533 = !DILocation(line: 590, column: 10, scope: !2529)
!2534 = !DILocation(line: 590, column: 6, scope: !2529)
!2535 = !DILocation(line: 591, column: 5, scope: !2530)
!2536 = !DILocation(line: 594, column: 2, scope: !2422)
!2537 = !DILocation(line: 547, column: 24, scope: !2417)
!2538 = !DILocation(line: 547, column: 2, scope: !2417)
!2539 = distinct !{!2539, !2420, !2540}
!2540 = !DILocation(line: 594, column: 2, scope: !2414)
!2541 = !DILocation(line: 595, column: 8, scope: !2353)
!2542 = !DILocation(line: 595, column: 6, scope: !2353)
!2543 = !DILocation(line: 595, column: 2, scope: !2353)
!2544 = !DILabel(scope: !2353, name: "bailout", file: !3, line: 597)
!2545 = !DILocation(line: 597, column: 1, scope: !2353)
!2546 = !DILocation(line: 598, column: 2, scope: !2353)
!2547 = !DILocation(line: 598, column: 2, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 598, column: 2)
!2549 = !DILocation(line: 599, column: 11, scope: !2353)
!2550 = !DILocation(line: 599, column: 2, scope: !2353)
!2551 = !DILocation(line: 601, column: 6, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 601, column: 6)
!2553 = !DILocation(line: 601, column: 12, scope: !2552)
!2554 = !DILocation(line: 601, column: 6, scope: !2353)
!2555 = !DILocation(line: 602, column: 3, scope: !2552)
!2556 = !DILocation(line: 602, column: 9, scope: !2552)
!2557 = !DILocation(line: 602, column: 19, scope: !2552)
!2558 = !DILocation(line: 603, column: 9, scope: !2353)
!2559 = !DILocation(line: 603, column: 2, scope: !2353)
!2560 = !DILocation(line: 604, column: 1, scope: !2353)
!2561 = distinct !DISubprogram(name: "bit_xfer_atomic", scope: !3, file: !3, line: 612, type: !158, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2562 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2561, file: !3, line: 612, type: !160)
!2563 = !DILocation(line: 612, column: 48, scope: !2561)
!2564 = !DILocalVariable(name: "msgs", arg: 2, scope: !2561, file: !3, line: 612, type: !2293)
!2565 = !DILocation(line: 612, column: 73, scope: !2561)
!2566 = !DILocalVariable(name: "num", arg: 3, scope: !2561, file: !3, line: 613, type: !92)
!2567 = !DILocation(line: 613, column: 11, scope: !2561)
!2568 = !DILocalVariable(name: "adap", scope: !2561, file: !3, line: 615, type: !2363)
!2569 = !DILocation(line: 615, column: 28, scope: !2561)
!2570 = !DILocation(line: 615, column: 35, scope: !2561)
!2571 = !DILocation(line: 615, column: 45, scope: !2561)
!2572 = !DILocation(line: 617, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 617, column: 6)
!2574 = !DILocation(line: 617, column: 13, scope: !2573)
!2575 = !DILocation(line: 617, column: 6, scope: !2561)
!2576 = !DILocation(line: 618, column: 3, scope: !2573)
!2577 = !DILocation(line: 620, column: 18, scope: !2561)
!2578 = !DILocation(line: 620, column: 28, scope: !2561)
!2579 = !DILocation(line: 620, column: 34, scope: !2561)
!2580 = !DILocation(line: 620, column: 9, scope: !2561)
!2581 = !DILocation(line: 620, column: 2, scope: !2561)
!2582 = distinct !DISubprogram(name: "bit_func", scope: !3, file: !3, line: 623, type: !2319, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2583 = !DILocalVariable(name: "adap", arg: 1, scope: !2582, file: !3, line: 623, type: !160)
!2584 = !DILocation(line: 623, column: 41, scope: !2582)
!2585 = !DILocation(line: 625, column: 2, scope: !2582)
!2586 = distinct !DISubprogram(name: "i2c_bit_add_bus", scope: !3, file: !3, line: 683, type: !2255, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2587 = !DILocalVariable(name: "adap", arg: 1, scope: !2586, file: !3, line: 683, type: !160)
!2588 = !DILocation(line: 683, column: 41, scope: !2586)
!2589 = !DILocation(line: 685, column: 27, scope: !2586)
!2590 = !DILocation(line: 685, column: 9, scope: !2586)
!2591 = !DILocation(line: 685, column: 2, scope: !2586)
!2592 = distinct !DISubprogram(name: "__i2c_bit_add_bus", scope: !3, file: !3, line: 648, type: !2593, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!92, !160, !2254}
!2595 = !DILocalVariable(name: "adap", arg: 1, scope: !2592, file: !3, line: 648, type: !160)
!2596 = !DILocation(line: 648, column: 50, scope: !2592)
!2597 = !DILocalVariable(name: "add_adapter", arg: 2, scope: !2592, file: !3, line: 649, type: !2254)
!2598 = !DILocation(line: 649, column: 15, scope: !2592)
!2599 = !DILocalVariable(name: "bit_adap", scope: !2592, file: !3, line: 651, type: !2363)
!2600 = !DILocation(line: 651, column: 28, scope: !2592)
!2601 = !DILocation(line: 651, column: 39, scope: !2592)
!2602 = !DILocation(line: 651, column: 45, scope: !2592)
!2603 = !DILocalVariable(name: "ret", scope: !2592, file: !3, line: 652, type: !92)
!2604 = !DILocation(line: 652, column: 6, scope: !2592)
!2605 = !DILocation(line: 654, column: 6, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 654, column: 6)
!2607 = !DILocation(line: 654, column: 6, scope: !2592)
!2608 = !DILocation(line: 655, column: 18, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 654, column: 16)
!2610 = !DILocation(line: 655, column: 9, scope: !2609)
!2611 = !DILocation(line: 655, column: 7, scope: !2609)
!2612 = !DILocation(line: 656, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 656, column: 7)
!2614 = !DILocation(line: 656, column: 16, scope: !2613)
!2615 = !DILocation(line: 656, column: 21, scope: !2613)
!2616 = !DILocation(line: 656, column: 24, scope: !2613)
!2617 = !DILocation(line: 656, column: 28, scope: !2613)
!2618 = !DILocation(line: 656, column: 7, scope: !2609)
!2619 = !DILocation(line: 657, column: 4, scope: !2613)
!2620 = !DILocation(line: 658, column: 2, scope: !2609)
!2621 = !DILocation(line: 661, column: 2, scope: !2592)
!2622 = !DILocation(line: 661, column: 8, scope: !2592)
!2623 = !DILocation(line: 661, column: 13, scope: !2592)
!2624 = !DILocation(line: 662, column: 2, scope: !2592)
!2625 = !DILocation(line: 662, column: 8, scope: !2592)
!2626 = !DILocation(line: 662, column: 16, scope: !2592)
!2627 = !DILocation(line: 663, column: 6, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 663, column: 6)
!2629 = !DILocation(line: 663, column: 16, scope: !2628)
!2630 = !DILocation(line: 663, column: 23, scope: !2628)
!2631 = !DILocation(line: 663, column: 6, scope: !2592)
!2632 = !DILocation(line: 664, column: 3, scope: !2628)
!2633 = !DILocation(line: 664, column: 9, scope: !2628)
!2634 = !DILocation(line: 664, column: 16, scope: !2628)
!2635 = !DILocation(line: 671, column: 8, scope: !2592)
!2636 = !DILocation(line: 671, column: 20, scope: !2592)
!2637 = !DILocation(line: 671, column: 6, scope: !2592)
!2638 = !DILocation(line: 672, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 672, column: 6)
!2640 = !DILocation(line: 672, column: 10, scope: !2639)
!2641 = !DILocation(line: 672, column: 6, scope: !2592)
!2642 = !DILocation(line: 673, column: 10, scope: !2639)
!2643 = !DILocation(line: 673, column: 3, scope: !2639)
!2644 = !DILocation(line: 676, column: 6, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 676, column: 6)
!2646 = !DILocation(line: 676, column: 16, scope: !2645)
!2647 = !DILocation(line: 676, column: 23, scope: !2645)
!2648 = !DILocation(line: 676, column: 6, scope: !2592)
!2649 = !DILocation(line: 677, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 676, column: 32)
!2651 = !DILocation(line: 678, column: 3, scope: !2650)
!2652 = !DILocation(line: 679, column: 2, scope: !2650)
!2653 = !DILocation(line: 680, column: 2, scope: !2592)
!2654 = !DILocation(line: 681, column: 1, scope: !2592)
!2655 = distinct !DISubprogram(name: "i2c_bit_add_numbered_bus", scope: !3, file: !3, line: 689, type: !2255, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2656 = !DILocalVariable(name: "adap", arg: 1, scope: !2655, file: !3, line: 689, type: !160)
!2657 = !DILocation(line: 689, column: 50, scope: !2655)
!2658 = !DILocation(line: 691, column: 27, scope: !2655)
!2659 = !DILocation(line: 691, column: 9, scope: !2655)
!2660 = !DILocation(line: 691, column: 2, scope: !2655)
!2661 = distinct !DISubprogram(name: "i2c_start", scope: !3, file: !3, line: 115, type: !2662, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !2363}
!2664 = !DILocalVariable(name: "adap", arg: 1, scope: !2661, file: !3, line: 115, type: !2363)
!2665 = !DILocation(line: 115, column: 49, scope: !2661)
!2666 = !DILocation(line: 118, column: 2, scope: !2661)
!2667 = !DILocation(line: 119, column: 2, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 119, column: 2)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 119, column: 2)
!2670 = !DILocation(line: 119, column: 2, scope: !2669)
!2671 = !DILocation(line: 119, column: 2, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 119, column: 2)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 119, column: 2)
!2674 = !DILocation(line: 119, column: 2, scope: !2673)
!2675 = !DILocation(line: 119, column: 2, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 119, column: 2)
!2677 = !DILocation(line: 120, column: 8, scope: !2661)
!2678 = !DILocation(line: 120, column: 2, scope: !2661)
!2679 = !DILocation(line: 121, column: 1, scope: !2661)
!2680 = distinct !DISubprogram(name: "i2c_stop", scope: !3, file: !3, line: 134, type: !2662, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2681 = !DILocalVariable(name: "adap", arg: 1, scope: !2680, file: !3, line: 134, type: !2363)
!2682 = !DILocation(line: 134, column: 48, scope: !2680)
!2683 = !DILocation(line: 137, column: 8, scope: !2680)
!2684 = !DILocation(line: 137, column: 2, scope: !2680)
!2685 = !DILocation(line: 138, column: 8, scope: !2680)
!2686 = !DILocation(line: 138, column: 2, scope: !2680)
!2687 = !DILocation(line: 139, column: 2, scope: !2680)
!2688 = !DILocation(line: 140, column: 2, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 140, column: 2)
!2690 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 140, column: 2)
!2691 = !DILocation(line: 140, column: 2, scope: !2690)
!2692 = !DILocation(line: 140, column: 2, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 140, column: 2)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 140, column: 2)
!2695 = !DILocation(line: 140, column: 2, scope: !2694)
!2696 = !DILocation(line: 140, column: 2, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 140, column: 2)
!2698 = !DILocation(line: 141, column: 1, scope: !2680)
!2699 = distinct !DISubprogram(name: "i2c_repstart", scope: !3, file: !3, line: 123, type: !2662, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2700 = !DILocalVariable(name: "adap", arg: 1, scope: !2699, file: !3, line: 123, type: !2363)
!2701 = !DILocation(line: 123, column: 52, scope: !2699)
!2702 = !DILocation(line: 126, column: 8, scope: !2699)
!2703 = !DILocation(line: 126, column: 2, scope: !2699)
!2704 = !DILocation(line: 127, column: 8, scope: !2699)
!2705 = !DILocation(line: 127, column: 2, scope: !2699)
!2706 = !DILocation(line: 128, column: 2, scope: !2699)
!2707 = !DILocation(line: 129, column: 2, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 129, column: 2)
!2709 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 129, column: 2)
!2710 = !DILocation(line: 129, column: 2, scope: !2709)
!2711 = !DILocation(line: 129, column: 2, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 129, column: 2)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 129, column: 2)
!2714 = !DILocation(line: 129, column: 2, scope: !2713)
!2715 = !DILocation(line: 129, column: 2, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 129, column: 2)
!2717 = !DILocation(line: 130, column: 8, scope: !2699)
!2718 = !DILocation(line: 130, column: 2, scope: !2699)
!2719 = !DILocation(line: 131, column: 1, scope: !2699)
!2720 = distinct !DISubprogram(name: "bit_doAddress", scope: !3, file: !3, line: 477, type: !2721, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!92, !160, !2293}
!2723 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2720, file: !3, line: 477, type: !160)
!2724 = !DILocation(line: 477, column: 46, scope: !2720)
!2725 = !DILocalVariable(name: "msg", arg: 2, scope: !2720, file: !3, line: 477, type: !2293)
!2726 = !DILocation(line: 477, column: 72, scope: !2720)
!2727 = !DILocalVariable(name: "flags", scope: !2720, file: !3, line: 479, type: !109)
!2728 = !DILocation(line: 479, column: 17, scope: !2720)
!2729 = !DILocation(line: 479, column: 25, scope: !2720)
!2730 = !DILocation(line: 479, column: 30, scope: !2720)
!2731 = !DILocalVariable(name: "nak_ok", scope: !2720, file: !3, line: 480, type: !109)
!2732 = !DILocation(line: 480, column: 17, scope: !2720)
!2733 = !DILocation(line: 480, column: 26, scope: !2720)
!2734 = !DILocation(line: 480, column: 31, scope: !2720)
!2735 = !DILocation(line: 480, column: 37, scope: !2720)
!2736 = !DILocalVariable(name: "adap", scope: !2720, file: !3, line: 481, type: !2363)
!2737 = !DILocation(line: 481, column: 28, scope: !2720)
!2738 = !DILocation(line: 481, column: 35, scope: !2720)
!2739 = !DILocation(line: 481, column: 45, scope: !2720)
!2740 = !DILocalVariable(name: "addr", scope: !2720, file: !3, line: 483, type: !117)
!2741 = !DILocation(line: 483, column: 16, scope: !2720)
!2742 = !DILocalVariable(name: "ret", scope: !2720, file: !3, line: 484, type: !92)
!2743 = !DILocation(line: 484, column: 6, scope: !2720)
!2744 = !DILocalVariable(name: "retries", scope: !2720, file: !3, line: 484, type: !92)
!2745 = !DILocation(line: 484, column: 11, scope: !2720)
!2746 = !DILocation(line: 486, column: 12, scope: !2720)
!2747 = !DILocation(line: 486, column: 25, scope: !2720)
!2748 = !DILocation(line: 486, column: 35, scope: !2720)
!2749 = !DILocation(line: 486, column: 10, scope: !2720)
!2750 = !DILocation(line: 488, column: 6, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 488, column: 6)
!2752 = !DILocation(line: 488, column: 12, scope: !2751)
!2753 = !DILocation(line: 488, column: 6, scope: !2720)
!2754 = !DILocation(line: 490, column: 19, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 488, column: 25)
!2756 = !DILocation(line: 490, column: 24, scope: !2755)
!2757 = !DILocation(line: 490, column: 29, scope: !2755)
!2758 = !DILocation(line: 490, column: 35, scope: !2755)
!2759 = !DILocation(line: 490, column: 15, scope: !2755)
!2760 = !DILocation(line: 490, column: 10, scope: !2755)
!2761 = !DILocation(line: 490, column: 8, scope: !2755)
!2762 = !DILocation(line: 491, column: 3, scope: !2755)
!2763 = !DILocation(line: 491, column: 3, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 491, column: 3)
!2765 = !DILocation(line: 493, column: 21, scope: !2755)
!2766 = !DILocation(line: 493, column: 31, scope: !2755)
!2767 = !DILocation(line: 493, column: 37, scope: !2755)
!2768 = !DILocation(line: 493, column: 9, scope: !2755)
!2769 = !DILocation(line: 493, column: 7, scope: !2755)
!2770 = !DILocation(line: 494, column: 8, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 494, column: 7)
!2772 = !DILocation(line: 494, column: 12, scope: !2771)
!2773 = !DILocation(line: 494, column: 18, scope: !2771)
!2774 = !DILocation(line: 494, column: 22, scope: !2771)
!2775 = !DILocation(line: 494, column: 7, scope: !2755)
!2776 = !DILocation(line: 495, column: 4, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 494, column: 31)
!2778 = !DILocation(line: 497, column: 4, scope: !2777)
!2779 = !DILocation(line: 500, column: 18, scope: !2755)
!2780 = !DILocation(line: 500, column: 28, scope: !2755)
!2781 = !DILocation(line: 500, column: 33, scope: !2755)
!2782 = !DILocation(line: 500, column: 38, scope: !2755)
!2783 = !DILocation(line: 500, column: 9, scope: !2755)
!2784 = !DILocation(line: 500, column: 7, scope: !2755)
!2785 = !DILocation(line: 501, column: 8, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 501, column: 7)
!2787 = !DILocation(line: 501, column: 12, scope: !2786)
!2788 = !DILocation(line: 501, column: 18, scope: !2786)
!2789 = !DILocation(line: 501, column: 22, scope: !2786)
!2790 = !DILocation(line: 501, column: 7, scope: !2755)
!2791 = !DILocation(line: 503, column: 4, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 501, column: 30)
!2793 = !DILocation(line: 504, column: 4, scope: !2792)
!2794 = !DILocation(line: 506, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 506, column: 7)
!2796 = !DILocation(line: 506, column: 13, scope: !2795)
!2797 = !DILocation(line: 506, column: 7, scope: !2755)
!2798 = !DILocation(line: 507, column: 4, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 506, column: 25)
!2800 = !DILocation(line: 507, column: 4, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 507, column: 4)
!2802 = !DILocation(line: 509, column: 17, scope: !2799)
!2803 = !DILocation(line: 509, column: 4, scope: !2799)
!2804 = !DILocation(line: 511, column: 9, scope: !2799)
!2805 = !DILocation(line: 512, column: 22, scope: !2799)
!2806 = !DILocation(line: 512, column: 32, scope: !2799)
!2807 = !DILocation(line: 512, column: 38, scope: !2799)
!2808 = !DILocation(line: 512, column: 10, scope: !2799)
!2809 = !DILocation(line: 512, column: 8, scope: !2799)
!2810 = !DILocation(line: 513, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 513, column: 8)
!2812 = !DILocation(line: 513, column: 13, scope: !2811)
!2813 = !DILocation(line: 513, column: 19, scope: !2811)
!2814 = !DILocation(line: 513, column: 23, scope: !2811)
!2815 = !DILocation(line: 513, column: 8, scope: !2799)
!2816 = !DILocation(line: 514, column: 5, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 513, column: 31)
!2818 = !DILocation(line: 516, column: 5, scope: !2817)
!2819 = !DILocation(line: 518, column: 3, scope: !2799)
!2820 = !DILocation(line: 519, column: 2, scope: !2755)
!2821 = !DILocation(line: 520, column: 33, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 519, column: 9)
!2823 = !DILocation(line: 520, column: 10, scope: !2822)
!2824 = !DILocation(line: 520, column: 8, scope: !2822)
!2825 = !DILocation(line: 521, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 521, column: 7)
!2827 = !DILocation(line: 521, column: 13, scope: !2826)
!2828 = !DILocation(line: 521, column: 7, scope: !2822)
!2829 = !DILocation(line: 522, column: 9, scope: !2826)
!2830 = !DILocation(line: 522, column: 4, scope: !2826)
!2831 = !DILocation(line: 523, column: 21, scope: !2822)
!2832 = !DILocation(line: 523, column: 31, scope: !2822)
!2833 = !DILocation(line: 523, column: 37, scope: !2822)
!2834 = !DILocation(line: 523, column: 9, scope: !2822)
!2835 = !DILocation(line: 523, column: 7, scope: !2822)
!2836 = !DILocation(line: 524, column: 8, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 524, column: 7)
!2838 = !DILocation(line: 524, column: 12, scope: !2837)
!2839 = !DILocation(line: 524, column: 18, scope: !2837)
!2840 = !DILocation(line: 524, column: 22, scope: !2837)
!2841 = !DILocation(line: 524, column: 7, scope: !2822)
!2842 = !DILocation(line: 525, column: 4, scope: !2837)
!2843 = !DILocation(line: 528, column: 2, scope: !2720)
!2844 = !DILocation(line: 529, column: 1, scope: !2720)
!2845 = distinct !DISubprogram(name: "readbytes", scope: !3, file: !3, line: 416, type: !2721, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2846 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2845, file: !3, line: 416, type: !160)
!2847 = !DILocation(line: 416, column: 42, scope: !2845)
!2848 = !DILocalVariable(name: "msg", arg: 2, scope: !2845, file: !3, line: 416, type: !2293)
!2849 = !DILocation(line: 416, column: 68, scope: !2845)
!2850 = !DILocalVariable(name: "inval", scope: !2845, file: !3, line: 418, type: !92)
!2851 = !DILocation(line: 418, column: 6, scope: !2845)
!2852 = !DILocalVariable(name: "rdcount", scope: !2845, file: !3, line: 419, type: !92)
!2853 = !DILocation(line: 419, column: 6, scope: !2845)
!2854 = !DILocalVariable(name: "temp", scope: !2845, file: !3, line: 420, type: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2856 = !DILocation(line: 420, column: 17, scope: !2845)
!2857 = !DILocation(line: 420, column: 24, scope: !2845)
!2858 = !DILocation(line: 420, column: 29, scope: !2845)
!2859 = !DILocalVariable(name: "count", scope: !2845, file: !3, line: 421, type: !92)
!2860 = !DILocation(line: 421, column: 6, scope: !2845)
!2861 = !DILocation(line: 421, column: 14, scope: !2845)
!2862 = !DILocation(line: 421, column: 19, scope: !2845)
!2863 = !DILocalVariable(name: "flags", scope: !2845, file: !3, line: 422, type: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2865 = !DILocation(line: 422, column: 17, scope: !2845)
!2866 = !DILocation(line: 422, column: 25, scope: !2845)
!2867 = !DILocation(line: 422, column: 30, scope: !2845)
!2868 = !DILocation(line: 424, column: 2, scope: !2845)
!2869 = !DILocation(line: 424, column: 9, scope: !2845)
!2870 = !DILocation(line: 424, column: 15, scope: !2845)
!2871 = !DILocation(line: 425, column: 19, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 424, column: 20)
!2873 = !DILocation(line: 425, column: 11, scope: !2872)
!2874 = !DILocation(line: 425, column: 9, scope: !2872)
!2875 = !DILocation(line: 426, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 426, column: 7)
!2877 = !DILocation(line: 426, column: 13, scope: !2876)
!2878 = !DILocation(line: 426, column: 7, scope: !2872)
!2879 = !DILocation(line: 427, column: 12, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 426, column: 19)
!2881 = !DILocation(line: 427, column: 5, scope: !2880)
!2882 = !DILocation(line: 427, column: 10, scope: !2880)
!2883 = !DILocation(line: 428, column: 11, scope: !2880)
!2884 = !DILocation(line: 429, column: 3, scope: !2880)
!2885 = !DILocation(line: 430, column: 4, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 429, column: 10)
!2887 = !DILocation(line: 433, column: 7, scope: !2872)
!2888 = !DILocation(line: 434, column: 8, scope: !2872)
!2889 = !DILocation(line: 438, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 438, column: 7)
!2891 = !DILocation(line: 438, column: 15, scope: !2890)
!2892 = !DILocation(line: 438, column: 20, scope: !2890)
!2893 = !DILocation(line: 438, column: 24, scope: !2890)
!2894 = !DILocation(line: 438, column: 30, scope: !2890)
!2895 = !DILocation(line: 438, column: 7, scope: !2872)
!2896 = !DILocation(line: 439, column: 8, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 439, column: 8)
!2898 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 438, column: 49)
!2899 = !DILocation(line: 439, column: 14, scope: !2897)
!2900 = !DILocation(line: 439, column: 19, scope: !2897)
!2901 = !DILocation(line: 439, column: 22, scope: !2897)
!2902 = !DILocation(line: 439, column: 28, scope: !2897)
!2903 = !DILocation(line: 439, column: 8, scope: !2898)
!2904 = !DILocation(line: 440, column: 11, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 440, column: 9)
!2906 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 439, column: 51)
!2907 = !DILocation(line: 440, column: 17, scope: !2905)
!2908 = !DILocation(line: 440, column: 9, scope: !2906)
!2909 = !DILocation(line: 441, column: 13, scope: !2905)
!2910 = !DILocation(line: 441, column: 6, scope: !2905)
!2911 = !DILocation(line: 442, column: 5, scope: !2906)
!2912 = !DILocation(line: 445, column: 5, scope: !2906)
!2913 = !DILocation(line: 450, column: 13, scope: !2898)
!2914 = !DILocation(line: 450, column: 10, scope: !2898)
!2915 = !DILocation(line: 451, column: 16, scope: !2898)
!2916 = !DILocation(line: 451, column: 4, scope: !2898)
!2917 = !DILocation(line: 451, column: 9, scope: !2898)
!2918 = !DILocation(line: 451, column: 13, scope: !2898)
!2919 = !DILocation(line: 452, column: 3, scope: !2898)
!2920 = !DILocation(line: 454, column: 3, scope: !2872)
!2921 = !DILocation(line: 454, column: 3, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 454, column: 3)
!2923 = !DILocation(line: 460, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 460, column: 7)
!2925 = !DILocation(line: 460, column: 15, scope: !2924)
!2926 = !DILocation(line: 460, column: 7, scope: !2872)
!2927 = !DILocation(line: 461, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 460, column: 35)
!2929 = !DILocation(line: 461, column: 29, scope: !2928)
!2930 = !DILocation(line: 461, column: 12, scope: !2928)
!2931 = !DILocation(line: 461, column: 10, scope: !2928)
!2932 = !DILocation(line: 462, column: 8, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 462, column: 8)
!2934 = !DILocation(line: 462, column: 14, scope: !2933)
!2935 = !DILocation(line: 462, column: 8, scope: !2928)
!2936 = !DILocation(line: 463, column: 12, scope: !2933)
!2937 = !DILocation(line: 463, column: 5, scope: !2933)
!2938 = !DILocation(line: 464, column: 3, scope: !2928)
!2939 = distinct !{!2939, !2868, !2940}
!2940 = !DILocation(line: 465, column: 2, scope: !2845)
!2941 = !DILocation(line: 466, column: 9, scope: !2845)
!2942 = !DILocation(line: 466, column: 2, scope: !2845)
!2943 = !DILocation(line: 467, column: 1, scope: !2845)
!2944 = distinct !DISubprogram(name: "sendbytes", scope: !3, file: !3, line: 359, type: !2721, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!2945 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2944, file: !3, line: 359, type: !160)
!2946 = !DILocation(line: 359, column: 42, scope: !2944)
!2947 = !DILocalVariable(name: "msg", arg: 2, scope: !2944, file: !3, line: 359, type: !2293)
!2948 = !DILocation(line: 359, column: 68, scope: !2944)
!2949 = !DILocalVariable(name: "temp", scope: !2944, file: !3, line: 361, type: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2952 = !DILocation(line: 361, column: 23, scope: !2944)
!2953 = !DILocation(line: 361, column: 30, scope: !2944)
!2954 = !DILocation(line: 361, column: 35, scope: !2944)
!2955 = !DILocalVariable(name: "count", scope: !2944, file: !3, line: 362, type: !92)
!2956 = !DILocation(line: 362, column: 6, scope: !2944)
!2957 = !DILocation(line: 362, column: 14, scope: !2944)
!2958 = !DILocation(line: 362, column: 19, scope: !2944)
!2959 = !DILocalVariable(name: "nak_ok", scope: !2944, file: !3, line: 363, type: !109)
!2960 = !DILocation(line: 363, column: 17, scope: !2944)
!2961 = !DILocation(line: 363, column: 26, scope: !2944)
!2962 = !DILocation(line: 363, column: 31, scope: !2944)
!2963 = !DILocation(line: 363, column: 37, scope: !2944)
!2964 = !DILocalVariable(name: "retval", scope: !2944, file: !3, line: 364, type: !92)
!2965 = !DILocation(line: 364, column: 6, scope: !2944)
!2966 = !DILocalVariable(name: "wrcount", scope: !2944, file: !3, line: 365, type: !92)
!2967 = !DILocation(line: 365, column: 6, scope: !2944)
!2968 = !DILocation(line: 367, column: 2, scope: !2944)
!2969 = !DILocation(line: 367, column: 9, scope: !2944)
!2970 = !DILocation(line: 367, column: 15, scope: !2944)
!2971 = !DILocation(line: 368, column: 21, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 367, column: 20)
!2973 = !DILocation(line: 368, column: 32, scope: !2972)
!2974 = !DILocation(line: 368, column: 31, scope: !2972)
!2975 = !DILocation(line: 368, column: 12, scope: !2972)
!2976 = !DILocation(line: 368, column: 10, scope: !2972)
!2977 = !DILocation(line: 371, column: 8, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 371, column: 7)
!2979 = !DILocation(line: 371, column: 15, scope: !2978)
!2980 = !DILocation(line: 371, column: 20, scope: !2978)
!2981 = !DILocation(line: 371, column: 24, scope: !2978)
!2982 = !DILocation(line: 371, column: 31, scope: !2978)
!2983 = !DILocation(line: 371, column: 35, scope: !2978)
!2984 = !DILocation(line: 371, column: 42, scope: !2978)
!2985 = !DILocation(line: 371, column: 7, scope: !2972)
!2986 = !DILocation(line: 372, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 371, column: 50)
!2988 = !DILocation(line: 373, column: 8, scope: !2987)
!2989 = !DILocation(line: 374, column: 11, scope: !2987)
!2990 = !DILocation(line: 380, column: 3, scope: !2987)
!2991 = !DILocation(line: 380, column: 14, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 380, column: 14)
!2993 = !DILocation(line: 380, column: 21, scope: !2992)
!2994 = !DILocation(line: 380, column: 14, scope: !2978)
!2995 = !DILocation(line: 381, column: 4, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 380, column: 27)
!2997 = !DILocation(line: 382, column: 4, scope: !2996)
!2998 = !DILocation(line: 392, column: 4, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 391, column: 10)
!3000 = !DILocation(line: 394, column: 11, scope: !2999)
!3001 = !DILocation(line: 394, column: 4, scope: !2999)
!3002 = distinct !{!3002, !2968, !3003}
!3003 = !DILocation(line: 396, column: 2, scope: !2944)
!3004 = !DILocation(line: 397, column: 9, scope: !2944)
!3005 = !DILocation(line: 397, column: 2, scope: !2944)
!3006 = !DILocation(line: 398, column: 1, scope: !2944)
!3007 = distinct !DISubprogram(name: "scllo", scope: !3, file: !3, line: 65, type: !2662, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3008 = !DILocalVariable(name: "adap", arg: 1, scope: !3007, file: !3, line: 65, type: !2363)
!3009 = !DILocation(line: 65, column: 52, scope: !3007)
!3010 = !DILocation(line: 67, column: 2, scope: !3007)
!3011 = !DILocation(line: 68, column: 2, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 68, column: 2)
!3013 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 68, column: 2)
!3014 = !DILocation(line: 68, column: 2, scope: !3013)
!3015 = !DILocation(line: 68, column: 2, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 68, column: 2)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 68, column: 2)
!3018 = !DILocation(line: 68, column: 2, scope: !3017)
!3019 = !DILocation(line: 68, column: 2, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 68, column: 2)
!3021 = !DILocation(line: 69, column: 1, scope: !3007)
!3022 = distinct !DISubprogram(name: "sdalo", scope: !3, file: !3, line: 53, type: !2662, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3023 = !DILocalVariable(name: "adap", arg: 1, scope: !3022, file: !3, line: 53, type: !2363)
!3024 = !DILocation(line: 53, column: 52, scope: !3022)
!3025 = !DILocation(line: 55, column: 2, scope: !3022)
!3026 = !DILocation(line: 56, column: 2, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 56, column: 2)
!3028 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 56, column: 2)
!3029 = !DILocation(line: 56, column: 2, scope: !3028)
!3030 = !DILocation(line: 56, column: 2, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 56, column: 2)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 56, column: 2)
!3033 = !DILocation(line: 56, column: 2, scope: !3032)
!3034 = !DILocation(line: 56, column: 2, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 56, column: 2)
!3036 = !DILocation(line: 57, column: 1, scope: !3022)
!3037 = distinct !DISubprogram(name: "sclhi", scope: !3, file: !3, line: 75, type: !3038, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!92, !2363}
!3040 = !DILocalVariable(name: "adap", arg: 1, scope: !3037, file: !3, line: 75, type: !2363)
!3041 = !DILocation(line: 75, column: 44, scope: !3037)
!3042 = !DILocalVariable(name: "start", scope: !3037, file: !3, line: 77, type: !208)
!3043 = !DILocation(line: 77, column: 16, scope: !3037)
!3044 = !DILocation(line: 79, column: 2, scope: !3037)
!3045 = !DILocation(line: 82, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 82, column: 6)
!3047 = !DILocation(line: 82, column: 13, scope: !3046)
!3048 = !DILocation(line: 82, column: 6, scope: !3037)
!3049 = !DILocation(line: 83, column: 3, scope: !3046)
!3050 = !DILocation(line: 85, column: 10, scope: !3037)
!3051 = !DILocation(line: 85, column: 8, scope: !3037)
!3052 = !DILocation(line: 86, column: 2, scope: !3037)
!3053 = !DILocation(line: 86, column: 10, scope: !3037)
!3054 = !DILocation(line: 86, column: 9, scope: !3037)
!3055 = !DILocation(line: 92, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 92, column: 7)
!3057 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 86, column: 24)
!3058 = !DILocation(line: 92, column: 7, scope: !3057)
!3059 = !DILocation(line: 96, column: 8, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 96, column: 8)
!3061 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 92, column: 51)
!3062 = !DILocation(line: 96, column: 8, scope: !3061)
!3063 = !DILocation(line: 97, column: 5, scope: !3060)
!3064 = !DILocation(line: 98, column: 4, scope: !3061)
!3065 = !DILocation(line: 13, column: 2, scope: !3066, inlinedAt: !3070)
!3066 = distinct !DISubprogram(name: "rep_nop", scope: !3067, file: !3067, line: 11, type: !3068, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3067 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null}
!3070 = distinct !DILocation(line: 18, column: 2, scope: !3071, inlinedAt: !3072)
!3071 = distinct !DISubprogram(name: "cpu_relax", scope: !3067, file: !3067, line: 16, type: !3068, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3072 = distinct !DILocation(line: 100, column: 3, scope: !3057)
!3073 = !{i32 1769187}
!3074 = distinct !{!3074, !3052, !3075}
!3075 = !DILocation(line: 101, column: 2, scope: !3037)
!3076 = !DILabel(scope: !3037, name: "done", file: !3, line: 108)
!3077 = !DILocation(line: 108, column: 1, scope: !3037)
!3078 = !DILocation(line: 109, column: 2, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 109, column: 2)
!3080 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 109, column: 2)
!3081 = !DILocation(line: 109, column: 2, scope: !3080)
!3082 = !DILocation(line: 109, column: 2, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 109, column: 2)
!3084 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 109, column: 2)
!3085 = !DILocation(line: 109, column: 2, scope: !3084)
!3086 = !DILocation(line: 109, column: 2, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 109, column: 2)
!3088 = !DILocation(line: 110, column: 2, scope: !3037)
!3089 = !DILocation(line: 111, column: 1, scope: !3037)
!3090 = distinct !DISubprogram(name: "sdahi", scope: !3, file: !3, line: 59, type: !2662, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3091 = !DILocalVariable(name: "adap", arg: 1, scope: !3090, file: !3, line: 59, type: !2363)
!3092 = !DILocation(line: 59, column: 52, scope: !3090)
!3093 = !DILocation(line: 61, column: 2, scope: !3090)
!3094 = !DILocation(line: 62, column: 2, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 62, column: 2)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 62, column: 2)
!3097 = !DILocation(line: 62, column: 2, scope: !3096)
!3098 = !DILocation(line: 62, column: 2, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 62, column: 2)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 62, column: 2)
!3101 = !DILocation(line: 62, column: 2, scope: !3100)
!3102 = !DILocation(line: 62, column: 2, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 62, column: 2)
!3104 = !DILocation(line: 63, column: 1, scope: !3090)
!3105 = distinct !DISubprogram(name: "try_address", scope: !3, file: !3, line: 334, type: !3106, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!92, !160, !117, !92}
!3108 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3105, file: !3, line: 334, type: !160)
!3109 = !DILocation(line: 334, column: 44, scope: !3105)
!3110 = !DILocalVariable(name: "addr", arg: 2, scope: !3105, file: !3, line: 335, type: !117)
!3111 = !DILocation(line: 335, column: 24, scope: !3105)
!3112 = !DILocalVariable(name: "retries", arg: 3, scope: !3105, file: !3, line: 335, type: !92)
!3113 = !DILocation(line: 335, column: 34, scope: !3105)
!3114 = !DILocalVariable(name: "adap", scope: !3105, file: !3, line: 337, type: !2363)
!3115 = !DILocation(line: 337, column: 28, scope: !3105)
!3116 = !DILocation(line: 337, column: 35, scope: !3105)
!3117 = !DILocation(line: 337, column: 45, scope: !3105)
!3118 = !DILocalVariable(name: "i", scope: !3105, file: !3, line: 338, type: !92)
!3119 = !DILocation(line: 338, column: 6, scope: !3105)
!3120 = !DILocalVariable(name: "ret", scope: !3105, file: !3, line: 338, type: !92)
!3121 = !DILocation(line: 338, column: 9, scope: !3105)
!3122 = !DILocation(line: 340, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 340, column: 2)
!3124 = !DILocation(line: 340, column: 7, scope: !3123)
!3125 = !DILocation(line: 340, column: 14, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 340, column: 2)
!3127 = !DILocation(line: 340, column: 19, scope: !3126)
!3128 = !DILocation(line: 340, column: 16, scope: !3126)
!3129 = !DILocation(line: 340, column: 2, scope: !3123)
!3130 = !DILocation(line: 341, column: 18, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 340, column: 33)
!3132 = !DILocation(line: 341, column: 28, scope: !3131)
!3133 = !DILocation(line: 341, column: 9, scope: !3131)
!3134 = !DILocation(line: 341, column: 7, scope: !3131)
!3135 = !DILocation(line: 342, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 342, column: 7)
!3137 = !DILocation(line: 342, column: 11, scope: !3136)
!3138 = !DILocation(line: 342, column: 16, scope: !3136)
!3139 = !DILocation(line: 342, column: 19, scope: !3136)
!3140 = !DILocation(line: 342, column: 24, scope: !3136)
!3141 = !DILocation(line: 342, column: 21, scope: !3136)
!3142 = !DILocation(line: 342, column: 7, scope: !3131)
!3143 = !DILocation(line: 343, column: 4, scope: !3136)
!3144 = !DILocation(line: 344, column: 3, scope: !3131)
!3145 = !DILocation(line: 344, column: 3, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 344, column: 3)
!3147 = !DILocation(line: 345, column: 12, scope: !3131)
!3148 = !DILocation(line: 345, column: 3, scope: !3131)
!3149 = !DILocation(line: 346, column: 3, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 346, column: 3)
!3151 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 346, column: 3)
!3152 = !DILocation(line: 346, column: 3, scope: !3151)
!3153 = !DILocation(line: 346, column: 3, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 346, column: 3)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 346, column: 3)
!3156 = !DILocation(line: 346, column: 3, scope: !3155)
!3157 = !DILocation(line: 346, column: 3, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 346, column: 3)
!3159 = !DILocation(line: 347, column: 3, scope: !3131)
!3160 = !DILocation(line: 348, column: 3, scope: !3131)
!3161 = !DILocation(line: 348, column: 3, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 348, column: 3)
!3163 = !DILocation(line: 349, column: 13, scope: !3131)
!3164 = !DILocation(line: 349, column: 3, scope: !3131)
!3165 = !DILocation(line: 350, column: 2, scope: !3131)
!3166 = !DILocation(line: 340, column: 29, scope: !3126)
!3167 = !DILocation(line: 340, column: 2, scope: !3126)
!3168 = distinct !{!3168, !3129, !3169}
!3169 = !DILocation(line: 350, column: 2, scope: !3123)
!3170 = !DILocation(line: 351, column: 6, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 351, column: 6)
!3172 = !DILocation(line: 351, column: 8, scope: !3171)
!3173 = !DILocation(line: 351, column: 11, scope: !3171)
!3174 = !DILocation(line: 351, column: 6, scope: !3105)
!3175 = !DILocation(line: 352, column: 3, scope: !3171)
!3176 = !DILocation(line: 352, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 352, column: 3)
!3178 = !DILocation(line: 356, column: 9, scope: !3105)
!3179 = !DILocation(line: 356, column: 2, scope: !3105)
!3180 = distinct !DISubprogram(name: "i2c_outb", scope: !3, file: !3, line: 152, type: !3181, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!92, !160, !117}
!3183 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3180, file: !3, line: 152, type: !160)
!3184 = !DILocation(line: 152, column: 41, scope: !3180)
!3185 = !DILocalVariable(name: "c", arg: 2, scope: !3180, file: !3, line: 152, type: !117)
!3186 = !DILocation(line: 152, column: 65, scope: !3180)
!3187 = !DILocalVariable(name: "i", scope: !3180, file: !3, line: 154, type: !92)
!3188 = !DILocation(line: 154, column: 6, scope: !3180)
!3189 = !DILocalVariable(name: "sb", scope: !3180, file: !3, line: 155, type: !92)
!3190 = !DILocation(line: 155, column: 6, scope: !3180)
!3191 = !DILocalVariable(name: "ack", scope: !3180, file: !3, line: 156, type: !92)
!3192 = !DILocation(line: 156, column: 6, scope: !3180)
!3193 = !DILocalVariable(name: "adap", scope: !3180, file: !3, line: 157, type: !2363)
!3194 = !DILocation(line: 157, column: 28, scope: !3180)
!3195 = !DILocation(line: 157, column: 35, scope: !3180)
!3196 = !DILocation(line: 157, column: 45, scope: !3180)
!3197 = !DILocation(line: 160, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 160, column: 2)
!3199 = !DILocation(line: 160, column: 7, scope: !3198)
!3200 = !DILocation(line: 160, column: 14, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 160, column: 2)
!3202 = !DILocation(line: 160, column: 16, scope: !3201)
!3203 = !DILocation(line: 160, column: 2, scope: !3198)
!3204 = !DILocation(line: 161, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 160, column: 27)
!3206 = !DILocation(line: 161, column: 14, scope: !3205)
!3207 = !DILocation(line: 161, column: 11, scope: !3205)
!3208 = !DILocation(line: 161, column: 17, scope: !3205)
!3209 = !DILocation(line: 161, column: 6, scope: !3205)
!3210 = !DILocation(line: 162, column: 3, scope: !3205)
!3211 = !DILocation(line: 163, column: 3, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 163, column: 3)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 163, column: 3)
!3214 = !DILocation(line: 163, column: 3, scope: !3213)
!3215 = !DILocation(line: 163, column: 3, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 163, column: 3)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 163, column: 3)
!3218 = !DILocation(line: 163, column: 3, scope: !3217)
!3219 = !DILocation(line: 163, column: 3, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 163, column: 3)
!3221 = !DILocation(line: 164, column: 13, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 164, column: 7)
!3223 = !DILocation(line: 164, column: 7, scope: !3222)
!3224 = !DILocation(line: 164, column: 19, scope: !3222)
!3225 = !DILocation(line: 164, column: 7, scope: !3205)
!3226 = !DILocation(line: 165, column: 4, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 164, column: 24)
!3228 = !DILocation(line: 165, column: 4, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 165, column: 4)
!3230 = !DILocation(line: 168, column: 4, scope: !3227)
!3231 = !DILocation(line: 176, column: 9, scope: !3205)
!3232 = !DILocation(line: 176, column: 3, scope: !3205)
!3233 = !DILocation(line: 177, column: 2, scope: !3205)
!3234 = !DILocation(line: 160, column: 23, scope: !3201)
!3235 = !DILocation(line: 160, column: 2, scope: !3201)
!3236 = distinct !{!3236, !3203, !3237}
!3237 = !DILocation(line: 177, column: 2, scope: !3198)
!3238 = !DILocation(line: 178, column: 8, scope: !3180)
!3239 = !DILocation(line: 178, column: 2, scope: !3180)
!3240 = !DILocation(line: 179, column: 12, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 179, column: 6)
!3242 = !DILocation(line: 179, column: 6, scope: !3241)
!3243 = !DILocation(line: 179, column: 18, scope: !3241)
!3244 = !DILocation(line: 179, column: 6, scope: !3180)
!3245 = !DILocation(line: 180, column: 3, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 179, column: 23)
!3247 = !DILocation(line: 180, column: 3, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 180, column: 3)
!3249 = !DILocation(line: 182, column: 3, scope: !3246)
!3250 = !DILocation(line: 188, column: 9, scope: !3180)
!3251 = !DILocation(line: 188, column: 8, scope: !3180)
!3252 = !DILocation(line: 188, column: 6, scope: !3180)
!3253 = !DILocation(line: 189, column: 2, scope: !3180)
!3254 = !DILocation(line: 189, column: 2, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 189, column: 2)
!3256 = !DILocation(line: 192, column: 8, scope: !3180)
!3257 = !DILocation(line: 192, column: 2, scope: !3180)
!3258 = !DILocation(line: 193, column: 9, scope: !3180)
!3259 = !DILocation(line: 193, column: 2, scope: !3180)
!3260 = !DILocation(line: 195, column: 1, scope: !3180)
!3261 = distinct !DISubprogram(name: "i2c_8bit_addr_from_msg", scope: !154, file: !154, line: 905, type: !3262, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!115, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2294)
!3266 = !DILocalVariable(name: "msg", arg: 1, scope: !3261, file: !154, line: 905, type: !3264)
!3267 = !DILocation(line: 905, column: 63, scope: !3261)
!3268 = !DILocation(line: 907, column: 10, scope: !3261)
!3269 = !DILocation(line: 907, column: 15, scope: !3261)
!3270 = !DILocation(line: 907, column: 20, scope: !3261)
!3271 = !DILocation(line: 907, column: 29, scope: !3261)
!3272 = !DILocation(line: 907, column: 34, scope: !3261)
!3273 = !DILocation(line: 907, column: 40, scope: !3261)
!3274 = !DILocation(line: 907, column: 26, scope: !3261)
!3275 = !DILocation(line: 907, column: 9, scope: !3261)
!3276 = !DILocation(line: 907, column: 2, scope: !3261)
!3277 = distinct !DISubprogram(name: "i2c_inb", scope: !3, file: !3, line: 198, type: !2255, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3278 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3277, file: !3, line: 198, type: !160)
!3279 = !DILocation(line: 198, column: 40, scope: !3277)
!3280 = !DILocalVariable(name: "i", scope: !3277, file: !3, line: 202, type: !92)
!3281 = !DILocation(line: 202, column: 6, scope: !3277)
!3282 = !DILocalVariable(name: "indata", scope: !3277, file: !3, line: 203, type: !117)
!3283 = !DILocation(line: 203, column: 16, scope: !3277)
!3284 = !DILocalVariable(name: "adap", scope: !3277, file: !3, line: 204, type: !2363)
!3285 = !DILocation(line: 204, column: 28, scope: !3277)
!3286 = !DILocation(line: 204, column: 35, scope: !3277)
!3287 = !DILocation(line: 204, column: 45, scope: !3277)
!3288 = !DILocation(line: 207, column: 8, scope: !3277)
!3289 = !DILocation(line: 207, column: 2, scope: !3277)
!3290 = !DILocation(line: 208, column: 9, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 208, column: 2)
!3292 = !DILocation(line: 208, column: 7, scope: !3291)
!3293 = !DILocation(line: 208, column: 14, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 208, column: 2)
!3295 = !DILocation(line: 208, column: 16, scope: !3294)
!3296 = !DILocation(line: 208, column: 2, scope: !3291)
!3297 = !DILocation(line: 209, column: 13, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 209, column: 7)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 208, column: 26)
!3300 = !DILocation(line: 209, column: 7, scope: !3298)
!3301 = !DILocation(line: 209, column: 19, scope: !3298)
!3302 = !DILocation(line: 209, column: 7, scope: !3299)
!3303 = !DILocation(line: 210, column: 4, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 209, column: 24)
!3305 = !DILocation(line: 210, column: 4, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 210, column: 4)
!3307 = !DILocation(line: 213, column: 4, scope: !3304)
!3308 = !DILocation(line: 215, column: 10, scope: !3299)
!3309 = !DILocation(line: 216, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 216, column: 7)
!3311 = !DILocation(line: 216, column: 7, scope: !3299)
!3312 = !DILocation(line: 217, column: 11, scope: !3310)
!3313 = !DILocation(line: 217, column: 4, scope: !3310)
!3314 = !DILocation(line: 218, column: 3, scope: !3299)
!3315 = !DILocation(line: 219, column: 3, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 219, column: 3)
!3317 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 219, column: 3)
!3318 = !DILocation(line: 219, column: 3, scope: !3317)
!3319 = !DILocation(line: 219, column: 3, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 219, column: 3)
!3321 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 219, column: 3)
!3322 = !DILocation(line: 219, column: 3, scope: !3321)
!3323 = !DILocation(line: 219, column: 3, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 219, column: 3)
!3325 = !DILocation(line: 220, column: 2, scope: !3299)
!3326 = !DILocation(line: 208, column: 22, scope: !3294)
!3327 = !DILocation(line: 208, column: 2, scope: !3294)
!3328 = distinct !{!3328, !3296, !3329}
!3329 = !DILocation(line: 220, column: 2, scope: !3291)
!3330 = !DILocation(line: 222, column: 9, scope: !3277)
!3331 = !DILocation(line: 222, column: 2, scope: !3277)
!3332 = !DILocation(line: 223, column: 1, scope: !3277)
!3333 = distinct !DISubprogram(name: "acknak", scope: !3, file: !3, line: 400, type: !3334, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!92, !160, !92}
!3336 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3333, file: !3, line: 400, type: !160)
!3337 = !DILocation(line: 400, column: 39, scope: !3333)
!3338 = !DILocalVariable(name: "is_ack", arg: 2, scope: !3333, file: !3, line: 400, type: !92)
!3339 = !DILocation(line: 400, column: 53, scope: !3333)
!3340 = !DILocalVariable(name: "adap", scope: !3333, file: !3, line: 402, type: !2363)
!3341 = !DILocation(line: 402, column: 28, scope: !3333)
!3342 = !DILocation(line: 402, column: 35, scope: !3333)
!3343 = !DILocation(line: 402, column: 45, scope: !3333)
!3344 = !DILocation(line: 405, column: 6, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 405, column: 6)
!3346 = !DILocation(line: 405, column: 6, scope: !3333)
!3347 = !DILocation(line: 406, column: 3, scope: !3345)
!3348 = !DILocation(line: 407, column: 2, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 407, column: 2)
!3350 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 407, column: 2)
!3351 = !DILocation(line: 407, column: 2, scope: !3350)
!3352 = !DILocation(line: 407, column: 2, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 407, column: 2)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 407, column: 2)
!3355 = !DILocation(line: 407, column: 2, scope: !3354)
!3356 = !DILocation(line: 407, column: 2, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 407, column: 2)
!3358 = !DILocation(line: 408, column: 12, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 408, column: 6)
!3360 = !DILocation(line: 408, column: 6, scope: !3359)
!3361 = !DILocation(line: 408, column: 18, scope: !3359)
!3362 = !DILocation(line: 408, column: 6, scope: !3333)
!3363 = !DILocation(line: 409, column: 3, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 408, column: 23)
!3365 = !DILocation(line: 410, column: 3, scope: !3364)
!3366 = !DILocation(line: 412, column: 8, scope: !3333)
!3367 = !DILocation(line: 412, column: 2, scope: !3333)
!3368 = !DILocation(line: 413, column: 2, scope: !3333)
!3369 = !DILocation(line: 414, column: 1, scope: !3333)
!3370 = distinct !DISubprogram(name: "test_bus", scope: !3, file: !3, line: 229, type: !2255, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !195)
!3371 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3370, file: !3, line: 229, type: !160)
!3372 = !DILocation(line: 229, column: 41, scope: !3370)
!3373 = !DILocalVariable(name: "adap", scope: !3370, file: !3, line: 231, type: !2363)
!3374 = !DILocation(line: 231, column: 28, scope: !3370)
!3375 = !DILocation(line: 231, column: 35, scope: !3370)
!3376 = !DILocation(line: 231, column: 45, scope: !3370)
!3377 = !DILocalVariable(name: "name", scope: !3370, file: !3, line: 232, type: !75)
!3378 = !DILocation(line: 232, column: 14, scope: !3370)
!3379 = !DILocation(line: 232, column: 21, scope: !3370)
!3380 = !DILocation(line: 232, column: 31, scope: !3370)
!3381 = !DILocalVariable(name: "scl", scope: !3370, file: !3, line: 233, type: !92)
!3382 = !DILocation(line: 233, column: 6, scope: !3370)
!3383 = !DILocalVariable(name: "sda", scope: !3370, file: !3, line: 233, type: !92)
!3384 = !DILocation(line: 233, column: 11, scope: !3370)
!3385 = !DILocalVariable(name: "ret", scope: !3370, file: !3, line: 233, type: !92)
!3386 = !DILocation(line: 233, column: 16, scope: !3370)
!3387 = !DILocation(line: 235, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 235, column: 6)
!3389 = !DILocation(line: 235, column: 12, scope: !3388)
!3390 = !DILocation(line: 235, column: 6, scope: !3370)
!3391 = !DILocation(line: 236, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 235, column: 22)
!3393 = !DILocation(line: 236, column: 15, scope: !3392)
!3394 = !DILocation(line: 236, column: 24, scope: !3392)
!3395 = !DILocation(line: 236, column: 7, scope: !3392)
!3396 = !DILocation(line: 237, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 237, column: 7)
!3398 = !DILocation(line: 237, column: 11, scope: !3397)
!3399 = !DILocation(line: 237, column: 7, scope: !3392)
!3400 = !DILocation(line: 238, column: 4, scope: !3397)
!3401 = !DILocation(line: 239, column: 2, scope: !3392)
!3402 = !DILocation(line: 241, column: 6, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 241, column: 6)
!3404 = !DILocation(line: 241, column: 12, scope: !3403)
!3405 = !DILocation(line: 241, column: 19, scope: !3403)
!3406 = !DILocation(line: 241, column: 6, scope: !3370)
!3407 = !DILocation(line: 242, column: 3, scope: !3403)
!3408 = !DILocation(line: 244, column: 8, scope: !3370)
!3409 = !DILocation(line: 244, column: 6, scope: !3370)
!3410 = !DILocation(line: 245, column: 9, scope: !3370)
!3411 = !DILocation(line: 245, column: 15, scope: !3370)
!3412 = !DILocation(line: 245, column: 22, scope: !3370)
!3413 = !DILocation(line: 245, column: 8, scope: !3370)
!3414 = !DILocation(line: 245, column: 37, scope: !3370)
!3415 = !DILocation(line: 245, column: 6, scope: !3370)
!3416 = !DILocation(line: 246, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 246, column: 6)
!3418 = !DILocation(line: 246, column: 11, scope: !3417)
!3419 = !DILocation(line: 246, column: 15, scope: !3417)
!3420 = !DILocation(line: 246, column: 6, scope: !3370)
!3421 = !DILocation(line: 249, column: 10, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 246, column: 20)
!3423 = !DILocation(line: 249, column: 16, scope: !3422)
!3424 = !DILocation(line: 249, column: 21, scope: !3422)
!3425 = !DILocation(line: 247, column: 3, scope: !3422)
!3426 = !DILocation(line: 250, column: 3, scope: !3422)
!3427 = !DILocation(line: 253, column: 8, scope: !3370)
!3428 = !DILocation(line: 253, column: 2, scope: !3370)
!3429 = !DILocation(line: 254, column: 8, scope: !3370)
!3430 = !DILocation(line: 254, column: 6, scope: !3370)
!3431 = !DILocation(line: 255, column: 9, scope: !3370)
!3432 = !DILocation(line: 255, column: 15, scope: !3370)
!3433 = !DILocation(line: 255, column: 22, scope: !3370)
!3434 = !DILocation(line: 255, column: 8, scope: !3370)
!3435 = !DILocation(line: 255, column: 37, scope: !3370)
!3436 = !DILocation(line: 255, column: 6, scope: !3370)
!3437 = !DILocation(line: 256, column: 6, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 256, column: 6)
!3439 = !DILocation(line: 256, column: 6, scope: !3370)
!3440 = !DILocation(line: 257, column: 48, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 256, column: 11)
!3442 = !DILocation(line: 257, column: 3, scope: !3441)
!3443 = !DILocation(line: 258, column: 3, scope: !3441)
!3444 = !DILocation(line: 260, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 260, column: 6)
!3446 = !DILocation(line: 260, column: 6, scope: !3370)
!3447 = !DILocation(line: 263, column: 10, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 260, column: 12)
!3449 = !DILocation(line: 261, column: 3, scope: !3448)
!3450 = !DILocation(line: 264, column: 3, scope: !3448)
!3451 = !DILocation(line: 267, column: 8, scope: !3370)
!3452 = !DILocation(line: 267, column: 2, scope: !3370)
!3453 = !DILocation(line: 268, column: 8, scope: !3370)
!3454 = !DILocation(line: 268, column: 6, scope: !3370)
!3455 = !DILocation(line: 269, column: 9, scope: !3370)
!3456 = !DILocation(line: 269, column: 15, scope: !3370)
!3457 = !DILocation(line: 269, column: 22, scope: !3370)
!3458 = !DILocation(line: 269, column: 8, scope: !3370)
!3459 = !DILocation(line: 269, column: 37, scope: !3370)
!3460 = !DILocation(line: 269, column: 6, scope: !3370)
!3461 = !DILocation(line: 270, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 270, column: 6)
!3463 = !DILocation(line: 270, column: 6, scope: !3370)
!3464 = !DILocation(line: 271, column: 47, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 270, column: 12)
!3466 = !DILocation(line: 271, column: 3, scope: !3465)
!3467 = !DILocation(line: 272, column: 3, scope: !3465)
!3468 = !DILocation(line: 274, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 274, column: 6)
!3470 = !DILocation(line: 274, column: 6, scope: !3370)
!3471 = !DILocation(line: 277, column: 10, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 274, column: 12)
!3473 = !DILocation(line: 275, column: 3, scope: !3472)
!3474 = !DILocation(line: 278, column: 3, scope: !3472)
!3475 = !DILocation(line: 281, column: 8, scope: !3370)
!3476 = !DILocation(line: 281, column: 2, scope: !3370)
!3477 = !DILocation(line: 282, column: 8, scope: !3370)
!3478 = !DILocation(line: 282, column: 6, scope: !3370)
!3479 = !DILocation(line: 283, column: 9, scope: !3370)
!3480 = !DILocation(line: 283, column: 15, scope: !3370)
!3481 = !DILocation(line: 283, column: 22, scope: !3370)
!3482 = !DILocation(line: 283, column: 8, scope: !3370)
!3483 = !DILocation(line: 283, column: 37, scope: !3370)
!3484 = !DILocation(line: 283, column: 6, scope: !3370)
!3485 = !DILocation(line: 284, column: 6, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 284, column: 6)
!3487 = !DILocation(line: 284, column: 6, scope: !3370)
!3488 = !DILocation(line: 285, column: 48, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 284, column: 11)
!3490 = !DILocation(line: 285, column: 3, scope: !3489)
!3491 = !DILocation(line: 286, column: 3, scope: !3489)
!3492 = !DILocation(line: 288, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 288, column: 6)
!3494 = !DILocation(line: 288, column: 6, scope: !3370)
!3495 = !DILocation(line: 291, column: 10, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 288, column: 12)
!3497 = !DILocation(line: 289, column: 3, scope: !3496)
!3498 = !DILocation(line: 292, column: 3, scope: !3496)
!3499 = !DILocation(line: 295, column: 8, scope: !3370)
!3500 = !DILocation(line: 295, column: 2, scope: !3370)
!3501 = !DILocation(line: 296, column: 8, scope: !3370)
!3502 = !DILocation(line: 296, column: 6, scope: !3370)
!3503 = !DILocation(line: 297, column: 9, scope: !3370)
!3504 = !DILocation(line: 297, column: 15, scope: !3370)
!3505 = !DILocation(line: 297, column: 22, scope: !3370)
!3506 = !DILocation(line: 297, column: 8, scope: !3370)
!3507 = !DILocation(line: 297, column: 37, scope: !3370)
!3508 = !DILocation(line: 297, column: 6, scope: !3370)
!3509 = !DILocation(line: 298, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 298, column: 6)
!3511 = !DILocation(line: 298, column: 6, scope: !3370)
!3512 = !DILocation(line: 299, column: 47, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 298, column: 12)
!3514 = !DILocation(line: 299, column: 3, scope: !3513)
!3515 = !DILocation(line: 300, column: 3, scope: !3513)
!3516 = !DILocation(line: 302, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 302, column: 6)
!3518 = !DILocation(line: 302, column: 6, scope: !3370)
!3519 = !DILocation(line: 305, column: 10, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 302, column: 12)
!3521 = !DILocation(line: 303, column: 3, scope: !3520)
!3522 = !DILocation(line: 306, column: 3, scope: !3520)
!3523 = !DILocation(line: 309, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 309, column: 6)
!3525 = !DILocation(line: 309, column: 12, scope: !3524)
!3526 = !DILocation(line: 309, column: 6, scope: !3370)
!3527 = !DILocation(line: 310, column: 3, scope: !3524)
!3528 = !DILocation(line: 310, column: 9, scope: !3524)
!3529 = !DILocation(line: 310, column: 19, scope: !3524)
!3530 = !DILocation(line: 312, column: 2, scope: !3370)
!3531 = !DILocation(line: 313, column: 2, scope: !3370)
!3532 = !DILabel(scope: !3370, name: "bailout", file: !3, line: 314)
!3533 = !DILocation(line: 314, column: 1, scope: !3370)
!3534 = !DILocation(line: 315, column: 8, scope: !3370)
!3535 = !DILocation(line: 315, column: 2, scope: !3370)
!3536 = !DILocation(line: 316, column: 8, scope: !3370)
!3537 = !DILocation(line: 316, column: 2, scope: !3370)
!3538 = !DILocation(line: 318, column: 6, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 318, column: 6)
!3540 = !DILocation(line: 318, column: 12, scope: !3539)
!3541 = !DILocation(line: 318, column: 6, scope: !3370)
!3542 = !DILocation(line: 319, column: 3, scope: !3539)
!3543 = !DILocation(line: 319, column: 9, scope: !3539)
!3544 = !DILocation(line: 319, column: 19, scope: !3539)
!3545 = !DILocation(line: 321, column: 2, scope: !3370)
!3546 = !DILocation(line: 322, column: 1, scope: !3370)
