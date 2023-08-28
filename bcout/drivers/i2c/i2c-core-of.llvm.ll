; ModuleID = '../bcout/drivers/i2c/i2c-core-of.llvm.bc'
source_filename = "drivers/i2c/i2c-core-of.c"
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
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, {}*, {}*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }

@.str = private unnamed_addr constant [34 x i8] c"of_i2c: modalias failure on %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"of_i2c: invalid reg on %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"host-notify\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to create I2C device for %pOF\0A\00", align 1
@i2c_bus_type = external dso_local global %struct.bus_type, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"of_i2c: Failure registering %pOF\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_i2c_get_board_info(%struct.device* %dev, %struct.device_node* %node, %struct.i2c_board_info* %info) #0 !dbg !90 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %info.addr = alloca %struct.i2c_board_info*, align 8
  %addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %tmp = alloca %struct.fwnode_handle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2211, metadata !DIExpression()), !dbg !2212
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2213, metadata !DIExpression()), !dbg !2214
  store %struct.i2c_board_info* %info, %struct.i2c_board_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %info.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2219, metadata !DIExpression()), !dbg !2220
  %0 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2221
  %1 = bitcast %struct.i2c_board_info* %0 to i8*, !dbg !2222
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 80, i1 false), !dbg !2222
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2223
  %3 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2225
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 0, !dbg !2226
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !2225
  %call = call i32 @of_modalias_node(%struct.device_node* %2, i8* %arraydecay, i32 20) #6, !dbg !2227
  %cmp = icmp slt i32 %call, 0, !dbg !2228
  br i1 %cmp, label %if.then, label %if.end, !dbg !2229

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2230
  %5 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2230
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %5) #7, !dbg !2230
  store i32 -22, i32* %retval, align 4, !dbg !2232
  br label %return, !dbg !2232

if.end:                                           ; preds = %entry
  %6 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2233
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %addr) #6, !dbg !2234
  store i32 %call1, i32* %ret, align 4, !dbg !2235
  %7 = load i32, i32* %ret, align 4, !dbg !2236
  %tobool = icmp ne i32 %7, 0, !dbg !2236
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2238

if.then2:                                         ; preds = %if.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2239
  %9 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2239
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %9) #7, !dbg !2239
  %10 = load i32, i32* %ret, align 4, !dbg !2241
  store i32 %10, i32* %retval, align 4, !dbg !2242
  br label %return, !dbg !2242

if.end3:                                          ; preds = %if.end
  %11 = load i32, i32* %addr, align 4, !dbg !2243
  %and = and i32 %11, -2147483648, !dbg !2245
  %tobool4 = icmp ne i32 %and, 0, !dbg !2245
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !2246

if.then5:                                         ; preds = %if.end3
  %12 = load i32, i32* %addr, align 4, !dbg !2247
  %and6 = and i32 %12, 2147483647, !dbg !2247
  store i32 %and6, i32* %addr, align 4, !dbg !2247
  %13 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2249
  %flags = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 1, !dbg !2250
  %14 = load i16, i16* %flags, align 4, !dbg !2251
  %conv = zext i16 %14 to i32, !dbg !2251
  %or = or i32 %conv, 16, !dbg !2251
  %conv7 = trunc i32 %or to i16, !dbg !2251
  store i16 %conv7, i16* %flags, align 4, !dbg !2251
  br label %if.end8, !dbg !2252

if.end8:                                          ; preds = %if.then5, %if.end3
  %15 = load i32, i32* %addr, align 4, !dbg !2253
  %and9 = and i32 %15, 1073741824, !dbg !2255
  %tobool10 = icmp ne i32 %and9, 0, !dbg !2255
  br i1 %tobool10, label %if.then11, label %if.end17, !dbg !2256

if.then11:                                        ; preds = %if.end8
  %16 = load i32, i32* %addr, align 4, !dbg !2257
  %and12 = and i32 %16, -1073741825, !dbg !2257
  store i32 %and12, i32* %addr, align 4, !dbg !2257
  %17 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2259
  %flags13 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 1, !dbg !2260
  %18 = load i16, i16* %flags13, align 4, !dbg !2261
  %conv14 = zext i16 %18 to i32, !dbg !2261
  %or15 = or i32 %conv14, 32, !dbg !2261
  %conv16 = trunc i32 %or15 to i16, !dbg !2261
  store i16 %conv16, i16* %flags13, align 4, !dbg !2261
  br label %if.end17, !dbg !2262

if.end17:                                         ; preds = %if.then11, %if.end8
  %19 = load i32, i32* %addr, align 4, !dbg !2263
  %conv18 = trunc i32 %19 to i16, !dbg !2263
  %20 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2264
  %addr19 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %20, i32 0, i32 2, !dbg !2265
  store i16 %conv18, i16* %addr19, align 2, !dbg !2266
  %21 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2267
  %22 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2268
  %of_node = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 5, !dbg !2269
  store %struct.device_node* %21, %struct.device_node** %of_node, align 8, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !2271, metadata !DIExpression()), !dbg !2273
  %23 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2273
  store %struct.device_node* %23, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !2273
  %24 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !2273
  %tobool20 = icmp ne %struct.device_node* %24, null, !dbg !2273
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !2273

cond.true:                                        ; preds = %if.end17
  %25 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !2273
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 3, !dbg !2273
  br label %cond.end, !dbg !2273

cond.false:                                       ; preds = %if.end17
  br label %cond.end, !dbg !2273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !2273
  store %struct.fwnode_handle* %cond, %struct.fwnode_handle** %tmp, align 8, !dbg !2273
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp, align 8, !dbg !2273
  %27 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2274
  %fwnode21 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %27, i32 0, i32 6, !dbg !2275
  store %struct.fwnode_handle* %26, %struct.fwnode_handle** %fwnode21, align 8, !dbg !2276
  %28 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2277
  %call22 = call zeroext i1 @of_property_read_bool(%struct.device_node* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2279
  br i1 %call22, label %if.then23, label %if.end28, !dbg !2280

if.then23:                                        ; preds = %cond.end
  %29 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2281
  %flags24 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %29, i32 0, i32 1, !dbg !2282
  %30 = load i16, i16* %flags24, align 4, !dbg !2283
  %conv25 = zext i16 %30 to i32, !dbg !2283
  %or26 = or i32 %conv25, 64, !dbg !2283
  %conv27 = trunc i32 %or26 to i16, !dbg !2283
  store i16 %conv27, i16* %flags24, align 4, !dbg !2283
  br label %if.end28, !dbg !2281

if.end28:                                         ; preds = %if.then23, %cond.end
  %31 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2284
  %call29 = call i8* @of_get_property(%struct.device_node* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null) #6, !dbg !2286
  %tobool30 = icmp ne i8* %call29, null, !dbg !2286
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !2287

if.then31:                                        ; preds = %if.end28
  %32 = load %struct.i2c_board_info*, %struct.i2c_board_info** %info.addr, align 8, !dbg !2288
  %flags32 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %32, i32 0, i32 1, !dbg !2289
  %33 = load i16, i16* %flags32, align 4, !dbg !2290
  %conv33 = zext i16 %33 to i32, !dbg !2290
  %or34 = or i32 %conv33, 128, !dbg !2290
  %conv35 = trunc i32 %or34 to i16, !dbg !2290
  store i16 %conv35, i16* %flags32, align 4, !dbg !2290
  br label %if.end36, !dbg !2288

if.end36:                                         ; preds = %if.then31, %if.end28
  store i32 0, i32* %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %if.end36, %if.then2, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !2292
  ret i32 %34, !dbg !2292
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @of_modalias_node(%struct.device_node*, i8*, i32) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2293 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2302, metadata !DIExpression()), !dbg !2303
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2304
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2305
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2306
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #6, !dbg !2307
  ret i32 %call, !dbg !2308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !2309 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2312, metadata !DIExpression()), !dbg !2313
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2316, metadata !DIExpression()), !dbg !2317
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2318
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2319
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #6, !dbg !2320
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2317
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2321
  %tobool = icmp ne %struct.property* %2, null, !dbg !2321
  %3 = zext i1 %tobool to i64, !dbg !2321
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2321
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2321
  ret i1 %tobool1, !dbg !2322
}

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_i2c_register_devices(%struct.i2c_adapter* %adap) #0 !dbg !2323 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %bus = alloca %struct.device_node*, align 8
  %node = alloca %struct.device_node*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata %struct.device_node** %bus, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !2451, metadata !DIExpression()), !dbg !2463
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2464
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2466
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2467
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2467
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2464
  br i1 %tobool, label %if.end, label %if.then, !dbg !2468

if.then:                                          ; preds = %entry
  br label %return, !dbg !2469

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2470
  %dev1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %2, i32 0, i32 9, !dbg !2471
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !2472
  %3 = load %struct.device_node*, %struct.device_node** %of_node2, align 8, !dbg !2472
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2473
  store %struct.device_node* %call, %struct.device_node** %bus, align 8, !dbg !2474
  %4 = load %struct.device_node*, %struct.device_node** %bus, align 8, !dbg !2475
  %tobool3 = icmp ne %struct.device_node* %4, null, !dbg !2475
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !2477

if.then4:                                         ; preds = %if.end
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2478
  %dev5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 9, !dbg !2479
  %of_node6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 23, !dbg !2480
  %6 = load %struct.device_node*, %struct.device_node** %of_node6, align 8, !dbg !2480
  %call7 = call %struct.device_node* @of_node_get(%struct.device_node* %6) #6, !dbg !2481
  store %struct.device_node* %call7, %struct.device_node** %bus, align 8, !dbg !2482
  br label %if.end8, !dbg !2483

if.end8:                                          ; preds = %if.then4, %if.end
  %7 = load %struct.device_node*, %struct.device_node** %bus, align 8, !dbg !2484
  %call9 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %7, %struct.device_node* null) #6, !dbg !2484
  store %struct.device_node* %call9, %struct.device_node** %node, align 8, !dbg !2484
  br label %for.cond, !dbg !2484

for.cond:                                         ; preds = %for.inc, %if.end8
  %8 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2486
  %cmp = icmp ne %struct.device_node* %8, null, !dbg !2486
  br i1 %cmp, label %for.body, label %for.end, !dbg !2484

for.body:                                         ; preds = %for.cond
  %9 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2488
  %call10 = call i32 @of_node_test_and_set_flag(%struct.device_node* %9, i64 3) #6, !dbg !2491
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2491
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2492

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !2493

if.end13:                                         ; preds = %for.body
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2494
  %11 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2495
  %call14 = call %struct.i2c_client* @of_i2c_register_device(%struct.i2c_adapter* %10, %struct.device_node* %11) #6, !dbg !2496
  store %struct.i2c_client* %call14, %struct.i2c_client** %client, align 8, !dbg !2497
  %12 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2498
  %13 = bitcast %struct.i2c_client* %12 to i8*, !dbg !2498
  %call15 = call zeroext i1 @IS_ERR(i8* %13) #6, !dbg !2500
  br i1 %call15, label %if.then16, label %if.end18, !dbg !2501

if.then16:                                        ; preds = %if.end13
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2502
  %dev17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 9, !dbg !2502
  %15 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2502
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %15) #7, !dbg !2502
  %16 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2504
  call void @of_node_clear_flag(%struct.device_node* %16, i64 3) #6, !dbg !2505
  br label %if.end18, !dbg !2506

if.end18:                                         ; preds = %if.then16, %if.end13
  br label %for.inc, !dbg !2507

for.inc:                                          ; preds = %if.end18, %if.then12
  %17 = load %struct.device_node*, %struct.device_node** %bus, align 8, !dbg !2486
  %18 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !2486
  %call19 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %17, %struct.device_node* %18) #6, !dbg !2486
  store %struct.device_node* %call19, %struct.device_node** %node, align 8, !dbg !2486
  br label %for.cond, !dbg !2486, !llvm.loop !2508

for.end:                                          ; preds = %for.cond
  %19 = load %struct.device_node*, %struct.device_node** %bus, align 8, !dbg !2510
  call void @of_node_put(%struct.device_node* %19) #6, !dbg !2511
  br label %return, !dbg !2512

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2512
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !2513 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2518
  ret %struct.device_node* %0, !dbg !2519
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_node_test_and_set_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !2520 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load i64, i64* %flag.addr, align 8, !dbg !2527
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !2528
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !2529
  %call = call zeroext i1 @test_and_set_bit(i64 %0, i64* %_flags) #6, !dbg !2530
  %conv = zext i1 %call to i32, !dbg !2530
  ret i32 %conv, !dbg !2531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.i2c_client* @of_i2c_register_device(%struct.i2c_adapter* %adap, %struct.device_node* %node) #0 !dbg !2532 {
entry:
  %retval = alloca %struct.i2c_client*, align 8
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %info = alloca %struct.i2c_board_info, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %info, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2543, metadata !DIExpression()), !dbg !2544
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2545
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2546
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2547
  %call = call i32 @of_i2c_get_board_info(%struct.device* %dev, %struct.device_node* %1, %struct.i2c_board_info* %info) #6, !dbg !2548
  store i32 %call, i32* %ret, align 4, !dbg !2549
  %2 = load i32, i32* %ret, align 4, !dbg !2550
  %tobool = icmp ne i32 %2, 0, !dbg !2550
  br i1 %tobool, label %if.then, label %if.end, !dbg !2552

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2553
  %conv = sext i32 %3 to i64, !dbg !2553
  %call1 = call i8* @ERR_PTR(i64 %conv) #6, !dbg !2554
  %4 = bitcast i8* %call1 to %struct.i2c_client*, !dbg !2554
  store %struct.i2c_client* %4, %struct.i2c_client** %retval, align 8, !dbg !2555
  br label %return, !dbg !2555

if.end:                                           ; preds = %entry
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2556
  %call2 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %5, %struct.i2c_board_info* %info) #6, !dbg !2557
  store %struct.i2c_client* %call2, %struct.i2c_client** %client, align 8, !dbg !2558
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2559
  %7 = bitcast %struct.i2c_client* %6 to i8*, !dbg !2559
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #6, !dbg !2561
  br i1 %call3, label %if.then4, label %if.end6, !dbg !2562

if.then4:                                         ; preds = %if.end
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2563
  %dev5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 9, !dbg !2563
  %9 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2563
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %9) #7, !dbg !2563
  br label %if.end6, !dbg !2563

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2564
  store %struct.i2c_client* %10, %struct.i2c_client** %retval, align 8, !dbg !2565
  br label %return, !dbg !2565

return:                                           ; preds = %if.end6, %if.then
  %11 = load %struct.i2c_client*, %struct.i2c_client** %retval, align 8, !dbg !2566
  ret %struct.i2c_client* %11, !dbg !2566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2567 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2571, metadata !DIExpression()), !dbg !2572
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2573
  %1 = ptrtoint i8* %0 to i64, !dbg !2573
  %2 = inttoptr i64 %1 to i8*, !dbg !2573
  %3 = ptrtoint i8* %2 to i64, !dbg !2573
  %cmp = icmp uge i64 %3, -4095, !dbg !2573
  %lnot = xor i1 %cmp, true, !dbg !2573
  %lnot1 = xor i1 %lnot, true, !dbg !2573
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2573
  %conv = sext i32 %lnot.ext to i64, !dbg !2573
  %tobool = icmp ne i64 %conv, 0, !dbg !2573
  ret i1 %tobool, !dbg !2574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_clear_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !2575 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  %0 = load i64, i64* %flag.addr, align 8, !dbg !2582
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !2583
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !2584
  call void @clear_bit(i64 %0, i64* %_flags) #6, !dbg !2585
  ret void, !dbg !2586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2587 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2590, metadata !DIExpression()), !dbg !2591
  ret void, !dbg !2592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_client* @of_find_i2c_device_by_node(%struct.device_node* %node) #0 !dbg !2593 {
entry:
  %retval = alloca %struct.i2c_client*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %dev = alloca %struct.device*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !2600, metadata !DIExpression()), !dbg !2601
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2602
  %call = call %struct.device* @bus_find_device_by_of_node(%struct.bus_type* @i2c_bus_type, %struct.device_node* %0) #6, !dbg !2603
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2604
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2605
  %tobool = icmp ne %struct.device* %1, null, !dbg !2605
  br i1 %tobool, label %if.end, label %if.then, !dbg !2607

if.then:                                          ; preds = %entry
  store %struct.i2c_client* null, %struct.i2c_client** %retval, align 8, !dbg !2608
  br label %return, !dbg !2608

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2609
  %call1 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %2) #6, !dbg !2610
  store %struct.i2c_client* %call1, %struct.i2c_client** %client, align 8, !dbg !2611
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2612
  %tobool2 = icmp ne %struct.i2c_client* %3, null, !dbg !2612
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2614

if.then3:                                         ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2615
  call void @put_device(%struct.device* %4) #6, !dbg !2616
  br label %if.end4, !dbg !2616

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2617
  store %struct.i2c_client* %5, %struct.i2c_client** %retval, align 8, !dbg !2618
  br label %return, !dbg !2618

return:                                           ; preds = %if.end4, %if.then
  %6 = load %struct.i2c_client*, %struct.i2c_client** %retval, align 8, !dbg !2619
  ret %struct.i2c_client* %6, !dbg !2619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @bus_find_device_by_of_node(%struct.bus_type* %bus, %struct.device_node* %np) #0 !dbg !2620 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2623, metadata !DIExpression()), !dbg !2624
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2627
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2628
  %2 = bitcast %struct.device_node* %1 to i8*, !dbg !2628
  %call = call %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_of_node) #6, !dbg !2629
  ret %struct.device* %call, !dbg !2630
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %node) #0 !dbg !2631 {
entry:
  %retval = alloca %struct.i2c_adapter*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %dev = alloca %struct.device*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !2638, metadata !DIExpression()), !dbg !2639
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2640
  %1 = bitcast %struct.device_node* %0 to i8*, !dbg !2640
  %call = call %struct.device* @bus_find_device(%struct.bus_type* @i2c_bus_type, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @of_dev_or_parent_node_match) #6, !dbg !2641
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2642
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2643
  %tobool = icmp ne %struct.device* %2, null, !dbg !2643
  br i1 %tobool, label %if.end, label %if.then, !dbg !2645

if.then:                                          ; preds = %entry
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %retval, align 8, !dbg !2646
  br label %return, !dbg !2646

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2647
  %call1 = call %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %3) #6, !dbg !2648
  store %struct.i2c_adapter* %call1, %struct.i2c_adapter** %adapter, align 8, !dbg !2649
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2650
  %tobool2 = icmp ne %struct.i2c_adapter* %4, null, !dbg !2650
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2652

if.then3:                                         ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2653
  call void @put_device(%struct.device* %5) #6, !dbg !2654
  br label %if.end4, !dbg !2654

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2655
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %retval, align 8, !dbg !2656
  br label %return, !dbg !2656

return:                                           ; preds = %if.end4, %if.then
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %retval, align 8, !dbg !2657
  ret %struct.i2c_adapter* %7, !dbg !2657
}

; Function Attrs: noredzone
declare dso_local %struct.device* @bus_find_device(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_dev_or_parent_node_match(%struct.device* %dev, i8* %data) #0 !dbg !2658 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2665
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !2667
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2667
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2668
  %3 = bitcast i8* %2 to %struct.device_node*, !dbg !2668
  %cmp = icmp eq %struct.device_node* %1, %3, !dbg !2669
  br i1 %cmp, label %if.then, label %if.end, !dbg !2670

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2671
  br label %return, !dbg !2671

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2672
  %parent = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 1, !dbg !2674
  %5 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2674
  %tobool = icmp ne %struct.device* %5, null, !dbg !2672
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !2675

if.then1:                                         ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2676
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !2677
  %7 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !2677
  %of_node3 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 23, !dbg !2678
  %8 = load %struct.device_node*, %struct.device_node** %of_node3, align 8, !dbg !2678
  %9 = load i8*, i8** %data.addr, align 8, !dbg !2679
  %10 = bitcast i8* %9 to %struct.device_node*, !dbg !2679
  %cmp4 = icmp eq %struct.device_node* %8, %10, !dbg !2680
  %conv = zext i1 %cmp4 to i32, !dbg !2680
  store i32 %conv, i32* %retval, align 4, !dbg !2681
  br label %return, !dbg !2681

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2682
  br label %return, !dbg !2682

return:                                           ; preds = %if.end5, %if.then1, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2683
  ret i32 %11, !dbg !2683
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_adapter* @i2c_verify_adapter(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node* %node) #0 !dbg !2684 {
entry:
  %retval = alloca %struct.i2c_adapter*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %adapter = alloca %struct.i2c_adapter*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !2687, metadata !DIExpression()), !dbg !2688
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2689
  %call = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %0) #6, !dbg !2690
  store %struct.i2c_adapter* %call, %struct.i2c_adapter** %adapter, align 8, !dbg !2691
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2692
  %tobool = icmp ne %struct.i2c_adapter* %1, null, !dbg !2692
  br i1 %tobool, label %if.end, label %if.then, !dbg !2694

if.then:                                          ; preds = %entry
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %retval, align 8, !dbg !2695
  br label %return, !dbg !2695

if.end:                                           ; preds = %entry
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2696
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %2, i32 0, i32 0, !dbg !2698
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2698
  %call1 = call zeroext i1 @try_module_get(%struct.module* %3) #6, !dbg !2699
  br i1 %call1, label %if.end3, label %if.then2, !dbg !2700

if.then2:                                         ; preds = %if.end
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2701
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 9, !dbg !2703
  call void @put_device(%struct.device* %dev) #6, !dbg !2704
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %adapter, align 8, !dbg !2705
  br label %if.end3, !dbg !2706

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2707
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %retval, align 8, !dbg !2708
  br label %return, !dbg !2708

return:                                           ; preds = %if.end3, %if.then
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %retval, align 8, !dbg !2709
  ret %struct.i2c_adapter* %6, !dbg !2709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !2710 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2714, metadata !DIExpression()), !dbg !2715
  ret i1 true, !dbg !2716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.of_device_id* @i2c_of_match_device(%struct.of_device_id* %matches, %struct.i2c_client* %client) #0 !dbg !2717 {
entry:
  %retval = alloca %struct.of_device_id*, align 8
  %matches.addr = alloca %struct.of_device_id*, align 8
  %client.addr = alloca %struct.i2c_client*, align 8
  %match = alloca %struct.of_device_id*, align 8
  store %struct.of_device_id* %matches, %struct.of_device_id** %matches.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %matches.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %match, metadata !2724, metadata !DIExpression()), !dbg !2725
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2726
  %tobool = icmp ne %struct.i2c_client* %0, null, !dbg !2726
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !2728

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2729
  %tobool1 = icmp ne %struct.of_device_id* %1, null, !dbg !2729
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2730

if.then:                                          ; preds = %land.lhs.true, %entry
  store %struct.of_device_id* null, %struct.of_device_id** %retval, align 8, !dbg !2731
  br label %return, !dbg !2731

if.end:                                           ; preds = %land.lhs.true
  %2 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2732
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2733
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %3, i32 0, i32 4, !dbg !2734
  %call = call %struct.of_device_id* @of_match_device(%struct.of_device_id* %2, %struct.device* %dev) #6, !dbg !2735
  store %struct.of_device_id* %call, %struct.of_device_id** %match, align 8, !dbg !2736
  %4 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !2737
  %tobool2 = icmp ne %struct.of_device_id* %4, null, !dbg !2737
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2739

if.then3:                                         ; preds = %if.end
  %5 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !2740
  store %struct.of_device_id* %5, %struct.of_device_id** %retval, align 8, !dbg !2741
  br label %return, !dbg !2741

if.end4:                                          ; preds = %if.end
  %6 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2742
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2743
  %call5 = call %struct.of_device_id* @i2c_of_match_device_sysfs(%struct.of_device_id* %6, %struct.i2c_client* %7) #6, !dbg !2744
  store %struct.of_device_id* %call5, %struct.of_device_id** %retval, align 8, !dbg !2745
  br label %return, !dbg !2745

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load %struct.of_device_id*, %struct.of_device_id** %retval, align 8, !dbg !2746
  ret %struct.of_device_id* %8, !dbg !2746
}

; Function Attrs: noredzone
declare dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id*, %struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.of_device_id* @i2c_of_match_device_sysfs(%struct.of_device_id* %matches, %struct.i2c_client* %client) #0 !dbg !2747 {
entry:
  %retval = alloca %struct.of_device_id*, align 8
  %matches.addr = alloca %struct.of_device_id*, align 8
  %client.addr = alloca %struct.i2c_client*, align 8
  %name = alloca i8*, align 8
  store %struct.of_device_id* %matches, %struct.of_device_id** %matches.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %matches.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2752, metadata !DIExpression()), !dbg !2753
  br label %for.cond, !dbg !2754

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2755
  %compatible = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %0, i32 0, i32 2, !dbg !2758
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %compatible, i64 0, i64 0, !dbg !2755
  %1 = load i8, i8* %arrayidx, align 8, !dbg !2755
  %tobool = icmp ne i8 %1, 0, !dbg !2759
  br i1 %tobool, label %for.body, label %for.end, !dbg !2759

for.body:                                         ; preds = %for.cond
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2760
  %name1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 2, !dbg !2763
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name1, i64 0, i64 0, !dbg !2760
  %3 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2764
  %compatible2 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %3, i32 0, i32 2, !dbg !2765
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %compatible2, i64 0, i64 0, !dbg !2764
  %call = call zeroext i1 @sysfs_streq(i8* %arraydecay, i8* %arraydecay3) #6, !dbg !2766
  br i1 %call, label %if.then, label %if.end, !dbg !2767

if.then:                                          ; preds = %for.body
  %4 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2768
  store %struct.of_device_id* %4, %struct.of_device_id** %retval, align 8, !dbg !2769
  br label %return, !dbg !2769

if.end:                                           ; preds = %for.body
  %5 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2770
  %compatible4 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %5, i32 0, i32 2, !dbg !2771
  %arraydecay5 = getelementptr inbounds [128 x i8], [128 x i8]* %compatible4, i64 0, i64 0, !dbg !2770
  %call6 = call i8* @strchr(i8* %arraydecay5, i32 44) #6, !dbg !2772
  store i8* %call6, i8** %name, align 8, !dbg !2773
  %6 = load i8*, i8** %name, align 8, !dbg !2774
  %tobool7 = icmp ne i8* %6, null, !dbg !2774
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !2776

if.then8:                                         ; preds = %if.end
  %7 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2777
  %compatible9 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %7, i32 0, i32 2, !dbg !2778
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %compatible9, i64 0, i64 0, !dbg !2777
  store i8* %arraydecay10, i8** %name, align 8, !dbg !2779
  br label %if.end11, !dbg !2780

if.else:                                          ; preds = %if.end
  %8 = load i8*, i8** %name, align 8, !dbg !2781
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !2781
  store i8* %incdec.ptr, i8** %name, align 8, !dbg !2781
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2782
  %name12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2, !dbg !2784
  %arraydecay13 = getelementptr inbounds [20 x i8], [20 x i8]* %name12, i64 0, i64 0, !dbg !2782
  %10 = load i8*, i8** %name, align 8, !dbg !2785
  %call14 = call zeroext i1 @sysfs_streq(i8* %arraydecay13, i8* %10) #6, !dbg !2786
  br i1 %call14, label %if.then15, label %if.end16, !dbg !2787

if.then15:                                        ; preds = %if.end11
  %11 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2788
  store %struct.of_device_id* %11, %struct.of_device_id** %retval, align 8, !dbg !2789
  br label %return, !dbg !2789

if.end16:                                         ; preds = %if.end11
  br label %for.inc, !dbg !2790

for.inc:                                          ; preds = %if.end16
  %12 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !2791
  %incdec.ptr17 = getelementptr %struct.of_device_id, %struct.of_device_id* %12, i32 1, !dbg !2791
  store %struct.of_device_id* %incdec.ptr17, %struct.of_device_id** %matches.addr, align 8, !dbg !2791
  br label %for.cond, !dbg !2792, !llvm.loop !2793

for.end:                                          ; preds = %for.cond
  store %struct.of_device_id* null, %struct.of_device_id** %retval, align 8, !dbg !2795
  br label %return, !dbg !2795

return:                                           ; preds = %for.end, %if.then15, %if.then
  %13 = load %struct.of_device_id*, %struct.of_device_id** %retval, align 8, !dbg !2796
  ret %struct.of_device_id* %13, !dbg !2796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !2797 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2810
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2811
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !2812
  %3 = load i64, i64* %sz.addr, align 8, !dbg !2813
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #6, !dbg !2814
  store i32 %call, i32* %ret, align 4, !dbg !2809
  %4 = load i32, i32* %ret, align 4, !dbg !2815
  %cmp = icmp sge i32 %4, 0, !dbg !2817
  br i1 %cmp, label %if.then, label %if.else, !dbg !2818

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2820
  store i32 %5, i32* %retval, align 4, !dbg !2821
  br label %return, !dbg !2821

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2822
  ret i32 %6, !dbg !2822
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !2823 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2829, metadata !DIExpression()), !dbg !2832
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2834, metadata !DIExpression()), !dbg !2835
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !2836, metadata !DIExpression()), !dbg !2838
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2839, metadata !DIExpression()), !dbg !2847
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2849, metadata !DIExpression()), !dbg !2850
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2855
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2856
  %div = sdiv i64 %1, 64, !dbg !2856
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2857
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2855
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2858
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2859
  %conv.i = trunc i64 %4 to i32, !dbg !2859
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !2860
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2861
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2861
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !2861
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2862
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2863
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !2838
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !2838
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #9, !dbg !2838, !srcloc !2864
  store i8 %11, i8* %c.i, align 1, !dbg !2838
  %12 = load i8, i8* %c.i, align 1, !dbg !2838
  %tobool.i = trunc i8 %12 to i1, !dbg !2838
  %frombool.i = zext i1 %tobool.i to i8, !dbg !2838
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !2838
  %13 = load i8, i8* %tmp.i, align 1, !dbg !2838
  %tobool1.i = trunc i8 %13 to i1, !dbg !2838
  ret i1 %tobool1.i, !dbg !2865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2866 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  ret i1 true, !dbg !2874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2875 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2879, metadata !DIExpression()), !dbg !2880
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2883, metadata !DIExpression()), !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2886 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  %0 = load i64, i64* %error.addr, align 8, !dbg !2891
  %1 = inttoptr i64 %0 to i8*, !dbg !2892
  ret i8* %1, !dbg !2893
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !2894 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2897, metadata !DIExpression()), !dbg !2899
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2901, metadata !DIExpression()), !dbg !2902
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2903, metadata !DIExpression()), !dbg !2905
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2907, metadata !DIExpression()), !dbg !2908
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2913
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2914
  %div = sdiv i64 %1, 64, !dbg !2914
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2915
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2913
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2916
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2917
  %conv.i = trunc i64 %4 to i32, !dbg !2917
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !2918
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2919
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2919
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !2919
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2920
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2921
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2922
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !2924
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2925

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2926
  %12 = bitcast i64* %11 to i8*, !dbg !2926
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2926
  %shr.i = ashr i64 %13, 3, !dbg !2926
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2926
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2928
  %and.i = and i64 %14, 7, !dbg !2928
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2928
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2928
  %neg.i = xor i32 %shl.i, -1, !dbg !2929
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !2930, !srcloc !2931
  br label %arch_clear_bit.exit, !dbg !2932

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2933
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2935
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !2936, !srcloc !2937
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2938
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local i32 @device_match_of_node(%struct.device*, i8*) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @sysfs_streq(i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !76, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/i2c/i2c-core-of.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !62, !71}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !16, line: 26, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !22, line: 44, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !28, line: 343, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !35, line: 524, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !35, line: 502, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !49, line: 76, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!51 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !63, line: 19, baseType: !5, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!69 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!70 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 10, baseType: !5, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!76 = !{!77, !78, !79, !82}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !{i32 7, !"Dwarf Version", i32 4}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"Code Model", i32 2}
!89 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!90 = distinct !DISubprogram(name: "of_i2c_get_board_info", scope: !1, file: !1, line: 22, type: !91, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !94, !1899, !2155}
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !96)
!96 = !{!97, !1600, !1601, !1604, !1605, !1656, !1753, !1754, !1755, !1756, !1757, !1766, !1871, !1884, !2080, !2081, !2085, !2087, !2088, !2089, !2093, !2099, !2100, !2103, !2104, !2105, !2108, !2109, !2110, !2111, !2143, !2144, !2145, !2148, !2151, !2152, !2153, !2154}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !95, file: !28, line: 462, baseType: !98, size: 512)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !99, line: 64, size: 512, elements: !100)
!99 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !104, !111, !113, !173, !1436, !1590, !1595, !1596, !1597, !1598, !1599}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 65, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !98, file: !99, line: 66, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !106, line: 178, size: 128, elements: !107)
!106 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !106, line: 179, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !106, line: 179, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 67, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !98, file: !99, line: 68, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !99, line: 192, size: 704, elements: !116)
!116 = !{!117, !118, !134, !135}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !99, line: 193, baseType: !105, size: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !115, file: !99, line: 194, baseType: !119, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !120, line: 83, baseType: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !120, line: 71, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 72, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 72, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !124, file: !120, line: 73, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !120, line: 20, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !127, file: !120, line: 21, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 25, elements: !133)
!133 = !{}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !115, file: !99, line: 195, baseType: !98, size: 512, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !115, file: !99, line: 196, baseType: !136, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !99, line: 156, size: 192, elements: !139)
!139 = !{!140, !145, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !138, file: !99, line: 157, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!93, !114, !112}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !99, line: 158, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!102, !114, !112}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !138, file: !99, line: 159, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!93, !114, !112, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !99, line: 148, size: 20736, elements: !157)
!157 = !{!158, !163, !167, !168, !172}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !156, file: !99, line: 149, baseType: !159, size: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 192, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !156, file: !99, line: 150, baseType: !164, size: 4096, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 4096, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !156, file: !99, line: 151, baseType: !93, size: 32, offset: 4288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !99, line: 152, baseType: !169, size: 16384, offset: 4320)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16384, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2048)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !156, file: !99, line: 153, baseType: !93, size: 32, offset: 20704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !98, file: !99, line: 69, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !99, line: 138, size: 448, elements: !176)
!176 = !{!177, !181, !209, !211, !1384, !1415, !1419}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !175, file: !99, line: 139, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !112}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !175, file: !99, line: 140, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !185, line: 230, size: 128, elements: !186)
!185 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !202}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !184, file: !185, line: 231, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !112, !195, !160}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !106, line: 60, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !193, line: 73, baseType: !194)
!193 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !193, line: 15, baseType: !84)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !185, line: 30, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !185, line: 31, baseType: !102, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !196, file: !185, line: 32, baseType: !200, size: 16, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !106, line: 19, baseType: !201)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !184, file: !185, line: 232, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!191, !112, !195, !102, !206}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 55, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !193, line: 72, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !193, line: 16, baseType: !78)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !175, file: !99, line: 141, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !175, file: !99, line: 142, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !185, line: 84, size: 320, elements: !216)
!216 = !{!217, !218, !222, !1381, !1382}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !185, line: 85, baseType: !102, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !215, file: !185, line: 86, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!200, !112, !195, !93}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !215, file: !185, line: 88, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!200, !112, !226, !93}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !185, line: 168, size: 448, elements: !228)
!228 = !{!229, !230, !231, !232, !242, !243}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !227, file: !185, line: 169, baseType: !196, size: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !227, file: !185, line: 170, baseType: !206, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !227, file: !185, line: 171, baseType: !77, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !227, file: !185, line: 172, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!191, !236, !112, !226, !160, !239, !206}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !238, line: 526, flags: DIFlagFwdDecl)
!238 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !106, line: 46, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !193, line: 88, baseType: !241)
!241 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !227, file: !185, line: 174, baseType: !233, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !227, file: !185, line: 176, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!93, !236, !112, !226, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !249, line: 305, size: 1472, elements: !250)
!249 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !252, !253, !254, !255, !263, !264, !1355, !1361, !1362, !1367, !1368, !1371, !1375, !1376, !1377, !1378, !1379}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !248, file: !249, line: 308, baseType: !78, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !248, file: !249, line: 309, baseType: !78, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !248, file: !249, line: 313, baseType: !247, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !248, file: !249, line: 313, baseType: !247, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !248, file: !249, line: 315, baseType: !256, size: 192, align: 64, offset: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !257, line: 24, size: 192, align: 64, elements: !258)
!257 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!258 = !{!259, !260, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !256, file: !257, line: 25, baseType: !78, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !256, file: !257, line: 26, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !256, file: !257, line: 27, baseType: !261, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !248, file: !249, line: 323, baseType: !78, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !248, file: !249, line: 327, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !249, line: 388, size: 7296, elements: !267)
!267 = !{!268, !1351}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !249, line: 389, baseType: !269, size: 7296)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !249, line: 389, size: 7296, elements: !270)
!270 = !{!271, !272, !276, !282, !286, !287, !288, !289, !290, !298, !303, !304, !305, !306, !315, !316, !317, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !352, !360, !363, !411, !412, !1321, !1322, !1325, !1329, !1330, !1333, !1334, !1335, !1338, !1350}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !269, file: !249, line: 390, baseType: !247, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !269, file: !249, line: 391, baseType: !273, size: 64, offset: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !257, line: 31, size: 64, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !273, file: !257, line: 32, baseType: !261, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !269, file: !249, line: 392, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !278, line: 23, baseType: !279)
!278 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !280, line: 31, baseType: !281)
!280 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!281 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !269, file: !249, line: 394, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!78, !236, !78, !78, !78, !78}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !269, file: !249, line: 398, baseType: !78, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !269, file: !249, line: 399, baseType: !78, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !269, file: !249, line: 405, baseType: !78, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !269, file: !249, line: 406, baseType: !78, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !269, file: !249, line: 407, baseType: !291, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !238, line: 286, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 286, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !293, file: !238, line: 286, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !297, line: 18, baseType: !78)
!297 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !269, file: !249, line: 416, baseType: !299, size: 32, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !106, line: 168, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 166, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !300, file: !106, line: 167, baseType: !93, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !269, file: !249, line: 428, baseType: !299, size: 32, offset: 608)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !269, file: !249, line: 437, baseType: !299, size: 32, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !269, file: !249, line: 447, baseType: !299, size: 32, offset: 672)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !269, file: !249, line: 450, baseType: !307, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !308, line: 13, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !106, line: 175, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 173, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !310, file: !106, line: 174, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !278, line: 22, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !280, line: 30, baseType: !241)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !269, file: !249, line: 452, baseType: !93, size: 32, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !269, file: !249, line: 454, baseType: !119, offset: 800)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !269, file: !249, line: 457, baseType: !318, size: 256, offset: 832)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !319, line: 35, size: 256, elements: !320)
!319 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !322, !323, !325}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !318, file: !319, line: 36, baseType: !307, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !318, file: !319, line: 42, baseType: !307, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !318, file: !319, line: 46, baseType: !324, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !120, line: 29, baseType: !127)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !318, file: !319, line: 47, baseType: !105, size: 128, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !269, file: !249, line: 459, baseType: !105, size: 128, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !269, file: !249, line: 466, baseType: !78, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !269, file: !249, line: 467, baseType: !78, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !269, file: !249, line: 469, baseType: !78, size: 64, offset: 1344)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !269, file: !249, line: 470, baseType: !78, size: 64, offset: 1408)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !269, file: !249, line: 471, baseType: !309, size: 64, offset: 1472)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !269, file: !249, line: 472, baseType: !78, size: 64, offset: 1536)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !269, file: !249, line: 473, baseType: !78, size: 64, offset: 1600)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !269, file: !249, line: 474, baseType: !78, size: 64, offset: 1664)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !269, file: !249, line: 475, baseType: !78, size: 64, offset: 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !269, file: !249, line: 477, baseType: !119, offset: 1792)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !269, file: !249, line: 478, baseType: !78, size: 64, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !269, file: !249, line: 478, baseType: !78, size: 64, offset: 1856)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !269, file: !249, line: 478, baseType: !78, size: 64, offset: 1920)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !269, file: !249, line: 478, baseType: !78, size: 64, offset: 1984)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !269, file: !249, line: 479, baseType: !78, size: 64, offset: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !269, file: !249, line: 479, baseType: !78, size: 64, offset: 2112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !269, file: !249, line: 479, baseType: !78, size: 64, offset: 2176)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !269, file: !249, line: 480, baseType: !78, size: 64, offset: 2240)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !269, file: !249, line: 480, baseType: !78, size: 64, offset: 2304)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !269, file: !249, line: 480, baseType: !78, size: 64, offset: 2368)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !269, file: !249, line: 480, baseType: !78, size: 64, offset: 2432)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !269, file: !249, line: 482, baseType: !349, size: 2816, offset: 2496)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2816, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 44)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !269, file: !249, line: 488, baseType: !353, size: 256, offset: 5312)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !354, line: 60, size: 256, elements: !355)
!354 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !353, file: !354, line: 61, baseType: !357, size: 256)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 4)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !269, file: !249, line: 490, baseType: !361, size: 64, offset: 5568)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !249, line: 490, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !269, file: !249, line: 493, baseType: !364, size: 896, offset: 5632)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !365, line: 53, baseType: !366)
!365 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 13, size: 896, elements: !367)
!367 = !{!368, !369, !370, !371, !374, !375, !382, !383, !403, !404, !407}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !366, file: !365, line: 18, baseType: !277, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !366, file: !365, line: 28, baseType: !309, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !366, file: !365, line: 31, baseType: !318, size: 256, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !366, file: !365, line: 32, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !365, line: 32, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !366, file: !365, line: 37, baseType: !201, size: 16, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !366, file: !365, line: 40, baseType: !376, size: 192, offset: 512)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !377, line: 53, size: 192, elements: !378)
!377 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !376, file: !377, line: 54, baseType: !307, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !376, file: !377, line: 55, baseType: !119, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !376, file: !377, line: 59, baseType: !105, size: 128, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !366, file: !365, line: 41, baseType: !77, size: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !366, file: !365, line: 42, baseType: !384, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !387, line: 13, size: 896, elements: !388)
!387 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !386, file: !387, line: 14, baseType: !77, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !386, file: !387, line: 15, baseType: !78, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !386, file: !387, line: 17, baseType: !78, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !386, file: !387, line: 17, baseType: !78, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !386, file: !387, line: 19, baseType: !84, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !386, file: !387, line: 21, baseType: !84, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !386, file: !387, line: 22, baseType: !84, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !386, file: !387, line: 23, baseType: !84, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !386, file: !387, line: 24, baseType: !84, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !386, file: !387, line: 25, baseType: !84, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !386, file: !387, line: 26, baseType: !84, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !386, file: !387, line: 27, baseType: !84, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !386, file: !387, line: 28, baseType: !84, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !386, file: !387, line: 29, baseType: !84, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !366, file: !365, line: 44, baseType: !299, size: 32, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !366, file: !365, line: 50, baseType: !405, size: 16, offset: 864)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !278, line: 19, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !280, line: 24, baseType: !201)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !366, file: !365, line: 51, baseType: !408, size: 16, offset: 880)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !278, line: 18, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !280, line: 23, baseType: !410)
!410 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !249, line: 495, baseType: !78, size: 64, offset: 6528)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !269, file: !249, line: 497, baseType: !413, size: 64, offset: 6592)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !249, line: 381, size: 384, elements: !415)
!415 = !{!416, !417, !1320}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !414, file: !249, line: 382, baseType: !299, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !414, file: !249, line: 383, baseType: !418, size: 128, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !249, line: 376, size: 128, elements: !419)
!419 = !{!420, !1318}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !418, file: !249, line: 377, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !423, line: 640, size: 48640, elements: !424)
!423 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !433, !434, !435, !441, !442, !443, !444, !445, !446, !447, !448, !452, !470, !481, !576, !577, !578, !589, !590, !592, !593, !594, !595, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !674, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !730, !732, !733, !734, !746, !748, !749, !750, !751, !752, !758, !759, !760, !761, !762, !763, !764, !776, !781, !785, !786, !787, !790, !794, !797, !800, !803, !806, !809, !812, !815, !821, !822, !823, !829, !830, !831, !832, !833, !842, !843, !844, !845, !846, !851, !852, !853, !856, !857, !860, !863, !866, !869, !872, !875, !876, !956, !959, !962, !963, !966, !967, !968, !974, !975, !976, !989, !990, !991, !1003, !1008, !1011, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !422, file: !423, line: 646, baseType: !426, size: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !427, line: 56, size: 128, elements: !428)
!427 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !427, line: 57, baseType: !78, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !426, file: !427, line: 58, baseType: !431, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !278, line: 21, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !280, line: 27, baseType: !5)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !422, file: !423, line: 649, baseType: !83, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !422, file: !423, line: 657, baseType: !77, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !422, file: !423, line: 658, baseType: !436, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !437, line: 113, baseType: !438)
!437 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !437, line: 111, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !438, file: !437, line: 112, baseType: !299, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !423, line: 660, baseType: !5, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !422, file: !423, line: 661, baseType: !5, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !422, file: !423, line: 684, baseType: !93, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !422, file: !423, line: 686, baseType: !93, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !422, file: !423, line: 687, baseType: !93, size: 32, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !422, file: !423, line: 688, baseType: !93, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !422, file: !423, line: 689, baseType: !5, size: 32, offset: 480)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !422, file: !423, line: 691, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !423, line: 691, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !422, file: !423, line: 692, baseType: !453, size: 832, offset: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !423, line: 451, size: 832, elements: !454)
!454 = !{!455, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !453, file: !423, line: 453, baseType: !456, size: 128)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !423, line: 325, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !456, file: !423, line: 326, baseType: !78, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !456, file: !423, line: 327, baseType: !431, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !453, file: !423, line: 454, baseType: !256, size: 192, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !453, file: !423, line: 455, baseType: !105, size: 128, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !453, file: !423, line: 456, baseType: !5, size: 32, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !453, file: !423, line: 458, baseType: !277, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !453, file: !423, line: 459, baseType: !277, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !453, file: !423, line: 460, baseType: !277, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !453, file: !423, line: 461, baseType: !277, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !453, file: !423, line: 463, baseType: !277, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !453, file: !423, line: 465, baseType: !469, offset: 832)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !423, line: 415, elements: !133)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !422, file: !423, line: 693, baseType: !471, size: 384, offset: 1408)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !423, line: 489, size: 384, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !471, file: !423, line: 490, baseType: !105, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !471, file: !423, line: 491, baseType: !78, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !471, file: !423, line: 492, baseType: !78, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !471, file: !423, line: 493, baseType: !5, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !423, line: 494, baseType: !201, size: 16, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !471, file: !423, line: 495, baseType: !201, size: 16, offset: 304)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !471, file: !423, line: 497, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !422, file: !423, line: 697, baseType: !482, size: 1792, offset: 1792)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !423, line: 507, size: 1792, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !573, !574}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !423, line: 508, baseType: !256, size: 192, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !482, file: !423, line: 515, baseType: !277, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !482, file: !423, line: 516, baseType: !277, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !482, file: !423, line: 517, baseType: !277, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !482, file: !423, line: 518, baseType: !277, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !482, file: !423, line: 519, baseType: !277, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !482, file: !423, line: 526, baseType: !313, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !482, file: !423, line: 527, baseType: !277, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !423, line: 528, baseType: !5, size: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !482, file: !423, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !482, file: !423, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !482, file: !423, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !482, file: !423, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !482, file: !423, line: 563, baseType: !498, size: 512, offset: 704)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !499)
!499 = !{!500, !508, !509, !514, !566, !570, !571, !572}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !4, line: 119, baseType: !501, size: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !502, line: 9, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !502, line: 10, baseType: !256, size: 192, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !501, file: !502, line: 11, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !507, line: 29, baseType: !313)
!507 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !498, file: !4, line: 120, baseType: !506, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !498, file: !4, line: 121, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!3, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !498, file: !4, line: 122, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !517)
!517 = !{!518, !538, !539, !542, !552, !553, !561, !565}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !516, file: !4, line: 160, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !4, line: 215, baseType: !324)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !520, file: !4, line: 216, baseType: !5, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !520, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !520, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !520, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !520, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !520, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !520, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !520, file: !4, line: 233, baseType: !506, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !520, file: !4, line: 234, baseType: !513, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !520, file: !4, line: 235, baseType: !506, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !520, file: !4, line: 236, baseType: !513, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !520, file: !4, line: 237, baseType: !535, size: 4096, offset: 512)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 4096, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !516, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !516, file: !4, line: 162, baseType: !540, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !106, line: 27, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !193, line: 96, baseType: !93)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !516, file: !4, line: 163, baseType: !543, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !544, line: 276, baseType: !545)
!544 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !544, line: 276, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !545, file: !544, line: 276, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !544, line: 70, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !544, line: 65, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !549, file: !544, line: 66, baseType: !5, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !516, file: !4, line: 164, baseType: !513, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !516, file: !4, line: 165, baseType: !554, size: 128, offset: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !502, line: 14, size: 128, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !554, file: !502, line: 15, baseType: !557, size: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !257, line: 125, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !557, file: !257, line: 126, baseType: !273, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !557, file: !257, line: 127, baseType: !261, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !516, file: !4, line: 166, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!506}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !516, file: !4, line: 167, baseType: !506, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !498, file: !4, line: 123, baseType: !567, size: 8, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !278, line: 17, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !280, line: 21, baseType: !569)
!569 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !498, file: !4, line: 124, baseType: !567, size: 8, offset: 456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !498, file: !4, line: 125, baseType: !567, size: 8, offset: 464)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !498, file: !4, line: 126, baseType: !567, size: 8, offset: 472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !482, file: !423, line: 572, baseType: !498, size: 512, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !482, file: !423, line: 580, baseType: !575, size: 64, offset: 1728)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !422, file: !423, line: 721, baseType: !5, size: 32, offset: 3584)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !422, file: !423, line: 722, baseType: !93, size: 32, offset: 3616)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !422, file: !423, line: 723, baseType: !579, size: 64, offset: 3648)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !582, line: 17, baseType: !583)
!582 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !582, line: 17, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !583, file: !582, line: 17, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 1)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !422, file: !423, line: 724, baseType: !581, size: 64, offset: 3712)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !422, file: !423, line: 749, baseType: !591, offset: 3776)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !423, line: 290, elements: !133)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !422, file: !423, line: 751, baseType: !105, size: 128, offset: 3776)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !422, file: !423, line: 757, baseType: !265, size: 64, offset: 3904)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !422, file: !423, line: 758, baseType: !265, size: 64, offset: 3968)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !422, file: !423, line: 761, baseType: !596, size: 320, offset: 4032)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !354, line: 34, size: 320, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !596, file: !354, line: 35, baseType: !277, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !596, file: !354, line: 36, baseType: !600, size: 256, offset: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 256, elements: !358)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !422, file: !423, line: 766, baseType: !93, size: 32, offset: 4352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !422, file: !423, line: 767, baseType: !93, size: 32, offset: 4384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !422, file: !423, line: 768, baseType: !93, size: 32, offset: 4416)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !422, file: !423, line: 770, baseType: !93, size: 32, offset: 4448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !422, file: !423, line: 772, baseType: !78, size: 64, offset: 4480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !422, file: !423, line: 775, baseType: !5, size: 32, offset: 4544)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !422, file: !423, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !422, file: !423, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !422, file: !423, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !422, file: !423, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !422, file: !423, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !422, file: !423, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !422, file: !423, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !422, file: !423, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !422, file: !423, line: 831, baseType: !78, size: 64, offset: 4672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !422, file: !423, line: 833, baseType: !617, size: 384, offset: 4736)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !618)
!618 = !{!619, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !617, file: !10, line: 26, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!84, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !10, line: 27, baseType: !625, size: 320, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !10, line: 27, size: 320, elements: !626)
!626 = !{!627, !637, !664}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !625, file: !10, line: 36, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !10, line: 29, size: 320, elements: !629)
!629 = !{!630, !632, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !628, file: !10, line: 30, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !10, line: 31, baseType: !431, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !10, line: 32, baseType: !431, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !628, file: !10, line: 33, baseType: !431, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !628, file: !10, line: 34, baseType: !277, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !628, file: !10, line: 35, baseType: !631, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !625, file: !10, line: 46, baseType: !638, size: 192)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !10, line: 38, size: 192, elements: !639)
!639 = !{!640, !641, !642, !663}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !638, file: !10, line: 39, baseType: !540, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !10, line: 41, baseType: !643, size: 64, offset: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !10, line: 41, size: 64, elements: !644)
!644 = !{!645, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !643, file: !10, line: 42, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !648, line: 7, size: 128, elements: !649)
!648 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !647, file: !648, line: 8, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !193, line: 93, baseType: !241)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !647, file: !648, line: 9, baseType: !241, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !643, file: !10, line: 43, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !656, line: 7, size: 64, elements: !657)
!656 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!657 = !{!658, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !655, file: !656, line: 8, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !656, line: 5, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !278, line: 20, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !280, line: 26, baseType: !93)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !655, file: !656, line: 9, baseType: !660, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !638, file: !10, line: 45, baseType: !277, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !625, file: !10, line: 54, baseType: !665, size: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !10, line: 48, size: 256, elements: !666)
!666 = !{!667, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !665, file: !10, line: 49, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !665, file: !10, line: 50, baseType: !93, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !665, file: !10, line: 51, baseType: !93, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !10, line: 52, baseType: !78, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !10, line: 53, baseType: !78, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !422, file: !423, line: 835, baseType: !675, size: 32, offset: 5120)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !106, line: 22, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !193, line: 28, baseType: !93)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !422, file: !423, line: 836, baseType: !675, size: 32, offset: 5152)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !422, file: !423, line: 840, baseType: !78, size: 64, offset: 5184)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !422, file: !423, line: 849, baseType: !421, size: 64, offset: 5248)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !422, file: !423, line: 852, baseType: !421, size: 64, offset: 5312)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !422, file: !423, line: 857, baseType: !105, size: 128, offset: 5376)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !422, file: !423, line: 858, baseType: !105, size: 128, offset: 5504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !422, file: !423, line: 859, baseType: !421, size: 64, offset: 5632)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !422, file: !423, line: 867, baseType: !105, size: 128, offset: 5696)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !422, file: !423, line: 868, baseType: !105, size: 128, offset: 5824)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !422, file: !423, line: 871, baseType: !687, size: 64, offset: 5952)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !689, line: 59, size: 768, elements: !690)
!689 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !692, !693, !694, !705, !706, !713, !722}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 61, baseType: !436, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !688, file: !689, line: 62, baseType: !5, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !689, line: 63, baseType: !119, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !688, file: !689, line: 65, baseType: !695, size: 256, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !358)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !106, line: 182, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !106, line: 183, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !106, line: 186, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !106, line: 187, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !700, file: !106, line: 187, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !688, file: !689, line: 66, baseType: !696, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !688, file: !689, line: 68, baseType: !707, size: 128, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !708, line: 40, baseType: !709)
!708 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !708, line: 36, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !708, line: 37, baseType: !119)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !709, file: !708, line: 38, baseType: !105, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !689, line: 69, baseType: !714, size: 128, align: 64, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !106, line: 216, size: 128, align: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !106, line: 217, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !714, file: !106, line: 218, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !688, file: !689, line: 70, baseType: !723, size: 128, offset: 640)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 128, elements: !587)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !689, line: 54, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !724, file: !689, line: 55, baseType: !93, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !724, file: !689, line: 56, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !689, line: 56, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !422, file: !423, line: 872, baseType: !731, size: 512, offset: 6016)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 512, elements: !358)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !422, file: !423, line: 873, baseType: !105, size: 128, offset: 6528)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !422, file: !423, line: 874, baseType: !105, size: 128, offset: 6656)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !422, file: !423, line: 876, baseType: !735, size: 64, offset: 6784)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !737, line: 26, size: 192, elements: !738)
!737 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !736, file: !737, line: 27, baseType: !5, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !736, file: !737, line: 28, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !742, line: 43, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 44, baseType: !324)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !741, file: !742, line: 45, baseType: !105, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !422, file: !423, line: 879, baseType: !747, size: 64, offset: 6848)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !422, file: !423, line: 882, baseType: !747, size: 64, offset: 6912)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !422, file: !423, line: 884, baseType: !277, size: 64, offset: 6976)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !422, file: !423, line: 885, baseType: !277, size: 64, offset: 7040)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !422, file: !423, line: 890, baseType: !277, size: 64, offset: 7104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !422, file: !423, line: 891, baseType: !753, size: 128, offset: 7168)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !423, line: 242, size: 128, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !753, file: !423, line: 244, baseType: !277, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !753, file: !423, line: 245, baseType: !277, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !423, line: 246, baseType: !324, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !422, file: !423, line: 900, baseType: !78, size: 64, offset: 7296)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !422, file: !423, line: 901, baseType: !78, size: 64, offset: 7360)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !422, file: !423, line: 904, baseType: !277, size: 64, offset: 7424)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !422, file: !423, line: 907, baseType: !277, size: 64, offset: 7488)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !422, file: !423, line: 910, baseType: !78, size: 64, offset: 7552)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !422, file: !423, line: 911, baseType: !78, size: 64, offset: 7616)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !422, file: !423, line: 914, baseType: !765, size: 640, offset: 7680)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !766, line: 123, size: 640, elements: !767)
!766 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !774, !775}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !765, file: !766, line: 124, baseType: !769, size: 576)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 576, elements: !161)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !766, line: 108, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !770, file: !766, line: 109, baseType: !277, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !770, file: !766, line: 110, baseType: !554, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !765, file: !766, line: 125, baseType: !5, size: 32, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !765, file: !766, line: 126, baseType: !5, size: 32, offset: 608)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !422, file: !423, line: 917, baseType: !777, size: 192, offset: 8320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !766, line: 134, size: 192, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !777, file: !766, line: 135, baseType: !714, size: 128, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !777, file: !766, line: 136, baseType: !5, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !422, file: !423, line: 923, baseType: !782, size: 64, offset: 8512)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !423, line: 923, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !422, file: !423, line: 926, baseType: !782, size: 64, offset: 8576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !422, file: !423, line: 929, baseType: !782, size: 64, offset: 8640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !422, file: !423, line: 933, baseType: !788, size: 64, offset: 8704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !423, line: 933, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !422, file: !423, line: 943, baseType: !791, size: 128, offset: 8768)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 16)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !422, file: !423, line: 945, baseType: !795, size: 64, offset: 8896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !423, line: 49, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !422, file: !423, line: 956, baseType: !798, size: 64, offset: 8960)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !423, line: 45, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !422, file: !423, line: 959, baseType: !801, size: 64, offset: 9024)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !423, line: 959, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !422, file: !423, line: 962, baseType: !804, size: 64, offset: 9088)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !423, line: 66, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !422, file: !423, line: 966, baseType: !807, size: 64, offset: 9152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !423, line: 50, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !422, file: !423, line: 969, baseType: !810, size: 64, offset: 9216)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !766, line: 223, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !422, file: !423, line: 970, baseType: !813, size: 64, offset: 9280)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !423, line: 62, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !422, file: !423, line: 971, baseType: !816, size: 64, offset: 9344)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !817, line: 25, baseType: !818)
!817 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !817, line: 23, size: 64, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !818, file: !817, line: 24, baseType: !586, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !422, file: !423, line: 972, baseType: !816, size: 64, offset: 9408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !422, file: !423, line: 974, baseType: !816, size: 64, offset: 9472)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !422, file: !423, line: 975, baseType: !824, size: 192, offset: 9536)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !825, line: 30, size: 192, elements: !826)
!825 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !824, file: !825, line: 31, baseType: !105, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !824, file: !825, line: 32, baseType: !816, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !422, file: !423, line: 976, baseType: !78, size: 64, offset: 9728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !422, file: !423, line: 977, baseType: !206, size: 64, offset: 9792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !422, file: !423, line: 978, baseType: !5, size: 32, offset: 9856)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !422, file: !423, line: 980, baseType: !717, size: 64, offset: 9920)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !422, file: !423, line: 989, baseType: !834, size: 128, offset: 9984)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !835, line: 35, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !834, file: !835, line: 36, baseType: !93, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !834, file: !835, line: 37, baseType: !299, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !834, file: !835, line: 38, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !835, line: 23, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !422, file: !423, line: 992, baseType: !277, size: 64, offset: 10112)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !422, file: !423, line: 993, baseType: !277, size: 64, offset: 10176)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !422, file: !423, line: 996, baseType: !119, offset: 10240)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !422, file: !423, line: 999, baseType: !324, offset: 10240)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !422, file: !423, line: 1001, baseType: !847, size: 64, offset: 10240)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !423, line: 636, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !423, line: 637, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !422, file: !423, line: 1005, baseType: !557, size: 128, offset: 10304)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !422, file: !423, line: 1007, baseType: !421, size: 64, offset: 10432)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !422, file: !423, line: 1009, baseType: !854, size: 64, offset: 10496)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !423, line: 1009, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !422, file: !423, line: 1043, baseType: !77, size: 64, offset: 10560)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !422, file: !423, line: 1046, baseType: !858, size: 64, offset: 10624)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !423, line: 41, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !422, file: !423, line: 1050, baseType: !861, size: 64, offset: 10688)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !423, line: 42, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !422, file: !423, line: 1054, baseType: !864, size: 64, offset: 10752)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !423, line: 55, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !422, file: !423, line: 1056, baseType: !867, size: 64, offset: 10816)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !423, line: 40, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !422, file: !423, line: 1058, baseType: !870, size: 64, offset: 10880)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !423, line: 47, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !422, file: !423, line: 1061, baseType: !873, size: 64, offset: 10944)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !423, line: 43, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !422, file: !423, line: 1064, baseType: !78, size: 64, offset: 11008)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !422, file: !423, line: 1065, baseType: !877, size: 64, offset: 11072)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !825, line: 14, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !825, line: 12, size: 384, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !825, line: 13, baseType: !882, size: 384)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !825, line: 13, size: 384, elements: !883)
!883 = !{!884, !885, !886, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !882, file: !825, line: 13, baseType: !93, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !882, file: !825, line: 13, baseType: !93, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !882, file: !825, line: 13, baseType: !93, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !882, file: !825, line: 13, baseType: !888, size: 256, offset: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !889, line: 32, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !897, !910, !916, !925, !945, !950}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !888, file: !889, line: 37, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 34, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !892, file: !889, line: 35, baseType: !676, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !892, file: !889, line: 36, baseType: !896, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !193, line: 49, baseType: !5)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !888, file: !889, line: 45, baseType: !898, size: 192)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 40, size: 192, elements: !899)
!899 = !{!900, !902, !903, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !898, file: !889, line: 41, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !193, line: 95, baseType: !93)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !898, file: !889, line: 42, baseType: !93, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !898, file: !889, line: 43, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !889, line: 11, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !889, line: 8, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !905, file: !889, line: 9, baseType: !93, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !905, file: !889, line: 10, baseType: !77, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !898, file: !889, line: 44, baseType: !93, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !888, file: !889, line: 52, baseType: !911, size: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 48, size: 128, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !889, line: 49, baseType: !676, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !889, line: 50, baseType: !896, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !911, file: !889, line: 51, baseType: !904, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !888, file: !889, line: 61, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 55, size: 256, elements: !918)
!918 = !{!919, !920, !921, !922, !924}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !917, file: !889, line: 56, baseType: !676, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !917, file: !889, line: 57, baseType: !896, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !917, file: !889, line: 58, baseType: !93, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !917, file: !889, line: 59, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !193, line: 94, baseType: !194)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !917, file: !889, line: 60, baseType: !923, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !888, file: !889, line: 95, baseType: !926, size: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 64, size: 256, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !926, file: !889, line: 65, baseType: !77, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !889, line: 77, baseType: !930, size: 192, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !889, line: 77, size: 192, elements: !931)
!931 = !{!932, !933, !940}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !930, file: !889, line: 82, baseType: !410, size: 16)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !930, file: !889, line: 88, baseType: !934, size: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !889, line: 84, size: 192, elements: !935)
!935 = !{!936, !938, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !934, file: !889, line: 85, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !934, file: !889, line: 86, baseType: !77, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !934, file: !889, line: 87, baseType: !77, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !930, file: !889, line: 93, baseType: !941, size: 96)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !889, line: 90, size: 96, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !941, file: !889, line: 91, baseType: !937, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !941, file: !889, line: 92, baseType: !432, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !888, file: !889, line: 101, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 98, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !946, file: !889, line: 99, baseType: !84, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !946, file: !889, line: 100, baseType: !93, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !888, file: !889, line: 108, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 104, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !951, file: !889, line: 105, baseType: !77, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !951, file: !889, line: 106, baseType: !93, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !951, file: !889, line: 107, baseType: !5, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !422, file: !423, line: 1067, baseType: !957, offset: 11136)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !958, line: 12, elements: !133)
!958 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !422, file: !423, line: 1099, baseType: !960, size: 64, offset: 11136)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !423, line: 56, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !422, file: !423, line: 1103, baseType: !105, size: 128, offset: 11200)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !422, file: !423, line: 1104, baseType: !964, size: 64, offset: 11328)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !423, line: 46, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !422, file: !423, line: 1105, baseType: !376, size: 192, offset: 11392)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !422, file: !423, line: 1106, baseType: !5, size: 32, offset: 11584)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !422, file: !423, line: 1109, baseType: !969, size: 128, offset: 11648)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 128, elements: !972)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !423, line: 51, flags: DIFlagFwdDecl)
!972 = !{!973}
!973 = !DISubrange(count: 2)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !422, file: !423, line: 1110, baseType: !376, size: 192, offset: 11776)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !422, file: !423, line: 1111, baseType: !105, size: 128, offset: 11968)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !422, file: !423, line: 1173, baseType: !977, size: 64, offset: 12096)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !979, line: 62, size: 256, align: 256, elements: !980)
!979 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!980 = !{!981, !982, !983, !988}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !978, file: !979, line: 75, baseType: !432, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !978, file: !979, line: 90, baseType: !432, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !978, file: !979, line: 124, baseType: !984, size: 64, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !979, line: 109, size: 64, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !984, file: !979, line: 110, baseType: !279, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !984, file: !979, line: 112, baseType: !279, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 144, baseType: !432, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !422, file: !423, line: 1174, baseType: !431, size: 32, offset: 12160)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !422, file: !423, line: 1179, baseType: !78, size: 64, offset: 12224)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !422, file: !423, line: 1182, baseType: !992, size: 128, offset: 12288)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !354, line: 76, size: 128, elements: !993)
!993 = !{!994, !999, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !992, file: !354, line: 85, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !996, line: 7, size: 64, elements: !997)
!996 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !995, file: !996, line: 12, baseType: !583, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !992, file: !354, line: 88, baseType: !1000, size: 8, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !106, line: 30, baseType: !1001)
!1001 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !992, file: !354, line: 95, baseType: !1000, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !423, line: 1184, baseType: !1004, size: 128, offset: 12416)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !423, line: 1184, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1004, file: !423, line: 1185, baseType: !436, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1004, file: !423, line: 1186, baseType: !714, size: 128, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !422, file: !423, line: 1190, baseType: !1009, size: 64, offset: 12544)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !423, line: 53, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !422, file: !423, line: 1192, baseType: !1012, size: 128, offset: 12608)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !354, line: 64, size: 128, elements: !1013)
!1013 = !{!1014, !1107, !1108}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1012, file: !354, line: 65, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !249, line: 68, size: 512, align: 128, elements: !1017)
!1017 = !{!1018, !1019, !1099, !1106}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !249, line: 69, baseType: !78, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !249, line: 77, baseType: !1020, size: 320, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !249, line: 77, size: 320, elements: !1021)
!1021 = !{!1022, !1031, !1036, !1064, !1072, !1078, !1091, !1098}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 78, baseType: !1023, size: 320)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 78, size: 320, elements: !1024)
!1024 = !{!1025, !1026, !1029, !1030}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1023, file: !249, line: 84, baseType: !105, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1023, file: !249, line: 86, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !249, line: 26, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1023, file: !249, line: 87, baseType: !78, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1023, file: !249, line: 94, baseType: !78, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 96, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 96, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1032, file: !249, line: 101, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !106, line: 143, baseType: !277)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 103, baseType: !1037, size: 320)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 103, size: 320, elements: !1038)
!1038 = !{!1039, !1049, !1052, !1053}
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !249, line: 104, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !249, line: 104, size: 128, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1040, file: !249, line: 105, baseType: !105, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !249, line: 106, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !249, line: 106, size: 128, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1044, file: !249, line: 107, baseType: !1015, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1044, file: !249, line: 109, baseType: !93, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1044, file: !249, line: 110, baseType: !93, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1037, file: !249, line: 117, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !249, line: 117, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1037, file: !249, line: 119, baseType: !77, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !249, line: 120, baseType: !1054, size: 64, offset: 256)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !249, line: 120, size: 64, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1054, file: !249, line: 121, baseType: !77, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1054, file: !249, line: 122, baseType: !78, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !249, line: 123, baseType: !1059, size: 32)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !249, line: 123, size: 32, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1059, file: !249, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1059, file: !249, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1059, file: !249, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 130, baseType: !1065, size: 192)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 130, size: 192, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1065, file: !249, line: 131, baseType: !78, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1065, file: !249, line: 134, baseType: !569, size: 8, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1065, file: !249, line: 135, baseType: !569, size: 8, offset: 72)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1065, file: !249, line: 136, baseType: !299, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1065, file: !249, line: 137, baseType: !5, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 139, baseType: !1073, size: 256)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 139, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1073, file: !249, line: 140, baseType: !78, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1073, file: !249, line: 141, baseType: !299, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1073, file: !249, line: 143, baseType: !105, size: 128, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 145, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 145, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1084, !1085, !1090}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1079, file: !249, line: 146, baseType: !78, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1079, file: !249, line: 147, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !238, line: 509, baseType: !1015)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1079, file: !249, line: 148, baseType: !78, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !249, line: 149, baseType: !1086, size: 64, offset: 192)
!1086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !249, line: 149, size: 64, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1086, file: !249, line: 150, baseType: !265, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1086, file: !249, line: 151, baseType: !299, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1079, file: !249, line: 156, baseType: !119, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 159, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 159, size: 128, elements: !1093)
!1093 = !{!1094, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1092, file: !249, line: 161, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !249, line: 161, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1092, file: !249, line: 162, baseType: !77, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1020, file: !249, line: 176, baseType: !714, size: 128, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !249, line: 179, baseType: !1100, size: 32, offset: 384)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !249, line: 179, size: 32, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1100, file: !249, line: 184, baseType: !299, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1100, file: !249, line: 192, baseType: !5, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1100, file: !249, line: 194, baseType: !5, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1100, file: !249, line: 195, baseType: !93, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1016, file: !249, line: 199, baseType: !299, size: 32, offset: 416)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1012, file: !354, line: 67, baseType: !432, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1012, file: !354, line: 68, baseType: !432, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !422, file: !423, line: 1206, baseType: !93, size: 32, offset: 12736)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !422, file: !423, line: 1207, baseType: !93, size: 32, offset: 12768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !422, file: !423, line: 1209, baseType: !78, size: 64, offset: 12800)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !422, file: !423, line: 1219, baseType: !277, size: 64, offset: 12864)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !422, file: !423, line: 1220, baseType: !277, size: 64, offset: 12928)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !422, file: !423, line: 1317, baseType: !93, size: 32, offset: 12992)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !422, file: !423, line: 1319, baseType: !421, size: 64, offset: 13056)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !422, file: !423, line: 1322, baseType: !1117, size: 64, offset: 13120)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1119, line: 56, size: 512, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1127, !1128, !1130}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !1119, line: 57, baseType: !1117, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1118, file: !1119, line: 58, baseType: !77, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1118, file: !1119, line: 59, baseType: !78, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 60, baseType: !78, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1118, file: !1119, line: 61, baseType: !1126, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1118, file: !1119, line: 62, baseType: !5, size: 32, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1118, file: !1119, line: 63, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !106, line: 153, baseType: !277)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1118, file: !1119, line: 64, baseType: !1131, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !422, file: !423, line: 1326, baseType: !436, size: 32, offset: 13184)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !422, file: !423, line: 1342, baseType: !77, size: 64, offset: 13248)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !422, file: !423, line: 1343, baseType: !279, size: 64, offset: 13312)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !422, file: !423, line: 1344, baseType: !277, size: 64, offset: 13376)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !422, file: !423, line: 1345, baseType: !279, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !422, file: !423, line: 1346, baseType: !279, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !422, file: !423, line: 1347, baseType: !279, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !422, file: !423, line: 1348, baseType: !714, size: 128, align: 64, offset: 13504)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !422, file: !423, line: 1358, baseType: !1142, size: 34816, offset: 13824)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1143, line: 485, size: 34816, elements: !1144)
!1143 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1174, !1175, !1176, !1177, !1178, !1179, !1182, !1183, !1184}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1142, file: !1143, line: 487, baseType: !1146, size: 192)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 192, elements: !161)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1148, line: 16, size: 64, elements: !1149)
!1148 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1147, file: !1148, line: 17, baseType: !405, size: 16)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1147, file: !1148, line: 18, baseType: !405, size: 16, offset: 16)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1147, file: !1148, line: 19, baseType: !405, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1147, file: !1148, line: 19, baseType: !405, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1147, file: !1148, line: 19, baseType: !405, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1147, file: !1148, line: 19, baseType: !405, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1147, file: !1148, line: 19, baseType: !405, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1147, file: !1148, line: 20, baseType: !405, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1147, file: !1148, line: 20, baseType: !405, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1147, file: !1148, line: 20, baseType: !405, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1147, file: !1148, line: 20, baseType: !405, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1147, file: !1148, line: 20, baseType: !405, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1147, file: !1148, line: 20, baseType: !405, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1142, file: !1143, line: 491, baseType: !78, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1142, file: !1143, line: 495, baseType: !201, size: 16, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1142, file: !1143, line: 496, baseType: !201, size: 16, offset: 272)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1142, file: !1143, line: 497, baseType: !201, size: 16, offset: 288)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1142, file: !1143, line: 498, baseType: !201, size: 16, offset: 304)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1142, file: !1143, line: 502, baseType: !78, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1142, file: !1143, line: 503, baseType: !78, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1142, file: !1143, line: 514, baseType: !1171, size: 256, offset: 448)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 256, elements: !358)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1143, line: 483, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1142, file: !1143, line: 516, baseType: !78, size: 64, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1142, file: !1143, line: 518, baseType: !78, size: 64, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1142, file: !1143, line: 520, baseType: !78, size: 64, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1142, file: !1143, line: 521, baseType: !78, size: 64, offset: 896)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1142, file: !1143, line: 522, baseType: !78, size: 64, offset: 960)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1142, file: !1143, line: 528, baseType: !1180, size: 64, offset: 1024)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1143, line: 10, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1142, file: !1143, line: 535, baseType: !78, size: 64, offset: 1088)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1142, file: !1143, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1142, file: !1143, line: 540, baseType: !1185, size: 33280, offset: 1536)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1186, line: 317, size: 33280, elements: !1187)
!1186 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1185, file: !1186, line: 330, baseType: !5, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1185, file: !1186, line: 337, baseType: !78, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1185, file: !1186, line: 348, baseType: !1191, size: 32768, offset: 512)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1186, line: 304, size: 32768, elements: !1192)
!1192 = !{!1193, !1208, !1247, !1297, !1314}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1191, file: !1186, line: 305, baseType: !1194, size: 896)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1186, line: 12, size: 896, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1207}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1194, file: !1186, line: 13, baseType: !431, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1194, file: !1186, line: 14, baseType: !431, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1194, file: !1186, line: 15, baseType: !431, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1194, file: !1186, line: 16, baseType: !431, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1194, file: !1186, line: 17, baseType: !431, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1194, file: !1186, line: 18, baseType: !431, size: 32, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1194, file: !1186, line: 19, baseType: !431, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1194, file: !1186, line: 22, baseType: !1204, size: 640, offset: 224)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 640, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 20)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1194, file: !1186, line: 25, baseType: !431, size: 32, offset: 864)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1191, file: !1186, line: 306, baseType: !1209, size: 4096, align: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1186, line: 34, size: 4096, align: 128, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1230, !1231, !1232, !1236, !1238, !1242}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1209, file: !1186, line: 35, baseType: !405, size: 16)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1209, file: !1186, line: 36, baseType: !405, size: 16, offset: 16)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1209, file: !1186, line: 37, baseType: !405, size: 16, offset: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1209, file: !1186, line: 38, baseType: !405, size: 16, offset: 48)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1186, line: 39, baseType: !1216, size: 128, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1186, line: 39, size: 128, elements: !1217)
!1217 = !{!1218, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1186, line: 40, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1186, line: 40, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1219, file: !1186, line: 41, baseType: !277, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1219, file: !1186, line: 42, baseType: !277, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1186, line: 44, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1186, line: 44, size: 128, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1224, file: !1186, line: 45, baseType: !431, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1224, file: !1186, line: 46, baseType: !431, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1224, file: !1186, line: 47, baseType: !431, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1224, file: !1186, line: 48, baseType: !431, size: 32, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1209, file: !1186, line: 51, baseType: !431, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1209, file: !1186, line: 52, baseType: !431, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1209, file: !1186, line: 55, baseType: !1233, size: 1024, offset: 256)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1024, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1209, file: !1186, line: 58, baseType: !1237, size: 2048, offset: 1280)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 2048, elements: !165)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1209, file: !1186, line: 60, baseType: !1239, size: 384, offset: 3328)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 12)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1186, line: 62, baseType: !1243, size: 384, offset: 3712)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1186, line: 62, size: 384, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1243, file: !1186, line: 63, baseType: !1239, size: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1243, file: !1186, line: 64, baseType: !1239, size: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1191, file: !1186, line: 307, baseType: !1248, size: 1088)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1186, line: 79, size: 1088, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1296}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1248, file: !1186, line: 80, baseType: !431, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1248, file: !1186, line: 81, baseType: !431, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1248, file: !1186, line: 82, baseType: !431, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1248, file: !1186, line: 83, baseType: !431, size: 32, offset: 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1248, file: !1186, line: 84, baseType: !431, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1248, file: !1186, line: 85, baseType: !431, size: 32, offset: 160)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1248, file: !1186, line: 86, baseType: !431, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1248, file: !1186, line: 88, baseType: !1204, size: 640, offset: 224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1248, file: !1186, line: 89, baseType: !567, size: 8, offset: 864)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1248, file: !1186, line: 90, baseType: !567, size: 8, offset: 872)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1248, file: !1186, line: 91, baseType: !567, size: 8, offset: 880)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1248, file: !1186, line: 92, baseType: !567, size: 8, offset: 888)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1248, file: !1186, line: 93, baseType: !567, size: 8, offset: 896)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1248, file: !1186, line: 94, baseType: !567, size: 8, offset: 904)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1248, file: !1186, line: 95, baseType: !1265, size: 64, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1267, line: 11, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1266, file: !1267, line: 12, baseType: !84, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1266, file: !1267, line: 13, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1273, line: 56, size: 1344, elements: !1274)
!1273 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1272, file: !1273, line: 61, baseType: !78, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1272, file: !1273, line: 62, baseType: !78, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1272, file: !1273, line: 63, baseType: !78, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1272, file: !1273, line: 64, baseType: !78, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1272, file: !1273, line: 65, baseType: !78, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1272, file: !1273, line: 66, baseType: !78, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1272, file: !1273, line: 68, baseType: !78, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1272, file: !1273, line: 69, baseType: !78, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1272, file: !1273, line: 70, baseType: !78, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1272, file: !1273, line: 71, baseType: !78, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1272, file: !1273, line: 72, baseType: !78, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1272, file: !1273, line: 73, baseType: !78, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1272, file: !1273, line: 74, baseType: !78, size: 64, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1272, file: !1273, line: 75, baseType: !78, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1272, file: !1273, line: 76, baseType: !78, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1272, file: !1273, line: 81, baseType: !78, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1272, file: !1273, line: 83, baseType: !78, size: 64, offset: 1024)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1272, file: !1273, line: 84, baseType: !78, size: 64, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1273, line: 85, baseType: !78, size: 64, offset: 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1272, file: !1273, line: 86, baseType: !78, size: 64, offset: 1216)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1272, file: !1273, line: 87, baseType: !78, size: 64, offset: 1280)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1248, file: !1186, line: 96, baseType: !431, size: 32, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1191, file: !1186, line: 308, baseType: !1298, size: 4608, align: 512)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1186, line: 289, size: 4608, align: 512, elements: !1299)
!1299 = !{!1300, !1301, !1310}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1298, file: !1186, line: 290, baseType: !1209, size: 4096, align: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1298, file: !1186, line: 291, baseType: !1302, size: 512, offset: 4096)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1186, line: 268, size: 512, elements: !1303)
!1303 = !{!1304, !1305, !1306}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1302, file: !1186, line: 269, baseType: !277, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1302, file: !1186, line: 270, baseType: !277, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1302, file: !1186, line: 271, baseType: !1307, size: 384, offset: 128)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 384, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 6)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1298, file: !1186, line: 292, baseType: !1311, offset: 4608)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 0)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1191, file: !1186, line: 309, baseType: !1315, size: 32768)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32768, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 4096)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !249, line: 378, baseType: !1319, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !414, file: !249, line: 384, baseType: !736, size: 192, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !269, file: !249, line: 500, baseType: !119, offset: 6656)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !269, file: !249, line: 501, baseType: !1323, size: 64, offset: 6656)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !249, line: 387, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !269, file: !249, line: 516, baseType: !1326, size: 64, offset: 6720)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1328, line: 18, flags: DIFlagFwdDecl)
!1328 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !269, file: !249, line: 519, baseType: !236, size: 64, offset: 6784)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !269, file: !249, line: 521, baseType: !1331, size: 64, offset: 6848)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !249, line: 521, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !269, file: !249, line: 545, baseType: !299, size: 32, offset: 6912)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !269, file: !249, line: 548, baseType: !1000, size: 8, offset: 6944)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !269, file: !249, line: 550, baseType: !1336, offset: 6952)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1337, line: 142, elements: !133)
!1337 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !269, file: !249, line: 554, baseType: !1339, size: 256, offset: 6976)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1340, line: 102, size: 256, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1339, file: !1340, line: 103, baseType: !307, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1339, file: !1340, line: 104, baseType: !105, size: 128, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1339, file: !1340, line: 105, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1340, line: 21, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !269, file: !249, line: 557, baseType: !431, size: 32, offset: 7232)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !266, file: !249, line: 565, baseType: !1352, offset: 7296)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: -1)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !248, file: !249, line: 333, baseType: !1356, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !238, line: 284, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !238, line: 284, size: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1357, file: !238, line: 284, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !297, line: 19, baseType: !78)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !248, file: !249, line: 334, baseType: !78, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !248, file: !249, line: 343, baseType: !1363, size: 256, offset: 704)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !249, line: 340, size: 256, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1363, file: !249, line: 341, baseType: !256, size: 192, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1363, file: !249, line: 342, baseType: !78, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !248, file: !249, line: 351, baseType: !105, size: 128, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !248, file: !249, line: 353, baseType: !1369, size: 64, offset: 1088)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !249, line: 353, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !248, file: !249, line: 356, baseType: !1372, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !249, line: 356, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !248, file: !249, line: 359, baseType: !78, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !248, file: !249, line: 361, baseType: !236, size: 64, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !248, file: !249, line: 362, baseType: !77, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !248, file: !249, line: 365, baseType: !307, size: 64, offset: 1408)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !248, file: !249, line: 373, baseType: !1380, offset: 1472)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !249, line: 296, elements: !133)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !215, file: !185, line: 90, baseType: !210, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !215, file: !185, line: 91, baseType: !1383, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !175, file: !99, line: 143, baseType: !1385, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1388, !112}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1391)
!1391 = !{!1392, !1393, !1397, !1401, !1407, !1411}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1390, file: !16, line: 40, baseType: !15, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1390, file: !16, line: 41, baseType: !1394, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1000}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1390, file: !16, line: 42, baseType: !1398, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!77}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1390, file: !16, line: 43, baseType: !1402, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1131, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1390, file: !16, line: 44, baseType: !1408, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1131}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1390, file: !16, line: 45, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !77}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !175, file: !99, line: 144, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1131, !112}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !175, file: !99, line: 145, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !112, !1423, !1429}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1328, line: 23, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 21, size: 32, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1425, file: !1328, line: 22, baseType: !1428, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !106, line: 32, baseType: !896)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1328, line: 28, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 26, size: 32, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1431, file: !1328, line: 27, baseType: !1434, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !106, line: 33, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !193, line: 50, baseType: !5)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !98, file: !99, line: 70, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1439, line: 123, size: 1024, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1583, !1584, !1585, !1586, !1587}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1438, file: !1439, line: 124, baseType: !299, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1438, file: !1439, line: 125, baseType: !299, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1438, file: !1439, line: 135, baseType: !1437, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !1439, line: 136, baseType: !102, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1438, file: !1439, line: 138, baseType: !256, size: 192, align: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1438, file: !1439, line: 140, baseType: !1131, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1438, file: !1439, line: 141, baseType: !5, size: 32, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 142, baseType: !1449, size: 256, offset: 512)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 142, size: 256, elements: !1450)
!1450 = !{!1451, !1506, !1510}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1449, file: !1439, line: 143, baseType: !1452, size: 192)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1439, line: 91, size: 192, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1452, file: !1439, line: 92, baseType: !78, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1452, file: !1439, line: 94, baseType: !273, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1452, file: !1439, line: 100, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1439, line: 180, size: 704, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1476, !1477, !1478, !1504, !1505}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1458, file: !1439, line: 182, baseType: !1437, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1458, file: !1439, line: 183, baseType: !5, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1458, file: !1439, line: 186, baseType: !1463, size: 192, offset: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1464, line: 19, size: 192, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1474, !1475}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1463, file: !1464, line: 20, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1468, line: 292, size: 128, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1471, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1467, file: !1468, line: 293, baseType: !119)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1467, file: !1468, line: 295, baseType: !1472, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !106, line: 148, baseType: !5)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1467, file: !1468, line: 296, baseType: !77, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1463, file: !1464, line: 21, baseType: !5, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1463, file: !1464, line: 22, baseType: !5, size: 32, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1458, file: !1439, line: 187, baseType: !431, size: 32, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1458, file: !1439, line: 188, baseType: !431, size: 32, offset: 352)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1458, file: !1439, line: 189, baseType: !1479, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1439, line: 168, size: 320, elements: !1481)
!1481 = !{!1482, !1488, !1492, !1496, !1500}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1480, file: !1439, line: 169, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!93, !1486, !1457}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !238, line: 539, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1480, file: !1439, line: 171, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!93, !1437, !102, !200}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1480, file: !1439, line: 173, baseType: !1493, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!93, !1437}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1480, file: !1439, line: 174, baseType: !1497, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!93, !1437, !1437, !102}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1480, file: !1439, line: 176, baseType: !1501, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!93, !1486, !1437, !1457}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1458, file: !1439, line: 192, baseType: !105, size: 128, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1458, file: !1439, line: 194, baseType: !707, size: 128, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1449, file: !1439, line: 144, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1439, line: 103, size: 64, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1507, file: !1439, line: 104, baseType: !1437, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1449, file: !1439, line: 145, baseType: !1511, size: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1439, line: 107, size: 256, elements: !1512)
!1512 = !{!1513, !1578, !1581, !1582}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1511, file: !1439, line: 108, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1439, line: 217, size: 768, elements: !1517)
!1517 = !{!1518, !1538, !1542, !1546, !1551, !1555, !1559, !1563, !1564, !1565, !1566, !1574}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1516, file: !1439, line: 222, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!93, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1439, line: 197, size: 1088, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1523, file: !1439, line: 199, baseType: !1437, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1523, file: !1439, line: 200, baseType: !236, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1523, file: !1439, line: 201, baseType: !1486, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1523, file: !1439, line: 202, baseType: !77, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1523, file: !1439, line: 205, baseType: !376, size: 192, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1523, file: !1439, line: 206, baseType: !376, size: 192, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1523, file: !1439, line: 207, baseType: !93, size: 32, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1523, file: !1439, line: 208, baseType: !105, size: 128, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1523, file: !1439, line: 209, baseType: !160, size: 64, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1523, file: !1439, line: 211, baseType: !206, size: 64, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1523, file: !1439, line: 212, baseType: !1000, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1523, file: !1439, line: 213, baseType: !1000, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1523, file: !1439, line: 214, baseType: !1372, size: 64, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1516, file: !1439, line: 223, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1522}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1516, file: !1439, line: 236, baseType: !1543, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!93, !1486, !77}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1516, file: !1439, line: 238, baseType: !1547, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!77, !1486, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1516, file: !1439, line: 239, baseType: !1552, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!77, !1486, !77, !1550}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1516, file: !1439, line: 240, baseType: !1556, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1486, !77}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1516, file: !1439, line: 242, baseType: !1560, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!191, !1522, !160, !206, !239}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1516, file: !1439, line: 252, baseType: !206, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1516, file: !1439, line: 259, baseType: !1000, size: 8, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1516, file: !1439, line: 260, baseType: !1560, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1516, file: !1439, line: 263, baseType: !1567, size: 64, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1570, !1522, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1571, line: 52, baseType: !5)
!1571 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1439, line: 27, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1516, file: !1439, line: 266, baseType: !1575, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!93, !1522, !247}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1511, file: !1439, line: 109, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1439, line: 31, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1511, file: !1439, line: 110, baseType: !239, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1511, file: !1439, line: 111, baseType: !1437, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1438, file: !1439, line: 148, baseType: !77, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1438, file: !1439, line: 154, baseType: !277, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !1439, line: 156, baseType: !201, size: 16, offset: 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1438, file: !1439, line: 157, baseType: !200, size: 16, offset: 912)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1438, file: !1439, line: 158, baseType: !1588, size: 64, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1439, line: 32, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !98, file: !99, line: 71, baseType: !1591, size: 32, offset: 448)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1592, line: 19, size: 32, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1591, file: !1592, line: 20, baseType: !436, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !98, file: !99, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !98, file: !99, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !98, file: !99, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !98, file: !99, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !98, file: !99, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !28, line: 463, baseType: !94, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !95, file: !28, line: 465, baseType: !1602, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !95, file: !28, line: 467, baseType: !102, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !28, line: 468, baseType: !1606, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1616, !1621, !1625}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1608, file: !28, line: 88, baseType: !102, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1608, file: !28, line: 89, baseType: !212, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1608, file: !28, line: 90, baseType: !1613, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!93, !94, !155}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1608, file: !28, line: 91, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!160, !94, !1620, !1423, !1429}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1608, file: !28, line: 93, baseType: !1622, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !94}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1608, file: !28, line: 95, baseType: !1626, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1629)
!1629 = !{!1630, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1628, file: !35, line: 279, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!93, !94}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1628, file: !35, line: 280, baseType: !1622, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1628, file: !35, line: 281, baseType: !1631, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1628, file: !35, line: 282, baseType: !1631, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1628, file: !35, line: 283, baseType: !1631, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1628, file: !35, line: 284, baseType: !1631, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1628, file: !35, line: 285, baseType: !1631, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1628, file: !35, line: 286, baseType: !1631, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1628, file: !35, line: 287, baseType: !1631, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1628, file: !35, line: 288, baseType: !1631, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1628, file: !35, line: 289, baseType: !1631, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1628, file: !35, line: 290, baseType: !1631, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1628, file: !35, line: 291, baseType: !1631, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1628, file: !35, line: 292, baseType: !1631, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1628, file: !35, line: 293, baseType: !1631, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1628, file: !35, line: 294, baseType: !1631, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1628, file: !35, line: 295, baseType: !1631, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1628, file: !35, line: 296, baseType: !1631, size: 64, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1628, file: !35, line: 297, baseType: !1631, size: 64, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1628, file: !35, line: 298, baseType: !1631, size: 64, offset: 1216)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1628, file: !35, line: 299, baseType: !1631, size: 64, offset: 1280)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1628, file: !35, line: 300, baseType: !1631, size: 64, offset: 1344)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1628, file: !35, line: 301, baseType: !1631, size: 64, offset: 1408)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !95, file: !28, line: 470, baseType: !1657, size: 64, offset: 768)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1659, line: 82, size: 1408, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1746, !1749, !1752}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1658, file: !1659, line: 83, baseType: !102, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1658, file: !1659, line: 84, baseType: !102, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1658, file: !1659, line: 85, baseType: !94, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1658, file: !1659, line: 86, baseType: !212, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1658, file: !1659, line: 87, baseType: !212, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1658, file: !1659, line: 88, baseType: !212, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1658, file: !1659, line: 90, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!93, !94, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1680, !1681, !1682, !1683, !1697, !1710, !1711, !1712, !1713, !1714, !1722, !1723, !1724, !1725, !1726, !1727}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !22, line: 96, baseType: !102, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1672, file: !22, line: 97, baseType: !1657, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1672, file: !22, line: 99, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1679, line: 76, flags: DIFlagFwdDecl)
!1679 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1672, file: !22, line: 100, baseType: !102, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1672, file: !22, line: 102, baseType: !1000, size: 8, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1672, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1672, file: !22, line: 105, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1687, line: 262, size: 1600, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1691, !1692, !1696}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !1687, line: 263, baseType: !1690, size: 256)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !1234)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1687, line: 264, baseType: !1690, size: 256, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1686, file: !1687, line: 265, baseType: !1693, size: 1024, offset: 512)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1686, file: !1687, line: 266, baseType: !1131, size: 64, offset: 1536)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1672, file: !22, line: 106, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1687, line: 210, size: 256, elements: !1701)
!1701 = !{!1702, !1706, !1708, !1709}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1700, file: !1687, line: 211, baseType: !1703, size: 72)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 72, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 9)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1700, file: !1687, line: 212, baseType: !1707, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1687, line: 14, baseType: !78)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1700, file: !1687, line: 213, baseType: !432, size: 32, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1700, file: !1687, line: 214, baseType: !432, size: 32, offset: 224)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1672, file: !22, line: 108, baseType: !1631, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1672, file: !22, line: 109, baseType: !1622, size: 64, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1672, file: !22, line: 110, baseType: !1631, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1672, file: !22, line: 111, baseType: !1622, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1672, file: !22, line: 112, baseType: !1715, size: 64, offset: 704)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!93, !94, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1719, file: !35, line: 51, baseType: !93, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1672, file: !22, line: 113, baseType: !1631, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1672, file: !22, line: 114, baseType: !212, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1672, file: !22, line: 115, baseType: !212, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1672, file: !22, line: 117, baseType: !1626, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1672, file: !22, line: 118, baseType: !1622, size: 64, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1672, file: !22, line: 120, baseType: !1728, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1658, file: !1659, line: 91, baseType: !1613, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1658, file: !1659, line: 92, baseType: !1631, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1658, file: !1659, line: 93, baseType: !1622, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1658, file: !1659, line: 94, baseType: !1631, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1658, file: !1659, line: 95, baseType: !1622, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1658, file: !1659, line: 97, baseType: !1631, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1658, file: !1659, line: 98, baseType: !1631, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !1659, line: 100, baseType: !1715, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !1659, line: 101, baseType: !1631, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1658, file: !1659, line: 103, baseType: !1631, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1658, file: !1659, line: 105, baseType: !1631, size: 64, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1658, file: !1659, line: 107, baseType: !1626, size: 64, offset: 1152)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1658, file: !1659, line: 109, baseType: !1743, size: 64, offset: 1216)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1659, line: 109, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1658, file: !1659, line: 111, baseType: !1747, size: 64, offset: 1280)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1659, line: 111, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1658, file: !1659, line: 112, baseType: !1750, offset: 1344)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1751, line: 187, elements: !133)
!1751 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1658, file: !1659, line: 114, baseType: !1000, size: 8, offset: 1344)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !95, file: !28, line: 471, baseType: !1671, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !95, file: !28, line: 473, baseType: !77, size: 64, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !95, file: !28, line: 475, baseType: !77, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !95, file: !28, line: 480, baseType: !376, size: 192, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !95, file: !28, line: 484, baseType: !1758, size: 576, offset: 1216)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1758, file: !28, line: 362, baseType: !105, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1758, file: !28, line: 363, baseType: !105, size: 128, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1758, file: !28, line: 364, baseType: !105, size: 128, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1758, file: !28, line: 365, baseType: !105, size: 128, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1758, file: !28, line: 366, baseType: !1000, size: 8, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1758, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !95, file: !28, line: 485, baseType: !1767, size: 2304, offset: 1792)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1864, !1868}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1767, file: !35, line: 566, baseType: !1718, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1767, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1767, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1767, file: !35, line: 569, baseType: !1000, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1767, file: !35, line: 570, baseType: !1000, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1767, file: !35, line: 571, baseType: !1000, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1767, file: !35, line: 572, baseType: !1000, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1767, file: !35, line: 573, baseType: !1000, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1767, file: !35, line: 574, baseType: !1000, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1767, file: !35, line: 575, baseType: !1000, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1767, file: !35, line: 576, baseType: !1000, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1767, file: !35, line: 577, baseType: !431, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !35, line: 578, baseType: !119, offset: 96)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1767, file: !35, line: 580, baseType: !105, size: 128, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1767, file: !35, line: 581, baseType: !736, size: 192, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1767, file: !35, line: 582, baseType: !1785, size: 64, offset: 448)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1787, line: 43, size: 1472, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1796, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1786, file: !1787, line: 44, baseType: !102, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1786, file: !1787, line: 45, baseType: !93, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1786, file: !1787, line: 46, baseType: !105, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !1787, line: 47, baseType: !119, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1786, file: !1787, line: 48, baseType: !1794, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1786, file: !1787, line: 49, baseType: !1797, size: 320, offset: 320)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1798, line: 11, size: 320, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !{!1800, !1801, !1802, !1807}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !1798, line: 16, baseType: !700, size: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1797, file: !1798, line: 17, baseType: !78, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1797, file: !1798, line: 18, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !1798, line: 19, baseType: !431, size: 32, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1786, file: !1787, line: 50, baseType: !78, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1786, file: !1787, line: 51, baseType: !506, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1786, file: !1787, line: 52, baseType: !506, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1786, file: !1787, line: 53, baseType: !506, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1786, file: !1787, line: 54, baseType: !506, size: 64, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1786, file: !1787, line: 55, baseType: !506, size: 64, offset: 960)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1786, file: !1787, line: 56, baseType: !78, size: 64, offset: 1024)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1786, file: !1787, line: 57, baseType: !78, size: 64, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1786, file: !1787, line: 58, baseType: !78, size: 64, offset: 1152)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1786, file: !1787, line: 59, baseType: !78, size: 64, offset: 1216)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1786, file: !1787, line: 60, baseType: !78, size: 64, offset: 1280)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1786, file: !1787, line: 61, baseType: !94, size: 64, offset: 1344)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1786, file: !1787, line: 62, baseType: !1000, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1786, file: !1787, line: 63, baseType: !1000, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1767, file: !35, line: 583, baseType: !1000, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1767, file: !35, line: 584, baseType: !1000, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1767, file: !35, line: 585, baseType: !1000, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1767, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1767, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1767, file: !35, line: 592, baseType: !498, size: 512, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1767, file: !35, line: 593, baseType: !277, size: 64, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1767, file: !35, line: 594, baseType: !1339, size: 256, offset: 1152)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1767, file: !35, line: 595, baseType: !707, size: 128, offset: 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1767, file: !35, line: 596, baseType: !1794, size: 64, offset: 1536)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1767, file: !35, line: 597, baseType: !299, size: 32, offset: 1600)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1767, file: !35, line: 598, baseType: !299, size: 32, offset: 1632)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1767, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1767, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1767, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1767, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1767, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1767, file: !35, line: 604, baseType: !1000, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1767, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1767, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1767, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1767, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1767, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1767, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1767, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1767, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1767, file: !35, line: 613, baseType: !93, size: 32, offset: 1792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1767, file: !35, line: 614, baseType: !93, size: 32, offset: 1824)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1767, file: !35, line: 615, baseType: !277, size: 64, offset: 1856)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1767, file: !35, line: 616, baseType: !277, size: 64, offset: 1920)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1767, file: !35, line: 617, baseType: !277, size: 64, offset: 1984)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1767, file: !35, line: 618, baseType: !277, size: 64, offset: 2048)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1767, file: !35, line: 620, baseType: !1855, size: 64, offset: 2112)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1856, file: !35, line: 537, baseType: !119)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1856, file: !35, line: 538, baseType: !5, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1856, file: !35, line: 540, baseType: !105, size: 128, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1856, file: !35, line: 543, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1767, file: !35, line: 621, baseType: !1865, size: 64, offset: 2176)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !94, !660}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1767, file: !35, line: 622, baseType: !1869, size: 64, offset: 2240)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !95, file: !28, line: 486, baseType: !1872, size: 64, offset: 4096)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1881, !1882, !1883}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1873, file: !35, line: 643, baseType: !1628, size: 1472)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1873, file: !35, line: 644, baseType: !1631, size: 64, offset: 1472)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1873, file: !35, line: 645, baseType: !1878, size: 64, offset: 1536)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !94, !1000}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1873, file: !35, line: 646, baseType: !1631, size: 64, offset: 1600)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1873, file: !35, line: 647, baseType: !1622, size: 64, offset: 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1873, file: !35, line: 648, baseType: !1622, size: 64, offset: 1728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !95, file: !28, line: 493, baseType: !1885, size: 64, offset: 4160)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !49, line: 162, size: 1088, elements: !1887)
!1887 = !{!1888, !1889, !1890, !2064, !2065, !2066, !2067, !2068, !2069, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1886, file: !49, line: 163, baseType: !105, size: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1886, file: !49, line: 164, baseType: !102, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1886, file: !49, line: 165, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !49, line: 105, size: 640, elements: !1894)
!1894 = !{!1895, !2013, !2024, !2029, !2033, !2041, !2045, !2049, !2056, !2060}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1893, file: !49, line: 106, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!93, !1885, !1899, !48}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1901, line: 51, size: 1344, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1906, !1907, !1997, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1900, file: !1901, line: 52, baseType: !102, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1900, file: !1901, line: 53, baseType: !1905, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1901, line: 28, baseType: !431)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1900, file: !1901, line: 54, baseType: !102, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1900, file: !1901, line: 55, baseType: !1908, size: 192, offset: 192)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1909, line: 17, size: 192, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1913, !1996}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1908, file: !1909, line: 18, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1908, file: !1909, line: 19, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1909, line: 110, size: 1152, elements: !1917)
!1917 = !{!1918, !1922, !1926, !1932, !1938, !1942, !1946, !1951, !1955, !1956, !1960, !1964, !1968, !1979, !1980, !1981, !1982, !1992}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1916, file: !1909, line: 111, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1912, !1912}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1916, file: !1909, line: 112, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1912}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1916, file: !1909, line: 113, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1000, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1916, file: !1909, line: 114, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1131, !1930, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1916, file: !1909, line: 116, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1000, !1930, !102}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1916, file: !1909, line: 118, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!93, !1930, !102, !5, !77, !206}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1916, file: !1909, line: 123, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!93, !1930, !102, !1950, !206}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1916, file: !1909, line: 126, baseType: !1952, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!102, !1930}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1916, file: !1909, line: 127, baseType: !1952, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1916, file: !1909, line: 128, baseType: !1957, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1912, !1930}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1916, file: !1909, line: 130, baseType: !1961, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1912, !1930, !1912}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1916, file: !1909, line: 133, baseType: !1965, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1912, !1930, !102}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1916, file: !1909, line: 135, baseType: !1969, size: 64, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!93, !1930, !102, !102, !5, !5, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1909, line: 43, size: 640, elements: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1973, file: !1909, line: 44, baseType: !1912, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1973, file: !1909, line: 45, baseType: !5, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1973, file: !1909, line: 46, baseType: !1978, size: 512, offset: 128)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 512, elements: !536)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1916, file: !1909, line: 140, baseType: !1961, size: 64, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1916, file: !1909, line: 143, baseType: !1957, size: 64, offset: 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1916, file: !1909, line: 145, baseType: !1919, size: 64, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1916, file: !1909, line: 146, baseType: !1983, size: 64, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!93, !1930, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1909, line: 29, size: 128, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1987, file: !1909, line: 30, baseType: !5, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1987, file: !1909, line: 31, baseType: !5, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1987, file: !1909, line: 32, baseType: !1930, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1916, file: !1909, line: 148, baseType: !1993, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!93, !1930, !94}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1908, file: !1909, line: 20, baseType: !94, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1900, file: !1901, line: 57, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1901, line: 31, size: 704, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1999, file: !1901, line: 32, baseType: !160, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1999, file: !1901, line: 33, baseType: !93, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1999, file: !1901, line: 34, baseType: !77, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !1901, line: 35, baseType: !1998, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1999, file: !1901, line: 43, baseType: !227, size: 448, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1900, file: !1901, line: 58, baseType: !1998, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1900, file: !1901, line: 59, baseType: !1899, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1900, file: !1901, line: 60, baseType: !1899, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1900, file: !1901, line: 61, baseType: !1899, size: 64, offset: 640)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1900, file: !1901, line: 63, baseType: !98, size: 512, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1900, file: !1901, line: 65, baseType: !78, size: 64, offset: 1216)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1900, file: !1901, line: 66, baseType: !77, size: 64, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1893, file: !49, line: 108, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!93, !1885, !2017, !48}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !49, line: 63, size: 640, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2018, file: !49, line: 64, baseType: !1912, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2018, file: !49, line: 65, baseType: !93, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2018, file: !49, line: 66, baseType: !2023, size: 512, offset: 96)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 512, elements: !792)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1893, file: !49, line: 110, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!93, !1885, !5, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !106, line: 164, baseType: !78)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1893, file: !49, line: 111, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !1885, !5}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1893, file: !49, line: 112, baseType: !2034, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!93, !1885, !1899, !2037, !5, !2039, !2040}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1893, file: !49, line: 117, baseType: !2042, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!93, !1885, !5, !5, !77}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1893, file: !49, line: 119, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !1885, !5, !5}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1893, file: !49, line: 121, baseType: !2050, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!93, !1885, !2053, !1000}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2055, line: 11, flags: DIFlagFwdDecl)
!2055 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1893, file: !49, line: 122, baseType: !2057, size: 64, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1885, !2053}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1893, file: !49, line: 123, baseType: !2061, size: 64, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!93, !1885, !2017, !2039, !2040}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1886, file: !49, line: 166, baseType: !77, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !49, line: 167, baseType: !5, size: 32, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1886, file: !49, line: 168, baseType: !5, size: 32, offset: 352)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1886, file: !49, line: 171, baseType: !1912, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1886, file: !49, line: 172, baseType: !48, size: 32, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1886, file: !49, line: 173, baseType: !2070, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !49, line: 134, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1886, file: !49, line: 175, baseType: !1885, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1886, file: !49, line: 182, baseType: !2028, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1886, file: !49, line: 183, baseType: !5, size: 32, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1886, file: !49, line: 184, baseType: !5, size: 32, offset: 736)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1886, file: !49, line: 185, baseType: !1467, size: 128, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1886, file: !49, line: 186, baseType: !376, size: 192, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1886, file: !49, line: 187, baseType: !2079, offset: 1088)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !1353)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !95, file: !28, line: 499, baseType: !105, size: 128, offset: 4224)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !95, file: !28, line: 502, baseType: !2082, size: 64, offset: 4352)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !95, file: !28, line: 504, baseType: !2086, size: 64, offset: 4416)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !95, file: !28, line: 505, baseType: !277, size: 64, offset: 4480)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !95, file: !28, line: 510, baseType: !277, size: 64, offset: 4544)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !95, file: !28, line: 511, baseType: !2090, size: 64, offset: 4608)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !95, file: !28, line: 513, baseType: !2094, size: 64, offset: 4672)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2095, file: !28, line: 293, baseType: !5, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2095, file: !28, line: 294, baseType: !78, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !95, file: !28, line: 515, baseType: !105, size: 128, offset: 4736)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !95, file: !28, line: 526, baseType: !2101, offset: 4864)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2102, line: 5, elements: !133)
!2102 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !95, file: !28, line: 528, baseType: !1899, size: 64, offset: 4864)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !95, file: !28, line: 529, baseType: !1912, size: 64, offset: 4928)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !95, file: !28, line: 534, baseType: !2106, size: 32, offset: 4992)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !106, line: 16, baseType: !2107)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !106, line: 13, baseType: !431)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !95, file: !28, line: 535, baseType: !431, size: 32, offset: 5024)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !95, file: !28, line: 537, baseType: !119, offset: 5056)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !95, file: !28, line: 538, baseType: !105, size: 128, offset: 5056)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !95, file: !28, line: 540, baseType: !2112, size: 64, offset: 5184)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2114, line: 54, size: 960, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2126, !2130, !2131, !2132, !2133, !2137, !2141, !2142}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2113, file: !2114, line: 55, baseType: !102, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2113, file: !2114, line: 56, baseType: !1677, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2113, file: !2114, line: 58, baseType: !212, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2113, file: !2114, line: 59, baseType: !212, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2113, file: !2114, line: 60, baseType: !112, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2113, file: !2114, line: 62, baseType: !1613, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2113, file: !2114, line: 63, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!160, !94, !1620}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2113, file: !2114, line: 65, baseType: !2127, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2112}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2113, file: !2114, line: 66, baseType: !1622, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2113, file: !2114, line: 68, baseType: !1631, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2113, file: !2114, line: 70, baseType: !1388, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2113, file: !2114, line: 71, baseType: !2134, size: 64, offset: 704)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!1131, !94}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2113, file: !2114, line: 73, baseType: !2138, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !94, !1423, !1429}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2113, file: !2114, line: 75, baseType: !1626, size: 64, offset: 832)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2113, file: !2114, line: 77, baseType: !1747, size: 64, offset: 896)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !95, file: !28, line: 541, baseType: !212, size: 64, offset: 5248)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !95, file: !28, line: 543, baseType: !1622, size: 64, offset: 5312)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !95, file: !28, line: 544, baseType: !2146, size: 64, offset: 5376)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !95, file: !28, line: 545, baseType: !2149, size: 64, offset: 5440)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !95, file: !28, line: 547, baseType: !1000, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !95, file: !28, line: 548, baseType: !1000, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !95, file: !28, line: 549, baseType: !1000, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !95, file: !28, line: 550, baseType: !1000, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !2157, line: 410, size: 640, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2193, !2209, !2210}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2156, file: !2157, line: 411, baseType: !2160, size: 160)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !1205)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 412, baseType: !201, size: 16, offset: 160)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2156, file: !2157, line: 413, baseType: !201, size: 16, offset: 176)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2156, file: !2157, line: 414, baseType: !102, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2156, file: !2157, line: 415, baseType: !77, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2156, file: !2157, line: 416, baseType: !1899, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2156, file: !2157, line: 417, baseType: !1912, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2156, file: !2157, line: 418, baseType: !2168, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !63, line: 263, size: 256, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2170, file: !63, line: 264, baseType: !102, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2170, file: !63, line: 265, baseType: !206, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2170, file: !63, line: 266, baseType: !1000, size: 8, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2170, file: !63, line: 267, baseType: !62, size: 32, offset: 160)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !63, line: 268, baseType: !2177, size: 64, offset: 192)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !63, line: 268, size: 64, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2177, file: !63, line: 269, baseType: !1131, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2177, file: !63, line: 276, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !63, line: 270, size: 64, elements: !2182)
!2182 = !{!2183, !2185, !2187, !2189, !2191}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2181, file: !63, line: 271, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 64, elements: !536)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2181, file: !63, line: 272, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 64, elements: !358)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2181, file: !63, line: 273, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 64, elements: !972)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2181, file: !63, line: 274, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !587)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2181, file: !63, line: 275, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !587)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2156, file: !2157, line: 419, baseType: !2194, size: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2197, line: 20, size: 512, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2198 = !{!2199, !2201, !2202, !2203, !2204, !2205, !2207, !2208}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2196, file: !2197, line: 21, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !106, line: 158, baseType: !1129)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2196, file: !2197, line: 22, baseType: !2200, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2196, file: !2197, line: 23, baseType: !102, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 24, baseType: !78, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2196, file: !2197, line: 25, baseType: !78, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2196, file: !2197, line: 26, baseType: !2206, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2196, file: !2197, line: 26, baseType: !2206, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2196, file: !2197, line: 26, baseType: !2206, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2156, file: !2157, line: 420, baseType: !5, size: 32, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2156, file: !2157, line: 421, baseType: !93, size: 32, offset: 608)
!2211 = !DILocalVariable(name: "dev", arg: 1, scope: !90, file: !1, line: 22, type: !94)
!2212 = !DILocation(line: 22, column: 42, scope: !90)
!2213 = !DILocalVariable(name: "node", arg: 2, scope: !90, file: !1, line: 22, type: !1899)
!2214 = !DILocation(line: 22, column: 67, scope: !90)
!2215 = !DILocalVariable(name: "info", arg: 3, scope: !90, file: !1, line: 23, type: !2155)
!2216 = !DILocation(line: 23, column: 29, scope: !90)
!2217 = !DILocalVariable(name: "addr", scope: !90, file: !1, line: 25, type: !431)
!2218 = !DILocation(line: 25, column: 6, scope: !90)
!2219 = !DILocalVariable(name: "ret", scope: !90, file: !1, line: 26, type: !93)
!2220 = !DILocation(line: 26, column: 6, scope: !90)
!2221 = !DILocation(line: 28, column: 9, scope: !90)
!2222 = !DILocation(line: 28, column: 2, scope: !90)
!2223 = !DILocation(line: 30, column: 23, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !90, file: !1, line: 30, column: 6)
!2225 = !DILocation(line: 30, column: 29, scope: !2224)
!2226 = !DILocation(line: 30, column: 35, scope: !2224)
!2227 = !DILocation(line: 30, column: 6, scope: !2224)
!2228 = !DILocation(line: 30, column: 61, scope: !2224)
!2229 = !DILocation(line: 30, column: 6, scope: !90)
!2230 = !DILocation(line: 31, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 30, column: 66)
!2232 = !DILocation(line: 32, column: 3, scope: !2231)
!2233 = !DILocation(line: 35, column: 29, scope: !90)
!2234 = !DILocation(line: 35, column: 8, scope: !90)
!2235 = !DILocation(line: 35, column: 6, scope: !90)
!2236 = !DILocation(line: 36, column: 6, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !90, file: !1, line: 36, column: 6)
!2238 = !DILocation(line: 36, column: 6, scope: !90)
!2239 = !DILocation(line: 37, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 36, column: 11)
!2241 = !DILocation(line: 38, column: 10, scope: !2240)
!2242 = !DILocation(line: 38, column: 3, scope: !2240)
!2243 = !DILocation(line: 41, column: 6, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !90, file: !1, line: 41, column: 6)
!2245 = !DILocation(line: 41, column: 11, scope: !2244)
!2246 = !DILocation(line: 41, column: 6, scope: !90)
!2247 = !DILocation(line: 42, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !1, line: 41, column: 34)
!2249 = !DILocation(line: 43, column: 3, scope: !2248)
!2250 = !DILocation(line: 43, column: 9, scope: !2248)
!2251 = !DILocation(line: 43, column: 15, scope: !2248)
!2252 = !DILocation(line: 44, column: 2, scope: !2248)
!2253 = !DILocation(line: 46, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !90, file: !1, line: 46, column: 6)
!2255 = !DILocation(line: 46, column: 11, scope: !2254)
!2256 = !DILocation(line: 46, column: 6, scope: !90)
!2257 = !DILocation(line: 47, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !1, line: 46, column: 36)
!2259 = !DILocation(line: 48, column: 3, scope: !2258)
!2260 = !DILocation(line: 48, column: 9, scope: !2258)
!2261 = !DILocation(line: 48, column: 15, scope: !2258)
!2262 = !DILocation(line: 49, column: 2, scope: !2258)
!2263 = !DILocation(line: 51, column: 15, scope: !90)
!2264 = !DILocation(line: 51, column: 2, scope: !90)
!2265 = !DILocation(line: 51, column: 8, scope: !90)
!2266 = !DILocation(line: 51, column: 13, scope: !90)
!2267 = !DILocation(line: 52, column: 18, scope: !90)
!2268 = !DILocation(line: 52, column: 2, scope: !90)
!2269 = !DILocation(line: 52, column: 8, scope: !90)
!2270 = !DILocation(line: 52, column: 16, scope: !90)
!2271 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !2272, file: !1, line: 53, type: !1899)
!2272 = distinct !DILexicalBlock(scope: !90, file: !1, line: 53, column: 17)
!2273 = !DILocation(line: 53, column: 17, scope: !2272)
!2274 = !DILocation(line: 53, column: 2, scope: !90)
!2275 = !DILocation(line: 53, column: 8, scope: !90)
!2276 = !DILocation(line: 53, column: 15, scope: !90)
!2277 = !DILocation(line: 55, column: 28, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !90, file: !1, line: 55, column: 6)
!2279 = !DILocation(line: 55, column: 6, scope: !2278)
!2280 = !DILocation(line: 55, column: 6, scope: !90)
!2281 = !DILocation(line: 56, column: 3, scope: !2278)
!2282 = !DILocation(line: 56, column: 9, scope: !2278)
!2283 = !DILocation(line: 56, column: 15, scope: !2278)
!2284 = !DILocation(line: 58, column: 22, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !90, file: !1, line: 58, column: 6)
!2286 = !DILocation(line: 58, column: 6, scope: !2285)
!2287 = !DILocation(line: 58, column: 6, scope: !90)
!2288 = !DILocation(line: 59, column: 3, scope: !2285)
!2289 = !DILocation(line: 59, column: 9, scope: !2285)
!2290 = !DILocation(line: 59, column: 15, scope: !2285)
!2291 = !DILocation(line: 61, column: 2, scope: !90)
!2292 = !DILocation(line: 62, column: 1, scope: !90)
!2293 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1901, file: !1901, line: 1214, type: !2294, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!93, !2296, !102, !631}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!2298 = !DILocalVariable(name: "np", arg: 1, scope: !2293, file: !1901, line: 1214, type: !2296)
!2299 = !DILocation(line: 1214, column: 66, scope: !2293)
!2300 = !DILocalVariable(name: "propname", arg: 2, scope: !2293, file: !1901, line: 1215, type: !102)
!2301 = !DILocation(line: 1215, column: 24, scope: !2293)
!2302 = !DILocalVariable(name: "out_value", arg: 3, scope: !2293, file: !1901, line: 1216, type: !631)
!2303 = !DILocation(line: 1216, column: 17, scope: !2293)
!2304 = !DILocation(line: 1218, column: 36, scope: !2293)
!2305 = !DILocation(line: 1218, column: 40, scope: !2293)
!2306 = !DILocation(line: 1218, column: 50, scope: !2293)
!2307 = !DILocation(line: 1218, column: 9, scope: !2293)
!2308 = !DILocation(line: 1218, column: 2, scope: !2293)
!2309 = distinct !DISubprogram(name: "of_property_read_bool", scope: !1901, file: !1901, line: 1192, type: !2310, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!1000, !2296, !102}
!2312 = !DILocalVariable(name: "np", arg: 1, scope: !2309, file: !1901, line: 1192, type: !2296)
!2313 = !DILocation(line: 1192, column: 68, scope: !2309)
!2314 = !DILocalVariable(name: "propname", arg: 2, scope: !2309, file: !1901, line: 1193, type: !102)
!2315 = !DILocation(line: 1193, column: 19, scope: !2309)
!2316 = !DILocalVariable(name: "prop", scope: !2309, file: !1901, line: 1195, type: !1998)
!2317 = !DILocation(line: 1195, column: 19, scope: !2309)
!2318 = !DILocation(line: 1195, column: 43, scope: !2309)
!2319 = !DILocation(line: 1195, column: 47, scope: !2309)
!2320 = !DILocation(line: 1195, column: 26, scope: !2309)
!2321 = !DILocation(line: 1197, column: 9, scope: !2309)
!2322 = !DILocation(line: 1197, column: 2, scope: !2309)
!2323 = distinct !DISubprogram(name: "of_i2c_register_devices", scope: !1, file: !1, line: 85, type: !2324, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !2157, line: 695, size: 7552, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2368, !2369, !2383, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2400, !2401, !2402, !2403, !2433, !2444}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2327, file: !2157, line: 696, baseType: !1677, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2327, file: !2157, line: 697, baseType: !5, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2327, file: !2157, line: 698, baseType: !2332, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !2157, line: 519, size: 320, elements: !2335)
!2335 = !{!2336, !2349, !2350, !2363, !2364}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !2334, file: !2157, line: 529, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!93, !2326, !2340, !93}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2342, line: 69, size: 128, elements: !2343)
!2342 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2341, file: !2342, line: 70, baseType: !406, size: 16)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2341, file: !2342, line: 71, baseType: !406, size: 16, offset: 16)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2341, file: !2342, line: 84, baseType: !406, size: 16, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2341, file: !2342, line: 85, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !2334, file: !2157, line: 531, baseType: !2337, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !2334, file: !2157, line: 533, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!93, !2326, !405, !201, !81, !567, !93, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2342, line: 135, size: 272, elements: !2356)
!2356 = !{!2357, !2358, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2355, file: !2342, line: 136, baseType: !568, size: 8)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2355, file: !2342, line: 137, baseType: !406, size: 16)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2355, file: !2342, line: 138, baseType: !2360, size: 272)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 272, elements: !2361)
!2361 = !{!2362}
!2362 = !DISubrange(count: 34)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !2334, file: !2157, line: 536, baseType: !2351, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !2334, file: !2157, line: 541, baseType: !2365, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!431, !2326}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !2327, file: !2157, line: 699, baseType: !77, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !2327, file: !2157, line: 702, baseType: !2370, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !2157, line: 557, size: 192, elements: !2373)
!2373 = !{!2374, !2378, !2382}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !2372, file: !2157, line: 558, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !2326, !5}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !2372, file: !2157, line: 559, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!93, !2326, !5}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !2372, file: !2157, line: 560, baseType: !2375, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !2327, file: !2157, line: 703, baseType: !2384, size: 192, offset: 320)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !2385, line: 30, size: 192, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2384, file: !2385, line: 31, baseType: !324)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2384, file: !2385, line: 32, baseType: !557, size: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !2385, line: 33, baseType: !421, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !2327, file: !2157, line: 704, baseType: !2384, size: 192, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2327, file: !2157, line: 706, baseType: !93, size: 32, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2327, file: !2157, line: 707, baseType: !93, size: 32, offset: 736)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2327, file: !2157, line: 708, baseType: !95, size: 5568, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !2327, file: !2157, line: 709, baseType: !78, size: 64, offset: 6336)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2327, file: !2157, line: 713, baseType: !93, size: 32, offset: 6400)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2327, file: !2157, line: 714, baseType: !2397, size: 384, offset: 6432)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 384, elements: !2398)
!2398 = !{!2399}
!2399 = !DISubrange(count: 48)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !2327, file: !2157, line: 715, baseType: !736, size: 192, offset: 6848)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !2327, file: !2157, line: 717, baseType: !376, size: 192, offset: 7040)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !2327, file: !2157, line: 718, baseType: !105, size: 128, offset: 7232)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !2327, file: !2157, line: 720, baseType: !2404, size: 64, offset: 7360)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !2157, line: 618, size: 832, elements: !2406)
!2406 = !{!2407, !2411, !2412, !2416, !2417, !2418, !2419, !2421, !2422, !2425, !2426, !2429, !2432}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2405, file: !2157, line: 619, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!93, !2326}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2405, file: !2157, line: 621, baseType: !2408, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2405, file: !2157, line: 622, baseType: !2413, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2326, !93}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2405, file: !2157, line: 623, baseType: !2408, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2405, file: !2157, line: 624, baseType: !2413, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2405, file: !2157, line: 625, baseType: !2408, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2405, file: !2157, line: 627, baseType: !2420, size: 64, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2405, file: !2157, line: 628, baseType: !2420, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2405, file: !2157, line: 631, baseType: !2423, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !2157, line: 631, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2405, file: !2157, line: 632, baseType: !2423, size: 64, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2405, file: !2157, line: 633, baseType: !2427, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !2157, line: 633, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2405, file: !2157, line: 634, baseType: !2430, size: 64, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !2157, line: 634, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2405, file: !2157, line: 635, baseType: !2430, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2327, file: !2157, line: 721, baseType: !2434, size: 64, offset: 7424)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !2157, line: 664, size: 192, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2436, file: !2157, line: 665, baseType: !277, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2436, file: !2157, line: 666, baseType: !93, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2436, file: !2157, line: 667, baseType: !405, size: 16, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2436, file: !2157, line: 668, baseType: !405, size: 16, offset: 112)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2436, file: !2157, line: 669, baseType: !405, size: 16, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2436, file: !2157, line: 670, baseType: !405, size: 16, offset: 144)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !2327, file: !2157, line: 723, baseType: !1885, size: 64, offset: 7488)
!2445 = !DILocalVariable(name: "adap", arg: 1, scope: !2323, file: !1, line: 85, type: !2326)
!2446 = !DILocation(line: 85, column: 50, scope: !2323)
!2447 = !DILocalVariable(name: "bus", scope: !2323, file: !1, line: 87, type: !1899)
!2448 = !DILocation(line: 87, column: 22, scope: !2323)
!2449 = !DILocalVariable(name: "node", scope: !2323, file: !1, line: 87, type: !1899)
!2450 = !DILocation(line: 87, column: 28, scope: !2323)
!2451 = !DILocalVariable(name: "client", scope: !2323, file: !1, line: 88, type: !2452)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !2157, line: 314, size: 6016, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2453, file: !2157, line: 315, baseType: !201, size: 16)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2453, file: !2157, line: 325, baseType: !201, size: 16, offset: 16)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2453, file: !2157, line: 328, baseType: !2160, size: 160, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !2453, file: !2157, line: 329, baseType: !2326, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2453, file: !2157, line: 330, baseType: !95, size: 5568, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !2453, file: !2157, line: 331, baseType: !93, size: 32, offset: 5824)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2453, file: !2157, line: 332, baseType: !93, size: 32, offset: 5856)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !2453, file: !2157, line: 333, baseType: !105, size: 128, offset: 5888)
!2463 = !DILocation(line: 88, column: 21, scope: !2323)
!2464 = !DILocation(line: 91, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 91, column: 6)
!2466 = !DILocation(line: 91, column: 13, scope: !2465)
!2467 = !DILocation(line: 91, column: 17, scope: !2465)
!2468 = !DILocation(line: 91, column: 6, scope: !2323)
!2469 = !DILocation(line: 92, column: 3, scope: !2465)
!2470 = !DILocation(line: 96, column: 29, scope: !2323)
!2471 = !DILocation(line: 96, column: 35, scope: !2323)
!2472 = !DILocation(line: 96, column: 39, scope: !2323)
!2473 = !DILocation(line: 96, column: 8, scope: !2323)
!2474 = !DILocation(line: 96, column: 6, scope: !2323)
!2475 = !DILocation(line: 97, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 97, column: 6)
!2477 = !DILocation(line: 97, column: 6, scope: !2323)
!2478 = !DILocation(line: 98, column: 21, scope: !2476)
!2479 = !DILocation(line: 98, column: 27, scope: !2476)
!2480 = !DILocation(line: 98, column: 31, scope: !2476)
!2481 = !DILocation(line: 98, column: 9, scope: !2476)
!2482 = !DILocation(line: 98, column: 7, scope: !2476)
!2483 = !DILocation(line: 98, column: 3, scope: !2476)
!2484 = !DILocation(line: 100, column: 2, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 100, column: 2)
!2486 = !DILocation(line: 100, column: 2, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2485, file: !1, line: 100, column: 2)
!2488 = !DILocation(line: 101, column: 33, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 101, column: 7)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 100, column: 46)
!2491 = !DILocation(line: 101, column: 7, scope: !2489)
!2492 = !DILocation(line: 101, column: 7, scope: !2490)
!2493 = !DILocation(line: 102, column: 4, scope: !2489)
!2494 = !DILocation(line: 104, column: 35, scope: !2490)
!2495 = !DILocation(line: 104, column: 41, scope: !2490)
!2496 = !DILocation(line: 104, column: 12, scope: !2490)
!2497 = !DILocation(line: 104, column: 10, scope: !2490)
!2498 = !DILocation(line: 105, column: 14, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 105, column: 7)
!2500 = !DILocation(line: 105, column: 7, scope: !2499)
!2501 = !DILocation(line: 105, column: 7, scope: !2490)
!2502 = !DILocation(line: 106, column: 4, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 105, column: 23)
!2504 = !DILocation(line: 109, column: 23, scope: !2503)
!2505 = !DILocation(line: 109, column: 4, scope: !2503)
!2506 = !DILocation(line: 110, column: 3, scope: !2503)
!2507 = !DILocation(line: 111, column: 2, scope: !2490)
!2508 = distinct !{!2508, !2484, !2509}
!2509 = !DILocation(line: 111, column: 2, scope: !2485)
!2510 = !DILocation(line: 113, column: 14, scope: !2323)
!2511 = !DILocation(line: 113, column: 2, scope: !2323)
!2512 = !DILocation(line: 114, column: 1, scope: !2323)
!2513 = distinct !DISubprogram(name: "of_node_get", scope: !1901, file: !1901, line: 125, type: !2514, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!1899, !1899}
!2516 = !DILocalVariable(name: "node", arg: 1, scope: !2513, file: !1901, line: 125, type: !1899)
!2517 = !DILocation(line: 125, column: 67, scope: !2513)
!2518 = !DILocation(line: 127, column: 9, scope: !2513)
!2519 = !DILocation(line: 127, column: 2, scope: !2513)
!2520 = distinct !DISubprogram(name: "of_node_test_and_set_flag", scope: !1901, file: !1901, line: 193, type: !2521, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!93, !1899, !78}
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !1901, line: 193, type: !1899)
!2524 = !DILocation(line: 193, column: 65, scope: !2520)
!2525 = !DILocalVariable(name: "flag", arg: 2, scope: !2520, file: !1901, line: 194, type: !78)
!2526 = !DILocation(line: 194, column: 24, scope: !2520)
!2527 = !DILocation(line: 196, column: 26, scope: !2520)
!2528 = !DILocation(line: 196, column: 33, scope: !2520)
!2529 = !DILocation(line: 196, column: 36, scope: !2520)
!2530 = !DILocation(line: 196, column: 9, scope: !2520)
!2531 = !DILocation(line: 196, column: 2, scope: !2520)
!2532 = distinct !DISubprogram(name: "of_i2c_register_device", scope: !1, file: !1, line: 65, type: !2533, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!2452, !2326, !1899}
!2535 = !DILocalVariable(name: "adap", arg: 1, scope: !2532, file: !1, line: 65, type: !2326)
!2536 = !DILocation(line: 65, column: 70, scope: !2532)
!2537 = !DILocalVariable(name: "node", arg: 2, scope: !2532, file: !1, line: 66, type: !1899)
!2538 = !DILocation(line: 66, column: 28, scope: !2532)
!2539 = !DILocalVariable(name: "client", scope: !2532, file: !1, line: 68, type: !2452)
!2540 = !DILocation(line: 68, column: 21, scope: !2532)
!2541 = !DILocalVariable(name: "info", scope: !2532, file: !1, line: 69, type: !2156)
!2542 = !DILocation(line: 69, column: 24, scope: !2532)
!2543 = !DILocalVariable(name: "ret", scope: !2532, file: !1, line: 70, type: !93)
!2544 = !DILocation(line: 70, column: 6, scope: !2532)
!2545 = !DILocation(line: 74, column: 31, scope: !2532)
!2546 = !DILocation(line: 74, column: 37, scope: !2532)
!2547 = !DILocation(line: 74, column: 42, scope: !2532)
!2548 = !DILocation(line: 74, column: 8, scope: !2532)
!2549 = !DILocation(line: 74, column: 6, scope: !2532)
!2550 = !DILocation(line: 75, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 75, column: 6)
!2552 = !DILocation(line: 75, column: 6, scope: !2532)
!2553 = !DILocation(line: 76, column: 18, scope: !2551)
!2554 = !DILocation(line: 76, column: 10, scope: !2551)
!2555 = !DILocation(line: 76, column: 3, scope: !2551)
!2556 = !DILocation(line: 78, column: 33, scope: !2532)
!2557 = !DILocation(line: 78, column: 11, scope: !2532)
!2558 = !DILocation(line: 78, column: 9, scope: !2532)
!2559 = !DILocation(line: 79, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 79, column: 6)
!2561 = !DILocation(line: 79, column: 6, scope: !2560)
!2562 = !DILocation(line: 79, column: 6, scope: !2532)
!2563 = !DILocation(line: 80, column: 3, scope: !2560)
!2564 = !DILocation(line: 82, column: 9, scope: !2532)
!2565 = !DILocation(line: 82, column: 2, scope: !2532)
!2566 = !DILocation(line: 83, column: 1, scope: !2532)
!2567 = distinct !DISubprogram(name: "IS_ERR", scope: !2568, file: !2568, line: 34, type: !2569, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2568 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!1000, !1131}
!2571 = !DILocalVariable(name: "ptr", arg: 1, scope: !2567, file: !2568, line: 34, type: !1131)
!2572 = !DILocation(line: 34, column: 60, scope: !2567)
!2573 = !DILocation(line: 36, column: 9, scope: !2567)
!2574 = !DILocation(line: 36, column: 2, scope: !2567)
!2575 = distinct !DISubprogram(name: "of_node_clear_flag", scope: !1901, file: !1901, line: 204, type: !2576, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null, !1899, !78}
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2575, file: !1901, line: 204, type: !1899)
!2579 = !DILocation(line: 204, column: 59, scope: !2575)
!2580 = !DILocalVariable(name: "flag", arg: 2, scope: !2575, file: !1901, line: 204, type: !78)
!2581 = !DILocation(line: 204, column: 76, scope: !2575)
!2582 = !DILocation(line: 206, column: 12, scope: !2575)
!2583 = !DILocation(line: 206, column: 19, scope: !2575)
!2584 = !DILocation(line: 206, column: 22, scope: !2575)
!2585 = !DILocation(line: 206, column: 2, scope: !2575)
!2586 = !DILocation(line: 207, column: 1, scope: !2575)
!2587 = distinct !DISubprogram(name: "of_node_put", scope: !1901, file: !1901, line: 129, type: !2588, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !1899}
!2590 = !DILocalVariable(name: "node", arg: 1, scope: !2587, file: !1901, line: 129, type: !1899)
!2591 = !DILocation(line: 129, column: 52, scope: !2587)
!2592 = !DILocation(line: 129, column: 60, scope: !2587)
!2593 = distinct !DISubprogram(name: "of_find_i2c_device_by_node", scope: !1, file: !1, line: 128, type: !2594, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2452, !1899}
!2596 = !DILocalVariable(name: "node", arg: 1, scope: !2593, file: !1, line: 128, type: !1899)
!2597 = !DILocation(line: 128, column: 67, scope: !2593)
!2598 = !DILocalVariable(name: "dev", scope: !2593, file: !1, line: 130, type: !94)
!2599 = !DILocation(line: 130, column: 17, scope: !2593)
!2600 = !DILocalVariable(name: "client", scope: !2593, file: !1, line: 131, type: !2452)
!2601 = !DILocation(line: 131, column: 21, scope: !2593)
!2602 = !DILocation(line: 133, column: 50, scope: !2593)
!2603 = !DILocation(line: 133, column: 8, scope: !2593)
!2604 = !DILocation(line: 133, column: 6, scope: !2593)
!2605 = !DILocation(line: 134, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2593, file: !1, line: 134, column: 6)
!2607 = !DILocation(line: 134, column: 6, scope: !2593)
!2608 = !DILocation(line: 135, column: 3, scope: !2606)
!2609 = !DILocation(line: 137, column: 29, scope: !2593)
!2610 = !DILocation(line: 137, column: 11, scope: !2593)
!2611 = !DILocation(line: 137, column: 9, scope: !2593)
!2612 = !DILocation(line: 138, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2593, file: !1, line: 138, column: 6)
!2614 = !DILocation(line: 138, column: 6, scope: !2593)
!2615 = !DILocation(line: 139, column: 14, scope: !2613)
!2616 = !DILocation(line: 139, column: 3, scope: !2613)
!2617 = !DILocation(line: 141, column: 9, scope: !2593)
!2618 = !DILocation(line: 141, column: 2, scope: !2593)
!2619 = !DILocation(line: 142, column: 1, scope: !2593)
!2620 = distinct !DISubprogram(name: "bus_find_device_by_of_node", scope: !1659, file: !1659, line: 186, type: !2621, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!94, !1657, !2296}
!2623 = !DILocalVariable(name: "bus", arg: 1, scope: !2620, file: !1659, line: 186, type: !1657)
!2624 = !DILocation(line: 186, column: 45, scope: !2620)
!2625 = !DILocalVariable(name: "np", arg: 2, scope: !2620, file: !1659, line: 186, type: !2296)
!2626 = !DILocation(line: 186, column: 76, scope: !2620)
!2627 = !DILocation(line: 188, column: 25, scope: !2620)
!2628 = !DILocation(line: 188, column: 36, scope: !2620)
!2629 = !DILocation(line: 188, column: 9, scope: !2620)
!2630 = !DILocation(line: 188, column: 2, scope: !2620)
!2631 = distinct !DISubprogram(name: "of_find_i2c_adapter_by_node", scope: !1, file: !1, line: 146, type: !2632, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!2326, !1899}
!2634 = !DILocalVariable(name: "node", arg: 1, scope: !2631, file: !1, line: 146, type: !1899)
!2635 = !DILocation(line: 146, column: 69, scope: !2631)
!2636 = !DILocalVariable(name: "dev", scope: !2631, file: !1, line: 148, type: !94)
!2637 = !DILocation(line: 148, column: 17, scope: !2631)
!2638 = !DILocalVariable(name: "adapter", scope: !2631, file: !1, line: 149, type: !2326)
!2639 = !DILocation(line: 149, column: 22, scope: !2631)
!2640 = !DILocation(line: 151, column: 45, scope: !2631)
!2641 = !DILocation(line: 151, column: 8, scope: !2631)
!2642 = !DILocation(line: 151, column: 6, scope: !2631)
!2643 = !DILocation(line: 153, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 153, column: 6)
!2645 = !DILocation(line: 153, column: 6, scope: !2631)
!2646 = !DILocation(line: 154, column: 3, scope: !2644)
!2647 = !DILocation(line: 156, column: 31, scope: !2631)
!2648 = !DILocation(line: 156, column: 12, scope: !2631)
!2649 = !DILocation(line: 156, column: 10, scope: !2631)
!2650 = !DILocation(line: 157, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 157, column: 6)
!2652 = !DILocation(line: 157, column: 6, scope: !2631)
!2653 = !DILocation(line: 158, column: 14, scope: !2651)
!2654 = !DILocation(line: 158, column: 3, scope: !2651)
!2655 = !DILocation(line: 160, column: 9, scope: !2631)
!2656 = !DILocation(line: 160, column: 2, scope: !2631)
!2657 = !DILocation(line: 161, column: 1, scope: !2631)
!2658 = distinct !DISubprogram(name: "of_dev_or_parent_node_match", scope: !1, file: !1, line: 116, type: !2659, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!93, !94, !1131}
!2661 = !DILocalVariable(name: "dev", arg: 1, scope: !2658, file: !1, line: 116, type: !94)
!2662 = !DILocation(line: 116, column: 55, scope: !2658)
!2663 = !DILocalVariable(name: "data", arg: 2, scope: !2658, file: !1, line: 116, type: !1131)
!2664 = !DILocation(line: 116, column: 72, scope: !2658)
!2665 = !DILocation(line: 118, column: 6, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 118, column: 6)
!2667 = !DILocation(line: 118, column: 11, scope: !2666)
!2668 = !DILocation(line: 118, column: 22, scope: !2666)
!2669 = !DILocation(line: 118, column: 19, scope: !2666)
!2670 = !DILocation(line: 118, column: 6, scope: !2658)
!2671 = !DILocation(line: 119, column: 3, scope: !2666)
!2672 = !DILocation(line: 121, column: 6, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 121, column: 6)
!2674 = !DILocation(line: 121, column: 11, scope: !2673)
!2675 = !DILocation(line: 121, column: 6, scope: !2658)
!2676 = !DILocation(line: 122, column: 10, scope: !2673)
!2677 = !DILocation(line: 122, column: 15, scope: !2673)
!2678 = !DILocation(line: 122, column: 23, scope: !2673)
!2679 = !DILocation(line: 122, column: 34, scope: !2673)
!2680 = !DILocation(line: 122, column: 31, scope: !2673)
!2681 = !DILocation(line: 122, column: 3, scope: !2673)
!2682 = !DILocation(line: 124, column: 2, scope: !2658)
!2683 = !DILocation(line: 125, column: 1, scope: !2658)
!2684 = distinct !DISubprogram(name: "of_get_i2c_adapter_by_node", scope: !1, file: !1, line: 165, type: !2632, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2685 = !DILocalVariable(name: "node", arg: 1, scope: !2684, file: !1, line: 165, type: !1899)
!2686 = !DILocation(line: 165, column: 68, scope: !2684)
!2687 = !DILocalVariable(name: "adapter", scope: !2684, file: !1, line: 167, type: !2326)
!2688 = !DILocation(line: 167, column: 22, scope: !2684)
!2689 = !DILocation(line: 169, column: 40, scope: !2684)
!2690 = !DILocation(line: 169, column: 12, scope: !2684)
!2691 = !DILocation(line: 169, column: 10, scope: !2684)
!2692 = !DILocation(line: 170, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 170, column: 6)
!2694 = !DILocation(line: 170, column: 6, scope: !2684)
!2695 = !DILocation(line: 171, column: 3, scope: !2693)
!2696 = !DILocation(line: 173, column: 22, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 173, column: 6)
!2698 = !DILocation(line: 173, column: 31, scope: !2697)
!2699 = !DILocation(line: 173, column: 7, scope: !2697)
!2700 = !DILocation(line: 173, column: 6, scope: !2684)
!2701 = !DILocation(line: 174, column: 15, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 173, column: 39)
!2703 = !DILocation(line: 174, column: 24, scope: !2702)
!2704 = !DILocation(line: 174, column: 3, scope: !2702)
!2705 = !DILocation(line: 175, column: 11, scope: !2702)
!2706 = !DILocation(line: 176, column: 2, scope: !2702)
!2707 = !DILocation(line: 178, column: 9, scope: !2684)
!2708 = !DILocation(line: 178, column: 2, scope: !2684)
!2709 = !DILocation(line: 179, column: 1, scope: !2684)
!2710 = distinct !DISubprogram(name: "try_module_get", scope: !2711, file: !2711, line: 751, type: !2712, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2711 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!1000, !1677}
!2714 = !DILocalVariable(name: "module", arg: 1, scope: !2710, file: !2711, line: 751, type: !1677)
!2715 = !DILocation(line: 751, column: 50, scope: !2710)
!2716 = !DILocation(line: 753, column: 2, scope: !2710)
!2717 = distinct !DISubprogram(name: "i2c_of_match_device", scope: !1, file: !1, line: 212, type: !2718, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!1684, !1684, !2452}
!2720 = !DILocalVariable(name: "matches", arg: 1, scope: !2717, file: !1, line: 212, type: !1684)
!2721 = !DILocation(line: 212, column: 49, scope: !2717)
!2722 = !DILocalVariable(name: "client", arg: 2, scope: !2717, file: !1, line: 213, type: !2452)
!2723 = !DILocation(line: 213, column: 27, scope: !2717)
!2724 = !DILocalVariable(name: "match", scope: !2717, file: !1, line: 215, type: !1684)
!2725 = !DILocation(line: 215, column: 29, scope: !2717)
!2726 = !DILocation(line: 217, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 217, column: 6)
!2728 = !DILocation(line: 217, column: 15, scope: !2727)
!2729 = !DILocation(line: 217, column: 18, scope: !2727)
!2730 = !DILocation(line: 217, column: 6, scope: !2717)
!2731 = !DILocation(line: 218, column: 3, scope: !2727)
!2732 = !DILocation(line: 220, column: 26, scope: !2717)
!2733 = !DILocation(line: 220, column: 36, scope: !2717)
!2734 = !DILocation(line: 220, column: 44, scope: !2717)
!2735 = !DILocation(line: 220, column: 10, scope: !2717)
!2736 = !DILocation(line: 220, column: 8, scope: !2717)
!2737 = !DILocation(line: 221, column: 6, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 221, column: 6)
!2739 = !DILocation(line: 221, column: 6, scope: !2717)
!2740 = !DILocation(line: 222, column: 10, scope: !2738)
!2741 = !DILocation(line: 222, column: 3, scope: !2738)
!2742 = !DILocation(line: 224, column: 35, scope: !2717)
!2743 = !DILocation(line: 224, column: 44, scope: !2717)
!2744 = !DILocation(line: 224, column: 9, scope: !2717)
!2745 = !DILocation(line: 224, column: 2, scope: !2717)
!2746 = !DILocation(line: 225, column: 1, scope: !2717)
!2747 = distinct !DISubprogram(name: "i2c_of_match_device_sysfs", scope: !1, file: !1, line: 183, type: !2718, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2748 = !DILocalVariable(name: "matches", arg: 1, scope: !2747, file: !1, line: 183, type: !1684)
!2749 = !DILocation(line: 183, column: 54, scope: !2747)
!2750 = !DILocalVariable(name: "client", arg: 2, scope: !2747, file: !1, line: 184, type: !2452)
!2751 = !DILocation(line: 184, column: 26, scope: !2747)
!2752 = !DILocalVariable(name: "name", scope: !2747, file: !1, line: 186, type: !102)
!2753 = !DILocation(line: 186, column: 14, scope: !2747)
!2754 = !DILocation(line: 188, column: 2, scope: !2747)
!2755 = !DILocation(line: 188, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 188, column: 2)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 188, column: 2)
!2758 = !DILocation(line: 188, column: 18, scope: !2756)
!2759 = !DILocation(line: 188, column: 2, scope: !2757)
!2760 = !DILocation(line: 195, column: 19, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 195, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 188, column: 44)
!2763 = !DILocation(line: 195, column: 27, scope: !2761)
!2764 = !DILocation(line: 195, column: 33, scope: !2761)
!2765 = !DILocation(line: 195, column: 42, scope: !2761)
!2766 = !DILocation(line: 195, column: 7, scope: !2761)
!2767 = !DILocation(line: 195, column: 7, scope: !2762)
!2768 = !DILocation(line: 196, column: 11, scope: !2761)
!2769 = !DILocation(line: 196, column: 4, scope: !2761)
!2770 = !DILocation(line: 198, column: 17, scope: !2762)
!2771 = !DILocation(line: 198, column: 26, scope: !2762)
!2772 = !DILocation(line: 198, column: 10, scope: !2762)
!2773 = !DILocation(line: 198, column: 8, scope: !2762)
!2774 = !DILocation(line: 199, column: 8, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 199, column: 7)
!2776 = !DILocation(line: 199, column: 7, scope: !2762)
!2777 = !DILocation(line: 200, column: 11, scope: !2775)
!2778 = !DILocation(line: 200, column: 20, scope: !2775)
!2779 = !DILocation(line: 200, column: 9, scope: !2775)
!2780 = !DILocation(line: 200, column: 4, scope: !2775)
!2781 = !DILocation(line: 202, column: 8, scope: !2775)
!2782 = !DILocation(line: 204, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 204, column: 7)
!2784 = !DILocation(line: 204, column: 27, scope: !2783)
!2785 = !DILocation(line: 204, column: 33, scope: !2783)
!2786 = !DILocation(line: 204, column: 7, scope: !2783)
!2787 = !DILocation(line: 204, column: 7, scope: !2762)
!2788 = !DILocation(line: 205, column: 11, scope: !2783)
!2789 = !DILocation(line: 205, column: 4, scope: !2783)
!2790 = !DILocation(line: 206, column: 2, scope: !2762)
!2791 = !DILocation(line: 188, column: 40, scope: !2756)
!2792 = !DILocation(line: 188, column: 2, scope: !2756)
!2793 = distinct !{!2793, !2759, !2794}
!2794 = !DILocation(line: 206, column: 2, scope: !2757)
!2795 = !DILocation(line: 208, column: 2, scope: !2747)
!2796 = !DILocation(line: 209, column: 1, scope: !2747)
!2797 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1901, file: !1901, line: 494, type: !2798, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!93, !2296, !102, !631, !206}
!2800 = !DILocalVariable(name: "np", arg: 1, scope: !2797, file: !1901, line: 494, type: !2296)
!2801 = !DILocation(line: 494, column: 72, scope: !2797)
!2802 = !DILocalVariable(name: "propname", arg: 2, scope: !2797, file: !1901, line: 495, type: !102)
!2803 = !DILocation(line: 495, column: 23, scope: !2797)
!2804 = !DILocalVariable(name: "out_values", arg: 3, scope: !2797, file: !1901, line: 496, type: !631)
!2805 = !DILocation(line: 496, column: 16, scope: !2797)
!2806 = !DILocalVariable(name: "sz", arg: 4, scope: !2797, file: !1901, line: 496, type: !206)
!2807 = !DILocation(line: 496, column: 35, scope: !2797)
!2808 = !DILocalVariable(name: "ret", scope: !2797, file: !1901, line: 498, type: !93)
!2809 = !DILocation(line: 498, column: 6, scope: !2797)
!2810 = !DILocation(line: 498, column: 48, scope: !2797)
!2811 = !DILocation(line: 498, column: 52, scope: !2797)
!2812 = !DILocation(line: 498, column: 62, scope: !2797)
!2813 = !DILocation(line: 499, column: 13, scope: !2797)
!2814 = !DILocation(line: 498, column: 12, scope: !2797)
!2815 = !DILocation(line: 500, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2797, file: !1901, line: 500, column: 6)
!2817 = !DILocation(line: 500, column: 10, scope: !2816)
!2818 = !DILocation(line: 500, column: 6, scope: !2797)
!2819 = !DILocation(line: 501, column: 3, scope: !2816)
!2820 = !DILocation(line: 503, column: 10, scope: !2816)
!2821 = !DILocation(line: 503, column: 3, scope: !2816)
!2822 = !DILocation(line: 504, column: 1, scope: !2797)
!2823 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2824, file: !2824, line: 68, type: !2825, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2824 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!1000, !84, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!2829 = !DILocalVariable(name: "nr", arg: 1, scope: !2830, file: !2831, line: 136, type: !84)
!2830 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !2831, file: !2831, line: 136, type: !2825, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2831 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2832 = !DILocation(line: 136, column: 28, scope: !2830, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 71, column: 9, scope: !2823)
!2834 = !DILocalVariable(name: "addr", arg: 2, scope: !2830, file: !2831, line: 136, type: !2827)
!2835 = !DILocation(line: 136, column: 56, scope: !2830, inlinedAt: !2833)
!2836 = !DILocalVariable(name: "c", scope: !2837, file: !2831, line: 138, type: !1000)
!2837 = distinct !DILexicalBlock(scope: !2830, file: !2831, line: 138, column: 9)
!2838 = !DILocation(line: 138, column: 9, scope: !2837, inlinedAt: !2833)
!2839 = !DILocalVariable(name: "v", arg: 1, scope: !2840, file: !2841, line: 99, type: !2844)
!2840 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2841, file: !2841, line: 99, type: !2842, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2841 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2844, !206}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2847 = !DILocation(line: 99, column: 79, scope: !2840, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 70, column: 2, scope: !2823)
!2849 = !DILocalVariable(name: "size", arg: 2, scope: !2840, file: !2841, line: 99, type: !206)
!2850 = !DILocation(line: 99, column: 89, scope: !2840, inlinedAt: !2848)
!2851 = !DILocalVariable(name: "nr", arg: 1, scope: !2823, file: !2824, line: 68, type: !84)
!2852 = !DILocation(line: 68, column: 42, scope: !2823)
!2853 = !DILocalVariable(name: "addr", arg: 2, scope: !2823, file: !2824, line: 68, type: !2827)
!2854 = !DILocation(line: 68, column: 70, scope: !2823)
!2855 = !DILocation(line: 70, column: 31, scope: !2823)
!2856 = !DILocation(line: 70, column: 38, scope: !2823)
!2857 = !DILocation(line: 70, column: 36, scope: !2823)
!2858 = !DILocation(line: 101, column: 20, scope: !2840, inlinedAt: !2848)
!2859 = !DILocation(line: 101, column: 23, scope: !2840, inlinedAt: !2848)
!2860 = !DILocation(line: 101, column: 2, scope: !2840, inlinedAt: !2848)
!2861 = !DILocation(line: 102, column: 2, scope: !2840, inlinedAt: !2848)
!2862 = !DILocation(line: 71, column: 31, scope: !2823)
!2863 = !DILocation(line: 71, column: 35, scope: !2823)
!2864 = !{i32 -2147065463, i32 -2147065367}
!2865 = !DILocation(line: 71, column: 2, scope: !2823)
!2866 = distinct !DISubprogram(name: "kasan_check_write", scope: !2867, file: !2867, line: 38, type: !2868, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2867 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!1000, !2844, !5}
!2870 = !DILocalVariable(name: "p", arg: 1, scope: !2866, file: !2867, line: 38, type: !2844)
!2871 = !DILocation(line: 38, column: 59, scope: !2866)
!2872 = !DILocalVariable(name: "size", arg: 2, scope: !2866, file: !2867, line: 38, type: !5)
!2873 = !DILocation(line: 38, column: 75, scope: !2866)
!2874 = !DILocation(line: 40, column: 2, scope: !2866)
!2875 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2876, file: !2876, line: 178, type: !2877, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2876 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2844, !206, !93}
!2879 = !DILocalVariable(name: "ptr", arg: 1, scope: !2875, file: !2876, line: 178, type: !2844)
!2880 = !DILocation(line: 178, column: 60, scope: !2875)
!2881 = !DILocalVariable(name: "size", arg: 2, scope: !2875, file: !2876, line: 178, type: !206)
!2882 = !DILocation(line: 178, column: 72, scope: !2875)
!2883 = !DILocalVariable(name: "type", arg: 3, scope: !2875, file: !2876, line: 179, type: !93)
!2884 = !DILocation(line: 179, column: 15, scope: !2875)
!2885 = !DILocation(line: 179, column: 23, scope: !2875)
!2886 = distinct !DISubprogram(name: "ERR_PTR", scope: !2568, file: !2568, line: 24, type: !2887, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!77, !84}
!2889 = !DILocalVariable(name: "error", arg: 1, scope: !2886, file: !2568, line: 24, type: !84)
!2890 = !DILocation(line: 24, column: 48, scope: !2886)
!2891 = !DILocation(line: 26, column: 18, scope: !2886)
!2892 = !DILocation(line: 26, column: 9, scope: !2886)
!2893 = !DILocation(line: 26, column: 2, scope: !2886)
!2894 = distinct !DISubprogram(name: "clear_bit", scope: !2824, file: !2824, line: 39, type: !2895, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !84, !2827}
!2897 = !DILocalVariable(name: "nr", arg: 1, scope: !2898, file: !2831, line: 72, type: !84)
!2898 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2831, file: !2831, line: 72, type: !2895, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2899 = !DILocation(line: 72, column: 21, scope: !2898, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 42, column: 2, scope: !2894)
!2901 = !DILocalVariable(name: "addr", arg: 2, scope: !2898, file: !2831, line: 72, type: !2827)
!2902 = !DILocation(line: 72, column: 49, scope: !2898, inlinedAt: !2900)
!2903 = !DILocalVariable(name: "v", arg: 1, scope: !2904, file: !2841, line: 84, type: !2844)
!2904 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2841, file: !2841, line: 84, type: !2842, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !133)
!2905 = !DILocation(line: 84, column: 74, scope: !2904, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 41, column: 2, scope: !2894)
!2907 = !DILocalVariable(name: "size", arg: 2, scope: !2904, file: !2841, line: 84, type: !206)
!2908 = !DILocation(line: 84, column: 84, scope: !2904, inlinedAt: !2906)
!2909 = !DILocalVariable(name: "nr", arg: 1, scope: !2894, file: !2824, line: 39, type: !84)
!2910 = !DILocation(line: 39, column: 35, scope: !2894)
!2911 = !DILocalVariable(name: "addr", arg: 2, scope: !2894, file: !2824, line: 39, type: !2827)
!2912 = !DILocation(line: 39, column: 63, scope: !2894)
!2913 = !DILocation(line: 41, column: 26, scope: !2894)
!2914 = !DILocation(line: 41, column: 33, scope: !2894)
!2915 = !DILocation(line: 41, column: 31, scope: !2894)
!2916 = !DILocation(line: 86, column: 20, scope: !2904, inlinedAt: !2906)
!2917 = !DILocation(line: 86, column: 23, scope: !2904, inlinedAt: !2906)
!2918 = !DILocation(line: 86, column: 2, scope: !2904, inlinedAt: !2906)
!2919 = !DILocation(line: 87, column: 2, scope: !2904, inlinedAt: !2906)
!2920 = !DILocation(line: 42, column: 17, scope: !2894)
!2921 = !DILocation(line: 42, column: 21, scope: !2894)
!2922 = !DILocation(line: 74, column: 27, scope: !2923, inlinedAt: !2900)
!2923 = distinct !DILexicalBlock(scope: !2898, file: !2831, line: 74, column: 6)
!2924 = !DILocation(line: 74, column: 6, scope: !2923, inlinedAt: !2900)
!2925 = !DILocation(line: 74, column: 6, scope: !2898, inlinedAt: !2900)
!2926 = !DILocation(line: 76, column: 6, scope: !2927, inlinedAt: !2900)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !2831, line: 74, column: 32)
!2928 = !DILocation(line: 77, column: 13, scope: !2927, inlinedAt: !2900)
!2929 = !DILocation(line: 77, column: 12, scope: !2927, inlinedAt: !2900)
!2930 = !DILocation(line: 75, column: 3, scope: !2927, inlinedAt: !2900)
!2931 = !{i32 -2147068995}
!2932 = !DILocation(line: 78, column: 2, scope: !2927, inlinedAt: !2900)
!2933 = !DILocation(line: 80, column: 8, scope: !2934, inlinedAt: !2900)
!2934 = distinct !DILexicalBlock(scope: !2923, file: !2831, line: 78, column: 9)
!2935 = !DILocation(line: 80, column: 32, scope: !2934, inlinedAt: !2900)
!2936 = !DILocation(line: 79, column: 3, scope: !2934, inlinedAt: !2900)
!2937 = !{i32 -2147068863}
!2938 = !DILocation(line: 43, column: 1, scope: !2894)
